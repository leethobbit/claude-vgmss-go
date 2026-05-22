# Final Fantasy Detailed — batch plan

The FF Detailed family (`reference/Final Fantasy Sound Sources (Detailed) - *.csv`,
31 files) has a different shape from NEWER VGM, SoundTeMP, and HOYO-MiX. This
doc captures the column-mapping rules and ingestion conventions for the family.
First batch (FF7 pilot) lands in `0037_seed_ff_detailed_ff7.sql`.

## Why this family is different

NEWER VGM and SoundTeMP rows are "this game uses this product." FF Detailed
rows are "this _sample_ in this game came from this product." Per-sample
granularity → the schema's reserved `sample_label` and `sample_ref` columns
finally get used here.

## CSV shape

Two header shapes have shown up so far:

**Per-sample (Sample # indexed)** — used by FF7, FFT, FFXII:RW (and FFTA2 partially):
`Sample Description | Sample # | Source | Path/Bank | Preset | Notes | Demo`

**Per-instrument (no Sample #)** — used by FFTA, FF7 Remake, FF7 Rebirth:
`Instrument | Source | Path/Bank | Preset | Notes`

For per-instrument CSVs, `sample_ref` stays NULL on every row and the
instrument name fills `sample_label`. Track headers route to `examples`
as before. Tracks with no sample data documented are simply omitted; no
empty placeholder rows.

The Demo column is a URL field empty across all FF Detailed rows ingested
so far; if any future game populates it, route it to `usages.demo_url`.

## Column mapping

| CSV column | usages column | Notes |
|---|---|---|
| Sample Description (col A) | `sample_label` | Verbatim. First use of this column in any seed. |
| Sample # (col B) | `sample_ref` | Verbatim (e.g. "Sample 0", "Sample 92"). First use of this column. |
| Source (col C) | manufacturer + product (see split rule) or `raw_source` | See below. |
| Path/Bank (col D) | `path_bank` | Verbatim. |
| Preset (col E) | `preset` | Verbatim. |
| Notes (col F) | `notes` | Verbatim. |
| Demo (col G) | `demo_url` | Optional. Empty in FF7. |

`source_family` = `'ff_detailed'` on every row.

## Source-column split rule

Split the Source value on the **first** ` - ` (space-dash-space). The text
before is the manufacturer; the text after (including any further dashes) is
the product name.

Examples:
- `Kurzweil - K1200` → manufacturer=`Kurzweil`, product=`K1200`
- `InVision Interactive - Lightware Vol. 1 - Instruments & Percussions` →
  manufacturer=`InVision Interactive`,
  product=`Lightware Vol. 1 - Instruments & Percussions` (embedded dash kept)
- `Warner Bros. Sound Effects Library` (no separator) → no product lookup;
  full value goes to `raw_source`, `product_id` stays NULL.

### Contributor spelling drift is preserved verbatim

The FF7 CSV uses both `E-MU Systems - Classic Series Vol. 1` and
`E-MU Classic Series - Vol. 8` for what is conceptually the same vendor.
Per Rule 10 of CLAUDE.md and the precedent set by SoundTeMP/NEWER VGM
ingestion, the seed preserves both manufacturer rows verbatim. Consolidation
follows the pattern of `0031_cleanup_dup_products.sql` in a later data-quality
pass — never inline during a seed batch.

Same applies to product-name typos like `Synclaiver Strings` (sic). Do not
"fix" them.

## Source value handling

Five cases, in order of contributor intent:

| Source column value | Treatment |
|---|---|
| `Brand - Product` | Normal split + product lookup. `product_id` linked. |
| `UNKNOWN` exactly | `product_id = NULL`, `raw_source = 'UNKNOWN'`. Contributor checked and could not find. |
| `UNKNOWN, SAME SOURCE AS SAMPLES …` | `product_id = NULL`, `raw_source` = full string verbatim. |
| `CHECK` exactly | `product_id = NULL`, `raw_source = 'CHECK'`. Contributor is unsure of the source — semantically distinct from UNKNOWN, preserved. |
| `Possible source` or other free-form | `product_id = NULL`, `raw_source` = full value verbatim. |
| `Live Recording` or `Live Recording (Performer)` | `product_id = NULL`, `raw_source` = full value verbatim. Performer credit kept in the same cell. |
| `Stems: <Game Title>` — sample lifted from another title's stems | `product_id = NULL`, `raw_source` = full value verbatim. Overrides the split rule because the contributor's intent is data provenance, not vendor lookup. |
| Empty (no value) | `product_id = NULL`, `raw_source = NULL`. Contributor hasn't researched this row yet — distinct from explicit UNKNOWN/CHECK. |

When the value of Preset is `CHECK` but Source is known, the source links
normally and `preset = 'CHECK'` verbatim — that's a contributor note that
the preset needs verification, not that the product is unknown.

When `raw_source` is set, `path_bank`, `preset`, and `notes` are still
populated if the CSV has them (a row can have an unknown source AND known
preset hints from the contributor). The category mapping doesn't change for
unknowns — see below.

## Category mapping

Per CLAUDE.md the `category` CHECK accepts `main`, `unused`, `bonus`,
`stuff_to_find`. For FF Detailed:

| CSV section | category |
|---|---|
| `Section 1 - Main Game Music` (or any "Main"), `Sequenced Soundbank`, `Streamed Tracks`, in-game tracks | `main` |
| `Demo Samples` (prototype/dev rom samples) | `unused` |
| `(OST Version only)` sub-headers — samples present on the OST release but not in the shipped game | `bonus` |
| Explicit "Stuff to find" or "Unknowns to find" sub-section | `stuff_to_find` |
| `Section N - Bonus Content`, soundtest-only, etc. | `bonus` |

**An UNKNOWN row stays in its section's category.** The presence of
`raw_source = 'UNKNOWN'` is what signals "source unknown" — the category
field reflects where in the game the sample lives, not how confident we are
about the source. This matches the `ProductFrequency.Breakdown()` UI: the
breakdown counts mains and unuseds separately, while the per-row link or
italics distinguishes known vs unknown.

## Rows to skip

Drop these silently — they have no information value:

- Section header rows (e.g. `Section 1 - Main Game Music,,,,,,`)
- Subheader rows (e.g. `Samples,,,,,,` and `Demo Samples,,,,,,`)
- All-blank rows (just commas)
- Demo Samples rows where col A is empty and col F is just "Same as final"
  (rows 119-180 of the FF7 CSV — the contributor stubbed in sample IDs without
  descriptions; nothing to store except a position)
- Front matter (research credits, WIP warnings, jump links) before the first
  data section

A row with a populated `Sample Description` but no Source still gets
ingested — it's a sample we can characterize even if we don't know where it
came from.

## Position

`position` is a 1-based counter incrementing through the file in CSV row
order. Section 1 samples come first; Demo Samples follow. Skipped rows
don't consume a position number.

## Track context for streamed-section rows

Streamed-track sections (e.g. FFT's `Streamed Tracks` block, FFXII:RW's
`SEQ_08 (Giza Plains)`, FFTA2's individual numbered tracks) carry the
track name as their natural grouping. Put the track name in `examples` so
the game detail page can show "this sample appears in `<track name>`."

Track header rows themselves (rows where only the description-column-as-
section-label is populated and no Source / Sample # / Path) are dropped
during ingestion. The next non-header row inherits the most recent track
name as its `examples`.

## Google Sheets date corruption

Some contributor cells with `MM-NN` Sample # values have been auto-coerced
by Google Sheets into ISO timestamps like `2025-05-01 00:00:00`. Per Rule 2
("don't reinterpret"), preserve the corrupted value verbatim in
`sample_ref` and call it out in the seed file header. A separate
data-quality migration can canonicalize these once the source CSV is
fixed upstream.

## Games row

The CSV does not carry the game metadata, so write the games row from
external research (per past family precedent):

- `title`: official English title
- `platform`: PlayStation-era games list original platform + major rereleases
- `released`: original JP release date as `YYYY-MM-DD`
- `composers`: comma-separated, in credit order
- `composers_normalized`: lowercase, comma-space-separated
- `notes`: cite the CSV (`Source: <filename>`), note WIP status from the CSV
  header if any, summarize section count and any caveats

## Batch sequencing

Per ROADMAP, after the FF7 pilot lands and verifies:

1. **Pilot** — `0037_seed_ff_detailed_ff7.sql` — Final Fantasy VII (this file).
2. Ivalice Alliance — three sub-batches (FFT, FFTA, FFTA2), each its own seed
   file with INSERT OR IGNORE on the shared `Final Fantasy Tactics` games and
   product rows. May land as 1-3 seed files depending on size.
3. FF7 Remake Trilogy — separate seed; 859 lines makes it the largest single
   file in the family. May need part1/part2 split.
4. FF4, FF5, FF6 — SNES era, smaller files, candidates for grouping.
5. The rest of the mainline files in chronological order.

## Verification checklist per batch

1. `go build ./...`, `go vet ./...`, `go test ./...` all pass.
2. Spin up the dev server against a fresh DB (`go run ./cmd/vgmss -db <tmp>`).
3. Open `/games/{id}` for the new game — confirm:
   - Sound sources table renders the new rows.
   - Sample # and Sample Description show up (this is the first family to use
     these columns — confirm the template surfaces them, or schedule a UI
     update if the columns are still hidden).
   - Manufacturer links (added in commit `5a04cb9`) resolve correctly.
4. Open `/manufacturers/{id}` for a couple of new manufacturers — confirm
   the FF7 product list appears with usage counts.
5. Confirm `unused` rows render correctly on the game detail page (they get
   their own row class `cat-unused`).
