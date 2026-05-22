# vgmss ingestion roadmap

What's in the database, what's pending, and where to look for batch plans.

## Status snapshot (as of 2026-05-21)

- **73 games loaded, ~5795 usages, ~470 equipment items, ~90 manufacturers**
- FF Detailed family: FF7 pilot + Ivalice batch (FFT, FFTA, FFXII:RW, FFTA2) + FF7 Remake/Rebirth landed
- Container deploys via `docker compose up --build`; binds host 127.0.0.1:8220 by default (override `$env:VGMSS_PORT`)

## CSV families — ingestion progress

| Family | Files | Status | Notes |
|---|---|---|---|
| NEWER VGM | 13 game tabs + 2 catalog | Pokémon partial (20/26 mainline; 5 mainline + Sections 2-4 left) | Most-covered family. Schema designed against this shape first. |
| SoundTeMP | 1 file (WIP-flagged source) | **Complete (46/46 games)** | Full Section 1 + Section 2 ingested. |
| Final Fantasy Detailed | 31 files | **7 games landed (FF7, FFT, FFTA, FFXII:RW, FFTA2, FF7 Remake, FF7 Rebirth)** — 24 files / 1 deferred game (Vagrant Story) left | Per-sample granularity with `Sample #` (or per-instrument shape for streamed-era titles). First family to populate `usages.sample_label` and `usages.sample_ref`. Conventions: [docs/ff-detailed-batch-plan.md](ff-detailed-batch-plan.md). |
| HOYO-MiX | 11 files | Genshin + HSR ingested (4 part-files for Genshin, 1 for HSR) | ZZZ, Honkai Impact 3rd, and 7 other titles remaining. |
| G-Boy's V.I.S.S. | 1 file | Not started | Supplementary; can supplement existing Pokémon entries. |

## NEWER VGM Pokémon — what's done and what's left

### Done (5 commits, 20 games)

Each row is one seed migration file under `internal/migrate/seed/`.

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
- **Section 3 — Misc** (rows 5211-5859): Pokémon Cries variants, Snap, Stadium, Stadium 2, Masters Arena, Dash, Rumble, Conquest, Duel, Rumble U, Rumble World, Picross, Quest, Masters EX, Ranger trilogy, Smile, Art Academy, Unite, Sleep, TCG Pocket, Pokopia (~25 games, ~650 source rows)
- **Section 4 — Mystery Dungeon** (rows 5860-6637): Blue/Red Rescue Team, Explorers, Adventure Squad, Gates to Infinity, Super Mystery Dungeon, etc. (5+ games, ~780 source rows)

## SoundTeMP — complete

All 46 games ingested across batches 6, 7, 8. Plan doc at [soundtemp-batch-plan.md](soundtemp-batch-plan.md) is now historical.

| Commit | Games | File range |
|---|---|---|
| `6458de8` batch 6 | 4LEAF, Ragnarok Online, Fortress 3, Talesweaver, Seal Online, Corum Online, Flyff (+ schema migration 0002) | seed 0022-0024 |
| `b00bfca` batch 7 | RF Online, Silkroad, Yogurting, Granado Espada, La Tale, Xenepic, Street Gears, G2, Neo Steam, Deep Deep, Monarch, Qurare, Mabinogi Duel, Tree of Savior, Destiny Child, Ragnarok M, Roll of Genesis, Spiritwish, Exos Heroes | seed 0025-0027 |
| `e6ce4d2` batch 8 | Genocide 2, Astrocounter, Rhapsody of Zephyr, Princess Maker 3, Ant Man 2, Tempest, Merturl Wizard, Leithian, War of Genesis III, Arcturus, Magna Carta trilogy, Narsillion, Crazy Arcade BnB, AceSaga, War of Chunrang, MapleStory CC, RUNE, Stellar Blade | seed 0028-0030 |

## Schema / migration notes

- `source_family` CHECK now allows `'newer_vgm','ff_detailed','hoyo_mix','g_boy_viss','soundtemp'`. Migration `0002_alter_source_family.sql` recreated the `usages` table via CREATE-COPY-DROP-RENAME (SQLite can't alter CHECK in place).
- `temp_store=MEMORY` is set in [internal/db/open.go](../internal/db/open.go) so large seed migrations don't hit `SQLITE_IOERR_GETTEMPPATH` on the `FROM scratch` container.
- Seed files apply via `migrate.Seed()`; schema files via `migrate.Run()`. Tracking key prefixes (`schema:` / `seed:`) live in `schema_migrations`.

## Known data quality items (deferred cleanup)

- **Duplicate-by-spelling products across families.** SoundTeMP's `Roland / SC-88Pro` and NEWER VGM Pokémon's `Roland / SOUND Canvas SC-88 Pro` are the same hardware but distinct rows in the `products` table. Reverse lookup on equipment splits across these duplicates. Same issue may surface for `KORG TRINITY pro` vs `TRINITY Pro` (NOCASE collation dedupes case but not extra words). Worth a single rationalization pass once all families are in — possibly via a script that renames by canonical-name lookup table, or via UI-driven merges once we have an admin UX.
- **Single-quoted composer aliases** like `'NieN'`, `'Chihiro'`, `'seibin'` are preserved verbatim in `composers`. They'd disambiguate from regular names in a future composer index but require explicit handling there.
- **Trailing parenthetical notes** in some SoundTeMP composers field (e.g. `Sungwoon Jang, Roh Hyoung Woo (See note for live performers)`) are kept verbatim. These could be split into `notes` if we ever do a composer-entity refactor.

## Conventions captured in CLAUDE.md and memory

- **One commit per batch.** Seed files commit together at end of batch.
- **Agents must not script.** Subagents converting CSV-to-SQL use only Read/Write/Edit tools — no Python, awk, sed, jq, etc.
- **Verification per batch**: rebuild docker compose stack, hit a few game detail pages, confirm category counts match agent reports.

## Final Fantasy Detailed — pilot complete, family roadmap

FF7 pilot landed in `0037_seed_ff_detailed_ff7.sql` (106 usages from 93 main + 13 demo samples; 15 new manufacturers, 22 new products). Batch plan and column-mapping rules live in [ff-detailed-batch-plan.md](ff-detailed-batch-plan.md).

**Known UX gap surfaced by the pilot:** the games detail template doesn't yet render the `sample_label` / `sample_ref` columns. FF7's per-sample data is queryable via SQL but not visible per-sample on the game detail page — every row currently shows blank Path/Bank/Preset columns where they were unknown, and the Sample # / Sample Description aren't surfaced at all. Fixing this is a separate small change to `games_detail.html` (and possibly a conditional render keyed off `source_family = 'ff_detailed'`).

### Remaining FF Detailed work

1. ~~**Ivalice Alliance**~~ — done (FFT, FFTA, FFXII:RW, FFTA2 landed; Vagrant Story deferred).
2. ~~**FF7 Remake Trilogy**~~ — done (Remake + Rebirth landed; the third Remake game has no CSV section yet).
3. **SNES era** (FF4, FF5, FF6) — small files; candidate grouping.
4. **PS1 era** (FF8, FF9, plus Chocobo spinoffs) — pair with FF7 conventions.
5. **PS2 era** (FF10, FF10-2, FF11) — own conventions per Rules.csv ("List by OST placement, then sample").
6. **PS3+ streamed** (FF12, FF13 family, FF14, FF15, FF16) — different style ("List ALL instruments heard in track"), more sourced rows.

## Next likely move

Pick one:

1. **Continue FF Detailed** — Ivalice Alliance is the natural next batch (the original three-CSV ask). Mapping rules are now locked in.
2. **Patch the UI gap first** — surface `sample_label` / `sample_ref` on `games_detail.html` before more FF Detailed data lands, so the data we ingested is actually visible.
3. **Finish Pokémon mainline Section 1** (~5 small games left, ~465 source rows). One small batch.
4. **Pause ingestion, work on data quality** — the SC-88 Pro duplication problem will only get worse as more families land. Could write a one-shot SQL cleanup migration that renames products to canonical names.
