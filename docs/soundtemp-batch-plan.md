# SoundTeMP ingestion — batch plan

Pre-staged instructions for the next ingestion session. SoundTeMP is the second CSV family to land. Source: [reference/SoundTeMP Sound Sources & Information Compendium (WIP) - Sound Sources.csv](../reference/SoundTeMP%20Sound%20Sources%20%26%20Information%20Compendium%20%28WIP%29%20-%20Sound%20Sources.csv). 791 lines, 46 games across 2 sections.

## Prerequisite: schema migration (must run before any SoundTeMP seed)

The `usages.source_family` CHECK constraint currently allows only `newer_vgm`, `ff_detailed`, `hoyo_mix`, `g_boy_viss`. Add `soundtemp` before applying any SoundTeMP seed. SQLite doesn't allow modifying CHECK constraints in place — recreate the table.

Create [internal/migrate/sql/0002_alter_source_family.sql](../internal/migrate/sql/) with:

```sql
CREATE TABLE usages_new (
  id            INTEGER PRIMARY KEY,
  game_id       INTEGER NOT NULL REFERENCES games(id) ON DELETE CASCADE,
  product_id    INTEGER REFERENCES products(id) ON DELETE RESTRICT,
  raw_source    TEXT,
  path_bank     TEXT,
  preset        TEXT,
  sample_label  TEXT,
  sample_ref    TEXT,
  notes         TEXT,
  examples      TEXT,
  demo_url      TEXT,
  category      TEXT NOT NULL DEFAULT 'main'
                  CHECK (category IN ('main','unused','bonus','stuff_to_find')),
  source_family TEXT NOT NULL DEFAULT 'newer_vgm'
                  CHECK (source_family IN ('newer_vgm','ff_detailed','hoyo_mix','g_boy_viss','soundtemp')),
  position      INTEGER,
  created_at    TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at    TEXT NOT NULL DEFAULT (datetime('now'))
);

INSERT INTO usages_new
  SELECT id, game_id, product_id, raw_source, path_bank, preset,
         sample_label, sample_ref, notes, examples, demo_url,
         category, source_family, position, created_at, updated_at
    FROM usages;

DROP TABLE usages;
ALTER TABLE usages_new RENAME TO usages;
CREATE INDEX usages_by_game    ON usages(game_id, position);
CREATE INDEX usages_by_product ON usages(product_id);
```

The migrator wraps each `.sql` file in `BeginTx`, so the swap is atomic. No FK issues — `usages` is only a child (no other table references it).

Verify with: `go test ./internal/migrate/... -v -run TestSeedApplies` and confirm row count of `usages` is preserved (should be 4389 after migration on a fresh DB; rebuild docker with `data/vgmss.db` wiped to test cleanly).

## Format differences vs NEWER VGM (brief agents on these)

1. **One-row game headers, six columns total.** Brand Name | Product | Path/Bank | Program / Sample | Notes | Examples. No Demo column.
2. **Game header format**: col A only is populated. Pattern: `<Title> (<Year>) - <Composer1>, <Composer2>, ...`. Examples:
   - `Ragnarok Online (2002) - SoundTeMP, Jinbae Park, Sungwoon Jang, Goo-Hee Kwon, Seock-Jin Lee, Soo-Il Park, Goomin Nam`
   - `Corum Online (2003) - SoundTeMP` (composer = just SoundTeMP)
   - `Stellar Blade (2024) - ESTIMATE, Jinbae Park, 'seibin', 'Benicx', Youngji Lee, Oliver Good,` (trailing comma — trim)
3. **No (Released: full date)** — only year. Store `released = '2002'` etc.
4. **Composers** include studio names ("SoundTeMP", "ESTIMATE", "4TUNE") as if they were people. Treat them as composer names verbatim.
5. **Quoted aliases** like `'NieN'`, `'seibin'`, `'Chihiro'` — preserve the single quotes around them in the composers field. They're not SQL apostrophes; they're stylistic markers in source.
6. **Platform**: not specified for any game. Store NULL.
7. **Self-flagged WIP**: rows 1-6 are header + research credits + WIP warning. Rows 7+ are section/game/data. Skip rows 1-6.
8. **source_family = 'soundtemp'** (NOT `newer_vgm`).
9. **Subsections**: "Stuff to find/Confirm or Deconfirm/Potential leads" subsection header at e.g. row 25. Map to `category='stuff_to_find'`. Same as Pokémon convention.
10. **WIP-quality data**: many notes say "Could be ProSamples 35", "Possibly another library entirely", "Not sure about this in retrospect". Preserve verbatim.

## Section + game inventory

### Section 1 — Live Service Games (rows 7-563, 26 games)

| Row | Game | Year | Rows | Composers (head) |
|---|---|---|---|---|
| 9 | 4LEAF | 2000 | 18 | Jinbae Park, Goomin Nam, Sungwoon Jang |
| 27 | Ragnarok Online | 2002 | 91 | SoundTeMP, Jinbae Park, Sungwoon Jang, ... |
| 118 | Fortress 3 Paewang | 2002 | 9 | SoundTeMP, Jinbae Park, Dong-Il Kwak, Seock-Jin Lee |
| 127 | Talesweaver | 2003 | 103 | Jinbae Park, Goomin Nam, Jee-Hoon Park, ... |
| 230 | Seal Online | 2003 | 27 | SoundTeMP, Jinbae Park, ..., 'Chihiro' |
| 257 | Corum Online | 2003 | 6 | SoundTeMP |
| 263 | Flyff | 2004 | 50 | SoundTeMP, Jinbae Park, Dong-Il Kwak, Seung Yeol Kim |
| 313 | RF Online | 2004 | 2 | SoundTeMP |
| 315 | Silkroad Online | 2005 | 7 | SoundTeMP, Park Jung-Ah |
| 322 | Yogurting | 2005 | 20 | Sungwoon Jang, Goomin Nam, Kazuo Sato |
| 342 | Granado Espada | 2006 | 30 | SoundTeMP, Dong-Il Kwak, Osamu Kubota, Junsung Kim |
| 372 | La Tale | 2006 | 59 | Jinbae Park, Hyuntaek Yun, Hwang Joo-eun, Goohyun Jung, Shin Dong Hwi |
| 431 | Xenepic Online | 2007 | 21 | SoundTeMP, Dong-Il Kwak |
| 452 | Street Gears | 2008 | 7 | Jinbae Park, Seung Yeol Kim |
| 459 | G2 Guns Gunner | 2009 | 5 | Jinbae Park, 'NieN', 'Electronic Boutique', 'makou' |
| 464 | Neo Steam: The Shattered Continent | 2009 | 5 | SoundTeMP |
| 469 | Deep Deep Dungeon | 2010 | 4 | Jinbae Park |
| 473 | Monarch: Heroes of a New Age | 2013 | 5 | Goomin Nam |
| 478 | Qurare: Magic Library | 2014 | 6 | Jinbae Park, Goomin Nam, 'TAK' |
| 484 | Mabinogi Duel | 2015 | 2 | ESTIMATE, Jinbae Park, Goomin Nam |
| 486 | Tree of Savior | 2016 | 26 | SoundTeMP, Jinbae Park, Dong-Il Kwak, ..., 'Symphonix' |
| 512 | Destiny Child | 2016 | 22 | Jinbae Park, 'seibin', 'Benicx', 'Muwen', 'ko.yo' |
| 534 | Ragnarok M: Eternal Love | 2017 | 6 | SoundTeMP, ESTIMATE, Goomin Nam |
| 540 | The Roll of Genesis | 2018 | 5 | Goomin Nam |
| 545 | Spiritwish | 2019 | 8 | SoundTeMP, Corners Groove, QUESTRO SOUND, Goo-Hee Kwon, Goomin Nam, Sungwoon Jang |
| 553 | Exos Heroes | 2019 | 11 | ESTIMATE, Jinbae Park, Goomin Nam |

### Section 2 — Package Games (rows 564-790, 20 games)

| Row | Game | Year | Rows | Composers (head) |
|---|---|---|---|---|
| 567 | Genocide 2: Master of the Dark Communion | 1995 | 2 | Goo-Hee Kwon, Dong-Il Kwak, Seock-Jin Lee |
| 569 | Astrocounter of Crescents | 1996 | 3 | Goo-Hee Kwon, Dong-Il Kwak |
| 572 | The Rhapsody of Zephyr | 1998 | 6 | 4TUNE |
| 578 | Princess Maker 3: Fairy Tales Come True | 1998 | 12 | Goo-Hee Kwon, Dong-Il Kwak |
| 590 | Ant Man 2 | 1998 | 3 | SoundTeMP |
| 593 | Tempest | 1998 | 3 | SoundTeMP |
| 596 | Merturl Wizard | 1998 | 5 | SoundTeMP |
| 601 | Leithian: In the Abyss | 1999 | 2 | SoundTeMP, A.Dam |
| 603 | The War of Genesis III | 1999 | 19 | Sungwoon Jang, Jinbae Park |
| 622 | Arcturus: The Curse and Loss of Divinity | 2000 | 81 | SoundTeMP, Kyeong Hwan No, Seong Gyu Yang, Wonsul Lee, Yeojin Jeong |
| 703 | Magna Carta: The Phantom of Avalanche | 2001 | 10 | Sungwoon Jang, Roh Hyoung Woo, Sang-Ho Lee, Jinbae Park |
| 713 | Narsillion - Leithian Another Story | 2002 | 16 | SoundTeMP, Seock-Jin Lee, Dong-Il Kwak, Goo-Hee Kwon |
| 729 | Crazy Arcade BnB Adventure | 2002 | 6 | Jinbae Park, Goomin Nam, Sungwoon Jang |
| 735 | AceSaga: The Lament of a Raven | 2002 | 8 | SoundTeMP, Dong-Il Kwak |
| 743 | War of Chunrang | 2003 | 15 | SoundTeMP, Seock-Jin Lee |
| 758 | Magna Carta: Crimson Stigmata / Tears of Blood | 2004 | 6 | Sungwoon Jang |
| 764 | Magna Carta II | 2009 | 10 | Sungwoon Jang, Roh Hyoung Woo (See note for live performers) |
| 774 | MapleStory Cave Crawlers | 2011 | 7 | Jinbae Park |
| 781 | RUNE the First Wanderer | 2020 | 3 | Goomin Nam, 'SPIKE', 'E.Q.P', 'DoubleTO' (See note for live performers) |
| 784 | Stellar Blade | 2024 | 7 | ESTIMATE, Jinbae Park, 'seibin', 'Benicx', Youngji Lee, Oliver Good |

## Suggested batching

Three agents per batch, like Pokémon. Group small games into single files to keep agent counts reasonable. Each file is one seed migration covering one or more games.

### Batch 1 — Section 1 early-to-mid (3 agents, ~300 source rows)

- **Agent A → `0022_seed_soundtemp_4leaf_ragnarok.sql`** — 4LEAF (rows 9-26) + Ragnarok Online (rows 27-117). ~109 rows.
- **Agent B → `0023_seed_soundtemp_fortress3_talesweaver.sql`** — Fortress 3 Paewang (118-126) + Talesweaver (127-229). ~112 rows.
- **Agent C → `0024_seed_soundtemp_seal_corum_flyff.sql`** — Seal Online (230-256) + Corum Online (257-262) + Flyff (263-312). ~83 rows.

### Batch 2 — Section 1 mid-to-late (3 agents, ~250 source rows)

- **Agent A → `0025_seed_soundtemp_rfsilkroadyogurting.sql`** — RF Online (313-314) + Silkroad Online (315-321) + Yogurting (322-341) + Granado Espada (342-371) + La Tale (372-430). ~118 rows.
- **Agent B → `0026_seed_soundtemp_xenepic_street_g2_neo_deep_monarch_qurare_mabinogi.sql`** — 8 small games rows 431-485. ~54 rows.
- **Agent C → `0027_seed_soundtemp_savior_destiny_ragm_genesis_spirit_exos.sql`** — Tree of Savior + Destiny Child + Ragnarok M + Roll of Genesis + Spiritwish + Exos Heroes, rows 486-563. ~77 rows.

### Batch 3 — Section 2 Package Games (3 agents, ~225 source rows)

- **Agent A → `0028_seed_soundtemp_pkg_early.sql`** — Genocide 2 + Astrocounter + Rhapsody of Zephyr + Princess Maker 3 + Ant Man 2 + Tempest + Merturl Wizard + Leithian, rows 567-602. ~36 rows.
- **Agent B → `0029_seed_soundtemp_warofgenesis3_arcturus.sql`** — The War of Genesis III + Arcturus, rows 603-702. ~99 rows.
- **Agent C → `0030_seed_soundtemp_pkg_late.sql`** — Magna Carta Phantom + Narsillion + Crazy Arcade + AceSaga + War of Chunrang + Magna Carta Crimson + Magna Carta II + MapleStory CC + RUNE + Stellar Blade, rows 703-790. ~88 rows.

After batch 3 the SoundTeMP family is fully ingested.

## Agent prompt template (adapt per batch)

Every agent prompt should include:

1. **The no-scripting rule** (verbatim from Pokémon prompts).
2. **The file path to read** and the exact row range.
3. **The output file path** (next-numbered seed in `internal/migrate/seed/`).
4. **Per-game metadata table** — for each game in the agent's range, supply: title, year (becomes `released`), composers list. Have the agent extract these by parsing col A of the game header row, but cross-check against the table here.
5. **Schema/format note**: `source_family = 'soundtemp'`. Platform NULL. CSV is 6 columns, no Demo column — the `demo_url` column should be NULL for every usage row.
6. **Multi-game-per-file pattern**: each file may contain multiple `INSERT INTO games` statements (one per game) and one `INSERT INTO usages` block that covers all games' rows. Positions restart from 1 within each game (per existing convention).
7. **Reference example**: still `internal/migrate/seed/0009_seed_pokemon_b2w2.sql` for structure, plus the schema migration `internal/migrate/sql/0002_alter_source_family.sql` to confirm `'soundtemp'` is a valid source_family value.

## When the user returns

The probable next message will be something like "run batch 1 of SoundTeMP" or just "go". Steps to execute:

1. Apply the schema migration:
   - Write [internal/migrate/sql/0002_alter_source_family.sql](../internal/migrate/sql/) with the SQL above.
   - Run `go test ./internal/migrate/... -v -run TestSeedApplies` locally to verify.
   - Wipe `data/vgmss.db*` and rebuild docker so the new schema + existing seeds apply cleanly. Verify `usages` count still equals 4389.
2. Launch the three Batch 1 agents in parallel with prompts derived from the template above.
3. Verify outputs (per-file row counts in agent reports), rebuild docker, check game pages.
4. Commit: one commit containing the schema migration + the three batch 1 seed files. Message like `Batch 6: schema migration + SoundTeMP Section 1 part 1 (4LEAF, Ragnarok, Fortress 3, Talesweaver, Seal, Corum, Flyff)`.
