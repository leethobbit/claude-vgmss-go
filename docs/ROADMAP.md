# vgmss ingestion roadmap

What's in the database, what's pending, and where to look for batch plans.

## Status snapshot (as of 2026-05-26)

- **~253 games loaded, ~4350 usages, ~895+ equipment items, ~150+ manufacturers**
- Container deploys via `docker compose up --build`; binds host 127.0.0.1:8220 by default (override `$env:VGMSS_PORT`)
- Manufacturers and Products are first-class browsable resources via `/manufacturers` and `/equipment`

## CSV families — ingestion progress

| Family | Files | Status | Notes |
|---|---|---|---|
| NEWER VGM SEGA/Atlus | 1 file (3609 lines, 18 sections) | **COMPLETE — all 18 sections ingested** | Done; see closeout note below |
| NEWER VGM Other Games | 1 file (27801 lines, 47 publisher sections) | Started — Rare + Intelligent Systems + Activision/Sierra done (3/47) | Massive catch-all; ingesting opportunistically by publisher section |
| NEWER VGM Pokémon | 1 file | Partial — 20/26 mainline + Sections 2-4 left | Deferred while SEGA/Atlus is in progress |
| SoundTeMP | 1 file | **Complete (46/46 games)** | Full Section 1 + Section 2 ingested |
| Final Fantasy Detailed | 31 files | **8 games landed** (FF7, FFT, FFTA, FFXII:RW, FFTA2, FF7 Remake, FF7 Rebirth, FFX, FFX-2) | 22 files remaining. Conventions: [docs/ff-detailed-batch-plan.md](ff-detailed-batch-plan.md). |
| HOYO-MiX | 11 files | Genshin + HSR ingested | ZZZ, Honkai Impact 3rd, and 7 other titles remaining |
| G-Boy's V.I.S.S. | 1 file | Not started | Supplementary; can supplement existing Pokémon entries |

## SEGA/Atlus ingestion — COMPLETE

The big push is done. CSV is `reference/NEWER VGM Sound Sources - SEGAAtlus.csv` (3609 lines, 18 numbered sections — sections 17 and "Other" both use the "Section 17" header in the CSV, contributor typo). All 18 sections ingested across 19 commits (batches 16-34), spanning 172 games and ~3213 usage rows.

### Done (all sections)

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
| 34 | 17 Rhythm Thief | `0071_seed_newer_vgm_sega_atlus_rhythm_thief.sql` | 2 | ~250 |

Cumulative: **172 games, ~3213 usages** across all 18 SEGA/Atlus sections.

### SEGA/Atlus closeout

The 3609-line community CSV is fully ingested. Conventions captured for future families:
- Per-game positions start at 1, monotonic across main + stuff_to_find categories.
- "?,?" rows → product_id NULL, raw_source NULL, description in notes.
- "Manufacturer,?" rows → product_id NULL, raw_source = 'Manufacturer - ?'.
- Cross-media references ("Sample: <artist> - <track>", "Interpolation: <person> - <work>", "Live Recording: <name> (<instrument>)") → raw_source.
- Sub-sections like "Music Jingles" or "Album Release" → separate game records.
- Variant spellings (Hip-Hop / Hip Hop, eLAB / e-LAB, Sonic Implant / Sonic Implants) → distinct rows per Rule 2.
- CSV mangling artifacts preserved verbatim with notes flagging the issue (Rule 11).

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

## NEWER VGM Other Games — currently active

Massive catch-all CSV (27801 lines, 729 games, 47 publisher sections). Ingesting opportunistically by publisher section, not in any fixed order.

### Done (Other Games)

| Batch | Publisher section | Seed file | Games | Usage rows |
|---|---|---|---|---|
| 35 | Rare | `0072_seed_newer_vgm_other_rare.sql` | 18 | ~260 |
| 36 | Intelligent Systems | `0073_seed_newer_vgm_other_intelligent_systems.sql` | 21 | ~380 |
| 37 | Activision/Sierra | `0074_seed_newer_vgm_other_activision.sql` | 42 | ~497 |

### Suggested next moves (planned sequence)

Per user request, next three batches are queued: Activision/Sierra, Sony, Microsoft.

- **Activision/Sierra** — 544 CSV lines, ~28 games (Diablo, Tony Hawk's Pro Skater 1-3, Spider-Man trilogy, Crash Bandicoot Wrath of Cortex / Huge / Nitro Kart / Tag Team / Titans, Spyro Dragonfly / Orange / Hero's Tail / Legend trilogy, Simpsons Hit & Run, Futurama, WoW, X-Men Legends, Call of Duty: Black Ops I/II/III). Composer-dense.
- **Sony** — 1286 CSV lines, ~33 games — largest planned. Crash Bandicoot PS1 ~130 rows alone. Gran Turismo 1-5, Spyro trilogy, PaRappa 1-2, Wild Arms 1/3/4/5, Jak 1-3 + Daxter, Ratchet & Clank x4, Sly Cooper x3, MediEvil, vib-ribbon, Patapon, LBP 1-3, Horizon: Forbidden West.
- **Microsoft / Xbox** — 592 CSV lines, ~19 games. Halo CE + Reach, Age of Empires II, Fable, Psychonauts, Blue Dragon, Fuzion Frenzy, Project Gotham Racing, BLiNX, Minecraft (8 update sub-records), Ori.

### Other suggested moves

- **Team Shanghai Alice (Touhou Project)** — 1408 CSV lines, 29 games. Single composer/series.
- **PlatinumGames** — 130 CSV lines, ~5 games (Bayonetta, NieR:Automata, Metal Gear Rising).
- **FromSoftware** — 267 CSV lines. Dark Souls, Bloodborne, Armored Core.
- **Valve Software** — 712 CSV lines. Half-Life, Portal, TF2, CS, L4D.

## Other major families (deferred)

- **NEWER VGM Pokémon** — 5 mainline games + 3 supplementary sections (~1700 source rows).
- **HOYO-MiX** — 9 remaining titles (ZZZ, Honkai Impact 3rd, etc.).
- **Final Fantasy Detailed** — 22 remaining FF files (FF4-6 SNES, FF8/9 PS1, FF11-16).
- **G-Boy's V.I.S.S.** — Single small file, can supplement existing Pokémon entries.
