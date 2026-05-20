# vgmss ingestion roadmap

What's in the database, what's pending, and where to look for batch plans.

## Status snapshot (as of 2026-05-20)

- **20 games loaded, 4389 usages, 305 equipment items, 30+ manufacturers**
- All from `NEWER VGM Sound Sources - Pokémon.csv` (one of ~50 reference CSVs)
- 5 git commits on `main` (initial + 4 batches)
- Container deploys via `docker compose up --build`; binds host 127.0.0.1:8080 by default (override `$env:VGMSS_PORT`)

## CSV families — ingestion progress

| Family | Files | Status | Notes |
|---|---|---|---|
| NEWER VGM | 13 game tabs + 2 catalog | Pokémon partial (20/26 games) | Most-covered family. Schema designed against this shape first. |
| SoundTeMP | 1 file (WIP-flagged source) | **Up next** | See [soundtemp-batch-plan.md](soundtemp-batch-plan.md). Different header format, needs schema migration. |
| Final Fantasy Detailed | 31 files | Not started | Per-sample granularity with `Sample #` — exercises reserved `sample_label`/`sample_ref` columns. |
| HOYO-MiX | 11 files | Not started | Sparse, modern games (Genshin, HSR, ZZZ). |
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

## Schema / migration notes

- `source_family` CHECK constraint currently allows `'newer_vgm','ff_detailed','hoyo_mix','g_boy_viss'`. **SoundTeMP requires adding `'soundtemp'`** — see [soundtemp-batch-plan.md](soundtemp-batch-plan.md) for the schema migration design.
- `temp_store=MEMORY` is set in [internal/db/open.go](../internal/db/open.go) so large seed migrations don't hit `SQLITE_IOERR_GETTEMPPATH` on the `FROM scratch` container.
- Seed files apply via `migrate.Seed()`; schema files via `migrate.Run()`. Tracking key prefixes (`schema:` / `seed:`) live in `schema_migrations`.

## Conventions captured in CLAUDE.md and memory

- **One commit per batch.** Seed files commit together at end of batch.
- **Agents must not script.** Subagents converting CSV-to-SQL use only Read/Write/Edit tools — no Python, awk, sed, jq, etc.
- **Verification per batch**: rebuild docker compose stack, hit a few game detail pages, confirm category counts match agent reports.
