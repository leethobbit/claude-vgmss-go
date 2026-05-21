-- Source: reference/HOYO-MiX Sound Sources - Genshin Impact.csv rows 1586-3312
-- Part 2 of 4. The Genshin Impact game row is created by file 0032 (part 1).
-- Albums covered (5):
--   - Millelith's Watch (Discs 1, 2, 3)
--   - The Shimmering Voyage Vol. 2 (Discs 1, 2, 3)
--   - Forest of Jnana and Vidya (Discs 1, 2, 3, 4)
--   - The Unfathomable Sand Dunes (Discs 1, 2, 3)
--   - The Shimmering Voyage Vol. 3 (Discs 1, 2, 3)
-- Pattern: subquery FK lookup for game_id, per-row Live Recording UPDATEs at end.
-- Recording Studio multi-line annotation blocks are dropped.
-- Empty rows and album/disc header rows are skipped.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Native Instruments'),
  ('EastWest'),
  ('Best Service'),
  ('Spectrasonics'),
  ('Heavyocity'),
  ('Xfer Records'),
  ('XLN Audio'),
  ('Steinway & Sons');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'Noire',                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'Ashlight',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'Action Strikes',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Symphonic Orchestra',      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Ra',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Forest Kingdom 3',         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Ethno World Instruments',  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Keyscape',                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Stylus RMX',               'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'         COLLATE NOCASE), 'Damage',                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'         COLLATE NOCASE), 'Damage 2',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Xfer Records'       COLLATE NOCASE), 'Serum',                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'          COLLATE NOCASE), 'Addictive Keys',           'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinway & Sons'    COLLATE NOCASE), 'Steinway D-274',           'Instrument');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Album: Millelith's Watch
  -- =========================================================================
  -- Disc 1: Wrinkled Peaks
  -- 1. Wordless Cliffs (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Wordless Cliffs', 'main', 'hoyo_mix', 1),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Wordless Cliffs', 'main', 'hoyo_mix', 2),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Wordless Cliffs', 'main', 'hoyo_mix', 3),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Wordless Cliffs', 'main', 'hoyo_mix', 4),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Wordless Cliffs', 'main', 'hoyo_mix', 5),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Millelith''s Watch', '1. Wordless Cliffs', 'main', 'hoyo_mix', 6),
  -- 2. On the Vast Earth (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '2. On the Vast Earth', 'main', 'hoyo_mix', 7),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch | Unresolved: EastWest | Strings to be found', '2. On the Vast Earth', 'main', 'hoyo_mix', 8),
  -- 3. Lithic Oath (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '3. Lithic Oath', 'main', 'hoyo_mix', 9),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '3. Lithic Oath', 'main', 'hoyo_mix', 10),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '3. Lithic Oath', 'main', 'hoyo_mix', 11),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '3. Lithic Oath', 'main', 'hoyo_mix', 12),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '3. Lithic Oath', 'main', 'hoyo_mix', 13),
  -- 4. Under the Clear Sky (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '4. Under the Clear Sky', 'main', 'hoyo_mix', 14),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '4. Under the Clear Sky', 'main', 'hoyo_mix', 15),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '4. Under the Clear Sky', 'main', 'hoyo_mix', 16),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '4. Under the Clear Sky', 'main', 'hoyo_mix', 17),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '4. Under the Clear Sky', 'main', 'hoyo_mix', 18),
  -- 5. As Dusk Falls (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '5. As Dusk Falls', 'main', 'hoyo_mix', 19),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '5. As Dusk Falls', 'main', 'hoyo_mix', 20),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '5. As Dusk Falls', 'main', 'hoyo_mix', 21),
  -- 6. Beyond the Distant Horizon (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '6. Beyond the Distant Horizon', 'main', 'hoyo_mix', 22),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '6. Beyond the Distant Horizon', 'main', 'hoyo_mix', 23),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '6. Beyond the Distant Horizon', 'main', 'hoyo_mix', 24),
  -- 7. On a Cold Night (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '7. On a Cold Night', 'main', 'hoyo_mix', 25),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   NULL, NULL, 'Album: Millelith''s Watch', '7. On a Cold Night', 'main', 'hoyo_mix', 26),
  -- 8. Defenders' Volition (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '8. Defenders'' Volition', 'main', 'hoyo_mix', 27),
  -- 9. Solitary Stray Bird (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '9. Solitary Stray Bird', 'main', 'hoyo_mix', 28),
  -- 10. The Starlit Dome (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '10. The Starlit Dome', 'main', 'hoyo_mix', 29),
  -- 11. The Faint Distant Mountains (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '11. The Faint Distant Mountains', 'main', 'hoyo_mix', 30),
  -- 12. Moon Above the Valley (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '12. Moon Above the Valley', 'main', 'hoyo_mix', 31),
  -- 13. Wandering Clouds (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '13. Wandering Clouds', 'main', 'hoyo_mix', 32),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '13. Wandering Clouds', 'main', 'hoyo_mix', 33),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '13. Wandering Clouds', 'main', 'hoyo_mix', 34),
  -- Disc 2: Underground Adventures
  -- 4. Falls the Shadow (Yijun Jiang, Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '4. Falls the Shadow', 'main', 'hoyo_mix', 35),
  -- 6. A Moment of Unsettledness (Yijun Jiang, Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '6. A Moment of Unsettledness', 'main', 'hoyo_mix', 36),
  -- 9. A Glimmer of Hope (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Ashlight' COLLATE NOCASE),
   'Atmosphere', 'Abuse of Confidence', 'Album: Millelith''s Watch', '9. A Glimmer of Hope', 'main', 'hoyo_mix', 37),
  -- 10. Crossing Roads (Yijun Jiang, Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '10. Crossing Roads', 'main', 'hoyo_mix', 38),
  -- 14. A Venture Into the Unknown (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '14. A Venture Into the Unknown', 'main', 'hoyo_mix', 39),
  -- 15. Decayed in the Darkness (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '15. Decayed in the Darkness', 'main', 'hoyo_mix', 40),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '15. Decayed in the Darkness', 'main', 'hoyo_mix', 41),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Millelith''s Watch', '15. Decayed in the Darkness', 'main', 'hoyo_mix', 42),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Millelith''s Watch', '15. Decayed in the Darkness', 'main', 'hoyo_mix', 43),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Millelith''s Watch', '15. Decayed in the Darkness', 'main', 'hoyo_mix', 44),
  -- 16. A Shard From Past Glories (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '16. A Shard From Past Glories', 'main', 'hoyo_mix', 45),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '16. A Shard From Past Glories', 'main', 'hoyo_mix', 46),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Millelith''s Watch', '16. A Shard From Past Glories', 'main', 'hoyo_mix', 47),
  -- 18. The Long Lost Days (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '18. The Long Lost Days', 'main', 'hoyo_mix', 48),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '18. The Long Lost Days', 'main', 'hoyo_mix', 49),
  -- 20. A Route to Fantasies (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '20. A Route to Fantasies', 'main', 'hoyo_mix', 50),
  -- 21. Stories of Remote Antiquity (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '21. Stories of Remote Antiquity', 'main', 'hoyo_mix', 51),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '21. Stories of Remote Antiquity', 'main', 'hoyo_mix', 52),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '21. Stories of Remote Antiquity', 'main', 'hoyo_mix', 53),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '21. Stories of Remote Antiquity', 'main', 'hoyo_mix', 54),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: Millelith''s Watch', '21. Stories of Remote Antiquity', 'main', 'hoyo_mix', 55),
  -- Disc 3: Battles of the Chasm
  -- 1. Irresistible Force (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Irresistible Force', 'main', 'hoyo_mix', 56),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Irresistible Force', 'main', 'hoyo_mix', 57),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Irresistible Force', 'main', 'hoyo_mix', 58),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Irresistible Force', 'main', 'hoyo_mix', 59),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Irresistible Force', 'main', 'hoyo_mix', 60),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Irresistible Force', 'main', 'hoyo_mix', 61),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '1. Irresistible Force', 'main', 'hoyo_mix', 62),
  -- 2. Tremor of Menace (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '2. Tremor of Menace', 'main', 'hoyo_mix', 63),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '2. Tremor of Menace', 'main', 'hoyo_mix', 64),
  -- 3. Seething Animosity (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '3. Seething Animosity', 'main', 'hoyo_mix', 65),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Millelith''s Watch', '3. Seething Animosity', 'main', 'hoyo_mix', 66),
  -- 4. Undercurrents of Hostility (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '4. Undercurrents of Hostility', 'main', 'hoyo_mix', 67),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '4. Undercurrents of Hostility', 'main', 'hoyo_mix', 68),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Acoustic Pianos', 'LA Custom C7 Grand Piano', 'Album: Millelith''s Watch', '4. Undercurrents of Hostility', 'main', 'hoyo_mix', 69),
  -- 5. Impending Danger (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '5. Impending Danger', 'main', 'hoyo_mix', 70),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '5. Impending Danger', 'main', 'hoyo_mix', 71),
  -- 6. Inevitable Conflict (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '6. Inevitable Conflict', 'main', 'hoyo_mix', 72),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '6. Inevitable Conflict', 'main', 'hoyo_mix', 73),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Millelith''s Watch', '6. Inevitable Conflict', 'main', 'hoyo_mix', 74),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: Millelith''s Watch', '6. Inevitable Conflict', 'main', 'hoyo_mix', 75),
  -- =========================================================================
  -- Album: The Shimmering Voyage Vol. 2
  -- =========================================================================
  -- Disc 1: A Vagrant Breeze
  -- 1. Pathos of Shirasagi (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '1. Pathos of Shirasagi', 'main', 'hoyo_mix', 76),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2 | Steinway & Sons Steinway D-274', '1. Pathos of Shirasagi', 'main', 'hoyo_mix', 77),
  -- 2. The Comrades' Ambush (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '2. The Comrades'' Ambush', 'main', 'hoyo_mix', 78),
  -- 3. Trial of Thunder (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '3. Trial of Thunder', 'main', 'hoyo_mix', 79),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '3. Trial of Thunder', 'main', 'hoyo_mix', 80),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '3. Trial of Thunder', 'main', 'hoyo_mix', 81),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: The Shimmering Voyage Vol. 2', '3. Trial of Thunder', 'main', 'hoyo_mix', 82),
  -- 4. Shogun's Abdication (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '4. Shogun''s Abdication', 'main', 'hoyo_mix', 83),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '4. Shogun''s Abdication', 'main', 'hoyo_mix', 84),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '4. Shogun''s Abdication', 'main', 'hoyo_mix', 85),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage Vol. 2', '4. Shogun''s Abdication', 'main', 'hoyo_mix', 86),
  -- 5. Unpredicted Conspiracy (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '5. Unpredicted Conspiracy', 'main', 'hoyo_mix', 87),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: The Shimmering Voyage Vol. 2', '5. Unpredicted Conspiracy', 'main', 'hoyo_mix', 88),
  -- 6. A Sense of Foreboding (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '6. A Sense of Foreboding', 'main', 'hoyo_mix', 89),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '6. A Sense of Foreboding', 'main', 'hoyo_mix', 90),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Hits', 'Big Cinematic Hits', 'Album: The Shimmering Voyage Vol. 2 | A4', '6. A Sense of Foreboding', 'main', 'hoyo_mix', 91),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage Vol. 2', '6. A Sense of Foreboding', 'main', 'hoyo_mix', 92),
  -- 7. Wreck of Eternal Bane (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '7. Wreck of Eternal Bane', 'main', 'hoyo_mix', 93),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '7. Wreck of Eternal Bane', 'main', 'hoyo_mix', 94),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '7. Wreck of Eternal Bane', 'main', 'hoyo_mix', 95),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage Vol. 2', '7. Wreck of Eternal Bane', 'main', 'hoyo_mix', 96),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass (Hard)', 'BA Le Gigante [LCV]', 'Album: The Shimmering Voyage Vol. 2', '7. Wreck of Eternal Bane', 'main', 'hoyo_mix', 97),
  -- 8. Marching to Victory (Yu-Peng Chen, Dimeng Yuan, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '8. Marching to Victory', 'main', 'hoyo_mix', 98),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '8. Marching to Victory', 'main', 'hoyo_mix', 99),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '8. Marching to Victory', 'main', 'hoyo_mix', 100),
  -- 9. Approaching Thunder (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '9. Approaching Thunder', 'main', 'hoyo_mix', 101),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '9. Approaching Thunder', 'main', 'hoyo_mix', 102),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 04 Hybrid FX Hits', 'PERC Damage Hits MW', 'Album: The Shimmering Voyage Vol. 2 | F#1', '9. Approaching Thunder', 'main', 'hoyo_mix', 103),
  -- 10. Bitter Triumph (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '10. Bitter Triumph', 'main', 'hoyo_mix', 104),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '10. Bitter Triumph', 'main', 'hoyo_mix', 105),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '10. Bitter Triumph', 'main', 'hoyo_mix', 106),
  -- 11. Her Imperial Majesty (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '11. Her Imperial Majesty', 'main', 'hoyo_mix', 107),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '11. Her Imperial Majesty', 'main', 'hoyo_mix', 108),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '11. Her Imperial Majesty', 'main', 'hoyo_mix', 109),
  -- 12. Eureka Moment (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '12. Eureka Moment', 'main', 'hoyo_mix', 110),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '12. Eureka Moment', 'main', 'hoyo_mix', 111),
  -- 13. Odyssey to the Uncharted (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '13. Odyssey to the Uncharted', 'main', 'hoyo_mix', 112),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '13. Odyssey to the Uncharted', 'main', 'hoyo_mix', 113),
  -- 14. Unforeseen Disaster (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '14. Unforeseen Disaster', 'main', 'hoyo_mix', 114),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '14. Unforeseen Disaster', 'main', 'hoyo_mix', 115),
  -- 15. Fury Unleashed (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '15. Fury Unleashed', 'main', 'hoyo_mix', 116),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '15. Fury Unleashed', 'main', 'hoyo_mix', 117),
  -- 16. Separate Ways (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '16. Separate Ways', 'main', 'hoyo_mix', 118),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '16. Separate Ways', 'main', 'hoyo_mix', 119),
  -- 17. Take This! (Yu-Peng Chen, Qian Ding, Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '17. Take This!', 'main', 'hoyo_mix', 120),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '17. Take This!', 'main', 'hoyo_mix', 121),
  -- 18. Suffering of Parting (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2 | Steinway & Sons Steinway D-274', '18. Suffering of Parting', 'main', 'hoyo_mix', 122),
  -- 19. Under the Sun (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '19. Under the Sun', 'main', 'hoyo_mix', 123),
  -- 20. Vanished Beyond Recall (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '20. Vanished Beyond Recall', 'main', 'hoyo_mix', 124),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '20. Vanished Beyond Recall', 'main', 'hoyo_mix', 125),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '20. Vanished Beyond Recall', 'main', 'hoyo_mix', 126),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '20. Vanished Beyond Recall', 'main', 'hoyo_mix', 127),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '20. Vanished Beyond Recall', 'main', 'hoyo_mix', 128),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '20. Vanished Beyond Recall', 'main', 'hoyo_mix', 129),
  -- 21. Nothing but a Dream (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '21. Nothing but a Dream', 'main', 'hoyo_mix', 130),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '21. Nothing but a Dream', 'main', 'hoyo_mix', 131),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '21. Nothing but a Dream', 'main', 'hoyo_mix', 132),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '21. Nothing but a Dream', 'main', 'hoyo_mix', 133),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '21. Nothing but a Dream', 'main', 'hoyo_mix', 134),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '21. Nothing but a Dream', 'main', 'hoyo_mix', 135),
  -- 22. Illusory Apparitions (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '22. Illusory Apparitions', 'main', 'hoyo_mix', 136),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '22. Illusory Apparitions', 'main', 'hoyo_mix', 137),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '22. Illusory Apparitions', 'main', 'hoyo_mix', 138),
  -- 23. Midnight in Mondstadt (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2 | Steinway & Sons Steinway D-274', '23. Midnight in Mondstadt', 'main', 'hoyo_mix', 139),
  -- Disc 2: Fantasia of the Isles
  -- 1. Tagelied nächtlicher Gedanken (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '1. Tagelied nächtlicher Gedanken', 'main', 'hoyo_mix', 140),
  -- 2. Traum durch die Dämmerung, erster Satz (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '2. Traum durch die Dämmerung, erster Satz', 'main', 'hoyo_mix', 141),
  -- 3. Traum durch die Dämmerung, zweiter Satz (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '3. Traum durch die Dämmerung, zweiter Satz', 'main', 'hoyo_mix', 142),
  -- 4. Das Folkwanglied (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '4. Das Folkwanglied', 'main', 'hoyo_mix', 143),
  -- 5. Ein vogellin, so wol getan (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '5. Ein vogellin, so wol getan', 'main', 'hoyo_mix', 144),
  -- 6. Soliloquy of the Star (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2 | miscredited piano as harpsichord lol', '6. Soliloquy of the Star', 'main', 'hoyo_mix', 145),
  -- 7. Flickering Brightness (Yu-Peng Chen, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '7. Flickering Brightness', 'main', 'hoyo_mix', 146),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '7. Flickering Brightness', 'main', 'hoyo_mix', 147),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '7. Flickering Brightness', 'main', 'hoyo_mix', 148),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '7. Flickering Brightness', 'main', 'hoyo_mix', 149),
  -- 8. Burst Into Flames (Yu-Peng Chen, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '8. Burst Into Flames', 'main', 'hoyo_mix', 150),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '8. Burst Into Flames', 'main', 'hoyo_mix', 151),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '8. Burst Into Flames', 'main', 'hoyo_mix', 152),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '8. Burst Into Flames', 'main', 'hoyo_mix', 153),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '8. Burst Into Flames', 'main', 'hoyo_mix', 154),
  -- 9. Die Mittsommernacht-Fantasie (Yijun Jiang, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '9. Die Mittsommernacht-Fantasie', 'main', 'hoyo_mix', 155),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '9. Die Mittsommernacht-Fantasie', 'main', 'hoyo_mix', 156),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '9. Die Mittsommernacht-Fantasie', 'main', 'hoyo_mix', 157),
  -- Disc 3: A Turbulent Peregrination
  -- 1. The Liyue Romans-Fleuves (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '1. The Liyue Romans-Fleuves', 'main', 'hoyo_mix', 158),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '1. The Liyue Romans-Fleuves', 'main', 'hoyo_mix', 159),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '1. The Liyue Romans-Fleuves', 'main', 'hoyo_mix', 160),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '1. The Liyue Romans-Fleuves', 'main', 'hoyo_mix', 161),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '1. The Liyue Romans-Fleuves', 'main', 'hoyo_mix', 162),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '1. The Liyue Romans-Fleuves', 'main', 'hoyo_mix', 163),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '1. The Liyue Romans-Fleuves', 'main', 'hoyo_mix', 164),
  -- 2. Bravery and Tenderness (Yu-Peng Chen, Dimeng Yuan, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '2. Bravery and Tenderness', 'main', 'hoyo_mix', 165),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '2. Bravery and Tenderness', 'main', 'hoyo_mix', 166),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '2. Bravery and Tenderness', 'main', 'hoyo_mix', 167),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '2. Bravery and Tenderness', 'main', 'hoyo_mix', 168),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: The Shimmering Voyage Vol. 2', '2. Bravery and Tenderness', 'main', 'hoyo_mix', 169),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage Vol. 2', '2. Bravery and Tenderness', 'main', 'hoyo_mix', 170),
  -- 3. Rumble of Thunder (Qian Ding, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '3. Rumble of Thunder', 'main', 'hoyo_mix', 171),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '3. Rumble of Thunder', 'main', 'hoyo_mix', 172),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: The Shimmering Voyage Vol. 2', '3. Rumble of Thunder', 'main', 'hoyo_mix', 173),
  -- 4. Roots of Tranquil Eternity (Qian Ding, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '4. Roots of Tranquil Eternity', 'main', 'hoyo_mix', 174),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '4. Roots of Tranquil Eternity', 'main', 'hoyo_mix', 175),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '4. Roots of Tranquil Eternity', 'main', 'hoyo_mix', 176),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '4. Roots of Tranquil Eternity', 'main', 'hoyo_mix', 177),
  -- 5. Miko's Ingenuity (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '5. Miko''s Ingenuity', 'main', 'hoyo_mix', 178),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '5. Miko''s Ingenuity', 'main', 'hoyo_mix', 179),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: The Shimmering Voyage Vol. 2', '5. Miko''s Ingenuity', 'main', 'hoyo_mix', 180),
  -- 6. A Region Rediscovered (Qian Ding, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '6. A Region Rediscovered', 'main', 'hoyo_mix', 181),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: The Shimmering Voyage Vol. 2', '6. A Region Rediscovered', 'main', 'hoyo_mix', 182),
  -- 7. Cold Light (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '7. Cold Light', 'main', 'hoyo_mix', 183),
  -- 8. Broken Blade (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '8. Broken Blade', 'main', 'hoyo_mix', 184),
  -- 9. Unfulfilled Aspirations (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '9. Unfulfilled Aspirations', 'main', 'hoyo_mix', 185),
  -- 10. Evergreen Cypress (Qian Ding, Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '10. Evergreen Cypress', 'main', 'hoyo_mix', 186),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '10. Evergreen Cypress', 'main', 'hoyo_mix', 187),
  -- 11. Magnificent Irodori (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '11. Magnificent Irodori', 'main', 'hoyo_mix', 188),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '11. Magnificent Irodori', 'main', 'hoyo_mix', 189),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: The Shimmering Voyage Vol. 2', '11. Magnificent Irodori', 'main', 'hoyo_mix', 190),
  -- 12. Breaking Point (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '12. Breaking Point', 'main', 'hoyo_mix', 191),
  -- 13. A Clueless Case (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '13. A Clueless Case', 'main', 'hoyo_mix', 192),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: The Shimmering Voyage Vol. 2', '13. A Clueless Case', 'main', 'hoyo_mix', 193),
  -- 14. Hang by a Thread (Dimeng Yuan, Yu-Peng Chen, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '14. Hang by a Thread', 'main', 'hoyo_mix', 194),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '14. Hang by a Thread', 'main', 'hoyo_mix', 195),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '14. Hang by a Thread', 'main', 'hoyo_mix', 196),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage Vol. 2', '14. Hang by a Thread', 'main', 'hoyo_mix', 197),
  -- 15. Yaksha's Reminiscence (Dimeng Yuan, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '15. Yaksha''s Reminiscence', 'main', 'hoyo_mix', 198),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '15. Yaksha''s Reminiscence', 'main', 'hoyo_mix', 199),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '15. Yaksha''s Reminiscence', 'main', 'hoyo_mix', 200),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '15. Yaksha''s Reminiscence', 'main', 'hoyo_mix', 201),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '15. Yaksha''s Reminiscence', 'main', 'hoyo_mix', 202),
  -- 16. Easier Said Than Done (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '16. Easier Said Than Done', 'main', 'hoyo_mix', 203),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '16. Easier Said Than Done', 'main', 'hoyo_mix', 204),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '16. Easier Said Than Done', 'main', 'hoyo_mix', 205),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '16. Easier Said Than Done', 'main', 'hoyo_mix', 206),
  -- 17. A Single Thought (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '17. A Single Thought', 'main', 'hoyo_mix', 207),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '17. A Single Thought', 'main', 'hoyo_mix', 208),
  -- 18. Prelude of Change (Qian Ding, Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '18. Prelude of Change', 'main', 'hoyo_mix', 209),
  -- 19. Phantasm Suite (Yijun Jiang, Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '19. Phantasm Suite', 'main', 'hoyo_mix', 210),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '19. Phantasm Suite', 'main', 'hoyo_mix', 211),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '19. Phantasm Suite', 'main', 'hoyo_mix', 212),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '19. Phantasm Suite', 'main', 'hoyo_mix', 213),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '19. Phantasm Suite', 'main', 'hoyo_mix', 214),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '19. Phantasm Suite', 'main', 'hoyo_mix', 215),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '19. Phantasm Suite', 'main', 'hoyo_mix', 216),
  -- 20. The Everlasting Trail (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '20. The Everlasting Trail', 'main', 'hoyo_mix', 217),
  -- 21. Dazzling Stars (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '21. Dazzling Stars', 'main', 'hoyo_mix', 218),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '21. Dazzling Stars', 'main', 'hoyo_mix', 219),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '21. Dazzling Stars', 'main', 'hoyo_mix', 220),
  -- 22. The Floating World (Yijun Jiang, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '22. The Floating World', 'main', 'hoyo_mix', 221),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '22. The Floating World', 'main', 'hoyo_mix', 222),
  -- 23. Soar in the Wind (Dimeng Yuan, Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '23. Soar in the Wind', 'main', 'hoyo_mix', 223),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '23. Soar in the Wind', 'main', 'hoyo_mix', 224),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '23. Soar in the Wind', 'main', 'hoyo_mix', 225),
  -- 24. Elogia Cinerosa (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '24. Elogia Cinerosa', 'main', 'hoyo_mix', 226),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '24. Elogia Cinerosa', 'main', 'hoyo_mix', 227),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '24. Elogia Cinerosa', 'main', 'hoyo_mix', 228),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '24. Elogia Cinerosa', 'main', 'hoyo_mix', 229),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '24. Elogia Cinerosa', 'main', 'hoyo_mix', 230),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '24. Elogia Cinerosa', 'main', 'hoyo_mix', 231),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: The Shimmering Voyage Vol. 2', '24. Elogia Cinerosa', 'main', 'hoyo_mix', 232),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage Vol. 2', '24. Elogia Cinerosa', 'main', 'hoyo_mix', 233),
  -- 25. Song of Innocence (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '25. Song of Innocence', 'main', 'hoyo_mix', 234),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '25. Song of Innocence', 'main', 'hoyo_mix', 235),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 2', '25. Song of Innocence', 'main', 'hoyo_mix', 236),
  -- =========================================================================
  -- Album: Forest of Jnana and Vidya
  -- =========================================================================
  -- Disc 1: Dwelling Where Everlasting Spring Abides
  -- 1. Sumeru (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Sumeru', 'main', 'hoyo_mix', 237),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Sumeru', 'main', 'hoyo_mix', 238),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Sumeru', 'main', 'hoyo_mix', 239),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Sumeru', 'main', 'hoyo_mix', 240),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Sumeru', 'main', 'hoyo_mix', 241),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Sumeru', 'main', 'hoyo_mix', 242),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Sumeru', 'main', 'hoyo_mix', 243),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Sumeru', 'main', 'hoyo_mix', 244),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Sumeru', 'main', 'hoyo_mix', 245),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Forest of Jnana and Vidya', '1. Sumeru', 'main', 'hoyo_mix', 246),
  -- 2. Whirling of Leaves and Petals (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Whirling of Leaves and Petals', 'main', 'hoyo_mix', 247),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Whirling of Leaves and Petals', 'main', 'hoyo_mix', 248),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Whirling of Leaves and Petals', 'main', 'hoyo_mix', 249),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> Tambourines', '92-Tambourine', 'Album: Forest of Jnana and Vidya', '2. Whirling of Leaves and Petals', 'main', 'hoyo_mix', 250),
  -- 3. Flickering Shadows of Trees (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '3. Flickering Shadows of Trees', 'main', 'hoyo_mix', 251),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '3. Flickering Shadows of Trees', 'main', 'hoyo_mix', 252),
  -- 4. For Riddles, for Wonders (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. For Riddles, for Wonders', 'main', 'hoyo_mix', 253),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. For Riddles, for Wonders', 'main', 'hoyo_mix', 254),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. For Riddles, for Wonders', 'main', 'hoyo_mix', 255),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Forest of Jnana and Vidya', '4. For Riddles, for Wonders', 'main', 'hoyo_mix', 256),
  -- 5. Evergreen Wish (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '5. Evergreen Wish', 'main', 'hoyo_mix', 257),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '5. Evergreen Wish', 'main', 'hoyo_mix', 258),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '5. Evergreen Wish', 'main', 'hoyo_mix', 259),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '5. Evergreen Wish', 'main', 'hoyo_mix', 260),
  -- 6. Many-Colored Smiles and Tears (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '6. Many-Colored Smiles and Tears', 'main', 'hoyo_mix', 261),
  -- 7. Overnight Dew in the Woods (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '7. Overnight Dew in the Woods', 'main', 'hoyo_mix', 262),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '7. Overnight Dew in the Woods', 'main', 'hoyo_mix', 263),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '7. Overnight Dew in the Woods', 'main', 'hoyo_mix', 264),
  -- 8. Thoughts and Prayers (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '8. Thoughts and Prayers', 'main', 'hoyo_mix', 265),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '8. Thoughts and Prayers', 'main', 'hoyo_mix', 266),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '8. Thoughts and Prayers', 'main', 'hoyo_mix', 267),
  -- 9. Those Lucid Dreams (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '9. Those Lucid Dreams', 'main', 'hoyo_mix', 268),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya | Steinway & Sons Steinway D-274', '9. Those Lucid Dreams', 'main', 'hoyo_mix', 269),
  -- 10. Silent Starry Night (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya | Steinway & Sons Steinway D-274', '10. Silent Starry Night', 'main', 'hoyo_mix', 270),
  -- 11. Fresh Breezes of Dawn (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '11. Fresh Breezes of Dawn', 'main', 'hoyo_mix', 271),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya | Steinway & Sons Steinway D-274', '11. Fresh Breezes of Dawn', 'main', 'hoyo_mix', 272),
  -- 12. Halcyon Times (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '12. Halcyon Times', 'main', 'hoyo_mix', 273),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '12. Halcyon Times', 'main', 'hoyo_mix', 274),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '12. Halcyon Times', 'main', 'hoyo_mix', 275),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '12. Halcyon Times', 'main', 'hoyo_mix', 276),
  -- 13. Return to Trueness (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '13. Return to Trueness', 'main', 'hoyo_mix', 277),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '13. Return to Trueness', 'main', 'hoyo_mix', 278),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'India -> Plucked -> Sitar -> Elements', 'Sitar Drone', 'Album: Forest of Jnana and Vidya', '13. Return to Trueness', 'main', 'hoyo_mix', 279),
  -- 14. Hustle and Bustle of Ormos (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '14. Hustle and Bustle of Ormos', 'main', 'hoyo_mix', 280),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '14. Hustle and Bustle of Ormos', 'main', 'hoyo_mix', 281),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '14. Hustle and Bustle of Ormos', 'main', 'hoyo_mix', 282),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '14. Hustle and Bustle of Ormos', 'main', 'hoyo_mix', 283),
  -- 15. End of the Feast (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '15. End of the Feast', 'main', 'hoyo_mix', 284),
  -- 16. Bustling Streets (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '16. Bustling Streets', 'main', 'hoyo_mix', 285),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '16. Bustling Streets', 'main', 'hoyo_mix', 286),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '16. Bustling Streets', 'main', 'hoyo_mix', 287),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '16. Bustling Streets', 'main', 'hoyo_mix', 288),
  -- 17. Sleepless Night (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '17. Sleepless Night', 'main', 'hoyo_mix', 289),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya | Steinway & Sons Steinway D-274', '17. Sleepless Night', 'main', 'hoyo_mix', 290),
  -- 18. Village Surrounded by Green (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '18. Village Surrounded by Green', 'main', 'hoyo_mix', 291),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '18. Village Surrounded by Green', 'main', 'hoyo_mix', 292),
  -- 19. Enchanting Bedtime Stories (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '19. Enchanting Bedtime Stories', 'main', 'hoyo_mix', 293),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya | Steinway & Sons Steinway D-274', '19. Enchanting Bedtime Stories', 'main', 'hoyo_mix', 294),
  -- 20. Scorching Outpost (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '20. Scorching Outpost', 'main', 'hoyo_mix', 295),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '20. Scorching Outpost', 'main', 'hoyo_mix', 296),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '20. Scorching Outpost', 'main', 'hoyo_mix', 297),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '20. Scorching Outpost', 'main', 'hoyo_mix', 298),
  -- 21. Unyielding Witness (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '21. Unyielding Witness', 'main', 'hoyo_mix', 299),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '21. Unyielding Witness', 'main', 'hoyo_mix', 300),
  -- 22. In Yonder Ribat (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '22. In Yonder Ribat', 'main', 'hoyo_mix', 301),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '22. In Yonder Ribat', 'main', 'hoyo_mix', 302),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '22. In Yonder Ribat', 'main', 'hoyo_mix', 303),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '22. In Yonder Ribat', 'main', 'hoyo_mix', 304),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '22. In Yonder Ribat', 'main', 'hoyo_mix', 305),
  -- 23. Vigilant Minders (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '23. Vigilant Minders', 'main', 'hoyo_mix', 306),
  -- 24. Forest in the Light (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '24. Forest in the Light', 'main', 'hoyo_mix', 307),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'India -> Plucked -> Sitar -> Elements', 'Sitar Drone', 'Album: Forest of Jnana and Vidya', '24. Forest in the Light', 'main', 'hoyo_mix', 308),
  -- 25. Rustling of Tender Foliage (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '25. Rustling of Tender Foliage', 'main', 'hoyo_mix', 309),
  -- 26. A Desultory Stroll (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '26. A Desultory Stroll', 'main', 'hoyo_mix', 310),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '26. A Desultory Stroll', 'main', 'hoyo_mix', 311),
  -- 27. Chasing the Reflection (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '27. Chasing the Reflection', 'main', 'hoyo_mix', 312),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '27. Chasing the Reflection', 'main', 'hoyo_mix', 313),
  -- 28. As the Soft Wind Blows (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '28. As the Soft Wind Blows', 'main', 'hoyo_mix', 314),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '28. As the Soft Wind Blows', 'main', 'hoyo_mix', 315),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya | forest kingdom 3', '28. As the Soft Wind Blows', 'main', 'hoyo_mix', 316),
  -- 29. Languid and Quiet Moment (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '29. Languid and Quiet Moment', 'main', 'hoyo_mix', 317),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '29. Languid and Quiet Moment', 'main', 'hoyo_mix', 318),
  -- 30. Moonlit Night in Sumeru (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '30. Moonlit Night in Sumeru', 'main', 'hoyo_mix', 319),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '30. Moonlit Night in Sumeru', 'main', 'hoyo_mix', 320),
  -- 31. Vagrant Wandering (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '31. Vagrant Wandering', 'main', 'hoyo_mix', 321),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya | Steinway & Sons Steinway D-274', '31. Vagrant Wandering', 'main', 'hoyo_mix', 322),
  -- 32. A Drowsy Sensation (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '32. A Drowsy Sensation', 'main', 'hoyo_mix', 323),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '32. A Drowsy Sensation', 'main', 'hoyo_mix', 324),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya | Steinway & Sons Steinway D-274', '32. A Drowsy Sensation', 'main', 'hoyo_mix', 325),
  -- 33. Ethereal Mildness (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '33. Ethereal Mildness', 'main', 'hoyo_mix', 326),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya | Steinway & Sons Steinway D-274', '33. Ethereal Mildness', 'main', 'hoyo_mix', 327),
  -- 34. Resonant Chant in the Woods (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '34. Resonant Chant in the Woods', 'main', 'hoyo_mix', 328),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '34. Resonant Chant in the Woods', 'main', 'hoyo_mix', 329),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '34. Resonant Chant in the Woods', 'main', 'hoyo_mix', 330),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya | Steinway & Sons Steinway D-274', '34. Resonant Chant in the Woods', 'main', 'hoyo_mix', 331),
  -- Disc 2: Woods, Rivers and Mysteries
  -- 1. Varuna's Mercy (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Varuna''s Mercy', 'main', 'hoyo_mix', 332),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Varuna''s Mercy', 'main', 'hoyo_mix', 333),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Varuna''s Mercy', 'main', 'hoyo_mix', 334),
  -- 2. Jungle Wanderers (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Jungle Wanderers', 'main', 'hoyo_mix', 335),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Jungle Wanderers', 'main', 'hoyo_mix', 336),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Jungle Wanderers', 'main', 'hoyo_mix', 337),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Jungle Wanderers', 'main', 'hoyo_mix', 338),
  -- 3. Dissipating Mist (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '3. Dissipating Mist', 'main', 'hoyo_mix', 339),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '3. Dissipating Mist', 'main', 'hoyo_mix', 340),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WORLD PERCUSSION -> SHAKERS', 'African Rice Shaker+Loops BM', 'Album: Forest of Jnana and Vidya | F3', '3. Dissipating Mist', 'main', 'hoyo_mix', 341),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   NULL, NULL, 'Album: Forest of Jnana and Vidya | To be found', '3. Dissipating Mist', 'main', 'hoyo_mix', 342),
  -- 4. Dewy Morn in the Forest (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. Dewy Morn in the Forest', 'main', 'hoyo_mix', 343),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. Dewy Morn in the Forest', 'main', 'hoyo_mix', 344),
  -- 5. Stream of Twilight Thoughts (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WORLD PERCUSSION -> SHAKERS', 'African Rice Shaker+Loops BM', 'Album: Forest of Jnana and Vidya', '5. Stream of Twilight Thoughts', 'main', 'hoyo_mix', 345),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Forest of Jnana and Vidya', '5. Stream of Twilight Thoughts', 'main', 'hoyo_mix', 346),
  -- 6. Hymns of Eventide (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '6. Hymns of Eventide', 'main', 'hoyo_mix', 347),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '6. Hymns of Eventide', 'main', 'hoyo_mix', 348),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WORLD PERCUSSION -> SHAKERS', 'Rainmakers + Loops BM', 'Album: Forest of Jnana and Vidya', '6. Hymns of Eventide', 'main', 'hoyo_mix', 349),
  -- 7. Over the Tumbling Rivulet (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '7. Over the Tumbling Rivulet', 'main', 'hoyo_mix', 350),
  -- 8. A Shallow Promise (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '8. A Shallow Promise', 'main', 'hoyo_mix', 351),
  -- 9. Lost in Sweet Gentle Breezes (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '9. Lost in Sweet Gentle Breezes', 'main', 'hoyo_mix', 352),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '9. Lost in Sweet Gentle Breezes', 'main', 'hoyo_mix', 353),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '9. Lost in Sweet Gentle Breezes', 'main', 'hoyo_mix', 354),
  -- 10. Into the Valley of Solitude (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '10. Into the Valley of Solitude', 'main', 'hoyo_mix', 355),
  -- 11. Speechless Sorrows (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '11. Speechless Sorrows', 'main', 'hoyo_mix', 356),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '11. Speechless Sorrows', 'main', 'hoyo_mix', 357),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '11. Speechless Sorrows', 'main', 'hoyo_mix', 358),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '11. Speechless Sorrows', 'main', 'hoyo_mix', 359),
  -- 12. Faint Afterglow (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '12. Faint Afterglow', 'main', 'hoyo_mix', 360),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '12. Faint Afterglow', 'main', 'hoyo_mix', 361),
  -- 13. A Puff of Cool Breeze (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '13. A Puff of Cool Breeze', 'main', 'hoyo_mix', 362),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '13. A Puff of Cool Breeze', 'main', 'hoyo_mix', 363),
  -- 14. A Whisper of Evening Star (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '14. A Whisper of Evening Star', 'main', 'hoyo_mix', 364),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '14. A Whisper of Evening Star', 'main', 'hoyo_mix', 365),
  -- 15. Distant Yearning (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '15. Distant Yearning', 'main', 'hoyo_mix', 366),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '15. Distant Yearning', 'main', 'hoyo_mix', 367),
  -- 16. Funneled Gorge (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '16. Funneled Gorge', 'main', 'hoyo_mix', 368),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '16. Funneled Gorge', 'main', 'hoyo_mix', 369),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '16. Funneled Gorge', 'main', 'hoyo_mix', 370),
  -- 17. Whitewood Memorabilia (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '17. Whitewood Memorabilia', 'main', 'hoyo_mix', 371),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '17. Whitewood Memorabilia', 'main', 'hoyo_mix', 372),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '17. Whitewood Memorabilia', 'main', 'hoyo_mix', 373),
  -- 18. Gone With the Wind (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '18. Gone With the Wind', 'main', 'hoyo_mix', 374),
  -- 19. Transparent Night (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '19. Transparent Night', 'main', 'hoyo_mix', 375),
  -- 21. Lingering Memories (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '21. Lingering Memories', 'main', 'hoyo_mix', 376),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '21. Lingering Memories', 'main', 'hoyo_mix', 377),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '21. Lingering Memories', 'main', 'hoyo_mix', 378),
  -- 22. Vestige of Dahri (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '22. Vestige of Dahri', 'main', 'hoyo_mix', 379),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '22. Vestige of Dahri', 'main', 'hoyo_mix', 380),
  -- 23. Dust-Laden Recollections (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '23. Dust-Laden Recollections', 'main', 'hoyo_mix', 381),
  -- 24. Midnight Reflections (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '24. Midnight Reflections', 'main', 'hoyo_mix', 382),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '24. Midnight Reflections', 'main', 'hoyo_mix', 383),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '24. Midnight Reflections', 'main', 'hoyo_mix', 384),
  -- 25. Lonely Star's Longing (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '25. Lonely Star''s Longing', 'main', 'hoyo_mix', 385),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Keys' COLLATE NOCASE),
   'Studio Grand', 'Close Mix', 'Album: Forest of Jnana and Vidya', '25. Lonely Star''s Longing', 'main', 'hoyo_mix', 386),
  -- 28. A Luminous Path (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '28. A Luminous Path', 'main', 'hoyo_mix', 387),
  -- 29. Dance With Fireflies (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '29. Dance With Fireflies', 'main', 'hoyo_mix', 388),
  -- 30. Silky Crooning (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '30. Silky Crooning', 'main', 'hoyo_mix', 389),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Keys' COLLATE NOCASE),
   'Studio Grand', 'Studio Grand', 'Album: Forest of Jnana and Vidya', '30. Silky Crooning', 'main', 'hoyo_mix', 390),
  -- 31. Beyond Klesha (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '31. Beyond Klesha', 'main', 'hoyo_mix', 391),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '31. Beyond Klesha', 'main', 'hoyo_mix', 392),
  -- 32. Melody of Bright New Buds (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '32. Melody of Bright New Buds', 'main', 'hoyo_mix', 393),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '32. Melody of Bright New Buds', 'main', 'hoyo_mix', 394),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Acoustic Pianos', 'LA Custom C7 Grand Piano', 'Album: Forest of Jnana and Vidya', '32. Melody of Bright New Buds', 'main', 'hoyo_mix', 395),
  -- 33. Melody of Sprouting Flowers (Yu-Peng Chen, Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '33. Melody of Sprouting Flowers', 'main', 'hoyo_mix', 396),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '33. Melody of Sprouting Flowers', 'main', 'hoyo_mix', 397),
  -- 34. Melody of Fresh Dewdrops (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '34. Melody of Fresh Dewdrops', 'main', 'hoyo_mix', 398),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '34. Melody of Fresh Dewdrops', 'main', 'hoyo_mix', 399),
  -- 35. Melody of Hidden Seeds (Yu-Peng Chen, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '35. Melody of Hidden Seeds', 'main', 'hoyo_mix', 400),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '35. Melody of Hidden Seeds', 'main', 'hoyo_mix', 401),
  -- 36. Melody of Brave Seeds (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '36. Melody of Brave Seeds', 'main', 'hoyo_mix', 402),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '36. Melody of Brave Seeds', 'main', 'hoyo_mix', 403),
  -- 37. Melody of Dream Home (Yu-Peng Chen, Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '37. Melody of Dream Home', 'main', 'hoyo_mix', 404),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '37. Melody of Dream Home', 'main', 'hoyo_mix', 405),
  -- 38. Melody of Young Leaves (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '38. Melody of Young Leaves', 'main', 'hoyo_mix', 406),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '38. Melody of Young Leaves', 'main', 'hoyo_mix', 407),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '38. Melody of Young Leaves', 'main', 'hoyo_mix', 408),
  -- 39. Melody of Distant Green Fields (Yu-Peng Chen, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '39. Melody of Distant Green Fields', 'main', 'hoyo_mix', 409),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '39. Melody of Distant Green Fields', 'main', 'hoyo_mix', 410),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '39. Melody of Distant Green Fields', 'main', 'hoyo_mix', 411),
  -- Disc 3: Eternal Antagonism Between Life and Death
  -- 1. Chatter Between Roots (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Chatter Between Roots', 'main', 'hoyo_mix', 412),
  -- 2. Long-Lost Chapters (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Long-Lost Chapters', 'main', 'hoyo_mix', 413),
  -- 3. Nameless Days (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '3. Nameless Days', 'main', 'hoyo_mix', 414),
  -- 4. Whispers of Immensity (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. Whispers of Immensity', 'main', 'hoyo_mix', 415),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. Whispers of Immensity', 'main', 'hoyo_mix', 416),
  -- 6. In a Forgotten Tongue (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '6. In a Forgotten Tongue', 'main', 'hoyo_mix', 417),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '6. In a Forgotten Tongue', 'main', 'hoyo_mix', 418),
  -- 7. Walk Through the Silent Path (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '7. Walk Through the Silent Path', 'main', 'hoyo_mix', 419),
  -- 8. A Fruitless Search (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '8. A Fruitless Search', 'main', 'hoyo_mix', 420),
  -- 11. Dust and Tears (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '11. Dust and Tears', 'main', 'hoyo_mix', 421),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '11. Dust and Tears', 'main', 'hoyo_mix', 422),
  -- 15. Fading Light (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '15. Fading Light', 'main', 'hoyo_mix', 423),
  -- 17. In Barren Ashes (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '17. In Barren Ashes', 'main', 'hoyo_mix', 424),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   NULL, NULL, 'Album: Forest of Jnana and Vidya | custom preset', '17. In Barren Ashes', 'main', 'hoyo_mix', 425),
  -- 18. Struggle of Dying Embers (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '18. Struggle of Dying Embers', 'main', 'hoyo_mix', 426),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '18. Struggle of Dying Embers', 'main', 'hoyo_mix', 427),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Forest of Jnana and Vidya', '18. Struggle of Dying Embers', 'main', 'hoyo_mix', 428),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   NULL, NULL, 'Album: Forest of Jnana and Vidya | custom preset', '18. Struggle of Dying Embers', 'main', 'hoyo_mix', 429),
  -- 20. Snare Awaiting (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '20. Snare Awaiting', 'main', 'hoyo_mix', 430),
  -- 22. Fatal Confrontation (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '22. Fatal Confrontation', 'main', 'hoyo_mix', 431),
  -- 23. Before the Light Fades (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '23. Before the Light Fades', 'main', 'hoyo_mix', 432),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', 'Dark City', 'Album: Forest of Jnana and Vidya', '23. Before the Light Fades', 'main', 'hoyo_mix', 433),
  -- Disc 4: Battles of Sumeru
  -- 1. Swirls of the Stream (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Swirls of the Stream', 'main', 'hoyo_mix', 434),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Swirls of the Stream', 'main', 'hoyo_mix', 435),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Swirls of the Stream', 'main', 'hoyo_mix', 436),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Swirls of the Stream', 'main', 'hoyo_mix', 437),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Swirls of the Stream', 'main', 'hoyo_mix', 438),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Swirls of the Stream', 'main', 'hoyo_mix', 439),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Swirls of the Stream', 'main', 'hoyo_mix', 440),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Swirls of the Stream', 'main', 'hoyo_mix', 441),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Swirls of the Stream', 'main', 'hoyo_mix', 442),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '1. Swirls of the Stream', 'main', 'hoyo_mix', 443),
  -- 2. Rhymes of Vales (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Rhymes of Vales', 'main', 'hoyo_mix', 444),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Rhymes of Vales', 'main', 'hoyo_mix', 445),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Rhymes of Vales', 'main', 'hoyo_mix', 446),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Rhymes of Vales', 'main', 'hoyo_mix', 447),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Rhymes of Vales', 'main', 'hoyo_mix', 448),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Rhymes of Vales', 'main', 'hoyo_mix', 449),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '2. Rhymes of Vales', 'main', 'hoyo_mix', 450),
  -- 3. Gilded Runner (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '3. Gilded Runner', 'main', 'hoyo_mix', 451),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '3. Gilded Runner', 'main', 'hoyo_mix', 452),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '3. Gilded Runner', 'main', 'hoyo_mix', 453),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '3. Gilded Runner', 'main', 'hoyo_mix', 454),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '3. Gilded Runner', 'main', 'hoyo_mix', 455),
  -- 4. Jolts in the Forest (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. Jolts in the Forest', 'main', 'hoyo_mix', 456),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. Jolts in the Forest', 'main', 'hoyo_mix', 457),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. Jolts in the Forest', 'main', 'hoyo_mix', 458),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. Jolts in the Forest', 'main', 'hoyo_mix', 459),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. Jolts in the Forest', 'main', 'hoyo_mix', 460),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Forest of Jnana and Vidya', '4. Jolts in the Forest', 'main', 'hoyo_mix', 461),
  -- =========================================================================
  -- Album: The Unfathomable Sand Dunes
  -- =========================================================================
  -- Disc 1: Sandstorm Remembrances
  -- 1. Sorush's Purity (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Sorush''s Purity', 'main', 'hoyo_mix', 462),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Sorush''s Purity', 'main', 'hoyo_mix', 463),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Sorush''s Purity', 'main', 'hoyo_mix', 464),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Sorush''s Purity', 'main', 'hoyo_mix', 465),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Sorush''s Purity', 'main', 'hoyo_mix', 466),
  -- 3. Maidens of Sanctity (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Maidens of Sanctity', 'main', 'hoyo_mix', 467),
  -- 4. The Caress of Three Mothers (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '4. The Caress of Three Mothers', 'main', 'hoyo_mix', 468),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '4. The Caress of Three Mothers', 'main', 'hoyo_mix', 469),
  -- 5. Where Simurgh Rests (Peijia You)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Where Simurgh Rests', 'main', 'hoyo_mix', 470),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Where Simurgh Rests', 'main', 'hoyo_mix', 471),
  -- 6. Fantasy of Ten Thousand Blossoms (Peijia You)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '6. Fantasy of Ten Thousand Blossoms', 'main', 'hoyo_mix', 472),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '6. Fantasy of Ten Thousand Blossoms', 'main', 'hoyo_mix', 473),
  -- 7. Dirge of Newborn Life (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '7. Dirge of Newborn Life', 'main', 'hoyo_mix', 474),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '7. Dirge of Newborn Life', 'main', 'hoyo_mix', 475),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '7. Dirge of Newborn Life', 'main', 'hoyo_mix', 476),
  -- 8. Undisturbed Tranquility (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '8. Undisturbed Tranquility', 'main', 'hoyo_mix', 477),
  -- 9. Mirage of the Oasis (Peijia You)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '9. Mirage of the Oasis', 'main', 'hoyo_mix', 478),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '9. Mirage of the Oasis', 'main', 'hoyo_mix', 479),
  -- 10. Lonesome Road (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '10. Lonesome Road', 'main', 'hoyo_mix', 480),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '10. Lonesome Road', 'main', 'hoyo_mix', 481),
  -- 11. Grief of the Lost (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '11. Grief of the Lost', 'main', 'hoyo_mix', 482),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '11. Grief of the Lost', 'main', 'hoyo_mix', 483),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '11. Grief of the Lost', 'main', 'hoyo_mix', 484),
  -- 12. Dividing Paths (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '12. Dividing Paths', 'main', 'hoyo_mix', 485),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '12. Dividing Paths', 'main', 'hoyo_mix', 486),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '12. Dividing Paths', 'main', 'hoyo_mix', 487),
  -- 13. Dawnlight Over Dunes (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '13. Dawnlight Over Dunes', 'main', 'hoyo_mix', 488),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '13. Dawnlight Over Dunes', 'main', 'hoyo_mix', 489),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '13. Dawnlight Over Dunes', 'main', 'hoyo_mix', 490),
  -- 14. Dance of Scorpions (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '14. Dance of Scorpions', 'main', 'hoyo_mix', 491),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '14. Dance of Scorpions', 'main', 'hoyo_mix', 492),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '14. Dance of Scorpions', 'main', 'hoyo_mix', 493),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '14. Dance of Scorpions', 'main', 'hoyo_mix', 494),
  -- 15. Golden Crescent (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '15. Golden Crescent', 'main', 'hoyo_mix', 495),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '15. Golden Crescent', 'main', 'hoyo_mix', 496),
  -- 16. A Pearl Amongst Legends (Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '16. A Pearl Amongst Legends', 'main', 'hoyo_mix', 497),
  -- 17. Hymn of Cicadas (Peijia You)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '17. Hymn of Cicadas', 'main', 'hoyo_mix', 498),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '17. Hymn of Cicadas', 'main', 'hoyo_mix', 499),
  -- 18. Simurgh's Dream (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '18. Simurgh''s Dream', 'main', 'hoyo_mix', 500),
  -- 19. Taabak Laylatak (Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '19. Taabak Laylatak', 'main', 'hoyo_mix', 501),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '19. Taabak Laylatak', 'main', 'hoyo_mix', 502),
  -- 20. Resting Rogues (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '20. Resting Rogues', 'main', 'hoyo_mix', 503),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '20. Resting Rogues', 'main', 'hoyo_mix', 504),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '20. Resting Rogues', 'main', 'hoyo_mix', 505),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '20. Resting Rogues', 'main', 'hoyo_mix', 506),
  -- 21. Perilous Hollow (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '21. Perilous Hollow', 'main', 'hoyo_mix', 507),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '21. Perilous Hollow', 'main', 'hoyo_mix', 508),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '21. Perilous Hollow', 'main', 'hoyo_mix', 509),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '21. Perilous Hollow', 'main', 'hoyo_mix', 510),
  -- 22. Omen of Desolation (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '22. Omen of Desolation', 'main', 'hoyo_mix', 511),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '22. Omen of Desolation', 'main', 'hoyo_mix', 512),
  -- 23. Solitary Breach (Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '23. Solitary Breach', 'main', 'hoyo_mix', 513),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '23. Solitary Breach', 'main', 'hoyo_mix', 514),
  -- 24. Ghastly Badlands (Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '24. Ghastly Badlands', 'main', 'hoyo_mix', 515),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '24. Ghastly Badlands', 'main', 'hoyo_mix', 516),
  -- 25. Shadow in Ruins (Ziyu Che)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '25. Shadow in Ruins', 'main', 'hoyo_mix', 517),
  -- 28. Where Dreams Putrify (Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '28. Where Dreams Putrify', 'main', 'hoyo_mix', 518),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '28. Where Dreams Putrify', 'main', 'hoyo_mix', 519),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '28. Where Dreams Putrify', 'main', 'hoyo_mix', 520),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '28. Where Dreams Putrify', 'main', 'hoyo_mix', 521),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '28. Where Dreams Putrify', 'main', 'hoyo_mix', 522),
  -- 29. Pairidaeza (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '29. Pairidaeza', 'main', 'hoyo_mix', 523),
  -- 30. Her Wishes (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '30. Her Wishes', 'main', 'hoyo_mix', 524),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '30. Her Wishes', 'main', 'hoyo_mix', 525),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '30. Her Wishes', 'main', 'hoyo_mix', 526),
  -- 31. Oracle of the Void (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '31. Oracle of the Void', 'main', 'hoyo_mix', 527),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '31. Oracle of the Void', 'main', 'hoyo_mix', 528),
  -- 33. Kingdom of Dust (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '33. Kingdom of Dust', 'main', 'hoyo_mix', 529),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '33. Kingdom of Dust', 'main', 'hoyo_mix', 530),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '33. Kingdom of Dust', 'main', 'hoyo_mix', 531),
  -- 34. Empire of Sand (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '34. Empire of Sand', 'main', 'hoyo_mix', 532),
  -- 35. Spice Road (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '35. Spice Road', 'main', 'hoyo_mix', 533),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '35. Spice Road', 'main', 'hoyo_mix', 534),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '35. Spice Road', 'main', 'hoyo_mix', 535),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '35. Spice Road', 'main', 'hoyo_mix', 536),
  -- 36. Realms of Amnesia (Peijia You)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '36. Realms of Amnesia', 'main', 'hoyo_mix', 537),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '36. Realms of Amnesia', 'main', 'hoyo_mix', 538),
  -- 37. Gilded Journey (June)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '37. Gilded Journey', 'main', 'hoyo_mix', 539),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '37. Gilded Journey', 'main', 'hoyo_mix', 540),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '37. Gilded Journey', 'main', 'hoyo_mix', 541),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '37. Gilded Journey', 'main', 'hoyo_mix', 542),
  -- 38. Ocean of Grains (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '38. Ocean of Grains', 'main', 'hoyo_mix', 543),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '38. Ocean of Grains', 'main', 'hoyo_mix', 544),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '38. Ocean of Grains', 'main', 'hoyo_mix', 545),
  -- 39. Desert Lullaby (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '39. Desert Lullaby', 'main', 'hoyo_mix', 546),
  -- 41. Memories of Gurabad (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '41. Memories of Gurabad', 'main', 'hoyo_mix', 547),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '41. Memories of Gurabad', 'main', 'hoyo_mix', 548),
  -- 42. Lo, There Do I See The Falcon (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '42. Lo, There Do I See The Falcon', 'main', 'hoyo_mix', 549),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '42. Lo, There Do I See The Falcon', 'main', 'hoyo_mix', 550),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '42. Lo, There Do I See The Falcon', 'main', 'hoyo_mix', 551),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '42. Lo, There Do I See The Falcon', 'main', 'hoyo_mix', 552),
  -- 44. Those Who Dream No Dreams (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '44. Those Who Dream No Dreams', 'main', 'hoyo_mix', 553),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '44. Those Who Dream No Dreams', 'main', 'hoyo_mix', 554),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '44. Those Who Dream No Dreams', 'main', 'hoyo_mix', 555),
  -- 45. The Temple Conquered by Death (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '45. The Temple Conquered by Death', 'main', 'hoyo_mix', 556),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '45. The Temple Conquered by Death', 'main', 'hoyo_mix', 557),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '45. The Temple Conquered by Death', 'main', 'hoyo_mix', 558),
  -- 46. Lamenting Torrent of Oblivion (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '46. Lamenting Torrent of Oblivion', 'main', 'hoyo_mix', 559),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '46. Lamenting Torrent of Oblivion', 'main', 'hoyo_mix', 560),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '46. Lamenting Torrent of Oblivion', 'main', 'hoyo_mix', 561),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '46. Lamenting Torrent of Oblivion', 'main', 'hoyo_mix', 562),
  -- 47. Debris of the Beloved (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '47. Debris of the Beloved', 'main', 'hoyo_mix', 563),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '47. Debris of the Beloved', 'main', 'hoyo_mix', 564),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '47. Debris of the Beloved', 'main', 'hoyo_mix', 565),
  -- 48. Vermin Nest (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '48. Vermin Nest', 'main', 'hoyo_mix', 566),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '48. Vermin Nest', 'main', 'hoyo_mix', 567),
  -- 49. Gurabad's Whisper (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '49. Gurabad''s Whisper', 'main', 'hoyo_mix', 568),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '49. Gurabad''s Whisper', 'main', 'hoyo_mix', 569),
  -- 50. Buried Mysteries (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '50. Buried Mysteries', 'main', 'hoyo_mix', 570),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '50. Buried Mysteries', 'main', 'hoyo_mix', 571),
  -- 51. Gold Cup of Oases (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '51. Gold Cup of Oases', 'main', 'hoyo_mix', 572),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '51. Gold Cup of Oases', 'main', 'hoyo_mix', 573),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '51. Gold Cup of Oases', 'main', 'hoyo_mix', 574),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '51. Gold Cup of Oases', 'main', 'hoyo_mix', 575),
  -- 52. Lingering Vipers (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '52. Lingering Vipers', 'main', 'hoyo_mix', 576),
  -- Disc 2: Desert Exodus
  -- 1. Aspiration of Guardians (Qian Ding, Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Aspiration of Guardians', 'main', 'hoyo_mix', 577),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Aspiration of Guardians', 'main', 'hoyo_mix', 578),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Aspiration of Guardians', 'main', 'hoyo_mix', 579),
  -- 2. Wind of Tranquility (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '2. Wind of Tranquility', 'main', 'hoyo_mix', 580),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '2. Wind of Tranquility', 'main', 'hoyo_mix', 581),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '2. Wind of Tranquility', 'main', 'hoyo_mix', 582),
  -- 3. Settlement for Exiles (Qian Ding, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Settlement for Exiles', 'main', 'hoyo_mix', 583),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Settlement for Exiles', 'main', 'hoyo_mix', 584),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Settlement for Exiles', 'main', 'hoyo_mix', 585),
  -- 4. Inscription of Dreams (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '4. Inscription of Dreams', 'main', 'hoyo_mix', 586),
  -- 5. Vow of a Thousand Generations (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Vow of a Thousand Generations', 'main', 'hoyo_mix', 587),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Vow of a Thousand Generations', 'main', 'hoyo_mix', 588),
  -- 6. Smoldering Glow (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '6. Smoldering Glow', 'main', 'hoyo_mix', 589),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '6. Smoldering Glow', 'main', 'hoyo_mix', 590),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '6. Smoldering Glow', 'main', 'hoyo_mix', 591),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '6. Smoldering Glow', 'main', 'hoyo_mix', 592),
  -- 7. Ruins of Scorching Might (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '7. Ruins of Scorching Might', 'main', 'hoyo_mix', 593),
  -- 8. Now and Then (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '8. Now and Then', 'main', 'hoyo_mix', 594),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '8. Now and Then', 'main', 'hoyo_mix', 595),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '8. Now and Then', 'main', 'hoyo_mix', 596),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '8. Now and Then', 'main', 'hoyo_mix', 597),
  -- 9. Distant Retrospection (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '9. Distant Retrospection', 'main', 'hoyo_mix', 598),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '9. Distant Retrospection', 'main', 'hoyo_mix', 599),
  -- 10. Reminiscences of Remnants (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '10. Reminiscences of Remnants', 'main', 'hoyo_mix', 600),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '10. Reminiscences of Remnants', 'main', 'hoyo_mix', 601),
  -- 11. Land of Hidden Depths (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '11. Land of Hidden Depths', 'main', 'hoyo_mix', 602),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '11. Land of Hidden Depths', 'main', 'hoyo_mix', 603),
  -- 13. Past Repast (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '13. Past Repast', 'main', 'hoyo_mix', 604),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '13. Past Repast', 'main', 'hoyo_mix', 605),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '13. Past Repast', 'main', 'hoyo_mix', 606),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '13. Past Repast', 'main', 'hoyo_mix', 607),
  -- 14. Crumbled Pledge (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '14. Crumbled Pledge', 'main', 'hoyo_mix', 608),
  -- 15. Stairway of Neterikhet (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '15. Stairway of Neterikhet', 'main', 'hoyo_mix', 609),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '15. Stairway of Neterikhet', 'main', 'hoyo_mix', 610),
  -- 16. Millennial Sails (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '16. Millennial Sails', 'main', 'hoyo_mix', 611),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '16. Millennial Sails', 'main', 'hoyo_mix', 612),
  -- 17. Eye of Deshret (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '17. Eye of Deshret', 'main', 'hoyo_mix', 613),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '17. Eye of Deshret', 'main', 'hoyo_mix', 614),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '17. Eye of Deshret', 'main', 'hoyo_mix', 615),
  -- 18. Falling Fantasy (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '18. Falling Fantasy', 'main', 'hoyo_mix', 616),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '18. Falling Fantasy', 'main', 'hoyo_mix', 617),
  -- 19. Fading Finality (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '19. Fading Finality', 'main', 'hoyo_mix', 618),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '19. Fading Finality', 'main', 'hoyo_mix', 619),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '19. Fading Finality', 'main', 'hoyo_mix', 620),
  -- 20. Echoes of Distant Past (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '20. Echoes of Distant Past', 'main', 'hoyo_mix', 621),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '20. Echoes of Distant Past', 'main', 'hoyo_mix', 622),
  -- 21. Steps to Heptas (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '21. Steps to Heptas', 'main', 'hoyo_mix', 623),
  -- 22. Juncture of Admonition (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '22. Juncture of Admonition', 'main', 'hoyo_mix', 624),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '22. Juncture of Admonition', 'main', 'hoyo_mix', 625),
  -- 23. Emerald in the Desert (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '23. Emerald in the Desert', 'main', 'hoyo_mix', 626),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '23. Emerald in the Desert', 'main', 'hoyo_mix', 627),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '23. Emerald in the Desert', 'main', 'hoyo_mix', 628),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '23. Emerald in the Desert', 'main', 'hoyo_mix', 629),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '23. Emerald in the Desert', 'main', 'hoyo_mix', 630),
  -- 24. Elusive Elysium (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '24. Elusive Elysium', 'main', 'hoyo_mix', 631),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '24. Elusive Elysium', 'main', 'hoyo_mix', 632),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '24. Elusive Elysium', 'main', 'hoyo_mix', 633),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '24. Elusive Elysium', 'main', 'hoyo_mix', 634),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '24. Elusive Elysium', 'main', 'hoyo_mix', 635),
  -- 25. Serenade of Callais (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '25. Serenade of Callais', 'main', 'hoyo_mix', 636),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '25. Serenade of Callais', 'main', 'hoyo_mix', 637),
  -- 26. Reverie of Eternity (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '26. Reverie of Eternity', 'main', 'hoyo_mix', 638),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '26. Reverie of Eternity', 'main', 'hoyo_mix', 639),
  -- 27. Dust-Swept Perplexity (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '27. Dust-Swept Perplexity', 'main', 'hoyo_mix', 640),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '27. Dust-Swept Perplexity', 'main', 'hoyo_mix', 641),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '27. Dust-Swept Perplexity', 'main', 'hoyo_mix', 642),
  -- 28. Following the Sands' Trail (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '28. Following the Sands'' Trail', 'main', 'hoyo_mix', 643),
  -- 29. To the Land of Desperation (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '29. To the Land of Desperation', 'main', 'hoyo_mix', 644),
  -- 30. Arid Canyon (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '30. Arid Canyon', 'main', 'hoyo_mix', 645),
  -- 31. Deserted Path to Desert (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '31. Deserted Path to Desert', 'main', 'hoyo_mix', 646),
  -- 32. Through Predicaments (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '32. Through Predicaments', 'main', 'hoyo_mix', 647),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '32. Through Predicaments', 'main', 'hoyo_mix', 648),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '32. Through Predicaments', 'main', 'hoyo_mix', 649),
  -- 34. Echoes of Ages (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '34. Echoes of Ages', 'main', 'hoyo_mix', 650),
  -- 35. Obliterated Dust (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '35. Obliterated Dust', 'main', 'hoyo_mix', 651),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '35. Obliterated Dust', 'main', 'hoyo_mix', 652),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '35. Obliterated Dust', 'main', 'hoyo_mix', 653),
  -- 36. Ancient Anamnesis (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '36. Ancient Anamnesis', 'main', 'hoyo_mix', 654),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '36. Ancient Anamnesis', 'main', 'hoyo_mix', 655),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '36. Ancient Anamnesis', 'main', 'hoyo_mix', 656),
  -- 37. Obscure Mirage (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '37. Obscure Mirage', 'main', 'hoyo_mix', 657),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '37. Obscure Mirage', 'main', 'hoyo_mix', 658),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '37. Obscure Mirage', 'main', 'hoyo_mix', 659),
  -- 38. Nebulous Dunes (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '38. Nebulous Dunes', 'main', 'hoyo_mix', 660),
  -- 39. On the Barren Sands (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '39. On the Barren Sands', 'main', 'hoyo_mix', 661),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '39. On the Barren Sands', 'main', 'hoyo_mix', 662),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '39. On the Barren Sands', 'main', 'hoyo_mix', 663),
  -- 40. Across the Aridisols (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '40. Across the Aridisols', 'main', 'hoyo_mix', 664),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '40. Across the Aridisols', 'main', 'hoyo_mix', 665),
  -- 42. Chords of Sand and Moon (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '42. Chords of Sand and Moon', 'main', 'hoyo_mix', 666),
  -- 43. Breeze in the Arid Night (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '43. Breeze in the Arid Night', 'main', 'hoyo_mix', 667),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '43. Breeze in the Arid Night', 'main', 'hoyo_mix', 668),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '43. Breeze in the Arid Night', 'main', 'hoyo_mix', 669),
  -- 44. Hushed Gleam (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '44. Hushed Gleam', 'main', 'hoyo_mix', 670),
  -- 45. Lingering Thoughts (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '45. Lingering Thoughts', 'main', 'hoyo_mix', 671),
  -- 46. Profound Ravines (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '46. Profound Ravines', 'main', 'hoyo_mix', 672),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '46. Profound Ravines', 'main', 'hoyo_mix', 673),
  -- 47. Perilous Exploration (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '47. Perilous Exploration', 'main', 'hoyo_mix', 674),
  -- 48. Benevolence Bequeathed (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '48. Benevolence Bequeathed', 'main', 'hoyo_mix', 675),
  -- Disc 3: Battles of Sumeru 2
  -- 1. Wrathful Streaming Gold (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Wrathful Streaming Gold', 'main', 'hoyo_mix', 676),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Wrathful Streaming Gold', 'main', 'hoyo_mix', 677),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '1. Wrathful Streaming Gold', 'main', 'hoyo_mix', 678),
  -- 2. Across Dimming Asterisms (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '2. Across Dimming Asterisms', 'main', 'hoyo_mix', 679),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '2. Across Dimming Asterisms', 'main', 'hoyo_mix', 680),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '2. Across Dimming Asterisms', 'main', 'hoyo_mix', 681),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '2. Across Dimming Asterisms', 'main', 'hoyo_mix', 682),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '2. Across Dimming Asterisms', 'main', 'hoyo_mix', 683),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '2. Across Dimming Asterisms', 'main', 'hoyo_mix', 684),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '2. Across Dimming Asterisms', 'main', 'hoyo_mix', 685),
  -- 3. Swirls of Shamshir (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 686),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 687),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 688),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 689),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 690),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 691),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 692),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 693),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 694),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 695),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '3. Swirls of Shamshir', 'main', 'hoyo_mix', 696),
  -- 4. Swirls of Sachmis (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '4. Swirls of Sachmis', 'main', 'hoyo_mix', 697),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '4. Swirls of Sachmis', 'main', 'hoyo_mix', 698),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '4. Swirls of Sachmis', 'main', 'hoyo_mix', 699),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '4. Swirls of Sachmis', 'main', 'hoyo_mix', 700),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '4. Swirls of Sachmis', 'main', 'hoyo_mix', 701),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '4. Swirls of Sachmis', 'main', 'hoyo_mix', 702),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '4. Swirls of Sachmis', 'main', 'hoyo_mix', 703),
  -- 5. Rhapsodia Roscida (Yu-Peng Chen, Arcangelo Chen, Peijia You)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Rhapsodia Roscida', 'main', 'hoyo_mix', 704),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Rhapsodia Roscida', 'main', 'hoyo_mix', 705),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Rhapsodia Roscida', 'main', 'hoyo_mix', 706),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Rhapsodia Roscida', 'main', 'hoyo_mix', 707),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Rhapsodia Roscida', 'main', 'hoyo_mix', 708),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Rhapsodia Roscida', 'main', 'hoyo_mix', 709),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '5. Rhapsodia Roscida', 'main', 'hoyo_mix', 710),
  -- 7. Polumnia Omnia (Yu-Peng Chen, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '7. Polumnia Omnia', 'main', 'hoyo_mix', 711),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '7. Polumnia Omnia', 'main', 'hoyo_mix', 712),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '7. Polumnia Omnia', 'main', 'hoyo_mix', 713),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '7. Polumnia Omnia', 'main', 'hoyo_mix', 714),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '7. Polumnia Omnia', 'main', 'hoyo_mix', 715),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '7. Polumnia Omnia', 'main', 'hoyo_mix', 716),
  -- 8. God-Devouring Mania (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '8. God-Devouring Mania', 'main', 'hoyo_mix', 717),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '8. God-Devouring Mania', 'main', 'hoyo_mix', 718),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Unfathomable Sand Dunes', '8. God-Devouring Mania', 'main', 'hoyo_mix', 719),
  -- =========================================================================
  -- Album: The Shimmering Voyage Vol. 3
  -- =========================================================================
  -- Disc 1: La liesse, ou le fluide mirage des songes
  -- 1. Euphoric Ride (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '1. Euphoric Ride', 'main', 'hoyo_mix', 720),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '1. Euphoric Ride', 'main', 'hoyo_mix', 721),
  -- 2. Let's Get Started! (Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '2. Let''s Get Started!', 'main', 'hoyo_mix', 722),
  -- 3. Bustling Bazaar (Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '3. Bustling Bazaar', 'main', 'hoyo_mix', 723),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '3. Bustling Bazaar', 'main', 'hoyo_mix', 724),
  -- 4. Flanerie sur le marche (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '4. Flanerie sur le marche', 'main', 'hoyo_mix', 725),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '4. Flanerie sur le marche', 'main', 'hoyo_mix', 726),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '4. Flanerie sur le marche', 'main', 'hoyo_mix', 727),
  -- 5. Soothing Nightfall (Ziyu Che)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '5. Soothing Nightfall', 'main', 'hoyo_mix', 728),
  -- 6. Eventide Caprice (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. Eventide Caprice', 'main', 'hoyo_mix', 729),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. Eventide Caprice', 'main', 'hoyo_mix', 730),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. Eventide Caprice', 'main', 'hoyo_mix', 731),
  -- 7. Triumph of Mirth (Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '7. Triumph of Mirth', 'main', 'hoyo_mix', 732),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '7. Triumph of Mirth', 'main', 'hoyo_mix', 733),
  -- 8. Cheerful March (Ziyu Che)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '8. Cheerful March', 'main', 'hoyo_mix', 734),
  -- 9. Blissful Little Ditty (Peijia You)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '9. Blissful Little Ditty', 'main', 'hoyo_mix', 735),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '9. Blissful Little Ditty', 'main', 'hoyo_mix', 736),
  -- 11. Voyage of the Black Crystal (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '11. Voyage of the Black Crystal', 'main', 'hoyo_mix', 737),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '11. Voyage of the Black Crystal', 'main', 'hoyo_mix', 738),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '11. Voyage of the Black Crystal', 'main', 'hoyo_mix', 739),
  -- 12. Fantastical Fairytale (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '12. Fantastical Fairytale', 'main', 'hoyo_mix', 740),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '12. Fantastical Fairytale', 'main', 'hoyo_mix', 741),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '12. Fantastical Fairytale', 'main', 'hoyo_mix', 742),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '12. Fantastical Fairytale', 'main', 'hoyo_mix', 743),
  -- 13. Soothing Slumber (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '13. Soothing Slumber', 'main', 'hoyo_mix', 744),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '13. Soothing Slumber', 'main', 'hoyo_mix', 745),
  -- 14. Pensees tranquilles (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '14. Pensees tranquilles', 'main', 'hoyo_mix', 746),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '14. Pensees tranquilles', 'main', 'hoyo_mix', 747),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '14. Pensees tranquilles', 'main', 'hoyo_mix', 748),
  -- 15. Les tendres souhaits (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '15. Les tendres souhaits', 'main', 'hoyo_mix', 749),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '15. Les tendres souhaits', 'main', 'hoyo_mix', 750),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '15. Les tendres souhaits', 'main', 'hoyo_mix', 751),
  -- 16. Astral Chime (Yuxi Wang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '16. Astral Chime', 'main', 'hoyo_mix', 752),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '16. Astral Chime', 'main', 'hoyo_mix', 753),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '16. Astral Chime', 'main', 'hoyo_mix', 754),
  -- 17. Dreamlike Reflection (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '17. Dreamlike Reflection', 'main', 'hoyo_mix', 755),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '17. Dreamlike Reflection', 'main', 'hoyo_mix', 756),
  -- 18. Journey by the Moonlight (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '18. Journey by the Moonlight', 'main', 'hoyo_mix', 757),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '18. Journey by the Moonlight', 'main', 'hoyo_mix', 758),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '18. Journey by the Moonlight', 'main', 'hoyo_mix', 759),
  -- 19. The Owls' Nocturne (Peijia You)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '19. The Owls'' Nocturne', 'main', 'hoyo_mix', 760),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '19. The Owls'' Nocturne', 'main', 'hoyo_mix', 761),
  -- 20. Towers of Afrasiab (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '20. Towers of Afrasiab', 'main', 'hoyo_mix', 762),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '20. Towers of Afrasiab', 'main', 'hoyo_mix', 763),
  -- 21. Foregone Depiction (Ziyu Che)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '21. Foregone Depiction', 'main', 'hoyo_mix', 764),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '21. Foregone Depiction', 'main', 'hoyo_mix', 765),
  -- 22. Distant Portrayal (Ziyu Che)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '22. Distant Portrayal', 'main', 'hoyo_mix', 766),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '22. Distant Portrayal', 'main', 'hoyo_mix', 767),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '22. Distant Portrayal', 'main', 'hoyo_mix', 768),
  -- 23. Moment of Conflict (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '23. Moment of Conflict', 'main', 'hoyo_mix', 769),
  -- 24. Dream of White Branches (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '24. Dream of White Branches', 'main', 'hoyo_mix', 770),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Creatures of Nature', 'Playful Spirits of the Forest', 'Album: The Shimmering Voyage Vol. 3', '24. Dream of White Branches', 'main', 'hoyo_mix', 771),
  -- 25. With Witty Wit (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '25. With Witty Wit', 'main', 'hoyo_mix', 772),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '25. With Witty Wit', 'main', 'hoyo_mix', 773),
  -- 28. Tipsy Poetry (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '28. Tipsy Poetry', 'main', 'hoyo_mix', 774),
  -- Disc 2: Tathya-Samvrti
  -- 1. Melody of Utsava (Yu-Peng Chen, Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '1. Melody of Utsava', 'main', 'hoyo_mix', 775),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '1. Melody of Utsava', 'main', 'hoyo_mix', 776),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '1. Melody of Utsava', 'main', 'hoyo_mix', 777),
  -- 2. Descendants of Deshret (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '2. Descendants of Deshret', 'main', 'hoyo_mix', 778),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '2. Descendants of Deshret', 'main', 'hoyo_mix', 779),
  -- 3. Dance of Sabzeruz (Yu-Peng Chen, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '3. Dance of Sabzeruz', 'main', 'hoyo_mix', 780),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '3. Dance of Sabzeruz', 'main', 'hoyo_mix', 781),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '3. Dance of Sabzeruz', 'main', 'hoyo_mix', 782),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '3. Dance of Sabzeruz', 'main', 'hoyo_mix', 783),
  -- 4. Note of Calamity (Xin Zhao, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '4. Note of Calamity', 'main', 'hoyo_mix', 784),
  -- 5. Foreboding Beat (Yu-Peng Chen, Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '5. Foreboding Beat', 'main', 'hoyo_mix', 785),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '5. Foreboding Beat', 'main', 'hoyo_mix', 786),
  -- 6. Unrequited Yearning (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. Unrequited Yearning', 'main', 'hoyo_mix', 787),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. Unrequited Yearning', 'main', 'hoyo_mix', 788),
  -- 7. Eccentric Reception (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '7. Eccentric Reception', 'main', 'hoyo_mix', 789),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '7. Eccentric Reception', 'main', 'hoyo_mix', 790),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '7. Eccentric Reception', 'main', 'hoyo_mix', 791),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '7. Eccentric Reception', 'main', 'hoyo_mix', 792),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '7. Eccentric Reception', 'main', 'hoyo_mix', 793),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '7. Eccentric Reception', 'main', 'hoyo_mix', 794),
  -- 8. Hyakuin of Blossoming Mirage (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '8. Hyakuin of Blossoming Mirage', 'main', 'hoyo_mix', 795),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '8. Hyakuin of Blossoming Mirage', 'main', 'hoyo_mix', 796),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '8. Hyakuin of Blossoming Mirage', 'main', 'hoyo_mix', 797),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '8. Hyakuin of Blossoming Mirage', 'main', 'hoyo_mix', 798),
  -- 9. Moment of Tribulation (Xin Zhao, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '9. Moment of Tribulation', 'main', 'hoyo_mix', 799),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '9. Moment of Tribulation', 'main', 'hoyo_mix', 800),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '9. Moment of Tribulation', 'main', 'hoyo_mix', 801),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '9. Moment of Tribulation', 'main', 'hoyo_mix', 802),
  -- 10. Smiting Scope (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '10. Smiting Scope', 'main', 'hoyo_mix', 803),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '10. Smiting Scope', 'main', 'hoyo_mix', 804),
  -- 11. Crumbling Sands (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '11. Crumbling Sands', 'main', 'hoyo_mix', 805),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '11. Crumbling Sands', 'main', 'hoyo_mix', 806),
  -- 12. Whisper of Weinlesefest (Xin Zhao, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '12. Whisper of Weinlesefest', 'main', 'hoyo_mix', 807),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '12. Whisper of Weinlesefest', 'main', 'hoyo_mix', 808),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '12. Whisper of Weinlesefest', 'main', 'hoyo_mix', 809),
  -- 13. Parcener of Heptas (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '13. Parcener of Heptas', 'main', 'hoyo_mix', 810),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '13. Parcener of Heptas', 'main', 'hoyo_mix', 811),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '13. Parcener of Heptas', 'main', 'hoyo_mix', 812),
  -- 14. Two Hearts Rejoice (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '14. Two Hearts Rejoice', 'main', 'hoyo_mix', 813),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '14. Two Hearts Rejoice', 'main', 'hoyo_mix', 814),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '14. Two Hearts Rejoice', 'main', 'hoyo_mix', 815),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '14. Two Hearts Rejoice', 'main', 'hoyo_mix', 816),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '14. Two Hearts Rejoice', 'main', 'hoyo_mix', 817),
  -- 15. The Moving Finger Writes (Qian Ding, Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '15. The Moving Finger Writes', 'main', 'hoyo_mix', 818),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '15. The Moving Finger Writes', 'main', 'hoyo_mix', 819),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '15. The Moving Finger Writes', 'main', 'hoyo_mix', 820),
  -- 16. Inebriation of Raghs-e-Nilou (Yijun Jiang, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '16. Inebriation of Raghs-e-Nilou', 'main', 'hoyo_mix', 821),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '16. Inebriation of Raghs-e-Nilou', 'main', 'hoyo_mix', 822),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '16. Inebriation of Raghs-e-Nilou', 'main', 'hoyo_mix', 823),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'India -> Plucked -> Sitar -> Elements', 'Sitar Drone', 'Album: The Shimmering Voyage Vol. 3', '16. Inebriation of Raghs-e-Nilou', 'main', 'hoyo_mix', 824),
  -- 17. Trifaria Conscientia (Qian Ding, Yu-Peng Chen, Arcangelo Chen, June)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '17. Trifaria Conscientia', 'main', 'hoyo_mix', 825),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '17. Trifaria Conscientia', 'main', 'hoyo_mix', 826),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '17. Trifaria Conscientia', 'main', 'hoyo_mix', 827),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '17. Trifaria Conscientia', 'main', 'hoyo_mix', 828),
  -- 18. All in One, All in Vain (Qian Ding, Yu-Peng Chen, June)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '18. All in One, All in Vain', 'main', 'hoyo_mix', 829),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '18. All in One, All in Vain', 'main', 'hoyo_mix', 830),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '18. All in One, All in Vain', 'main', 'hoyo_mix', 831),
  -- 19. Heart of Yuugen (Qian Ding, Yu-Peng Chen, Yijun Jiang, Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '19. Heart of Yuugen', 'main', 'hoyo_mix', 832),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '19. Heart of Yuugen', 'main', 'hoyo_mix', 833),
  -- 20. Remembrance of Akitsu (Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '20. Remembrance of Akitsu', 'main', 'hoyo_mix', 834),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '20. Remembrance of Akitsu', 'main', 'hoyo_mix', 835),
  -- 21. The Blaze Lilies (Yu-Peng Chen, Qian Ding, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '21. The Blaze Lilies', 'main', 'hoyo_mix', 836),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '21. The Blaze Lilies', 'main', 'hoyo_mix', 837),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '21. The Blaze Lilies', 'main', 'hoyo_mix', 838),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '21. The Blaze Lilies', 'main', 'hoyo_mix', 839),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '21. The Blaze Lilies', 'main', 'hoyo_mix', 840),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '21. The Blaze Lilies', 'main', 'hoyo_mix', 841),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '21. The Blaze Lilies', 'main', 'hoyo_mix', 842),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '21. The Blaze Lilies', 'main', 'hoyo_mix', 843),
  -- 22. First Blossom of Spring (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '22. First Blossom of Spring', 'main', 'hoyo_mix', 844),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '22. First Blossom of Spring', 'main', 'hoyo_mix', 845),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '22. First Blossom of Spring', 'main', 'hoyo_mix', 846),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '22. First Blossom of Spring', 'main', 'hoyo_mix', 847),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '22. First Blossom of Spring', 'main', 'hoyo_mix', 848),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '22. First Blossom of Spring', 'main', 'hoyo_mix', 849),
  -- 23. The Name is Legion (Arcangelo Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '23. The Name is Legion', 'main', 'hoyo_mix', 850),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '23. The Name is Legion', 'main', 'hoyo_mix', 851),
  -- 24. Serenade of the Distant Realm (June)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '24. Serenade of the Distant Realm', 'main', 'hoyo_mix', 852),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '24. Serenade of the Distant Realm', 'main', 'hoyo_mix', 853),
  -- 25. Occluded Blight (June)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '25. Occluded Blight', 'main', 'hoyo_mix', 854),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '25. Occluded Blight', 'main', 'hoyo_mix', 855),
  -- 26. Love Is in the Air (Arcangelo Chen, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '26. Love Is in the Air', 'main', 'hoyo_mix', 856),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '26. Love Is in the Air', 'main', 'hoyo_mix', 857),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '26. Love Is in the Air', 'main', 'hoyo_mix', 858),
  -- 27. Heliacal Path (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '27. Heliacal Path', 'main', 'hoyo_mix', 859),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '27. Heliacal Path', 'main', 'hoyo_mix', 860),
  -- 28. Glowing Embers (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '28. Glowing Embers', 'main', 'hoyo_mix', 861),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '28. Glowing Embers', 'main', 'hoyo_mix', 862),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '28. Glowing Embers', 'main', 'hoyo_mix', 863),
  -- 29. Purposeful Purity (June)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '29. Purposeful Purity', 'main', 'hoyo_mix', 864),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '29. Purposeful Purity', 'main', 'hoyo_mix', 865),
  -- 30. Pulse of Spring (Qian Ding, Yuxi Wang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '30. Pulse of Spring', 'main', 'hoyo_mix', 866),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '30. Pulse of Spring', 'main', 'hoyo_mix', 867),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '30. Pulse of Spring', 'main', 'hoyo_mix', 868),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '30. Pulse of Spring', 'main', 'hoyo_mix', 869),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '30. Pulse of Spring', 'main', 'hoyo_mix', 870),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '30. Pulse of Spring', 'main', 'hoyo_mix', 871),
  -- 31. Coronation of Providence (Arcangelo Chen, Peijia You, Yijun Jiang, Xin Zhao, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '31. Coronation of Providence', 'main', 'hoyo_mix', 872),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '31. Coronation of Providence', 'main', 'hoyo_mix', 873),
  -- 32. A Pensive Sigh (Arcangelo Chen, Yuxi Wang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '32. A Pensive Sigh', 'main', 'hoyo_mix', 874),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '32. A Pensive Sigh', 'main', 'hoyo_mix', 875),
  -- 33. Chasing Starlight With You (Dimeng Yuan, Yuxi Wang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '33. Chasing Starlight With You', 'main', 'hoyo_mix', 876),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '33. Chasing Starlight With You', 'main', 'hoyo_mix', 877),
  -- 34. Crystalline Reverie (Yuxi Wang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '34. Crystalline Reverie', 'main', 'hoyo_mix', 878),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '34. Crystalline Reverie', 'main', 'hoyo_mix', 879),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '34. Crystalline Reverie', 'main', 'hoyo_mix', 880),
  -- Disc 3: Anecdotes of Reverie
  -- 1. Dharana Iaksana (Yijun Jiang, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '1. Dharana Iaksana', 'main', 'hoyo_mix', 881),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '1. Dharana Iaksana', 'main', 'hoyo_mix', 882),
  -- 2. Invokation Game (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '2. Invokation Game', 'main', 'hoyo_mix', 883),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '2. Invokation Game', 'main', 'hoyo_mix', 884),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '2. Invokation Game', 'main', 'hoyo_mix', 885),
  -- 3. Voyage Suite (Peijia You, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '3. Voyage Suite', 'main', 'hoyo_mix', 886),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '3. Voyage Suite', 'main', 'hoyo_mix', 887),
  -- 4. Polumnia Omnia (Performance Version) (Yu-Peng Chen, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '4. Polumnia Omnia (Performance Version)', 'main', 'hoyo_mix', 888),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '4. Polumnia Omnia (Performance Version)', 'main', 'hoyo_mix', 889),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '4. Polumnia Omnia (Performance Version)', 'main', 'hoyo_mix', 890),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '4. Polumnia Omnia (Performance Version)', 'main', 'hoyo_mix', 891),
  -- 5. Virtuous Guardian (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '5. Virtuous Guardian', 'main', 'hoyo_mix', 892),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '5. Virtuous Guardian', 'main', 'hoyo_mix', 893),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '5. Virtuous Guardian', 'main', 'hoyo_mix', 894),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '5. Virtuous Guardian', 'main', 'hoyo_mix', 895),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '5. Virtuous Guardian', 'main', 'hoyo_mix', 896),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '5. Virtuous Guardian', 'main', 'hoyo_mix', 897),
  -- 6. The Final Feast (Dimeng Yuan, Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. The Final Feast', 'main', 'hoyo_mix', 898),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. The Final Feast', 'main', 'hoyo_mix', 899),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. The Final Feast', 'main', 'hoyo_mix', 900),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. The Final Feast', 'main', 'hoyo_mix', 901),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. The Final Feast', 'main', 'hoyo_mix', 902),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 3', '6. The Final Feast', 'main', 'hoyo_mix', 903);

-- =========================================================================
-- Live Recording & Credited Performance raw_source UPDATEs
-- =========================================================================

-- Millelith's Watch (Disc 1)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 1 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Hongxuan Chen' WHERE position = 2 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 3 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 4 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 5 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Matouqin — Haitao Li' WHERE position = 7 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 9 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Hongxuan Chen' WHERE position = 10 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 11 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 12 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 13 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 14 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Hongxuan Chen' WHERE position = 15 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 16 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Matouqin — Haitao Li' WHERE position = 17 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 18 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 19 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 20 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 21 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 22 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 23 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Matouqin — Haitao Li' WHERE position = 24 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 25 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Matouqin — Haitao Li' WHERE position = 27 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Hongxuan Chen' WHERE position = 28 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 29 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 30 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 31 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 32 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 33 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Matouqin — Haitao Li' WHERE position = 34 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Millelith's Watch (Disc 2)
UPDATE usages SET raw_source = 'Live Recording: Dizi — Xiaokui Ding' WHERE position = 35 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Xiaokui Ding' WHERE position = 36 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Ying Wang' WHERE position = 38 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Xiaokui Ding' WHERE position = 39 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 40 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 41 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 45 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 46 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 48 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 49 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 50 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 51 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 52 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 53 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 54 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Millelith's Watch (Disc 3)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 56 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 57 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Xiaokui Ding' WHERE position = 58 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Xiaokui Ding' WHERE position = 59 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yijing Shen' WHERE position = 60 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Xiao Meng' WHERE position = 61 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Ying Wang' WHERE position = 62 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 63 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 64 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 65 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 67 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 68 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 70 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 71 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 72 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 73 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Ming Liu' WHERE position = 74 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Shimmering Voyage Vol. 2 (Disc 1)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 76 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 77 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 78 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — The City of Prague Philharmonic Orchestra' WHERE position = 79 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 80 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Taiko — Kodo' WHERE position = 81 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 83 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 84 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Taiko — Kodo' WHERE position = 85 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 87 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 89 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Shanghai Philharmonic Society & Choir' WHERE position = 90 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 93 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 94 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Shanghai Philharmonic Society & Choir' WHERE position = 95 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 98 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 99 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 100 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 101 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tsugaru Shamisen — Shamio, Yutaka Oyama' WHERE position = 102 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 104 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 105 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 106 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 107 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 108 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 109 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 110 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 111 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 112 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 113 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 114 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 116 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 118 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 120 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Xin Zhao' WHERE position = 121 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 122 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 123 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — He Lin' WHERE position = 124 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Violin — Yue Zhu' WHERE position = 125 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Violin — Chang Luo' WHERE position = 126 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 127 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 128 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Double Bass — Bingyang Yang' WHERE position = 129 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — He Lin' WHERE position = 130 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Violin — Yue Zhu' WHERE position = 131 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Violin — Chang Luo' WHERE position = 132 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 133 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 134 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Double Bass — Bingyang Yang' WHERE position = 135 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — He Lin' WHERE position = 136 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 137 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 138 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 139 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Shimmering Voyage Vol. 2 (Disc 2)
UPDATE usages SET raw_source = 'Credited Piano Performance — Yijun Jiang' WHERE position = 140 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yijun Jiang' WHERE position = 141 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Harpsichord Performance — Yijun Jiang' WHERE position = 142 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Harpsichord Performance — Xin Zhao' WHERE position = 143 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Harpsichord Performance — Dimeng Yuan' WHERE position = 144 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Harpsichord Performance — Qian Ding' WHERE position = 145 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 146 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Xiaokui Ding' WHERE position = 147 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yijing Shen' WHERE position = 148 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Ying Wang' WHERE position = 149 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 150 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Xiaokui Ding' WHERE position = 151 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yijing Shen' WHERE position = 152 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Ying Wang' WHERE position = 153 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 154 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 155 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Steel-Stringed Guitar — Yijun Jiang' WHERE position = 156 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 157 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Shimmering Voyage Vol. 2 (Disc 3)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 158 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 159 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 160 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 161 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shaoqin — Jiajun Ma' WHERE position = 162 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Xin Zhao' WHERE position = 163 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 165 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 166 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yuchen Wang' WHERE position = 167 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 168 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 171 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 172 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — The City of Prague Philharmonic Orchestra' WHERE position = 174 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 175 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 176 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 177 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 178 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 179 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 181 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 183 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 184 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 185 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 186 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 187 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 188 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 189 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 191 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 192 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 194 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Xiaokui Ding' WHERE position = 195 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 196 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 198 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Xiaokui Ding' WHERE position = 199 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yijing Shen' WHERE position = 200 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Xiao Meng' WHERE position = 201 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Ying Wang' WHERE position = 202 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 203 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Xiaokui Ding' WHERE position = 204 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yijing Shen' WHERE position = 205 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Ying Wang' WHERE position = 206 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — The City of Prague Philharmonic Orchestra' WHERE position = 207 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Xiaokui Ding' WHERE position = 208 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — The City of Prague Philharmonic Orchestra' WHERE position = 209 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — The City of Prague Philharmonic Orchestra' WHERE position = 210 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 211 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yijing Shen' WHERE position = 212 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Xiao Meng' WHERE position = 213 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Chao Li' WHERE position = 214 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 215 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Peng Li' WHERE position = 216 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 217 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 218 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 219 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Dimeng Yuan' WHERE position = 220 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 221 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 222 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 223 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 224 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Xiaokui Ding' WHERE position = 225 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 226 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 227 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Elim' WHERE position = 228 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Choir — Jia Tian, Weiqing Tang, Jinfei Chai, Botao Wu, ...' WHERE position = 229 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Choir — Shanghai Philharmonic Society & Choir' WHERE position = 230 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 231 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 234 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Ningmei Quan' WHERE position = 235 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Sfuture Art Group' WHERE position = 236 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Forest of Jnana and Vidya (Disc 1)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 237 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 238 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 239 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Steve Smith' WHERE position = 240 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 241 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 242 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Santur — Peyman' WHERE position = 243 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Attab' WHERE position = 244 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ashley Blasse' WHERE position = 245 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 247 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 248 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ashley Blasse' WHERE position = 249 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 251 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 252 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 253 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 254 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 255 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 257 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 258 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Steve Smith' WHERE position = 259 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 260 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 261 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 262 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Steve Smith' WHERE position = 263 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ashley Blasse' WHERE position = 264 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 265 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 266 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 267 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 268 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 269 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 270 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 271 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 272 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 273 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 274 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 275 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 276 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 277 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 278 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 280 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 281 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 282 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 283 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 284 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 285 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 286 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 287 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 288 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 289 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 290 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 291 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 292 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 293 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 294 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 295 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 296 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 297 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Stephanie Gonley' WHERE position = 298 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 299 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 300 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 301 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 302 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 303 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 304 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Baha Yetkin' WHERE position = 305 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 306 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 307 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 309 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 310 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Jonathan Mayer' WHERE position = 311 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 312 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 313 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 314 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 315 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Jonathan Mayer' WHERE position = 316 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 317 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 318 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 319 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 320 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 321 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 322 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 323 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 324 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 325 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 326 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 327 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 328 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 329 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 330 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen' WHERE position = 331 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Forest of Jnana and Vidya (Disc 2)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 332 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 333 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 334 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 335 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 336 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 337 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 338 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 339 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Attab' WHERE position = 340 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 343 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 344 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 347 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 348 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 350 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Attab' WHERE position = 351 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 352 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 353 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Baha Yetkin' WHERE position = 354 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 355 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 356 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 357 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 358 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Attab' WHERE position = 359 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 360 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 361 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 362 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 363 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 364 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Baha Yetkin' WHERE position = 365 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 366 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Jonathan Mayer' WHERE position = 367 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — The City of Prague Philharmonic Orchestra' WHERE position = 368 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 369 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Jonathan Mayer' WHERE position = 370 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 371 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 372 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Santur — Peyman' WHERE position = 373 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Qian Ding' WHERE position = 374 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yijun Jiang' WHERE position = 375 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 376 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 377 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 378 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 379 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Steve Smith' WHERE position = 380 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Attab' WHERE position = 381 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 382 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ashley Blasse' WHERE position = 383 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Dimeng Yuan' WHERE position = 384 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 385 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 387 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 388 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 389 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 391 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 392 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 393 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Jonathan Mayer' WHERE position = 394 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 396 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 397 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 398 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 399 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 400 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 401 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Jonathan Mayer' WHERE position = 402 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Sfuture Art Group' WHERE position = 403 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 404 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Sfuture Art Group' WHERE position = 405 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 406 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 407 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Sfuture Art Group' WHERE position = 408 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 409 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 410 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Sfuture Art Group' WHERE position = 411 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Forest of Jnana and Vidya (Disc 3)
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 412 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yijun Jiang' WHERE position = 413 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Qian Ding' WHERE position = 414 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 415 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Dimeng Yuan' WHERE position = 416 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 417 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 418 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 419 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 420 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 421 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 422 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 423 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 424 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 426 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 427 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 430 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 431 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 432 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Forest of Jnana and Vidya (Disc 4)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 434 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 435 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 436 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Steve Smith' WHERE position = 437 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 438 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 439 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 440 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Attab' WHERE position = 441 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 442 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Ming Liu' WHERE position = 443 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 444 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Steve Smith' WHERE position = 445 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 446 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 447 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 448 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ashley Blasse' WHERE position = 449 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Stephanie Gonley' WHERE position = 450 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 451 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 452 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 453 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Attab' WHERE position = 454 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 455 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 456 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 457 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 458 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 459 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 460 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ashley Blasse' WHERE position = 461 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Unfathomable Sand Dunes (Disc 1)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 462 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 463 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 464 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Rui Liu' WHERE position = 465 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 466 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 467 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 468 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 469 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 470 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 471 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 472 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 473 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 474 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 475 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Jiannan Gu' WHERE position = 476 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 477 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 478 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 479 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 480 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 481 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 482 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 483 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Jiannan Gu' WHERE position = 484 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 485 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 486 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Jiannan Gu' WHERE position = 487 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 488 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Jiannan Gu' WHERE position = 489 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 490 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 491 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 492 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 493 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 494 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 495 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Jiannan Gu' WHERE position = 496 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 497 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 498 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 499 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 500 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 501 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 502 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 503 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 504 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 505 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 506 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 507 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 508 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 509 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 510 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 511 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 512 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 513 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 514 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 515 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 516 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 517 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 518 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 519 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 520 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 521 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 522 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Zirong Zhu' WHERE position = 523 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 524 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 525 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Zirong Zhu' WHERE position = 526 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 527 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 528 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 529 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 530 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ying Lang' WHERE position = 531 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 532 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 533 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 534 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 535 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Jiannan Gu' WHERE position = 536 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 537 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Jiannan Gu' WHERE position = 538 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 539 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 540 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ying Lang' WHERE position = 541 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 542 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 543 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 544 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 545 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Jiannan Gu' WHERE position = 546 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 547 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 548 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 549 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 550 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 551 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ying Lang' WHERE position = 552 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 553 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 554 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 555 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 556 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 557 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ying Lang' WHERE position = 558 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 559 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ying Lang' WHERE position = 560 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 561 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Jiannan Gu' WHERE position = 562 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 563 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 564 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ying Lang' WHERE position = 565 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 566 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 567 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 568 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 569 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 570 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 571 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 572 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 573 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 574 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 575 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 576 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Unfathomable Sand Dunes (Disc 2)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 577 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 578 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 579 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 580 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 581 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Zhiqian Li' WHERE position = 582 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 583 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 584 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 585 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 586 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 587 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 588 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 589 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 590 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 591 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 592 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 593 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 594 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 595 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 596 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 597 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 598 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 599 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 600 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 601 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 602 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 603 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 604 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 605 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 606 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 607 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 608 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 609 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 610 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 611 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 612 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 613 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 614 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Santur — Peyman' WHERE position = 615 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 616 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 617 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 618 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 619 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 620 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 621 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 622 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 623 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 624 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 625 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 626 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 627 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 628 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 629 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 630 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 631 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 632 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 633 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 634 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 635 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 636 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 637 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 638 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Chao Li' WHERE position = 639 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 640 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 641 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Chao Li' WHERE position = 642 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 643 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 644 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Jiannan Gu' WHERE position = 645 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 646 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 647 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 648 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kanun — Maya Youssef' WHERE position = 649 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Steve Smith' WHERE position = 650 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 651 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 652 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 653 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 654 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 655 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 656 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 657 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 658 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 659 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 660 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 661 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 662 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Ying Wang' WHERE position = 663 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 664 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 665 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 666 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 667 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 668 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 669 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 670 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 671 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 672 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 673 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 674 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Sfuture Art Group' WHERE position = 675 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Unfathomable Sand Dunes (Disc 3)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 676 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 677 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 678 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 679 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 680 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 681 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 682 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Chang Liu' WHERE position = 683 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 684 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Chao Li' WHERE position = 685 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 686 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Ming Liu' WHERE position = 687 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Eliza Marshall' WHERE position = 688 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Attab' WHERE position = 689 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 690 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 691 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 692 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Martin Robertson' WHERE position = 693 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 694 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Steve Smith' WHERE position = 695 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 696 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Stephanie Gonley' WHERE position = 697 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Josh Plotner' WHERE position = 698 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saz — Dursuncan Cakin' WHERE position = 699 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Steve Smith' WHERE position = 700 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ashley Blasse' WHERE position = 701 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Steve Smith' WHERE position = 702 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Arjun Verma' WHERE position = 703 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 704 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 705 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 706 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Yu-Peng Chen' WHERE position = 707 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 708 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tenor Choir — Xiaoming Xu, Xinyu Li, Jia Hu, Botao Wu, ...' WHERE position = 709 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bass Choir — Zhong Zheng, Chaobin Chen, Lei Zhang, ...' WHERE position = 710 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 711 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 712 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Yu-Peng Chen' WHERE position = 713 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 714 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tenor Choir — Xiaoming Xu, Xinyu Li, Jia Hu, Botao Wu, ...' WHERE position = 715 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bass Choir — Zhong Zheng, Chaobin Chen, Lei Zhang, ...' WHERE position = 716 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 717 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 718 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 719 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Shimmering Voyage Vol. 3 (Disc 1)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 720 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 721 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 722 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 723 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Quintet' WHERE position = 724 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 725 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Churan Li' WHERE position = 726 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yiying Zhang' WHERE position = 727 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 728 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 729 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Csongor Veér' WHERE position = 730 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Xin Zhao' WHERE position = 731 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 732 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Xiaokui Ding' WHERE position = 733 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Churan Li' WHERE position = 734 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Csongor Veér' WHERE position = 735 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Peijia You' WHERE position = 736 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 737 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 738 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 739 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 740 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 741 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Xiaokui Ding' WHERE position = 742 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Huizhe Li' WHERE position = 743 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Xiaokui Ding' WHERE position = 744 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Huizhe Li' WHERE position = 745 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 746 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 747 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 748 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 749 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 750 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harmonica — Xiaoguang Liu' WHERE position = 751 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 752 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 753 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harmonica — Xiaoguang Liu' WHERE position = 754 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 755 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harmonica — Xiaoguang Liu' WHERE position = 756 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 757 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 758 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 759 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 760 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 761 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 762 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 763 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 764 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 765 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 766 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 767 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 768 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 769 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 770 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 772 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 773 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guqin — Jingyu Fang' WHERE position = 774 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Shimmering Voyage Vol. 3 (Disc 2)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 775 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 776 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Sfuture Art Group' WHERE position = 777 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 778 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 779 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 780 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 781 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 782 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 783 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 784 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 785 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 786 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 787 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 788 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 789 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 790 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 791 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 792 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 793 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Qin Shi' WHERE position = 794 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 795 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 796 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Qin Shi' WHERE position = 797 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 798 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 799 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 800 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 801 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Qin Shi' WHERE position = 802 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 803 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 804 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 805 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 806 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 807 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 808 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Qin Shi' WHERE position = 809 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 810 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oud — Kian' WHERE position = 811 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 812 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 813 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 814 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 815 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Zhiqian' WHERE position = 816 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Qin Shi' WHERE position = 817 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 818 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 819 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 820 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 821 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 822 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Zheng Ma' WHERE position = 823 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 825 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 826 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 827 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sitar — Zheng Ma' WHERE position = 828 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 829 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 830 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 831 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 832 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 833 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 834 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 835 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 836 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 837 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 838 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 839 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Xiaokui Ding' WHERE position = 840 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Yankun Duan' WHERE position = 841 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yijing Shen' WHERE position = 842 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Chao Li' WHERE position = 843 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 844 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 845 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 846 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yijing Shen' WHERE position = 847 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Chao Li' WHERE position = 848 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Xiaokui Ding' WHERE position = 849 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 850 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 851 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 852 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 853 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 854 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 855 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 856 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 857 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 858 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 859 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 860 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 861 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 862 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ney — Xiaokui Ding' WHERE position = 863 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 864 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 865 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 866 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 867 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Yuanchun Yu' WHERE position = 868 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yijing Shen' WHERE position = 869 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Chao Li' WHERE position = 870 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Xiaokui Ding' WHERE position = 871 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 872 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 873 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Quartet' WHERE position = 874 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 875 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 876 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 877 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 878 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 879 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ping Zhang' WHERE position = 880 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Shimmering Voyage Vol. 3 (Disc 3)
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 881 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 882 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 883 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 884 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 885 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 886 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 887 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 888 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 889 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 890 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Paolo Andrea Di Pietro' WHERE position = 891 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 892 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Xiaokui Ding' WHERE position = 893 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Xiao Meng' WHERE position = 894 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jingya Shang' WHERE position = 895 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Yue Jin' WHERE position = 896 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Xiaokui Ding' WHERE position = 897 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 898 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 899 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Dimeng Yuan' WHERE position = 900 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 901 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saxophone — Shihai Li' WHERE position = 902 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Ye Fan' WHERE position = 903 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
