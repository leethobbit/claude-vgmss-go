# vgmss ingestion roadmap

What's in the database, what's pending, and where to look for batch plans.

## Status snapshot (as of 2026-05-26)

- **~170 games loaded, ~2963 usages, ~720+ equipment items, ~119+ manufacturers**
- Container deploys via `docker compose up --build`; binds host 127.0.0.1:8220 by default (override `$env:VGMSS_PORT`)
- Manufacturers and Products are first-class browsable resources via `/manufacturers` and `/equipment`

## CSV families — ingestion progress

| Family | Files | Status | Notes |
|---|---|---|---|
| NEWER VGM SEGA/Atlus | 1 file (3609 lines, 18 sections) | **Sections 1-16 + Section 17 "Other" all done** (only Section 17 Rhythm Thief remains) | See below — currently active family |
| NEWER VGM Pokémon | 1 file | Partial — 20/26 mainline + Sections 2-4 left | Deferred while SEGA/Atlus is in progress |
| SoundTeMP | 1 file | **Complete (46/46 games)** | Full Section 1 + Section 2 ingested |
| Final Fantasy Detailed | 31 files | **8 games landed** (FF7, FFT, FFTA, FFXII:RW, FFTA2, FF7 Remake, FF7 Rebirth, FFX, FFX-2) | 22 files remaining. Conventions: [docs/ff-detailed-batch-plan.md](ff-detailed-batch-plan.md). |
| HOYO-MiX | 11 files | Genshin + HSR ingested | ZZZ, Honkai Impact 3rd, and 7 other titles remaining |
| G-Boy's V.I.S.S. | 1 file | Not started | Supplementary; can supplement existing Pokémon entries |

## SEGA/Atlus ingestion — currently active

The big push. CSV is `reference/NEWER VGM Sound Sources - SEGAAtlus.csv` (3609 lines, 18 numbered sections — sections 17 and "Other" both use the "Section 17" header in the CSV, contributor typo).

### Done (Sections 1-16 + entire "Other" catch-all)

| Batch | Section | Seed file | Games | Usage rows |
|---|---|---|---|---|
| 16 | 1 Megami Tensei | `0053_seed_newer_vgm_sega_atlus_section1.sql` | 21 | ~256 |
| 17 | 2 Puyo Puyo | `0054_seed_newer_vgm_sega_atlus_section2.sql` | 10 | ~124 |
| 18 | 3 Daytona USA | `0055_seed_newer_vgm_sega_atlus_section3.sql` | 5 | ~109 |
| 19 | 4-6 Virtua + SEGA Rally + NiGHTS | `0056_seed_newer_vgm_sega_atlus_sections4-6.sql` | 11 | ~111 |
| 20 | 7 Persona | `0057_seed_newer_vgm_sega_atlus_section7.sql` | 19 | ~216 |
| 21 | 8 House of the Dead | `0058_seed_newer_vgm_sega_atlus_section8.sql` | 8 | ~164 |
| 22 | 9 Space Channel 5 | `0059_seed_newer_vgm_sega_atlus_section9.sql` | 2 | ~194 |
| 23 | 10a JSR + E3 Prototype | `0060_seed_newer_vgm_sega_atlus_section10a.sql` | 2 | ~219 |
| 24 | 10b JSR Future | `0061_seed_newer_vgm_sega_atlus_section10b.sql` | 1 | ~274 |
| 25 | 11 Super Monkey Ball | `0062_seed_newer_vgm_sega_atlus_section11.sql` | 10 | ~296 |
| 26 | 12 Phantasy Star Online | `0063_seed_newer_vgm_sega_atlus_section12.sql` | 2 | ~93 |
| 27 | 13 Yakuza | `0064_seed_newer_vgm_sega_atlus_section13.sql` | 12 | ~96 |
| 28 | 14 Trauma Center | `0065_seed_newer_vgm_sega_atlus_section14.sql` | 3 | ~40 |
| 29 | 15 Etrian Odyssey | `0066_seed_newer_vgm_sega_atlus_section15.sql` | 5 | ~53 |
| 30 | 16 Valkyria Chronicles | `0067_seed_newer_vgm_sega_atlus_section16.sql` | 2 | ~28 |
| 31 | Other-a (1986-1999 arcade/console) | `0068_seed_newer_vgm_sega_atlus_section17_other_a.sql` | 24 | ~125 |
| 32 | Other-b (1999-2003 + Billy Hatcher + Ollie King) | `0069_seed_newer_vgm_sega_atlus_section17_other_b.sql` | 15 | ~340 |
| 33 | Other-c (mid-2000s DS through Metaphor 2024) | `0070_seed_newer_vgm_sega_atlus_section17_other_c.sql` | 18 | ~225 |

Cumulative: **170 games, ~2963 usages** across 16 sections + complete "Other" catch-all.

### Pending (Section 17 Rhythm Thief only)

| Sub-batch | CSV lines (approx) | Games | Notes |
|---|---|---|---|
| 17 Rhythm Thief | 2548-2804 | ~1-2 | Sample-heavy like Space Channel 5 / Jet Set Radio. CSV row 2551 begins with "Sample: Afrique - Slow Motion" pattern. |

### Next batch instructions for the next agent

Pick up at **Section 17 (Rhythm Thief)**. Standard procedure:

1. Read the CSV section by line range with the Read tool.
2. Count games and rows. If a section is >250 rows or covers >15 games, consider splitting (see batches 10a/10b for the pattern).
3. Write `internal/migrate/seed/0071_seed_newer_vgm_sega_atlus_rhythm_thief.sql` following the established conventions:
   - Per-game positions restart at 1
   - "?,?" rows → product_id NULL, raw_source NULL, description in notes
   - "Manufacturer,?" rows → product_id NULL, raw_source = 'Manufacturer - ?'
   - "Sample: <artist> - <track>" / "Interpolation: <person> - <work>" cross-media references → raw_source
   - "Live Recording: <name> (<instrument>)" → raw_source
   - Japanese / accented international titles preserved verbatim in examples
   - Track names with literal quotes ("title") preserved with SQL-doubled-quote escaping
   - `INSERT OR IGNORE` for manufacturers and products
4. `go build ./... && go test ./internal/migrate/...` to verify.
5. Commit + push as Batch 34.

### Conventions captured in earlier batches

- Multiple naming variants for the same library are preserved verbatim per Rule 2. Examples:
  - Sonic Foundry has FIVE manufacturer variants in the DB now (Sonic Foundry, Sonic Foundry/Sounds Good, Sonic Foundry & Sounds Good, Sonic Foundry & Hook Up, Sounds Good & Steinberg).
  - Mellotron Archives exists both as a manufacturer (SMB Step & Roll) and as a product under Mike Pinder (JSRF).
  - "Discovery Firm" and "Discovery FIrm" (capital I) merge via NOCASE.
  - "EMU Systems" (no hyphen) is distinct from "E-MU Systems" — different strings, both preserved.
  - "Trey Max Top Secret CD Beats Vol. 3" (SMB 3D) is distinct from "Trey Max - Top Secret CD Beats Vol. 3" (JSR) — same library, punctuation drift.
- Composite uncertainty markers preserved as raw_source: "Roland - ? (Probably JV-1080 or XV-5080)", "? (UVI, MOTU or VSL product)", "KORG / Roland - ?", etc.
- Cross-media samples (Hollywood films, jazz/lounge records, presidential debates, NASA broadcast tape, etc.) preserved as raw_source with the format 'Sample: <artist> - <track>'.

## NEWER VGM Pokémon — what's done and what's left

Deferred while SEGA/Atlus is the active push. ~5 mainline + Sections 2-4 remaining.

### Done (5 commits, 20 games)

| Commit | Games | File range |
|---|---|---|
| `b5f23f9` initial | R/B, R/S, FRLG, Emerald, D/P, Platinum, HG/SS, B2/W2, B/W, X/Y, OR/AS | 0002-0012 |
| `2a0bcbc` batch 3 | S/M, US/UM, Sw/Sh | 0013-0015 |
| `bc91d09` batch 4 | Let's Go, Isle of Armor, Crown Tundra | 0016-0018 |
| `db4e267` batch 5 | BD/SP, Legends Arceus, S/V | 0019-0021 + db fix |

### Pokémon mainline left in Section 1 (5 games)

CSV rows 4501-4965, ~465 source rows. Logical batch: all 5 in one or two passes.

- Teal Mask DLC — rows 4501-4614
- Indigo Disk DLC — rows 4615-4780
- Legends Z-A — rows 4781-4915
- Legends Z-A: Mega Dimension — rows 4916-4956
- Winds and Waves (scheduled 2027, mostly stub) — rows 4957-4965

### Pokémon CSV remaining sections

- **Section 2 — Tie-in Games** (rows 4966-5210): Dream World, Dream Radar, Bank, GO, HOME, Champions (6 games, ~245 source rows)
- **Section 3 — Misc** (rows 5211-5859): Cries variants, Snap, Stadium, Stadium 2, Masters Arena, Dash, Rumble, Conquest, Duel, Picross, Quest, Masters EX, Ranger trilogy, Smile, Art Academy, Unite, Sleep, TCG Pocket, Pokopia (~25 games, ~650 source rows)
- **Section 4 — Mystery Dungeon** (rows 5860-6637): Blue/Red Rescue Team, Explorers, Adventure Squad, Gates to Infinity, Super Mystery Dungeon, etc. (5+ games, ~780 source rows)

## SoundTeMP — complete

All 46 games ingested across batches 6, 7, 8. Plan doc at [soundtemp-batch-plan.md](soundtemp-batch-plan.md) is now historical.

## Final Fantasy Detailed — pilot + Ivalice + FF7 family + FFX/X-2 complete

8 games landed. Batch plan and column-mapping rules: [ff-detailed-batch-plan.md](ff-detailed-batch-plan.md). Remaining FF Detailed files:

| Era | Games (CSV files) | Status |
|---|---|---|
| SNES | FF4, FF5, FF6 | Not started |
| PS1 | FF8, FF9, Chocobo spinoffs | Not started |
| PS2 | FF11 | Not started (FF10/10-2 done) |
| PS3+ streamed | FF12, FF13 family, FF14, FF15, FF16 | Not started |

## Schema / migration notes

- `source_family` CHECK allows `'newer_vgm','ff_detailed','hoyo_mix','g_boy_viss','soundtemp'`.
- `temp_store=MEMORY` set in [internal/db/open.go](../internal/db/open.go) so large seed migrations don't hit `SQLITE_IOERR_GETTEMPPATH` on the `FROM scratch` container.

## Known data quality items (deferred cleanup)

- **Duplicate-by-spelling products and manufacturers across families.** Multiple `SC-88 Pro` / `SC-88Pro` variants, "Sounds Good" 5-way naming variants, "Mellotron Archives" both as manufacturer and as product under Mike Pinder. Worth a single rationalization pass once all families are in.
- **Single-quoted composer aliases** like `'NieN'`, `'Chihiro'`, `'seibin'` preserved verbatim.
- **CSV mangling artifacts** preserved per Rule 2: "Sample: Gorillaz - 2023-04-05 00:00:00" (SMB 3D — Excel date-formatting damage), "Presidental" (JSRF Bob Dole), embedded newlines in some product names, etc.

## Conventions captured in CLAUDE.md and memory

- **One commit per batch.** Seed files commit together at end of batch.
- **Agents must not script.** Subagents converting CSV-to-SQL use only Read/Write/Edit tools — no Python, awk, sed, jq, etc.
- **Verification per batch**: `go build ./... && go test ./internal/migrate/...` must pass. Optionally rebuild docker compose stack, hit a few game detail pages, confirm category counts match agent reports.

## Next likely move

**Section 17 (Rhythm Thief)** — the only remaining SEGA/Atlus section. Heavy on cross-media samples (Afrique, Berto Pisano, etc.) likely modeled the same way as Billy Hatcher and Space Channel 5 — Sample: row pattern with timestamps.
