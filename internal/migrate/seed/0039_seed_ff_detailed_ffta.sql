-- Source: reference/Final Fantasy Sound Sources (Detailed) - Ivalice Alliance.csv
-- Section 3: Final Fantasy Tactics Advance (CSV rows 169-260).
-- The CSV section is mostly track stubs — 32 numbered track headers, only 3 carry
-- any actual sample rows (tracks 2, 3, 15). 17 total rows ingested.
-- Sample # is absent on all rows in this section (streamed-arrangement style).
-- examples = parent track title; sub-header rows ("Original Soundtrack Disc 2 ...")
-- and bare track headers are dropped.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Miroslav Vitous');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Miroslav Vitous' COLLATE NOCASE), 'Orchestra String Ensemble',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Miroslav Vitous' COLLATE NOCASE), 'Woodwind and Brass Ensembles 2.0',    'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Final Fantasy Tactics Advance',
   'Game Boy Advance, Wii U Virtual Console',
   '2003-02-14',
   'Nobuo Uematsu, Hitoshi Sakimoto, Ayako Saso, Kaori Ohkoshi',
   'nobuo uematsu, hitoshi sakimoto, ayako saso, kaori ohkoshi',
   'Source: Final Fantasy Sound Sources (Detailed) - Ivalice Alliance.csv (Section 3). CSV section is heavily a work-in-progress — 32 named tracks, only 3 have any sample-source data filled in (tracks 2, 3, 15). The "Original Soundtrack Disc 2 (Streamed arrangements)" sub-section is the only one with content.');

INSERT INTO usages
  (game_id, product_id, sample_label, sample_ref, path_bank, preset, notes, raw_source, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Track 2: Snow Dancing in the Schoolyard
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'), NULL, 'Triangle', NULL, NULL, NULL, NULL, NULL, '2. Snow Dancing in the Schoolyard', 'main', 'ff_detailed', 1),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'), NULL, 'Triangle', NULL, NULL, NULL, NULL, NULL, '2. Snow Dancing in the Schoolyard', 'main', 'ff_detailed', 2),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Orchestra String Ensemble' COLLATE NOCASE),
   'Cello Sustain', NULL, 'Cellos  ', 'CES Expressivo', NULL, NULL, '2. Snow Dancing in the Schoolyard', 'main', 'ff_detailed', 3),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'), NULL, 'French Horn Ensemble', NULL, NULL, NULL, NULL, NULL, '2. Snow Dancing in the Schoolyard', 'main', 'ff_detailed', 4),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'), NULL, 'French Horn Ensemble', NULL, NULL, NULL, NULL, NULL, '2. Snow Dancing in the Schoolyard', 'main', 'ff_detailed', 5),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Flute Ensemble', NULL, 'Woodwinds -> Flutes  ', 'Flutes Port', NULL, NULL, '2. Snow Dancing in the Schoolyard', 'main', 'ff_detailed', 6),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Flute Ensemble', NULL, 'Woodwinds -> Flutes  ', 'Flutes X', NULL, NULL, '2. Snow Dancing in the Schoolyard', 'main', 'ff_detailed', 7),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Oboe Ensemble', NULL, 'Woodwinds -> Oboes ', 'Oboe X', NULL, NULL, '2. Snow Dancing in the Schoolyard', 'main', 'ff_detailed', 8),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Oboe Ensemble', NULL, 'Woodwinds -> Oboes ', 'Oboe Port', NULL, NULL, '2. Snow Dancing in the Schoolyard', 'main', 'ff_detailed', 9),
  -- =========================================================================
  -- Track 3: Companions that Surpassed Their Races
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Trumpet ', NULL, 'Tps', 'Tps Port 1', NULL, NULL, '3. Companions that Surpassed Their Races', 'main', 'ff_detailed', 10),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Trumpet ', NULL, 'Tps', 'Tps X', NULL, NULL, '3. Companions that Surpassed Their Races', 'main', 'ff_detailed', 11),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Trumpet ', NULL, 'Tps', 'Tps Stacc', NULL, NULL, '3. Companions that Surpassed Their Races', 'main', 'ff_detailed', 12),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-02 Orchestral' COLLATE NOCASE),
   'Fast String Ensemble', NULL, 'XP-X', '043 Vivace Strs', NULL, NULL, '3. Companions that Surpassed Their Races', 'main', 'ff_detailed', 13),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-02 Orchestral' COLLATE NOCASE),
   'Slow String Ensemble', NULL, 'XP-X', '001 Warm Violins', NULL, NULL, '3. Companions that Surpassed Their Races', 'main', 'ff_detailed', 14),
  -- =========================================================================
  -- Track 15: Tough Battle
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Flute Ensemble', NULL, 'Woodwinds -> Flutes  ', 'Flutes Port', NULL, NULL, '15. Tough Battle', 'main', 'ff_detailed', 15),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Flute Ensemble', NULL, 'Woodwinds -> Flutes  ', 'Flutes X', NULL, NULL, '15. Tough Battle', 'main', 'ff_detailed', 16),
  ((SELECT id FROM games WHERE title = 'Final Fantasy Tactics Advance'), NULL, 'Fast String Ensemble', NULL, NULL, NULL, NULL, NULL, '15. Tough Battle', 'main', 'ff_detailed', 17);
