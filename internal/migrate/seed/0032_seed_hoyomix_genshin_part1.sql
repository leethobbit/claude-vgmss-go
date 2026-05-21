-- Source: reference/HOYO-MiX Sound Sources - Genshin Impact.csv (rows 47-1585)
-- Part 1 of 4: ONE game row for Genshin Impact + usages for albums 1-8.
-- Albums covered (7):
--   1. The Wind and The Star Traveler
--   2. City of Winds and Idylls (Discs 1, 2, 3)
--   3. Jade Moon Upon a Sea of Clouds (Discs 1, 2, 3)
--   4. Vortex of Legends
--   5. The Shimmering Voyage (Discs 1, 2, 3, 4)
--   6. Realm of Tranquil Eternity (Discs 1, 2, 3)
--   7. Islands of the Lost and Forgotten (Discs 1, 2, 3)
-- Live Recording rows: product_id NULL, raw_source populated via UPDATE at end of file.
-- Recording Studio multi-line annotation blocks are dropped (album-level metadata).
-- Composers aggregated from per-track album ♪ annotations.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('EastWest'),
  ('Steinway & Sons'),
  ('Heavyocity'),
  ('Spectrasonics'),
  ('Best Service'),
  ('Native Instruments'),
  ('Vienna Symphonic Library'),
  ('Xfer Records');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Symphonic Orchestra',         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Ra',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinway & Sons'          COLLATE NOCASE), 'Steinway D-274',               'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'               COLLATE NOCASE), 'Damage',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Stylus RMX',                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Omnisphere 2',                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Keyscape',                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'Forest Kingdom 3',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'Celtic Era 2',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'Desert Winds',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Noire',                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'The Grandeur',                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Action Strikes',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'VI Special Edition Vol. 1',    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'Synchron Concert D-274',       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'Synchron Harp',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Xfer Records'             COLLATE NOCASE), 'Serum',                        'Synth');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Genshin Impact',
   'PC, Mobile, PlayStation, Switch',
   '2020-09-28',
   'Yu-Peng Chen, Yijun Jiang, Xin Zhao, Dimeng Yuan, Qian Ding, Jiade He, Simai Wang, Peijia You, Arcangelo Chen, Ziyu Che, June, Yuxi Wang, Yang Lee, Lunan, Deer Suo, Linyao Feng, Caroline Luo, Qianshuo Zhou, Zhenlan Kang',
   'yu-peng chen, yijun jiang, xin zhao, dimeng yuan, qian ding, jiade he, simai wang, peijia you, arcangelo chen, ziyu che, june, yuxi wang, yang lee, lunan, deer suo, linyao feng, caroline luo, qianshuo zhou, zhenlan kang',
   'Source: HOYO-MiX Sound Sources - Genshin Impact.csv. ~41 albums/EPs/singles. Track-level composer attribution aggregated at the game level. Many albums recorded with London Philharmonic Orchestra, Shanghai Symphony Orchestra, International Master Philharmonic Orchestra, Tokyo Philharmonic Orchestra, and other live ensembles. This migration covers albums 1-8 (parts 2/3/4 cover the rest).');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Album: The Wind and The Star Traveler (2020-06-19)
  -- =========================================================================
  -- 1. Genshin Impact Main Theme (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '1. Genshin Impact Main Theme', 'main', 'hoyo_mix', 1),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', 'All Cymbals', 'Album: The Wind and The Star Traveler | (22 Cymbal)', '1. Genshin Impact Main Theme', 'main', 'hoyo_mix', 2),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Wind and The Star Traveler', '1. Genshin Impact Main Theme', 'main', 'hoyo_mix', 3),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Wind and The Star Traveler', '1. Genshin Impact Main Theme', 'main', 'hoyo_mix', 4),
  -- 2. Dawn Winery Theme (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '2. Dawn Winery Theme', 'main', 'hoyo_mix', 5),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Wind and The Star Traveler', '2. Dawn Winery Theme', 'main', 'hoyo_mix', 6),
  -- 3. A Sweet Smile (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '3. A Sweet Smile', 'main', 'hoyo_mix', 7),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler | from GI wiki, no source', '3. A Sweet Smile', 'main', 'hoyo_mix', 8),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Wind and The Star Traveler', '3. A Sweet Smile', 'main', 'hoyo_mix', 9),
  -- 4. A Storm, A Spire, and A Sanctum (Dvalin''s Nest) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '4. A Storm, A Spire, and A Sanctum (Dvalin''s Nest)', 'main', 'hoyo_mix', 10),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler | from GI wiki, no source', '4. A Storm, A Spire, and A Sanctum (Dvalin''s Nest)', 'main', 'hoyo_mix', 11),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Wind and The Star Traveler', '4. A Storm, A Spire, and A Sanctum (Dvalin''s Nest)', 'main', 'hoyo_mix', 12),
  -- 5. Caelestinum Finale Termini (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '5. Caelestinum Finale Termini', 'main', 'hoyo_mix', 13),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler | from GI wiki, no source', '5. Caelestinum Finale Termini', 'main', 'hoyo_mix', 14),
  -- 6. Lone Sojourner (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '6. Lone Sojourner', 'main', 'hoyo_mix', 15),
  -- 7. A Day in Mondstadt (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '7. A Day in Mondstadt', 'main', 'hoyo_mix', 16),
  -- 8. Dream Aria (Genshin Impact Main Theme Var.) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler | from GI wiki, no source', '8. Dream Aria (Genshin Impact Main Theme Var.)', 'main', 'hoyo_mix', 17),
  -- 9. Pure Sky (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '9. Pure Sky', 'main', 'hoyo_mix', 18),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Wind and The Star Traveler', '9. Pure Sky', 'main', 'hoyo_mix', 19),
  -- 10. The Edge of the Prairie (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '10. The Edge of the Prairie', 'main', 'hoyo_mix', 20),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler | from GI wiki, no source (also sounds like a viola instead of a violin)', '10. The Edge of the Prairie', 'main', 'hoyo_mix', 21),
  -- 11. A Tale of Two Dragons (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '11. A Tale of Two Dragons', 'main', 'hoyo_mix', 22),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler | from GI wiki, no source', '11. A Tale of Two Dragons', 'main', 'hoyo_mix', 23),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Wind and The Star Traveler', '11. A Tale of Two Dragons', 'main', 'hoyo_mix', 24),
  -- 12. Rite of Battle (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '12. Rite of Battle', 'main', 'hoyo_mix', 25),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '22 Cymbal', 'Album: The Wind and The Star Traveler', '12. Rite of Battle', 'main', 'hoyo_mix', 26),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Wind and The Star Traveler', '12. Rite of Battle', 'main', 'hoyo_mix', 27),
  -- 13. Knighthood Excellence (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '13. Knighthood Excellence', 'main', 'hoyo_mix', 28),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Wind and The Star Traveler', '13. Knighthood Excellence', 'main', 'hoyo_mix', 29),
  -- 14. Happy Journey (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '14. Happy Journey', 'main', 'hoyo_mix', 30),
  -- 15. The Outlander Who Caught the Wind (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Wind and The Star Traveler', '15. The Outlander Who Caught the Wind', 'main', 'hoyo_mix', 31),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: The Wind and The Star Traveler | To be found', '15. The Outlander Who Caught the Wind', 'main', 'hoyo_mix', 32),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '20 Cymbal', 'Album: The Wind and The Star Traveler', '15. The Outlander Who Caught the Wind', 'main', 'hoyo_mix', 33),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: The Wind and The Star Traveler', '15. The Outlander Who Caught the Wind', 'main', 'hoyo_mix', 34),
  -- =========================================================================
  -- Album: City of Winds and Idylls (2020-09-28) — Disc 1: City of Winds and Idylls
  -- =========================================================================
  -- 1. Twilight Serenity (Genshin Impact Main Theme Var.) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '1. Twilight Serenity (Genshin Impact Main Theme Var.)', 'main', 'hoyo_mix', 35),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: City of Winds and Idylls', '1. Twilight Serenity (Genshin Impact Main Theme Var.)', 'main', 'hoyo_mix', 36),
  -- 2. Legend of the Wind (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '2. Legend of the Wind', 'main', 'hoyo_mix', 37),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls | uncredited', '2. Legend of the Wind', 'main', 'hoyo_mix', 38),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: City of Winds and Idylls', '2. Legend of the Wind', 'main', 'hoyo_mix', 39),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '2. Legend of the Wind', 'main', 'hoyo_mix', 40),
  -- 3. The City Favored by Wind (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '3. The City Favored by Wind', 'main', 'hoyo_mix', 41),
  -- 4. Bustling Afternoon in Mondstadt (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '4. Bustling Afternoon in Mondstadt', 'main', 'hoyo_mix', 42),
  -- 5. Dusk in Mondstadt (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '5. Dusk in Mondstadt', 'main', 'hoyo_mix', 43),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '5. Dusk in Mondstadt', 'main', 'hoyo_mix', 44),
  -- 6. Mondstadt Starlit (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '6. Mondstadt Starlit', 'main', 'hoyo_mix', 45),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '6. Mondstadt Starlit', 'main', 'hoyo_mix', 46),
  -- 7. Moonlight in Mondstadt (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '7. Moonlight in Mondstadt', 'main', 'hoyo_mix', 47),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: City of Winds and Idylls', '7. Moonlight in Mondstadt', 'main', 'hoyo_mix', 48),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '7. Moonlight in Mondstadt', 'main', 'hoyo_mix', 49),
  -- 8. Another Day in Mondstadt (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '8. Another Day in Mondstadt', 'main', 'hoyo_mix', 50),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '8. Another Day in Mondstadt', 'main', 'hoyo_mix', 51),
  -- 9. Windborne Hymn (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '9. Windborne Hymn', 'main', 'hoyo_mix', 52),
  -- 10. Knights of Favonius (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '10. Knights of Favonius', 'main', 'hoyo_mix', 53),
  -- 11. Angel''s Share (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '11. Angel''s Share', 'main', 'hoyo_mix', 54),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '11. Angel''s Share', 'main', 'hoyo_mix', 55),
  -- 12. Silhouette and Silk Steps (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '12. Silhouette and Silk Steps', 'main', 'hoyo_mix', 56),
  -- 13. Perilous Path (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '13. Perilous Path', 'main', 'hoyo_mix', 57),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '13. Perilous Path', 'main', 'hoyo_mix', 58),
  -- 14. Say My Name (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '14. Say My Name', 'main', 'hoyo_mix', 59),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Celesta', 'Album: City of Winds and Idylls', '14. Say My Name', 'main', 'hoyo_mix', 60),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: City of Winds and Idylls', '14. Say My Name', 'main', 'hoyo_mix', 61),
  -- 15. Welp, Didn''t Expect That (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '15. Welp, Didn''t Expect That', 'main', 'hoyo_mix', 62),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Castanets', 'Album: City of Winds and Idylls | Tune -2', '15. Welp, Didn''t Expect That', 'main', 'hoyo_mix', 63),
  -- 16. An Interesting Labour (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '16. An Interesting Labour', 'main', 'hoyo_mix', 64),
  -- 17. Make Haste, Partner (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '17. Make Haste, Partner', 'main', 'hoyo_mix', 65),
  -- 18. A Happy Day (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '18. A Happy Day', 'main', 'hoyo_mix', 66),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: City of Winds and Idylls', '18. A Happy Day', 'main', 'hoyo_mix', 67),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '18. A Happy Day', 'main', 'hoyo_mix', 68),
  -- 19. Reunion in the Whispering Woods (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '19. Reunion in the Whispering Woods', 'main', 'hoyo_mix', 69),
  -- 20. Startled (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '20. Startled', 'main', 'hoyo_mix', 70),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: City of Winds and Idylls', '20. Startled', 'main', 'hoyo_mix', 71),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '20. Startled', 'main', 'hoyo_mix', 72),
  -- 21. Meeting Amber (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '21. Meeting Amber', 'main', 'hoyo_mix', 73),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: City of Winds and Idylls', '21. Meeting Amber', 'main', 'hoyo_mix', 74),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '21. Meeting Amber', 'main', 'hoyo_mix', 75),
  -- 22. Storm Befalls (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '22. Storm Befalls', 'main', 'hoyo_mix', 76),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: City of Winds and Idylls', '22. Storm Befalls', 'main', 'hoyo_mix', 77),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '22. Storm Befalls', 'main', 'hoyo_mix', 78),
  -- 23. Slight Distress (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '23. Slight Distress', 'main', 'hoyo_mix', 79),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '23. Slight Distress', 'main', 'hoyo_mix', 80),
  -- 24. Tender Strength (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '24. Tender Strength', 'main', 'hoyo_mix', 81),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '24. Tender Strength', 'main', 'hoyo_mix', 82),
  -- 25. Imminent Triumph (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '25. Imminent Triumph', 'main', 'hoyo_mix', 83),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: City of Winds and Idylls', '25. Imminent Triumph', 'main', 'hoyo_mix', 84),
  -- =========================================================================
  -- Album: City of Winds and Idylls — Disc 2: The Horizon of Dandelion
  -- =========================================================================
  -- 1. Beckoning (Genshin Impact Main Theme Var.) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '1. Beckoning (Genshin Impact Main Theme Var.)', 'main', 'hoyo_mix', 85),
  -- 2. Hence, Begins the Journey (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '2. Hence, Begins the Journey', 'main', 'hoyo_mix', 86),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '2. Hence, Begins the Journey', 'main', 'hoyo_mix', 87),
  -- 3. Dawn Winery Theme (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '3. Dawn Winery Theme', 'main', 'hoyo_mix', 88),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '3. Dawn Winery Theme', 'main', 'hoyo_mix', 89),
  -- 4. Before Dawn, at the Winery (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '4. Before Dawn, at the Winery', 'main', 'hoyo_mix', 90),
  -- 5. A Familiar Sight and Leisure (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock Mellow', 'Album: City of Winds and Idylls', '5. A Familiar Sight and Leisure', 'main', 'hoyo_mix', 91),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: City of Winds and Idylls', '5. A Familiar Sight and Leisure', 'main', 'hoyo_mix', 92),
  -- 6. Cold Night (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '6. Cold Night', 'main', 'hoyo_mix', 93),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: City of Winds and Idylls', '6. Cold Night', 'main', 'hoyo_mix', 94),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '6. Cold Night', 'main', 'hoyo_mix', 95),
  -- 7. Whispering Plain (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '7. Whispering Plain', 'main', 'hoyo_mix', 96),
  -- 8. Statue of The Seven (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '8. Statue of The Seven', 'main', 'hoyo_mix', 97),
  -- 9. Acquaintance (Statue of The Seven) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '9. Acquaintance (Statue of The Seven)', 'main', 'hoyo_mix', 98),
  -- 10. Stealing Words of the Moon (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '10. Stealing Words of the Moon', 'main', 'hoyo_mix', 99),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '10. Stealing Words of the Moon', 'main', 'hoyo_mix', 100),
  -- 11. Wayfarer''s Peace (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '11. Wayfarer''s Peace', 'main', 'hoyo_mix', 101),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: City of Winds and Idylls', '11. Wayfarer''s Peace', 'main', 'hoyo_mix', 102),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: City of Winds and Idylls', '11. Wayfarer''s Peace', 'main', 'hoyo_mix', 103),
  -- 12. Wind-Washed Mountains (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '12. Wind-Washed Mountains', 'main', 'hoyo_mix', 104),
  -- 13. Wayward Souls (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '13. Wayward Souls', 'main', 'hoyo_mix', 105),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: City of Winds and Idylls', '13. Wayward Souls', 'main', 'hoyo_mix', 106),
  -- 14. Reminiscence (Genshin Impact Main Theme Var.) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '14. Reminiscence (Genshin Impact Main Theme Var.)', 'main', 'hoyo_mix', 107),
  -- 15. Restless Blazing Sun (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '15. Restless Blazing Sun', 'main', 'hoyo_mix', 108),
  -- 16. Remembrance (Genshin Impact Main Theme Var.) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '16. Remembrance (Genshin Impact Main Theme Var.)', 'main', 'hoyo_mix', 109),
  -- 17. The Horizon (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '17. The Horizon', 'main', 'hoyo_mix', 110),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: City of Winds and Idylls', '17. The Horizon', 'main', 'hoyo_mix', 111),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '17. The Horizon', 'main', 'hoyo_mix', 112),
  -- 18. Awaiting the Future (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '18. Awaiting the Future', 'main', 'hoyo_mix', 113),
  -- 19. Moonlit Wilderness (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '19. Moonlit Wilderness', 'main', 'hoyo_mix', 114),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '19. Moonlit Wilderness', 'main', 'hoyo_mix', 115),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: City of Winds and Idylls', '19. Moonlit Wilderness', 'main', 'hoyo_mix', 116),
  -- 20. A New Day with Hope (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '20. A New Day with Hope', 'main', 'hoyo_mix', 117),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '20. A New Day with Hope', 'main', 'hoyo_mix', 118),
  -- 21. Journey of Hope (Genshin Impact Main Theme Var.) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '21. Journey of Hope (Genshin Impact Main Theme Var.)', 'main', 'hoyo_mix', 119),
  -- 22. Forlorn Child of Archaic Winds (Dvalin''s Nest) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '22. Forlorn Child of Archaic Winds (Dvalin''s Nest)', 'main', 'hoyo_mix', 120),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '22. Forlorn Child of Archaic Winds (Dvalin''s Nest)', 'main', 'hoyo_mix', 121),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '22. Forlorn Child of Archaic Winds (Dvalin''s Nest)', 'main', 'hoyo_mix', 122),
  -- 23. Forsaken Child of Ancient Times (Dvalin''s Nest) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '23. Forsaken Child of Ancient Times (Dvalin''s Nest)', 'main', 'hoyo_mix', 123),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '23. Forsaken Child of Ancient Times (Dvalin''s Nest)', 'main', 'hoyo_mix', 124),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '23. Forsaken Child of Ancient Times (Dvalin''s Nest)', 'main', 'hoyo_mix', 125),
  -- 24. Midday Prospects (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '24. Midday Prospects', 'main', 'hoyo_mix', 126),
  -- 25. Dwelling in the Past (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '25. Dwelling in the Past', 'main', 'hoyo_mix', 127),
  -- 26. Eternal Anamnesis (Genshin Impact Main Theme Var.) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '26. Eternal Anamnesis (Genshin Impact Main Theme Var.)', 'main', 'hoyo_mix', 128),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '26. Eternal Anamnesis (Genshin Impact Main Theme Var.)', 'main', 'hoyo_mix', 129),
  -- =========================================================================
  -- Album: City of Winds and Idylls — Disc 3: Saga of the West Wind
  -- =========================================================================
  -- 1. Photon of Fluctuation (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '1. Photon of Fluctuation', 'main', 'hoyo_mix', 130),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '1. Photon of Fluctuation', 'main', 'hoyo_mix', 131),
  -- 2. His Resolution (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '2. His Resolution', 'main', 'hoyo_mix', 132),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '2. His Resolution', 'main', 'hoyo_mix', 133),
  -- 3. Rhythm from Ancient Times (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '3. Rhythm from Ancient Times', 'main', 'hoyo_mix', 134),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '3. Rhythm from Ancient Times', 'main', 'hoyo_mix', 135),
  -- 4. Endless Echoes (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '4. Endless Echoes', 'main', 'hoyo_mix', 136),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 05 Damage Kits', 'PERC Epik Elektro Kit', 'Album: City of Winds and Idylls', '4. Endless Echoes', 'main', 'hoyo_mix', 137),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Iron Boy', '135-Iron Boy HiHats', 'Album: City of Winds and Idylls', '4. Endless Echoes', 'main', 'hoyo_mix', 138),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '4. Endless Echoes', 'main', 'hoyo_mix', 139),
  -- 5. Charge! Fearless Warriors (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '5. Charge! Fearless Warriors', 'main', 'hoyo_mix', 140),
  -- 6. Beats of Water Drops (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '6. Beats of Water Drops', 'main', 'hoyo_mix', 141),
  -- 7. Magic Intrigues (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '7. Magic Intrigues', 'main', 'hoyo_mix', 142),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: City of Winds and Idylls', '7. Magic Intrigues', 'main', 'hoyo_mix', 143),
  -- 8. Against All Odds (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '8. Against All Odds', 'main', 'hoyo_mix', 144),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls | To check', '8. Against All Odds', 'main', 'hoyo_mix', 145),
  -- 9. Perpetual Motion of Wind (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '9. Perpetual Motion of Wind', 'main', 'hoyo_mix', 146),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '9. Perpetual Motion of Wind', 'main', 'hoyo_mix', 147),
  -- 10. Riders of the Wind, Onward (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '10. Riders of the Wind, Onward', 'main', 'hoyo_mix', 148),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '10. Riders of the Wind, Onward', 'main', 'hoyo_mix', 149),
  -- 11. Whirl of Boreal Wind (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '11. Whirl of Boreal Wind', 'main', 'hoyo_mix', 150),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, 'Album: City of Winds and Idylls', '11. Whirl of Boreal Wind', 'main', 'hoyo_mix', 151),
  -- 12. Symphony of Boreal Wind (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: City of Winds and Idylls', '12. Symphony of Boreal Wind', 'main', 'hoyo_mix', 152),
  -- =========================================================================
  -- Album: Jade Moon Upon a Sea of Clouds (2020-11-06) — Disc 1: Glazed Moon Over the Tides
  -- =========================================================================
  -- 1. Liyue (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Liyue', 'main', 'hoyo_mix', 153),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Liyue', 'main', 'hoyo_mix', 154),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Liyue', 'main', 'hoyo_mix', 155),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '20 Cymbal', 'Album: Jade Moon Upon a Sea of Clouds', '1. Liyue', 'main', 'hoyo_mix', 156),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Jade Moon Upon a Sea of Clouds', '1. Liyue', 'main', 'hoyo_mix', 157),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Liyue', 'main', 'hoyo_mix', 158),
  -- 2. Moon in One''s Cup (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. Moon in One''s Cup', 'main', 'hoyo_mix', 159),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. Moon in One''s Cup', 'main', 'hoyo_mix', 160),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. Moon in One''s Cup', 'main', 'hoyo_mix', 161),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. Moon in One''s Cup', 'main', 'hoyo_mix', 162),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '20 Cymbal', 'Album: Jade Moon Upon a Sea of Clouds', '2. Moon in One''s Cup', 'main', 'hoyo_mix', 163),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', 'Album: Jade Moon Upon a Sea of Clouds', '2. Moon in One''s Cup', 'main', 'hoyo_mix', 164),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '2. Moon in One''s Cup', 'main', 'hoyo_mix', 165),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. Moon in One''s Cup', 'main', 'hoyo_mix', 166),
  -- 3. Relaxation in Liyue (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '3. Relaxation in Liyue', 'main', 'hoyo_mix', 167),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '3. Relaxation in Liyue', 'main', 'hoyo_mix', 168),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '3. Relaxation in Liyue', 'main', 'hoyo_mix', 169),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '3. Relaxation in Liyue', 'main', 'hoyo_mix', 170),
  -- 4. Maiden''s Longing (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '4. Maiden''s Longing', 'main', 'hoyo_mix', 171),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '4. Maiden''s Longing', 'main', 'hoyo_mix', 172),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '4. Maiden''s Longing', 'main', 'hoyo_mix', 173),
  -- 5. Sun Rises in Liyue (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '5. Sun Rises in Liyue', 'main', 'hoyo_mix', 174),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Jade Moon Upon a Sea of Clouds', '5. Sun Rises in Liyue', 'main', 'hoyo_mix', 175),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '5. Sun Rises in Liyue', 'main', 'hoyo_mix', 176),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 3 Effects', 'Harp Gliss 6 Up+Dn', 'Album: Jade Moon Upon a Sea of Clouds', '5. Sun Rises in Liyue', 'main', 'hoyo_mix', 177),
  -- 6. Good Night, Liyue (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '6. Good Night, Liyue', 'main', 'hoyo_mix', 178),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '6. Good Night, Liyue', 'main', 'hoyo_mix', 179),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Jade Moon Upon a Sea of Clouds', '6. Good Night, Liyue', 'main', 'hoyo_mix', 180),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '6. Good Night, Liyue', 'main', 'hoyo_mix', 181),
  -- 7. Call It a Day in Liyue (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '7. Call It a Day in Liyue', 'main', 'hoyo_mix', 182),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '7. Call It a Day in Liyue', 'main', 'hoyo_mix', 183),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', 'Album: Jade Moon Upon a Sea of Clouds', '7. Call It a Day in Liyue', 'main', 'hoyo_mix', 184),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Jade Moon Upon a Sea of Clouds', '7. Call It a Day in Liyue', 'main', 'hoyo_mix', 185),
  -- 8. Clear Sky over Liyue (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '8. Clear Sky over Liyue', 'main', 'hoyo_mix', 186),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '8. Clear Sky over Liyue', 'main', 'hoyo_mix', 187),
  -- 9. A Transparent Moon (Liuli Pavilion) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '9. A Transparent Moon (Liuli Pavilion)', 'main', 'hoyo_mix', 188),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Jade Moon Upon a Sea of Clouds', '9. A Transparent Moon (Liuli Pavilion)', 'main', 'hoyo_mix', 189),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '9. A Transparent Moon (Liuli Pavilion)', 'main', 'hoyo_mix', 190),
  -- 10. Treasury from the Northland (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '10. Treasury from the Northland', 'main', 'hoyo_mix', 191),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '10. Treasury from the Northland', 'main', 'hoyo_mix', 192),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', 'Album: Jade Moon Upon a Sea of Clouds', '10. Treasury from the Northland', 'main', 'hoyo_mix', 193),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Jade Moon Upon a Sea of Clouds', '10. Treasury from the Northland', 'main', 'hoyo_mix', 194),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Vibes', 'Album: Jade Moon Upon a Sea of Clouds', '10. Treasury from the Northland', 'main', 'hoyo_mix', 195),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '10. Treasury from the Northland', 'main', 'hoyo_mix', 196),
  -- 11. Cozy Leisure Time (Wangshu Daytime) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '11. Cozy Leisure Time (Wangshu Daytime)', 'main', 'hoyo_mix', 197),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '11. Cozy Leisure Time (Wangshu Daytime)', 'main', 'hoyo_mix', 198),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '11. Cozy Leisure Time (Wangshu Daytime)', 'main', 'hoyo_mix', 199),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '11. Cozy Leisure Time (Wangshu Daytime)', 'main', 'hoyo_mix', 200),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '11. Cozy Leisure Time (Wangshu Daytime)', 'main', 'hoyo_mix', 201),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', 'Album: Jade Moon Upon a Sea of Clouds', '11. Cozy Leisure Time (Wangshu Daytime)', 'main', 'hoyo_mix', 202),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '11. Cozy Leisure Time (Wangshu Daytime)', 'main', 'hoyo_mix', 203),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '11. Cozy Leisure Time (Wangshu Daytime)', 'main', 'hoyo_mix', 204),
  -- 12. Sojourner''s Sweet Dream (Wangshu Night) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '12. Sojourner''s Sweet Dream (Wangshu Night)', 'main', 'hoyo_mix', 205),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '12. Sojourner''s Sweet Dream (Wangshu Night)', 'main', 'hoyo_mix', 206),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '12. Sojourner''s Sweet Dream (Wangshu Night)', 'main', 'hoyo_mix', 207),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '12. Sojourner''s Sweet Dream (Wangshu Night)', 'main', 'hoyo_mix', 208),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', 'Album: Jade Moon Upon a Sea of Clouds', '12. Sojourner''s Sweet Dream (Wangshu Night)', 'main', 'hoyo_mix', 209),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '12. Sojourner''s Sweet Dream (Wangshu Night)', 'main', 'hoyo_mix', 210),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 3 Effects', 'Harp Gliss 6 Up+Dn', 'Album: Jade Moon Upon a Sea of Clouds', '12. Sojourner''s Sweet Dream (Wangshu Night)', 'main', 'hoyo_mix', 211),
  -- 13. Winding River (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '13. Winding River', 'main', 'hoyo_mix', 212),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '13. Winding River', 'main', 'hoyo_mix', 213),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '13. Winding River', 'main', 'hoyo_mix', 214),
  -- 14. Mild Waves (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '14. Mild Waves', 'main', 'hoyo_mix', 215),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', 'Album: Jade Moon Upon a Sea of Clouds', '14. Mild Waves', 'main', 'hoyo_mix', 216),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Jade Moon Upon a Sea of Clouds', '14. Mild Waves', 'main', 'hoyo_mix', 217),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '14. Mild Waves', 'main', 'hoyo_mix', 218),
  -- 15. Rhythm Amidst the Reeds (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '15. Rhythm Amidst the Reeds', 'main', 'hoyo_mix', 219),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '15. Rhythm Amidst the Reeds', 'main', 'hoyo_mix', 220),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Vibes', 'Album: Jade Moon Upon a Sea of Clouds', '15. Rhythm Amidst the Reeds', 'main', 'hoyo_mix', 221),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Marimba', 'Album: Jade Moon Upon a Sea of Clouds', '15. Rhythm Amidst the Reeds', 'main', 'hoyo_mix', 222),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds | to check: ewso vas pizz', '15. Rhythm Amidst the Reeds', 'main', 'hoyo_mix', 223),
  -- 16. Flows of Jade-Like Water (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '16. Flows of Jade-Like Water', 'main', 'hoyo_mix', 224),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '16. Flows of Jade-Like Water', 'main', 'hoyo_mix', 225),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Jade Moon Upon a Sea of Clouds', '16. Flows of Jade-Like Water', 'main', 'hoyo_mix', 226),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '16. Flows of Jade-Like Water', 'main', 'hoyo_mix', 227),
  -- 17. Blossoms Across the Valley (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 3 Effects', '11V Sul Pont', 'Album: Jade Moon Upon a Sea of Clouds', '17. Blossoms Across the Valley', 'main', 'hoyo_mix', 228),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '17. Blossoms Across the Valley', 'main', 'hoyo_mix', 229),
  -- 18. Flow of Mildness (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '18. Flow of Mildness', 'main', 'hoyo_mix', 230),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', 'Album: Jade Moon Upon a Sea of Clouds', '18. Flow of Mildness', 'main', 'hoyo_mix', 231),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Jade Moon Upon a Sea of Clouds', '18. Flow of Mildness', 'main', 'hoyo_mix', 232),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '18. Flow of Mildness', 'main', 'hoyo_mix', 233),
  -- 19. Stroll in the Shadows (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Vibes', 'Album: Jade Moon Upon a Sea of Clouds', '19. Stroll in the Shadows', 'main', 'hoyo_mix', 234),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '19. Stroll in the Shadows', 'main', 'hoyo_mix', 235),
  -- 20. Melodious Flute (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '20. Melodious Flute', 'main', 'hoyo_mix', 236),
  -- 21. Gentle Rain (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '21. Gentle Rain', 'main', 'hoyo_mix', 237),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '21. Gentle Rain', 'main', 'hoyo_mix', 238),
  -- 22. Vague Whispers (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '22. Vague Whispers', 'main', 'hoyo_mix', 239),
  -- 23. Legends Swept Away (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '23. Legends Swept Away', 'main', 'hoyo_mix', 240),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Vibes', 'Album: Jade Moon Upon a Sea of Clouds', '23. Legends Swept Away', 'main', 'hoyo_mix', 241),
  -- 24. Joy of Returning (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '24. Joy of Returning', 'main', 'hoyo_mix', 242),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '24. Joy of Returning', 'main', 'hoyo_mix', 243),
  -- 25. Loner''s Departure (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '25. Loner''s Departure', 'main', 'hoyo_mix', 244),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Vibes', 'Album: Jade Moon Upon a Sea of Clouds', '25. Loner''s Departure', 'main', 'hoyo_mix', 245),
  -- 26. Foxes at Play (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '26. Foxes at Play', 'main', 'hoyo_mix', 246),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '26. Foxes at Play', 'main', 'hoyo_mix', 247),
  -- 27. Plain of Nostalgia (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '27. Plain of Nostalgia', 'main', 'hoyo_mix', 248),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '27. Plain of Nostalgia', 'main', 'hoyo_mix', 249),
  -- 28. Another Hopeful Tomorrow (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '28. Another Hopeful Tomorrow', 'main', 'hoyo_mix', 250),
  -- 29. This Little Light of Mine (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '29. This Little Light of Mine', 'main', 'hoyo_mix', 251),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '29. This Little Light of Mine', 'main', 'hoyo_mix', 252),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '29. This Little Light of Mine', 'main', 'hoyo_mix', 253),
  -- 30. Legend of Redemption (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '30. Legend of Redemption', 'main', 'hoyo_mix', 254),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '30. Legend of Redemption', 'main', 'hoyo_mix', 255),
  -- 31. Hazy Light (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '31. Hazy Light', 'main', 'hoyo_mix', 256),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '31. Hazy Light', 'main', 'hoyo_mix', 257),
  -- 32. Scattered Amongst the Tides (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '32. Scattered Amongst the Tides', 'main', 'hoyo_mix', 258),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Celesta', 'Album: Jade Moon Upon a Sea of Clouds', '32. Scattered Amongst the Tides', 'main', 'hoyo_mix', 259),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Vibes', 'Album: Jade Moon Upon a Sea of Clouds', '32. Scattered Amongst the Tides', 'main', 'hoyo_mix', 260),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '32. Scattered Amongst the Tides', 'main', 'hoyo_mix', 261),
  -- 33. Rhythms from the Conch (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds | sounds like ewso sul pont but i might be trippin', '33. Rhythms from the Conch', 'main', 'hoyo_mix', 262),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '33. Rhythms from the Conch', 'main', 'hoyo_mix', 263),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '33. Rhythms from the Conch', 'main', 'hoyo_mix', 264),
  -- =========================================================================
  -- Album: Jade Moon Upon a Sea of Clouds — Disc 2: Shimmering Sea of Clouds and Moonlight
  -- =========================================================================
  -- 1. Peaceful Hike (Qingce Daytime) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Peaceful Hike (Qingce Daytime)', 'main', 'hoyo_mix', 265),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Peaceful Hike (Qingce Daytime)', 'main', 'hoyo_mix', 266),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Peaceful Hike (Qingce Daytime)', 'main', 'hoyo_mix', 267),
  -- 2. The Fading Stories (Qingce Night) (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. The Fading Stories (Qingce Night)', 'main', 'hoyo_mix', 268),
  -- 3. Wandering Flight (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '3. Wandering Flight', 'main', 'hoyo_mix', 269),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Jade Moon Upon a Sea of Clouds', '3. Wandering Flight', 'main', 'hoyo_mix', 270),
  -- 4. Faint Tracks (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '4. Faint Tracks', 'main', 'hoyo_mix', 271),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Vibes', 'Album: Jade Moon Upon a Sea of Clouds', '4. Faint Tracks', 'main', 'hoyo_mix', 272),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Marimba', 'Album: Jade Moon Upon a Sea of Clouds', '4. Faint Tracks', 'main', 'hoyo_mix', 273),
  -- 5. Idle Away from Mountains (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '5. Idle Away from Mountains', 'main', 'hoyo_mix', 274),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '5. Idle Away from Mountains', 'main', 'hoyo_mix', 275),
  -- 6. Humming Amidst Rocks (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '6. Humming Amidst Rocks', 'main', 'hoyo_mix', 276),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Cellos -> 3 Effects', 'VCS Sul Pont', 'Album: Jade Moon Upon a Sea of Clouds', '6. Humming Amidst Rocks', 'main', 'hoyo_mix', 277),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Jade Moon Upon a Sea of Clouds', '6. Humming Amidst Rocks', 'main', 'hoyo_mix', 278),
  -- 7. Above the Sea of Clouds (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '7. Above the Sea of Clouds', 'main', 'hoyo_mix', 279),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '7. Above the Sea of Clouds', 'main', 'hoyo_mix', 280),
  -- 8. Adeptus'' Retirement (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '8. Adeptus'' Retirement', 'main', 'hoyo_mix', 281),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '8. Adeptus'' Retirement', 'main', 'hoyo_mix', 282),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '8. Adeptus'' Retirement', 'main', 'hoyo_mix', 283),
  -- 9. A Casual Visit (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '9. A Casual Visit', 'main', 'hoyo_mix', 284),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '9. A Casual Visit', 'main', 'hoyo_mix', 285),
  -- 10. A Serendipitous Encounter (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '10. A Serendipitous Encounter', 'main', 'hoyo_mix', 286),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '10. A Serendipitous Encounter', 'main', 'hoyo_mix', 287),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '10. A Serendipitous Encounter', 'main', 'hoyo_mix', 288),
  -- 11. Freedom of Crane (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '11. Freedom of Crane', 'main', 'hoyo_mix', 289),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '11. Freedom of Crane', 'main', 'hoyo_mix', 290),
  -- 12. Rays of Sunlight (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '12. Rays of Sunlight', 'main', 'hoyo_mix', 291),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '12. Rays of Sunlight', 'main', 'hoyo_mix', 292),
  -- 13. Rainbow at Summit (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '13. Rainbow at Summit', 'main', 'hoyo_mix', 293),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '13. Rainbow at Summit', 'main', 'hoyo_mix', 294),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '13. Rainbow at Summit', 'main', 'hoyo_mix', 295),
  -- 14. Spring in Clouds (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '14. Spring in Clouds', 'main', 'hoyo_mix', 296),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '14. Spring in Clouds', 'main', 'hoyo_mix', 297),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Violas -> 3 Effects', 'VAS Sul Pont', 'Album: Jade Moon Upon a Sea of Clouds', '14. Spring in Clouds', 'main', 'hoyo_mix', 298),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '14. Spring in Clouds', 'main', 'hoyo_mix', 299),
  -- 15. Adeptus'' Solace (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '15. Adeptus'' Solace', 'main', 'hoyo_mix', 300),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '15. Adeptus'' Solace', 'main', 'hoyo_mix', 301),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '15. Adeptus'' Solace', 'main', 'hoyo_mix', 302),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '15. Adeptus'' Solace', 'main', 'hoyo_mix', 303),
  -- 16. The Absence of Adepti (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '16. The Absence of Adepti', 'main', 'hoyo_mix', 304),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds | Close Mic', '16. The Absence of Adepti', 'main', 'hoyo_mix', 305),
  -- 17. Emerging Clouds (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '17. Emerging Clouds', 'main', 'hoyo_mix', 306),
  -- 18. Drink with a Hermit (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '18. Drink with a Hermit', 'main', 'hoyo_mix', 307),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '18. Drink with a Hermit', 'main', 'hoyo_mix', 308),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Exotic Flutes', 'Flute of Gods', 'Album: Jade Moon Upon a Sea of Clouds', '18. Drink with a Hermit', 'main', 'hoyo_mix', 309),
  -- 19. Moss Covered Path (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '19. Moss Covered Path', 'main', 'hoyo_mix', 310),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Exotic Flutes', 'Flute of Gods', 'Album: Jade Moon Upon a Sea of Clouds', '19. Moss Covered Path', 'main', 'hoyo_mix', 311),
  -- 20. Bird Call From Afar
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '3. Fantasy Creatures', 'Love Bird', 'Album: Jade Moon Upon a Sea of Clouds', '20. Bird Call From Afar', 'main', 'hoyo_mix', 312),
  -- 21. Red Leaf on the Chessboard
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '1. Instruments -> Plucked -> Celtic Harps', 'Electric Celtic Harp', 'Album: Jade Moon Upon a Sea of Clouds', '21. Red Leaf on the Chessboard', 'main', 'hoyo_mix', 313),
  -- 22. Secluded Sanctuary (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '22. Secluded Sanctuary', 'main', 'hoyo_mix', 314),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Xylophone', 'Album: Jade Moon Upon a Sea of Clouds | unsure but it sounds close', '22. Secluded Sanctuary', 'main', 'hoyo_mix', 315),
  -- 23. Flickering Petals (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '23. Flickering Petals', 'main', 'hoyo_mix', 316),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '23. Flickering Petals', 'main', 'hoyo_mix', 317),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '23. Flickering Petals', 'main', 'hoyo_mix', 318),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Ancient Secrets', 'In the Beginning', 'Album: Jade Moon Upon a Sea of Clouds', '23. Flickering Petals', 'main', 'hoyo_mix', 319),
  -- 24. Swinging in the Breeze (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '24. Swinging in the Breeze', 'main', 'hoyo_mix', 320),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '24. Swinging in the Breeze', 'main', 'hoyo_mix', 321),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '24. Swinging in the Breeze', 'main', 'hoyo_mix', 322),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Ancient Secrets', 'In the Beginning', 'Album: Jade Moon Upon a Sea of Clouds', '24. Swinging in the Breeze', 'main', 'hoyo_mix', 323),
  -- 25. Solitude Mountains (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '25. Solitude Mountains', 'main', 'hoyo_mix', 324),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Celtic Era 2' COLLATE NOCASE),
   'Soundscapes', 'Celtic Strings 3', 'Album: Jade Moon Upon a Sea of Clouds', '25. Solitude Mountains', 'main', 'hoyo_mix', 325),
  -- 26. Distant Resonance (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '26. Distant Resonance', 'main', 'hoyo_mix', 326),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Celtic Era 2' COLLATE NOCASE),
   'Soundscapes', 'Land of Gods', 'Album: Jade Moon Upon a Sea of Clouds', '26. Distant Resonance', 'main', 'hoyo_mix', 327),
  -- 27. Foregone Giants (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Forests and Jungles', 'Forest Gathering', 'Album: Jade Moon Upon a Sea of Clouds', '27. Foregone Giants', 'main', 'hoyo_mix', 328),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock Mellow', 'Album: Jade Moon Upon a Sea of Clouds', '27. Foregone Giants', 'main', 'hoyo_mix', 329),
  -- 28. Linger in the Valley (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Desert Winds' COLLATE NOCASE),
   'Soundscapes', 'Talking to the Wind', 'Album: Jade Moon Upon a Sea of Clouds', '28. Linger in the Valley', 'main', 'hoyo_mix', 330),
  -- 29. Slumbering Lore (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '29. Slumbering Lore', 'main', 'hoyo_mix', 331),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '29. Slumbering Lore', 'main', 'hoyo_mix', 332),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '29. Slumbering Lore', 'main', 'hoyo_mix', 333),
  -- 30. Silent Ruins (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '30. Silent Ruins', 'main', 'hoyo_mix', 334),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Exotic Flutes', 'Flute of Gods', 'Album: Jade Moon Upon a Sea of Clouds', '30. Silent Ruins', 'main', 'hoyo_mix', 335),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Forests and Jungles', 'Forest of the Deads', 'Album: Jade Moon Upon a Sea of Clouds', '30. Silent Ruins', 'main', 'hoyo_mix', 336),
  -- 31. Lone Drifter (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '31. Lone Drifter', 'main', 'hoyo_mix', 337),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '31. Lone Drifter', 'main', 'hoyo_mix', 338),
  -- 32. Lost Expectation (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '32. Lost Expectation', 'main', 'hoyo_mix', 339),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '32. Lost Expectation', 'main', 'hoyo_mix', 340),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '32. Lost Expectation', 'main', 'hoyo_mix', 341),
  -- 33. The Realm Within (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '33. The Realm Within', 'main', 'hoyo_mix', 342),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '33. The Realm Within', 'main', 'hoyo_mix', 343),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', 'Album: Jade Moon Upon a Sea of Clouds', '33. The Realm Within', 'main', 'hoyo_mix', 344),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Jade Moon Upon a Sea of Clouds', '33. The Realm Within', 'main', 'hoyo_mix', 345),
  -- =========================================================================
  -- Album: Jade Moon Upon a Sea of Clouds — Disc 3: Battles of Liyue
  -- =========================================================================
  -- 1. Rapid as Wildfires (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Rapid as Wildfires', 'main', 'hoyo_mix', 346),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Rapid as Wildfires', 'main', 'hoyo_mix', 347),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Rapid as Wildfires', 'main', 'hoyo_mix', 348),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Rapid as Wildfires', 'main', 'hoyo_mix', 349),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '1. Rapid as Wildfires', 'main', 'hoyo_mix', 350),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '22 Cymbal', 'Album: Jade Moon Upon a Sea of Clouds', '1. Rapid as Wildfires', 'main', 'hoyo_mix', 351),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Jade Moon Upon a Sea of Clouds', '1. Rapid as Wildfires', 'main', 'hoyo_mix', 352),
  -- 2. Chasing the Torrents (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. Chasing the Torrents', 'main', 'hoyo_mix', 353),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. Chasing the Torrents', 'main', 'hoyo_mix', 354),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. Chasing the Torrents', 'main', 'hoyo_mix', 355),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. Chasing the Torrents', 'main', 'hoyo_mix', 356),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: Jade Moon Upon a Sea of Clouds', '2. Chasing the Torrents', 'main', 'hoyo_mix', 357),
  -- 3. Gallant Challenge (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '3. Gallant Challenge', 'main', 'hoyo_mix', 358),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '3. Gallant Challenge', 'main', 'hoyo_mix', 359),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '3. Gallant Challenge', 'main', 'hoyo_mix', 360),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jade Moon Upon a Sea of Clouds', '3. Gallant Challenge', 'main', 'hoyo_mix', 361),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Jade Moon Upon a Sea of Clouds', '3. Gallant Challenge', 'main', 'hoyo_mix', 362),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> Tambourines', '92-Tambourine', 'Album: Jade Moon Upon a Sea of Clouds | Panned to the right', '3. Gallant Challenge', 'main', 'hoyo_mix', 363),
  -- =========================================================================
  -- Album: Vortex of Legends (2021-04-02)
  -- =========================================================================
  -- 1. Snow-Buried Tales (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '1. Snow-Buried Tales', 'main', 'hoyo_mix', 364),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '1. Snow-Buried Tales', 'main', 'hoyo_mix', 365),
  -- 2. Fragile Fantasy (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '2. Fragile Fantasy', 'main', 'hoyo_mix', 366),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '2. Fragile Fantasy', 'main', 'hoyo_mix', 367),
  -- 3. Chattering Snowflakes (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '3. Chattering Snowflakes', 'main', 'hoyo_mix', 368),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Vortex of Legends', '3. Chattering Snowflakes', 'main', 'hoyo_mix', 369),
  -- 4. Serene and Sweet Adieu (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '4. Serene and Sweet Adieu', 'main', 'hoyo_mix', 370),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Vortex of Legends', '4. Serene and Sweet Adieu', 'main', 'hoyo_mix', 371),
  -- 5. Glistening Shards (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '5. Glistening Shards', 'main', 'hoyo_mix', 372),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '5. Glistening Shards', 'main', 'hoyo_mix', 373),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Vortex of Legends', '5. Glistening Shards', 'main', 'hoyo_mix', 374),
  -- 6. Ad Oblivione (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '6. Ad Oblivione', 'main', 'hoyo_mix', 375),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '6. Ad Oblivione', 'main', 'hoyo_mix', 376),
  -- 7. Abiding Chills (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '7. Abiding Chills', 'main', 'hoyo_mix', 377),
  -- 8. Menacing Cove (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '8. Menacing Cove', 'main', 'hoyo_mix', 378),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '8. Menacing Cove', 'main', 'hoyo_mix', 379),
  -- 9. Striding in the Snowstorm (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '9. Striding in the Snowstorm', 'main', 'hoyo_mix', 380),
  -- 10. Sinister Mist (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '10. Sinister Mist', 'main', 'hoyo_mix', 381),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Vortex of Legends', '10. Sinister Mist', 'main', 'hoyo_mix', 382),
  -- 11. In the Desolate Hallway (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '11. In the Desolate Hallway', 'main', 'hoyo_mix', 383),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '11. In the Desolate Hallway', 'main', 'hoyo_mix', 384),
  -- 12. The Flourishing Past (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '12. The Flourishing Past', 'main', 'hoyo_mix', 385),
  -- 13. Unfinished Frescoes (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '13. Unfinished Frescoes', 'main', 'hoyo_mix', 386),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '13. Unfinished Frescoes', 'main', 'hoyo_mix', 387),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Vortex of Legends', '13. Unfinished Frescoes', 'main', 'hoyo_mix', 388),
  -- 14. Spin of Ice Crystals (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '14. Spin of Ice Crystals', 'main', 'hoyo_mix', 389),
  -- 15. Finale of the Snowtomb (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends | goated ghibli-core track btw', '15. Finale of the Snowtomb', 'main', 'hoyo_mix', 390),
  -- 16. Once-Colored Memories (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '16. Once-Colored Memories', 'main', 'hoyo_mix', 391),
  -- 17. Moonlike Smile (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '17. Moonlike Smile', 'main', 'hoyo_mix', 392),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Vortex of Legends', '17. Moonlike Smile', 'main', 'hoyo_mix', 393),
  -- =========================================================================
  -- Album: The Shimmering Voyage (2021-07-19) — Disc 1: Fairytale of the Isles
  -- =========================================================================
  -- 1. What a Hopeful Voyage (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '1. What a Hopeful Voyage', 'main', 'hoyo_mix', 394),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '1. What a Hopeful Voyage', 'main', 'hoyo_mix', 395),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '1. What a Hopeful Voyage', 'main', 'hoyo_mix', 396),
  -- 2. Vast and Blue (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '2. Vast and Blue', 'main', 'hoyo_mix', 397),
  -- 3. Mesmerizing Waves (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '3. Mesmerizing Waves', 'main', 'hoyo_mix', 398),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '3. Mesmerizing Waves', 'main', 'hoyo_mix', 399),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '3. Mesmerizing Waves', 'main', 'hoyo_mix', 400),
  -- 4. Journey into Sweet Dreams (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '4. Journey into Sweet Dreams', 'main', 'hoyo_mix', 401),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '4. Journey into Sweet Dreams', 'main', 'hoyo_mix', 402),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '4. Journey into Sweet Dreams', 'main', 'hoyo_mix', 403),
  -- 5. Whispering Seabreeze (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '5. Whispering Seabreeze', 'main', 'hoyo_mix', 404),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '5. Whispering Seabreeze', 'main', 'hoyo_mix', 405),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '5. Whispering Seabreeze', 'main', 'hoyo_mix', 406),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Ethnic World', 'Hang Drum ^', 'Album: The Shimmering Voyage', '5. Whispering Seabreeze', 'main', 'hoyo_mix', 407),
  -- 6. Sunshine Beach (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '6. Sunshine Beach', 'main', 'hoyo_mix', 408),
  -- 7. Ariel''s Footprints (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '7. Ariel''s Footprints', 'main', 'hoyo_mix', 409),
  -- 8. Melody of Jellyfish — no source rows
  -- 9. Comforting Quietude (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Ethnic World', 'Hang Drum ^', 'Album: The Shimmering Voyage | the return of the pandrum', '9. Comforting Quietude', 'main', 'hoyo_mix', 410),
  -- 10. Old Tales Preserved (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '10. Old Tales Preserved', 'main', 'hoyo_mix', 411),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '10. Old Tales Preserved', 'main', 'hoyo_mix', 412),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '10. Old Tales Preserved', 'main', 'hoyo_mix', 413),
  -- 11. Cautious Explorers (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '11. Cautious Explorers', 'main', 'hoyo_mix', 414),
  -- 12. In Stories of Fading Light (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '12. In Stories of Fading Light', 'main', 'hoyo_mix', 415),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '12. In Stories of Fading Light', 'main', 'hoyo_mix', 416),
  -- 13. Cozy Company (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '13. Cozy Company', 'main', 'hoyo_mix', 417),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '13. Cozy Company', 'main', 'hoyo_mix', 418),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '13. Cozy Company', 'main', 'hoyo_mix', 419),
  -- 14. Reminiscence of the Old Days (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '14. Reminiscence of the Old Days', 'main', 'hoyo_mix', 420),
  -- 15. Faraway Solicitude (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '15. Faraway Solicitude', 'main', 'hoyo_mix', 421),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '15. Faraway Solicitude', 'main', 'hoyo_mix', 422),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '15. Faraway Solicitude', 'main', 'hoyo_mix', 423),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '15. Faraway Solicitude', 'main', 'hoyo_mix', 424),
  -- =========================================================================
  -- Album: The Shimmering Voyage — Disc 2: Blazing Stars
  -- =========================================================================
  -- 1. Overture of Storms (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '1. Overture of Storms', 'main', 'hoyo_mix', 425),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '1. Overture of Storms', 'main', 'hoyo_mix', 426),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '1. Overture of Storms', 'main', 'hoyo_mix', 427),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '1. Overture of Storms', 'main', 'hoyo_mix', 428),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '1. Overture of Storms', 'main', 'hoyo_mix', 429),
  -- 2. A Sparky Clash (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '2. A Sparky Clash', 'main', 'hoyo_mix', 430),
  -- 3. Innocent Age (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '3. Innocent Age', 'main', 'hoyo_mix', 431),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '3. Innocent Age', 'main', 'hoyo_mix', 432),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '3. Innocent Age', 'main', 'hoyo_mix', 433),
  -- 4. Whence the Flow Cometh (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '4. Whence the Flow Cometh', 'main', 'hoyo_mix', 434),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '4. Whence the Flow Cometh', 'main', 'hoyo_mix', 435),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '4. Whence the Flow Cometh', 'main', 'hoyo_mix', 436),
  -- 5. Hunt for Delicacy (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '5. Hunt for Delicacy', 'main', 'hoyo_mix', 437),
  -- 6. Sneaky & Mischievous (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '6. Sneaky & Mischievous', 'main', 'hoyo_mix', 438),
  -- 7. Mellow Memories (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '7. Mellow Memories', 'main', 'hoyo_mix', 439),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '7. Mellow Memories', 'main', 'hoyo_mix', 440),
  -- 8. The Wolf Boy (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '8. The Wolf Boy', 'main', 'hoyo_mix', 441),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '8. The Wolf Boy', 'main', 'hoyo_mix', 442),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '8. The Wolf Boy', 'main', 'hoyo_mix', 443),
  -- 9. Battle Preparation (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '9. Battle Preparation', 'main', 'hoyo_mix', 444),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '9. Battle Preparation', 'main', 'hoyo_mix', 445),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '9. Battle Preparation', 'main', 'hoyo_mix', 446),
  -- 10. The Astrologist Awaiting (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '10. The Astrologist Awaiting', 'main', 'hoyo_mix', 447),
  -- 11. The Starlit Past (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '11. The Starlit Past', 'main', 'hoyo_mix', 448),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '11. The Starlit Past', 'main', 'hoyo_mix', 449),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '11. The Starlit Past', 'main', 'hoyo_mix', 450),
  -- 12. Fireside Rest (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '12. Fireside Rest', 'main', 'hoyo_mix', 451),
  -- 13. A Wicked Plot (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '13. A Wicked Plot', 'main', 'hoyo_mix', 452),
  -- 14. A Cunning Trick (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '14. A Cunning Trick', 'main', 'hoyo_mix', 453),
  -- 15. L''arrivo Della Signora (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '15. L''arrivo Della Signora', 'main', 'hoyo_mix', 454),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '15. L''arrivo Della Signora', 'main', 'hoyo_mix', 455),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '15. L''arrivo Della Signora', 'main', 'hoyo_mix', 456),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '15. L''arrivo Della Signora', 'main', 'hoyo_mix', 457),
  -- 16. A Yearning Breeze (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '16. A Yearning Breeze', 'main', 'hoyo_mix', 458),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '16. A Yearning Breeze', 'main', 'hoyo_mix', 459),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '16. A Yearning Breeze', 'main', 'hoyo_mix', 460),
  -- 17. Ripples of Daydream (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '17. Ripples of Daydream', 'main', 'hoyo_mix', 461),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '17. Ripples of Daydream', 'main', 'hoyo_mix', 462),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '17. Ripples of Daydream', 'main', 'hoyo_mix', 463),
  -- 18. Welcome Back, My Companion (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '18. Welcome Back, My Companion', 'main', 'hoyo_mix', 464),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '18. Welcome Back, My Companion', 'main', 'hoyo_mix', 465),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '18. Welcome Back, My Companion', 'main', 'hoyo_mix', 466),
  -- 19. The Sudden Collapse (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '19. The Sudden Collapse', 'main', 'hoyo_mix', 467),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage | ?', '19. The Sudden Collapse', 'main', 'hoyo_mix', 468),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage | ?', '19. The Sudden Collapse', 'main', 'hoyo_mix', 469),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '19. The Sudden Collapse', 'main', 'hoyo_mix', 470),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '19. The Sudden Collapse', 'main', 'hoyo_mix', 471),
  -- 20. The Lunar-Eclipsing Palace (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '20. The Lunar-Eclipsing Palace', 'main', 'hoyo_mix', 472),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '20. The Lunar-Eclipsing Palace', 'main', 'hoyo_mix', 473),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '20. The Lunar-Eclipsing Palace', 'main', 'hoyo_mix', 474),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '20. The Lunar-Eclipsing Palace', 'main', 'hoyo_mix', 475),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '20. The Lunar-Eclipsing Palace', 'main', 'hoyo_mix', 476),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage', '20. The Lunar-Eclipsing Palace', 'main', 'hoyo_mix', 477),
  -- 21. Unexpected Savior (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '21. Unexpected Savior', 'main', 'hoyo_mix', 478),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '21. Unexpected Savior', 'main', 'hoyo_mix', 479),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '21. Unexpected Savior', 'main', 'hoyo_mix', 480),
  -- 22. A Letter from Afar (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '22. A Letter from Afar', 'main', 'hoyo_mix', 481),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '22. A Letter from Afar', 'main', 'hoyo_mix', 482),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '22. A Letter from Afar', 'main', 'hoyo_mix', 483),
  -- 23. Lovers'' Oath (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '23. Lovers'' Oath', 'main', 'hoyo_mix', 484),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '23. Lovers'' Oath', 'main', 'hoyo_mix', 485),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '23. Lovers'' Oath', 'main', 'hoyo_mix', 486),
  -- =========================================================================
  -- Album: The Shimmering Voyage — Disc 3: Roar of the Formidable
  -- =========================================================================
  -- 1. All-Conquering Tide (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '1. All-Conquering Tide', 'main', 'hoyo_mix', 487),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '1. All-Conquering Tide', 'main', 'hoyo_mix', 488),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '1. All-Conquering Tide', 'main', 'hoyo_mix', 489),
  -- 2. Never-Ending Performance (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '2. Never-Ending Performance', 'main', 'hoyo_mix', 490),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '2. Never-Ending Performance', 'main', 'hoyo_mix', 491),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '2. Never-Ending Performance', 'main', 'hoyo_mix', 492),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '2. Never-Ending Performance', 'main', 'hoyo_mix', 493),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> Tambourines', '92-Tambourine', 'Album: The Shimmering Voyage', '2. Never-Ending Performance', 'main', 'hoyo_mix', 494),
  -- 3. Wrath of Monoceros Caeli (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '3. Wrath of Monoceros Caeli', 'main', 'hoyo_mix', 495),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '3. Wrath of Monoceros Caeli', 'main', 'hoyo_mix', 496),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 05 Damage Kits', 'PERC Epik Elektro Kit', 'Album: The Shimmering Voyage', '3. Wrath of Monoceros Caeli', 'main', 'hoyo_mix', 497),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 160-Find The Exit', '160-Find The Exit Hi-Hats', 'Album: The Shimmering Voyage', '3. Wrath of Monoceros Caeli', 'main', 'hoyo_mix', 498),
  -- 4. Dance with the Great Vortex (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '4. Dance with the Great Vortex', 'main', 'hoyo_mix', 499),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '4. Dance with the Great Vortex', 'main', 'hoyo_mix', 500),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '4. Dance with the Great Vortex', 'main', 'hoyo_mix', 501),
  -- 5. Ode to Azhdaha (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '5. Ode to Azhdaha', 'main', 'hoyo_mix', 502),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '5. Ode to Azhdaha', 'main', 'hoyo_mix', 503),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '5. Ode to Azhdaha', 'main', 'hoyo_mix', 504),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '5. Ode to Azhdaha', 'main', 'hoyo_mix', 505),
  -- 6. Rage Beneath the Mountains (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '6. Rage Beneath the Mountains', 'main', 'hoyo_mix', 506),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '6. Rage Beneath the Mountains', 'main', 'hoyo_mix', 507),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '6. Rage Beneath the Mountains', 'main', 'hoyo_mix', 508),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '6. Rage Beneath the Mountains', 'main', 'hoyo_mix', 509),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '6. Rage Beneath the Mountains', 'main', 'hoyo_mix', 510),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '6. Rage Beneath the Mountains', 'main', 'hoyo_mix', 511),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage', '6. Rage Beneath the Mountains', 'main', 'hoyo_mix', 512),
  -- =========================================================================
  -- Album: The Shimmering Voyage — Disc 4: A Stranger''s Sojourn
  -- =========================================================================
  -- 1. Hymn of the Pearl (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '1. Hymn of the Pearl', 'main', 'hoyo_mix', 513),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '1. Hymn of the Pearl', 'main', 'hoyo_mix', 514),
  -- 2. Overture of Falling Stars (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '2. Overture of Falling Stars', 'main', 'hoyo_mix', 515),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage', '2. Overture of Falling Stars', 'main', 'hoyo_mix', 516),
  -- 3. Ominous Fandango (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '3. Ominous Fandango', 'main', 'hoyo_mix', 517),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '3. Ominous Fandango', 'main', 'hoyo_mix', 518),
  -- 4. Rapture of the Chaos (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '4. Rapture of the Chaos', 'main', 'hoyo_mix', 519),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '4. Rapture of the Chaos', 'main', 'hoyo_mix', 520),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '4. Rapture of the Chaos', 'main', 'hoyo_mix', 521),
  -- 5. Foul Legacy (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '5. Foul Legacy', 'main', 'hoyo_mix', 522),
  -- 6. Golden Dreams (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '6. Golden Dreams', 'main', 'hoyo_mix', 523),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage', '6. Golden Dreams', 'main', 'hoyo_mix', 524),
  -- 7. Palace of Jadeite — no source rows
  -- 8. Moon-Eclipsing Chamber (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '8. Moon-Eclipsing Chamber', 'main', 'hoyo_mix', 525),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '8. Moon-Eclipsing Chamber', 'main', 'hoyo_mix', 526),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '8. Moon-Eclipsing Chamber', 'main', 'hoyo_mix', 527),
  -- 9. The Imminent Triumph (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '9. The Imminent Triumph', 'main', 'hoyo_mix', 528),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '9. The Imminent Triumph', 'main', 'hoyo_mix', 529),
  -- 10. A Noble Sacrifice (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '10. A Noble Sacrifice', 'main', 'hoyo_mix', 530),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '10. A Noble Sacrifice', 'main', 'hoyo_mix', 531),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '10. A Noble Sacrifice', 'main', 'hoyo_mix', 532),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Synchron Harp' COLLATE NOCASE),
   NULL, NULL, 'Album: The Shimmering Voyage | Maybe?', '10. A Noble Sacrifice', 'main', 'hoyo_mix', 533),
  -- 11. Lingering Bitterness (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '11. Lingering Bitterness', 'main', 'hoyo_mix', 534),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '11. Lingering Bitterness', 'main', 'hoyo_mix', 535),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '11. Lingering Bitterness', 'main', 'hoyo_mix', 536),
  -- 12. Frostbiting Bloom (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '12. Frostbiting Bloom', 'main', 'hoyo_mix', 537),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage', '12. Frostbiting Bloom', 'main', 'hoyo_mix', 538),
  -- 13. Tale of the Yakshas (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '13. Tale of the Yakshas', 'main', 'hoyo_mix', 539),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '60 Gong', 'Album: The Shimmering Voyage', '13. Tale of the Yakshas', 'main', 'hoyo_mix', 540),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage', '13. Tale of the Yakshas', 'main', 'hoyo_mix', 541),
  -- 14. Invitation of Windblume (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '14. Invitation of Windblume', 'main', 'hoyo_mix', 542),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Various Metals', 'Album: The Shimmering Voyage | A1', '14. Invitation of Windblume', 'main', 'hoyo_mix', 543),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '14. Invitation of Windblume', 'main', 'hoyo_mix', 544),
  -- 15. An Inauspicious Blow (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '15. An Inauspicious Blow', 'main', 'hoyo_mix', 545),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage', '15. An Inauspicious Blow', 'main', 'hoyo_mix', 546),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '15. An Inauspicious Blow', 'main', 'hoyo_mix', 547),
  -- 16. Fateful Departing (Yu-Peng Chen, Simai Wang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '16. Fateful Departing', 'main', 'hoyo_mix', 548),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '16. Fateful Departing', 'main', 'hoyo_mix', 549),
  -- 17. Reconnaissance Captain (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '17. Reconnaissance Captain', 'main', 'hoyo_mix', 550),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '17. Reconnaissance Captain', 'main', 'hoyo_mix', 551),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '17. Reconnaissance Captain', 'main', 'hoyo_mix', 552),
  -- 18. Ominous Monolith (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '18. Ominous Monolith', 'main', 'hoyo_mix', 553),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '20 Cymbal', 'Album: The Shimmering Voyage', '18. Ominous Monolith', 'main', 'hoyo_mix', 554),
  -- 19. Through the Eyes of a Dragon (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '19. Through the Eyes of a Dragon', 'main', 'hoyo_mix', 555),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: The Shimmering Voyage | To be found', '19. Through the Eyes of a Dragon', 'main', 'hoyo_mix', 556),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage', '19. Through the Eyes of a Dragon', 'main', 'hoyo_mix', 557),
  -- 20. Dvalin Is Landing! (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '20. Dvalin Is Landing!', 'main', 'hoyo_mix', 558),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Tambourine', 'Album: The Shimmering Voyage', '20. Dvalin Is Landing!', 'main', 'hoyo_mix', 559),
  -- 21. Summertime Wonderland (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '21. Summertime Wonderland', 'main', 'hoyo_mix', 560),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Synchron Harp' COLLATE NOCASE),
   NULL, NULL, 'Album: The Shimmering Voyage | Maybe?', '21. Summertime Wonderland', 'main', 'hoyo_mix', 561),
  -- 22. A New Summer Adventure! (Yu-Peng Chen, Jiade He)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '22. A New Summer Adventure!', 'main', 'hoyo_mix', 562),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Tambourine', 'Album: The Shimmering Voyage', '22. A New Summer Adventure!', 'main', 'hoyo_mix', 563),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Woodblock symphony', 'Album: The Shimmering Voyage', '22. A New Summer Adventure!', 'main', 'hoyo_mix', 564),
  -- 23. Tales From the Snow Mountain (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '23. Tales From the Snow Mountain', 'main', 'hoyo_mix', 565),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '23. Tales From the Snow Mountain', 'main', 'hoyo_mix', 566),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '23. Tales From the Snow Mountain', 'main', 'hoyo_mix', 567),
  -- 24. Destined Parting (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '24. Destined Parting', 'main', 'hoyo_mix', 568),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage', '24. Destined Parting', 'main', 'hoyo_mix', 569),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: The Shimmering Voyage', '24. Destined Parting', 'main', 'hoyo_mix', 570),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Synchron Harp' COLLATE NOCASE),
   NULL, NULL, 'Album: The Shimmering Voyage | To check', '24. Destined Parting', 'main', 'hoyo_mix', 571),
  -- =========================================================================
  -- Album: Realm of Tranquil Eternity (2021-09-22) — Disc 1: Sakura and Violet Thunder
  -- =========================================================================
  -- 1. Inazuma (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Inazuma', 'main', 'hoyo_mix', 572),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Inazuma', 'main', 'hoyo_mix', 573),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Inazuma', 'main', 'hoyo_mix', 574),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Inazuma', 'main', 'hoyo_mix', 575),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Inazuma', 'main', 'hoyo_mix', 576),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Inazuma', 'main', 'hoyo_mix', 577),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: Realm of Tranquil Eternity', '1. Inazuma', 'main', 'hoyo_mix', 578),
  -- 2. Fall of Maples (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Fall of Maples', 'main', 'hoyo_mix', 579),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Realm of Tranquil Eternity', '2. Fall of Maples', 'main', 'hoyo_mix', 580),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Fall of Maples', 'main', 'hoyo_mix', 581),
  -- 3. Separated Dream (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Separated Dream', 'main', 'hoyo_mix', 582),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Separated Dream', 'main', 'hoyo_mix', 583),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Separated Dream', 'main', 'hoyo_mix', 584),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Separated Dream', 'main', 'hoyo_mix', 585),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Realm of Tranquil Eternity', '3. Separated Dream', 'main', 'hoyo_mix', 586),
  -- 4. Streets of Elegance (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Streets of Elegance', 'main', 'hoyo_mix', 587),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Streets of Elegance', 'main', 'hoyo_mix', 588),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Streets of Elegance', 'main', 'hoyo_mix', 589),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Streets of Elegance', 'main', 'hoyo_mix', 590),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Shamisen', 'Shamisen', 'Album: Realm of Tranquil Eternity | beta track', '4. Streets of Elegance', 'main', 'hoyo_mix', 591),
  -- 5. Lingering Blossom (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '5. Lingering Blossom', 'main', 'hoyo_mix', 592),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '5. Lingering Blossom', 'main', 'hoyo_mix', 593),
  -- 6. The Land of Her Serenity (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '6. The Land of Her Serenity', 'main', 'hoyo_mix', 594),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '6. The Land of Her Serenity', 'main', 'hoyo_mix', 595),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '6. The Land of Her Serenity', 'main', 'hoyo_mix', 596),
  -- 7. In the Strange Realm of Sakura (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '7. In the Strange Realm of Sakura', 'main', 'hoyo_mix', 597),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '7. In the Strange Realm of Sakura', 'main', 'hoyo_mix', 598),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '7. In the Strange Realm of Sakura', 'main', 'hoyo_mix', 599),
  -- 8. Blue Dream (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '8. Blue Dream', 'main', 'hoyo_mix', 600),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '8. Blue Dream', 'main', 'hoyo_mix', 601),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '8. Blue Dream', 'main', 'hoyo_mix', 602),
  -- 9. Dream of Scattered Petals (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '9. Dream of Scattered Petals', 'main', 'hoyo_mix', 603),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '9. Dream of Scattered Petals', 'main', 'hoyo_mix', 604),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '9. Dream of Scattered Petals', 'main', 'hoyo_mix', 605),
  -- 10. Thoughts of Lightning (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '10. Thoughts of Lightning', 'main', 'hoyo_mix', 606),
  -- 11. The Mysterious Islands (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '11. The Mysterious Islands', 'main', 'hoyo_mix', 607),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '11. The Mysterious Islands', 'main', 'hoyo_mix', 608),
  -- 12. Sakura-Scented Kiseru (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '12. Sakura-Scented Kiseru', 'main', 'hoyo_mix', 609),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '12. Sakura-Scented Kiseru', 'main', 'hoyo_mix', 610),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '12. Sakura-Scented Kiseru', 'main', 'hoyo_mix', 611),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '12. Sakura-Scented Kiseru', 'main', 'hoyo_mix', 612),
  -- 13. Her Legacy (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '13. Her Legacy', 'main', 'hoyo_mix', 613),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '13. Her Legacy', 'main', 'hoyo_mix', 614),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '13. Her Legacy', 'main', 'hoyo_mix', 615),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '13. Her Legacy', 'main', 'hoyo_mix', 616),
  -- 14. Everlasting Devotion (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '14. Everlasting Devotion', 'main', 'hoyo_mix', 617),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '14. Everlasting Devotion', 'main', 'hoyo_mix', 618),
  -- 15. Kitsune''s Mask (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '15. Kitsune''s Mask', 'main', 'hoyo_mix', 619),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '15. Kitsune''s Mask', 'main', 'hoyo_mix', 620),
  -- 16. Hanachirusato (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '16. Hanachirusato', 'main', 'hoyo_mix', 621),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '16. Hanachirusato', 'main', 'hoyo_mix', 622),
  -- 17. Time to Say Farewell (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '17. Time to Say Farewell', 'main', 'hoyo_mix', 623),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '17. Time to Say Farewell', 'main', 'hoyo_mix', 624),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '17. Time to Say Farewell', 'main', 'hoyo_mix', 625),
  -- 18. Flickering Sakura (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '18. Flickering Sakura', 'main', 'hoyo_mix', 626),
  -- 19. Sigh of an Old Friend (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '19. Sigh of an Old Friend', 'main', 'hoyo_mix', 627),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '19. Sigh of an Old Friend', 'main', 'hoyo_mix', 628),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '19. Sigh of an Old Friend', 'main', 'hoyo_mix', 629),
  -- 20. The Sealed Harbor (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '20. The Sealed Harbor', 'main', 'hoyo_mix', 630),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '20. The Sealed Harbor', 'main', 'hoyo_mix', 631),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Realm of Tranquil Eternity', '20. The Sealed Harbor', 'main', 'hoyo_mix', 632),
  -- 21. Island for Outlanders (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '21. Island for Outlanders', 'main', 'hoyo_mix', 633),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '21. Island for Outlanders', 'main', 'hoyo_mix', 634),
  -- 22. Dream of Homeland (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '22. Dream of Homeland', 'main', 'hoyo_mix', 635),
  -- 23. Interwoven Nostalgia (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '23. Interwoven Nostalgia', 'main', 'hoyo_mix', 636),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '23. Interwoven Nostalgia', 'main', 'hoyo_mix', 637),
  -- 24. Preparation of Matsuri (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '24. Preparation of Matsuri', 'main', 'hoyo_mix', 638),
  -- 25. Island of Hanabi (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '25. Island of Hanabi', 'main', 'hoyo_mix', 639),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '25. Island of Hanabi', 'main', 'hoyo_mix', 640),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '25. Island of Hanabi', 'main', 'hoyo_mix', 641),
  -- 26. Murmuring Creek (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '26. Murmuring Creek', 'main', 'hoyo_mix', 642),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '26. Murmuring Creek', 'main', 'hoyo_mix', 643),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '26. Murmuring Creek', 'main', 'hoyo_mix', 644),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Realm of Tranquil Eternity', '26. Murmuring Creek', 'main', 'hoyo_mix', 645),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '26. Murmuring Creek', 'main', 'hoyo_mix', 646),
  -- 27. Remaining Tenderness (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '27. Remaining Tenderness', 'main', 'hoyo_mix', 647),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '27. Remaining Tenderness', 'main', 'hoyo_mix', 648),
  -- 28. A Harmonious Rest (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '28. A Harmonious Rest', 'main', 'hoyo_mix', 649),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '28. A Harmonious Rest', 'main', 'hoyo_mix', 650),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '28. A Harmonious Rest', 'main', 'hoyo_mix', 651),
  -- 29. Hakushin''s Lullaby (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '29. Hakushin''s Lullaby', 'main', 'hoyo_mix', 652),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '29. Hakushin''s Lullaby', 'main', 'hoyo_mix', 653),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '29. Hakushin''s Lullaby', 'main', 'hoyo_mix', 654),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '29. Hakushin''s Lullaby', 'main', 'hoyo_mix', 655),
  -- =========================================================================
  -- Album: Realm of Tranquil Eternity — Disc 2: Stories of the Floating World
  -- =========================================================================
  -- 1. Where the Heart Settles (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Where the Heart Settles', 'main', 'hoyo_mix', 656),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Where the Heart Settles', 'main', 'hoyo_mix', 657),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Where the Heart Settles', 'main', 'hoyo_mix', 658),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Where the Heart Settles', 'main', 'hoyo_mix', 659),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Where the Heart Settles', 'main', 'hoyo_mix', 660),
  -- 2. Miko''s Night (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Miko''s Night', 'main', 'hoyo_mix', 661),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Miko''s Night', 'main', 'hoyo_mix', 662),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Miko''s Night', 'main', 'hoyo_mix', 663),
  -- 3. Where the Shirasagi Dances (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Where the Shirasagi Dances', 'main', 'hoyo_mix', 664),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Where the Shirasagi Dances', 'main', 'hoyo_mix', 665),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Where the Shirasagi Dances', 'main', 'hoyo_mix', 666),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Where the Shirasagi Dances', 'main', 'hoyo_mix', 667),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: Realm of Tranquil Eternity', '3. Where the Shirasagi Dances', 'main', 'hoyo_mix', 668),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Realm of Tranquil Eternity', '3. Where the Shirasagi Dances', 'main', 'hoyo_mix', 669),
  -- 4. Shirasagi''s Demeanor (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Shirasagi''s Demeanor', 'main', 'hoyo_mix', 670),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Shirasagi''s Demeanor', 'main', 'hoyo_mix', 671),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Shirasagi''s Demeanor', 'main', 'hoyo_mix', 672),
  -- 5. Valor & Prowess (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '5. Valor & Prowess', 'main', 'hoyo_mix', 673),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: Realm of Tranquil Eternity', '5. Valor & Prowess', 'main', 'hoyo_mix', 674),
  -- 6. A Night Watch (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '6. A Night Watch', 'main', 'hoyo_mix', 675),
  -- 7. Samurai''s Sorrow (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '7. Samurai''s Sorrow', 'main', 'hoyo_mix', 676),
  -- 8. Scarred Island (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '8. Scarred Island', 'main', 'hoyo_mix', 677),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '8. Scarred Island', 'main', 'hoyo_mix', 678),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Celtic Era 2' COLLATE NOCASE),
   'Soundscapes', 'Avalon', 'Album: Realm of Tranquil Eternity', '8. Scarred Island', 'main', 'hoyo_mix', 679),
  -- 9. Silent Testimony (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '9. Silent Testimony', 'main', 'hoyo_mix', 680),
  -- 10. Soul of Soulless Conditions (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '10. Soul of Soulless Conditions', 'main', 'hoyo_mix', 681),
  -- 11. Ones Who Strive to Live (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '11. Ones Who Strive to Live', 'main', 'hoyo_mix', 682),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '11. Ones Who Strive to Live', 'main', 'hoyo_mix', 683),
  -- 12. Resounding of Silence (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '12. Resounding of Silence', 'main', 'hoyo_mix', 684),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Desert Winds' COLLATE NOCASE),
   'Soundscapes ', 'Desert Ghosts', 'Album: Realm of Tranquil Eternity', '12. Resounding of Silence', 'main', 'hoyo_mix', 685),
  -- 13. You Shall Not Tempt It (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '13. You Shall Not Tempt It', 'main', 'hoyo_mix', 686),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Desert Winds' COLLATE NOCASE),
   'Soundscapes', 'Cavern of Winds', 'Album: Realm of Tranquil Eternity', '13. You Shall Not Tempt It', 'main', 'hoyo_mix', 687),
  -- 14. The Lost Mound (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '14. The Lost Mound', 'main', 'hoyo_mix', 688),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Ancient Secrets', 'Enki', 'Album: Realm of Tranquil Eternity', '14. The Lost Mound', 'main', 'hoyo_mix', 689),
  -- 15. Dirge of the Soundless (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '15. Dirge of the Soundless', 'main', 'hoyo_mix', 690),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '15. Dirge of the Soundless', 'main', 'hoyo_mix', 691),
  -- 16. Nothing but Ivy (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '16. Nothing but Ivy', 'main', 'hoyo_mix', 692),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Creatures of Nature', 'Peaceful Creatures', 'Album: Realm of Tranquil Eternity', '16. Nothing but Ivy', 'main', 'hoyo_mix', 693),
  -- 17. Shadow of War (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '17. Shadow of War', 'main', 'hoyo_mix', 694),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Creatures of Nature', 'Peaceful Creatures', 'Album: Realm of Tranquil Eternity', '17. Shadow of War', 'main', 'hoyo_mix', 695),
  -- 18. Another Conflict Incoming (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '18. Another Conflict Incoming', 'main', 'hoyo_mix', 696),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '18. Another Conflict Incoming', 'main', 'hoyo_mix', 697),
  -- 19. Fortification of Resistance (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '19. Fortification of Resistance', 'main', 'hoyo_mix', 698),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '19. Fortification of Resistance', 'main', 'hoyo_mix', 699),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '19. Fortification of Resistance', 'main', 'hoyo_mix', 700),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: Realm of Tranquil Eternity', '19. Fortification of Resistance', 'main', 'hoyo_mix', 701),
  -- 20. Unwavering March (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '20. Unwavering March', 'main', 'hoyo_mix', 702),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '20. Unwavering March', 'main', 'hoyo_mix', 703),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '20. Unwavering March', 'main', 'hoyo_mix', 704),
  -- 21. Caress of the Spirit (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '21. Caress of the Spirit', 'main', 'hoyo_mix', 705),
  -- 22. Stranded Wish (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '22. Stranded Wish', 'main', 'hoyo_mix', 706),
  -- 23. Busy Silhouettes (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '23. Busy Silhouettes', 'main', 'hoyo_mix', 707),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '23. Busy Silhouettes', 'main', 'hoyo_mix', 708),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '23. Busy Silhouettes', 'main', 'hoyo_mix', 709),
  -- 24. A Hollowed Skull (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '24. A Hollowed Skull', 'main', 'hoyo_mix', 710),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '24. A Hollowed Skull', 'main', 'hoyo_mix', 711),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '24. A Hollowed Skull', 'main', 'hoyo_mix', 712),
  -- 25. Whispering Tatarigami (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '25. Whispering Tatarigami', 'main', 'hoyo_mix', 713),
  -- 26. Orobashi''s Teaching (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '26. Orobashi''s Teaching', 'main', 'hoyo_mix', 714),
  -- 27. Forgotten Epic (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '27. Forgotten Epic', 'main', 'hoyo_mix', 715),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '27. Forgotten Epic', 'main', 'hoyo_mix', 716),
  -- 28. Serpent''s Tragedy (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '28. Serpent''s Tragedy', 'main', 'hoyo_mix', 717),
  -- 29. Embrace of Sea Waves (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '29. Embrace of Sea Waves', 'main', 'hoyo_mix', 718),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Realm of Tranquil Eternity', '29. Embrace of Sea Waves', 'main', 'hoyo_mix', 719),
  -- =========================================================================
  -- Album: Realm of Tranquil Eternity — Disc 3: Battles of Inazuma
  -- =========================================================================
  -- 1. Duel in the Mist (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Duel in the Mist', 'main', 'hoyo_mix', 720),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Duel in the Mist', 'main', 'hoyo_mix', 721),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Duel in the Mist', 'main', 'hoyo_mix', 722),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '1. Duel in the Mist', 'main', 'hoyo_mix', 723),
  -- 2. Against the Invisible Net (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 724),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 725),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 726),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 727),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 728),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 729),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 730),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 731),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 732),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 733),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 734),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 735),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 736),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '2. Against the Invisible Net', 'main', 'hoyo_mix', 737),
  -- 3. Overlord of the Thunderstorm (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Overlord of the Thunderstorm', 'main', 'hoyo_mix', 738),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Overlord of the Thunderstorm', 'main', 'hoyo_mix', 739),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Overlord of the Thunderstorm', 'main', 'hoyo_mix', 740),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Overlord of the Thunderstorm', 'main', 'hoyo_mix', 741),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Overlord of the Thunderstorm', 'main', 'hoyo_mix', 742),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '3. Overlord of the Thunderstorm', 'main', 'hoyo_mix', 743),
  -- 4. Fiery Pursuit (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 744),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 745),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 746),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 747),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 748),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 749),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 750),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 751),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 752),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 753),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 754),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 755),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 756),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Realm of Tranquil Eternity', '4. Fiery Pursuit', 'main', 'hoyo_mix', 757),
  -- =========================================================================
  -- Album: Islands of the Lost and Forgotten (2022-04-13) — Disc 1: Isles of Serenity and Amnesia
  -- =========================================================================
  -- 1. Island of Crystal and Pearl (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '1. Island of Crystal and Pearl', 'main', 'hoyo_mix', 758),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '1. Island of Crystal and Pearl', 'main', 'hoyo_mix', 759),
  -- 2. Illuminated Coral Palace (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '2. Illuminated Coral Palace', 'main', 'hoyo_mix', 760),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '2. Illuminated Coral Palace', 'main', 'hoyo_mix', 761),
  -- 3. Peaceful Wishes (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '3. Peaceful Wishes', 'main', 'hoyo_mix', 762),
  -- 4. A Tranquil Town (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '4. A Tranquil Town', 'main', 'hoyo_mix', 763),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '4. A Tranquil Town', 'main', 'hoyo_mix', 764),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '4. A Tranquil Town', 'main', 'hoyo_mix', 765),
  -- 5. Stroll Along the Beach (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '5. Stroll Along the Beach', 'main', 'hoyo_mix', 766),
  -- 6. In a Harmonious Atmosphere (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. In a Harmonious Atmosphere', 'main', 'hoyo_mix', 767),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. In a Harmonious Atmosphere', 'main', 'hoyo_mix', 768),
  -- 7. Stories Untold (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Stories Untold', 'main', 'hoyo_mix', 769),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Stories Untold', 'main', 'hoyo_mix', 770),
  -- 8. What Now Remains (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '8. What Now Remains', 'main', 'hoyo_mix', 771),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '8. What Now Remains', 'main', 'hoyo_mix', 772),
  -- 9. Roaming in Silence (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '9. Roaming in Silence', 'main', 'hoyo_mix', 773),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '9. Roaming in Silence', 'main', 'hoyo_mix', 774),
  -- 10. Lonely Journey (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '10. Lonely Journey', 'main', 'hoyo_mix', 775),
  -- 11. Swath of Desolation (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '11. Swath of Desolation', 'main', 'hoyo_mix', 776),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '11. Swath of Desolation', 'main', 'hoyo_mix', 777),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '11. Swath of Desolation', 'main', 'hoyo_mix', 778),
  -- 12. Echoes of Solitude (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '12. Echoes of Solitude', 'main', 'hoyo_mix', 779),
  -- 13. Mournful Whisperings (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '13. Mournful Whisperings', 'main', 'hoyo_mix', 780),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '13. Mournful Whisperings', 'main', 'hoyo_mix', 781),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '13. Mournful Whisperings', 'main', 'hoyo_mix', 782),
  -- 14. Desire for Calm (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '14. Desire for Calm', 'main', 'hoyo_mix', 783),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '14. Desire for Calm', 'main', 'hoyo_mix', 784),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '14. Desire for Calm', 'main', 'hoyo_mix', 785),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '14. Desire for Calm', 'main', 'hoyo_mix', 786),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '14. Desire for Calm', 'main', 'hoyo_mix', 787),
  -- 15. A Fragment of Peace (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '15. A Fragment of Peace', 'main', 'hoyo_mix', 788),
  -- 16. Slumbering Land of Neko (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '16. Slumbering Land of Neko', 'main', 'hoyo_mix', 789),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '16. Slumbering Land of Neko', 'main', 'hoyo_mix', 790),
  -- 17. Savory Treat (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '17. Savory Treat', 'main', 'hoyo_mix', 791),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '17. Savory Treat', 'main', 'hoyo_mix', 792),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '17. Savory Treat', 'main', 'hoyo_mix', 793),
  -- 18. Narukami-Bayashi (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '18. Narukami-Bayashi', 'main', 'hoyo_mix', 794),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '18. Narukami-Bayashi', 'main', 'hoyo_mix', 795),
  -- 19. In a Cautious Way (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '19. In a Cautious Way', 'main', 'hoyo_mix', 796),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '19. In a Cautious Way', 'main', 'hoyo_mix', 797),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '19. In a Cautious Way', 'main', 'hoyo_mix', 798),
  -- 20. Silent Seclusion (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '20. Silent Seclusion', 'main', 'hoyo_mix', 799),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '20. Silent Seclusion', 'main', 'hoyo_mix', 800),
  -- 21. Contemplation on Eternity (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '21. Contemplation on Eternity', 'main', 'hoyo_mix', 801),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '21. Contemplation on Eternity', 'main', 'hoyo_mix', 802),
  -- 22. A Sepulchral Gloom — no product source rows (atmos notes only)
  -- 23. When All Has Elapsed (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '23. When All Has Elapsed', 'main', 'hoyo_mix', 803),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '23. When All Has Elapsed', 'main', 'hoyo_mix', 804),
  -- 24. Sorrows of Strays (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '24. Sorrows of Strays', 'main', 'hoyo_mix', 805),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '24. Sorrows of Strays', 'main', 'hoyo_mix', 806),
  -- 25. Misty Truth (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '25. Misty Truth', 'main', 'hoyo_mix', 807),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '25. Misty Truth', 'main', 'hoyo_mix', 808),
  -- 26. Wandering in the Mist — no source rows (notes only)
  -- 27. Walking a Pathless Path (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '27. Walking a Pathless Path', 'main', 'hoyo_mix', 809),
  -- 28. Fading Memories (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '28. Fading Memories', 'main', 'hoyo_mix', 810),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '28. Fading Memories', 'main', 'hoyo_mix', 811),
  -- 29. A Memorable Fancy (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '29. A Memorable Fancy', 'main', 'hoyo_mix', 812),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '29. A Memorable Fancy', 'main', 'hoyo_mix', 813),
  -- 30. Ruu''s Melody (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '30. Ruu''s Melody', 'main', 'hoyo_mix', 814),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '30. Ruu''s Melody', 'main', 'hoyo_mix', 815),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '30. Ruu''s Melody', 'main', 'hoyo_mix', 816),
  -- =========================================================================
  -- Album: Islands of the Lost and Forgotten — Disc 2: Beneath the Abyssal Depth
  -- =========================================================================
  -- 1. Pathway to the Hidden Isles (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '1. Pathway to the Hidden Isles', 'main', 'hoyo_mix', 817),
  -- 2. Sink into Oblivion (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '2. Sink into Oblivion', 'main', 'hoyo_mix', 818),
  -- 3. The Abysmal Region (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '3. The Abysmal Region', 'main', 'hoyo_mix', 819),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Islands of the Lost and Forgotten', '3. The Abysmal Region', 'main', 'hoyo_mix', 820),
  -- 4. The Glooming Light (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '4. The Glooming Light', 'main', 'hoyo_mix', 821),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '4. The Glooming Light', 'main', 'hoyo_mix', 822),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'VI Special Edition Vol. 1' COLLATE NOCASE),
   '06 Plucked Instruments', '01 Harp I', 'Album: Islands of the Lost and Forgotten', '4. The Glooming Light', 'main', 'hoyo_mix', 823),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Synchron Concert D-274' COLLATE NOCASE),
   '03 Player Room-Mix', NULL, 'Album: Islands of the Lost and Forgotten', '4. The Glooming Light', 'main', 'hoyo_mix', 824),
  -- 5. The Shallow Melancholy (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '5. The Shallow Melancholy', 'main', 'hoyo_mix', 825),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Synchron Concert D-274' COLLATE NOCASE),
   '03 Player Room-Mix', NULL, 'Album: Islands of the Lost and Forgotten', '5. The Shallow Melancholy', 'main', 'hoyo_mix', 826),
  -- 6. Drops of Time (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. Drops of Time', 'main', 'hoyo_mix', 827),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. Drops of Time', 'main', 'hoyo_mix', 828),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. Drops of Time', 'main', 'hoyo_mix', 829),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. Drops of Time', 'main', 'hoyo_mix', 830),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: Islands of the Lost and Forgotten', '6. Drops of Time', 'main', 'hoyo_mix', 831),
  -- 7. Evanescent Moments (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Evanescent Moments', 'main', 'hoyo_mix', 832),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Evanescent Moments', 'main', 'hoyo_mix', 833),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Evanescent Moments', 'main', 'hoyo_mix', 834),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Evanescent Moments', 'main', 'hoyo_mix', 835),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Islands of the Lost and Forgotten', '7. Evanescent Moments', 'main', 'hoyo_mix', 836),
  -- 8. A Glimpse of Old Dreams (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '8. A Glimpse of Old Dreams', 'main', 'hoyo_mix', 837),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Synchron Concert D-274' COLLATE NOCASE),
   '03 Player Room-Mix', NULL, 'Album: Islands of the Lost and Forgotten', '8. A Glimpse of Old Dreams', 'main', 'hoyo_mix', 838),
  -- 9. Like in a Haze (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '9. Like in a Haze', 'main', 'hoyo_mix', 839),
  -- 10. Chthonian Voices (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '10. Chthonian Voices', 'main', 'hoyo_mix', 840),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Celtic Era 2' COLLATE NOCASE),
   'Soundscapes', 'Burial Mound', 'Album: Islands of the Lost and Forgotten', '10. Chthonian Voices', 'main', 'hoyo_mix', 841),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Celtic Era 2' COLLATE NOCASE),
   'Strings -> Celtic Zither', 'Celtic Zither 2', 'Album: Islands of the Lost and Forgotten | unsure', '10. Chthonian Voices', 'main', 'hoyo_mix', 842),
  -- 11. The Gaze of the Ancients (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'VI Special Edition Vol. 1' COLLATE NOCASE),
   '06 Plucked Instruments', '01 Harp I', 'Album: Islands of the Lost and Forgotten', '11. The Gaze of the Ancients', 'main', 'hoyo_mix', 843),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom 3' COLLATE NOCASE),
   '2. Soundscapes -> Forests and Jungles', 'Mountain Forest', 'Album: Islands of the Lost and Forgotten | unsure', '11. The Gaze of the Ancients', 'main', 'hoyo_mix', 844),
  -- 12. Soft Moans of the Remains (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '12. Soft Moans of the Remains', 'main', 'hoyo_mix', 845),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '12. Soft Moans of the Remains', 'main', 'hoyo_mix', 846),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '12. Soft Moans of the Remains', 'main', 'hoyo_mix', 847),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '12. Soft Moans of the Remains', 'main', 'hoyo_mix', 848),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Keyboards', 'LA Custom C7 - Mellow', 'Album: Islands of the Lost and Forgotten', '12. Soft Moans of the Remains', 'main', 'hoyo_mix', 849),
  -- 13. The Long Dark Night (Qian Ding)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '13. The Long Dark Night', 'main', 'hoyo_mix', 850),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '13. The Long Dark Night', 'main', 'hoyo_mix', 851),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '13. The Long Dark Night', 'main', 'hoyo_mix', 852),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '13. The Long Dark Night', 'main', 'hoyo_mix', 853),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Keyboards', 'LA Custom C7 - Cinematic', 'Album: Islands of the Lost and Forgotten', '13. The Long Dark Night', 'main', 'hoyo_mix', 854),
  -- 14. A Dim Echo of the Past (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '14. A Dim Echo of the Past', 'main', 'hoyo_mix', 855),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Synchron Concert D-274' COLLATE NOCASE),
   '03 Player Room-Mix', NULL, 'Album: Islands of the Lost and Forgotten', '14. A Dim Echo of the Past', 'main', 'hoyo_mix', 856),
  -- 15. In the Brink of Time (Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '15. In the Brink of Time', 'main', 'hoyo_mix', 857),
  -- 16. Drift Along the Lethe (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '16. Drift Along the Lethe', 'main', 'hoyo_mix', 858),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Islands of the Lost and Forgotten', '16. Drift Along the Lethe', 'main', 'hoyo_mix', 859),
  -- 17. Now and Forevermore (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '17. Now and Forevermore', 'main', 'hoyo_mix', 860),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Islands of the Lost and Forgotten', '17. Now and Forevermore', 'main', 'hoyo_mix', 861),
  -- 18. At Dawn and Dusk (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '18. At Dawn and Dusk', 'main', 'hoyo_mix', 862),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '18. At Dawn and Dusk', 'main', 'hoyo_mix', 863),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '18. At Dawn and Dusk', 'main', 'hoyo_mix', 864),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '18. At Dawn and Dusk', 'main', 'hoyo_mix', 865),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '18. At Dawn and Dusk', 'main', 'hoyo_mix', 866),
  -- 19. Tales of Woe (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '19. Tales of Woe', 'main', 'hoyo_mix', 867),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '19. Tales of Woe', 'main', 'hoyo_mix', 868),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '19. Tales of Woe', 'main', 'hoyo_mix', 869),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '19. Tales of Woe', 'main', 'hoyo_mix', 870),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '19. Tales of Woe', 'main', 'hoyo_mix', 871),
  -- 20. Tearless Souls of Byakuya (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '20. Tearless Souls of Byakuya', 'main', 'hoyo_mix', 872),
  -- 21. The Realm of Tokoyo (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '21. The Realm of Tokoyo', 'main', 'hoyo_mix', 873),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '21. The Realm of Tokoyo', 'main', 'hoyo_mix', 874),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'The Grandeur' COLLATE NOCASE),
   NULL, 'Basic Grandeur', 'Album: Islands of the Lost and Forgotten', '21. The Realm of Tokoyo', 'main', 'hoyo_mix', 875),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'VI Special Edition Vol. 1' COLLATE NOCASE),
   '06 Plucked Instruments', '01 Harp I', 'Album: Islands of the Lost and Forgotten', '21. The Realm of Tokoyo', 'main', 'hoyo_mix', 876),
  -- 22. Hope or Nostalgia (Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '22. Hope or Nostalgia', 'main', 'hoyo_mix', 877),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '22. Hope or Nostalgia', 'main', 'hoyo_mix', 878),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '22. Hope or Nostalgia', 'main', 'hoyo_mix', 879),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'The Grandeur' COLLATE NOCASE),
   NULL, 'Basic Grandeur', 'Album: Islands of the Lost and Forgotten', '22. Hope or Nostalgia', 'main', 'hoyo_mix', 880),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'VI Special Edition Vol. 1' COLLATE NOCASE),
   '06 Plucked Instruments', '01 Harp I', 'Album: Islands of the Lost and Forgotten', '22. Hope or Nostalgia', 'main', 'hoyo_mix', 881),
  -- =========================================================================
  -- Album: Islands of the Lost and Forgotten — Disc 3: Battles of Inazuma 2
  -- =========================================================================
  -- 1. Chrysalis Suspirii (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '1. Chrysalis Suspirii', 'main', 'hoyo_mix', 882),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '1. Chrysalis Suspirii', 'main', 'hoyo_mix', 883),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '1. Chrysalis Suspirii', 'main', 'hoyo_mix', 884),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '1. Chrysalis Suspirii', 'main', 'hoyo_mix', 885),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: Islands of the Lost and Forgotten', '1. Chrysalis Suspirii', 'main', 'hoyo_mix', 886),
  -- 2. Saltatio Favillae (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '2. Saltatio Favillae', 'main', 'hoyo_mix', 887),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '2. Saltatio Favillae', 'main', 'hoyo_mix', 888),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '2. Saltatio Favillae', 'main', 'hoyo_mix', 889),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '2. Saltatio Favillae', 'main', 'hoyo_mix', 890),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '2. Saltatio Favillae', 'main', 'hoyo_mix', 891),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '2. Saltatio Favillae', 'main', 'hoyo_mix', 892),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: Islands of the Lost and Forgotten', '2. Saltatio Favillae', 'main', 'hoyo_mix', 893),
  -- 3. Bane of Ambitions (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '3. Bane of Ambitions', 'main', 'hoyo_mix', 894),
  -- 4. Thunderings of the Merciless (Yu-Peng Chen, Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '4. Thunderings of the Merciless', 'main', 'hoyo_mix', 895),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '4. Thunderings of the Merciless', 'main', 'hoyo_mix', 896),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '4. Thunderings of the Merciless', 'main', 'hoyo_mix', 897),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '4. Thunderings of the Merciless', 'main', 'hoyo_mix', 898),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Hits', 'Big Cinematic Hits', 'Album: Islands of the Lost and Forgotten | A4', '4. Thunderings of the Merciless', 'main', 'hoyo_mix', 899),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: Islands of the Lost and Forgotten', '4. Thunderings of the Merciless', 'main', 'hoyo_mix', 900),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass (Hard)', 'BA Angle Grinder [SN]', 'Album: Islands of the Lost and Forgotten', '4. Thunderings of the Merciless', 'main', 'hoyo_mix', 901),
  -- 5. The Almighty Violet Thunder (Yu-Peng Chen, Xin Zhao)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '5. The Almighty Violet Thunder', 'main', 'hoyo_mix', 902),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '5. The Almighty Violet Thunder', 'main', 'hoyo_mix', 903),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '5. The Almighty Violet Thunder', 'main', 'hoyo_mix', 904),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '5. The Almighty Violet Thunder', 'main', 'hoyo_mix', 905),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '5. The Almighty Violet Thunder', 'main', 'hoyo_mix', 906),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Hits', 'Big Cinematic Hits', 'Album: Islands of the Lost and Forgotten | A4', '5. The Almighty Violet Thunder', 'main', 'hoyo_mix', 907),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', NULL, 'Album: Islands of the Lost and Forgotten', '5. The Almighty Violet Thunder', 'main', 'hoyo_mix', 908),
  -- 6. Combat Beneath the Waves (Yu-Peng Chen)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. Combat Beneath the Waves', 'main', 'hoyo_mix', 909),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. Combat Beneath the Waves', 'main', 'hoyo_mix', 910),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. Combat Beneath the Waves', 'main', 'hoyo_mix', 911),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. Combat Beneath the Waves', 'main', 'hoyo_mix', 912),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. Combat Beneath the Waves', 'main', 'hoyo_mix', 913),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '6. Combat Beneath the Waves', 'main', 'hoyo_mix', 914),
  -- 7. Undersea Encounters (Dimeng Yuan)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Undersea Encounters', 'main', 'hoyo_mix', 915),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Undersea Encounters', 'main', 'hoyo_mix', 916),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Undersea Encounters', 'main', 'hoyo_mix', 917),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Undersea Encounters', 'main', 'hoyo_mix', 918),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '7. Undersea Encounters', 'main', 'hoyo_mix', 919),
  -- 8. No Turning Back (Yu-Peng Chen, Yijun Jiang)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '8. No Turning Back', 'main', 'hoyo_mix', 920),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Islands of the Lost and Forgotten', '8. No Turning Back', 'main', 'hoyo_mix', 921),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', 'Dark City', 'Album: Islands of the Lost and Forgotten', '8. No Turning Back', 'main', 'hoyo_mix', 922);

-- =============================================================================
-- Live Recording / Credited Piano Performance — raw_source UPDATEs (one per row)
-- =============================================================================
-- Album 1: The Wind and The Star Traveler
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 1 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 5 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 7 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — He Lin' WHERE position = 8 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 10 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — He Lin' WHERE position = 11 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 13 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — He Lin' WHERE position = 14 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 15 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 16 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — He Lin' WHERE position = 17 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 18 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 20 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Sheng-Han Gao' WHERE position = 21 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 22 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — He Lin' WHERE position = 23 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 25 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 28 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 30 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring' WHERE position = 31 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 2: City of Winds and Idylls — Disc 1
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 35 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 37 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — He Lin' WHERE position = 38 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 41 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 42 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 43 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 45 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 47 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 50 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 52 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 53 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 54 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 56 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 57 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 59 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 62 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 64 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 65 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 66 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 69 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 70 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 73 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 76 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 79 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 81 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 83 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 2: Disc 2 (The Horizon of Dandelion)
UPDATE usages SET raw_source = 'Live Recording: Vocal — He Lin' WHERE position = 85 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 86 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 88 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Yu-Peng Chen' WHERE position = 90 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 93 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Yu-Peng Chen' WHERE position = 96 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 97 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 98 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 99 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 101 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 104 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Yu-Peng Chen' WHERE position = 105 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Budapest Scoring' WHERE position = 107 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Sheng-Han Gao' WHERE position = 108 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 109 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 110 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 114 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 117 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 119 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 120 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — He Lin' WHERE position = 121 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 123 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — He Lin' WHERE position = 124 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 126 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 128 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 2: Disc 3 (Saga of the West Wind)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 130 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 132 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 134 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 136 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 140 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 141 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 142 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 144 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 146 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 148 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 150 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 152 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 3: Jade Moon Upon a Sea of Clouds — Disc 1 (Glazed Moon Over the Tides)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 153 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Philippe Honore' WHERE position = 154 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 155 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 159 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 160 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Mojia Zhao' WHERE position = 161 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 162 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 167 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 168 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 169 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 170 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 171 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 172 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Mojia Zhao' WHERE position = 173 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 174 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 178 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 182 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Yu-Peng Chen' WHERE position = 186 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 187 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 188 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 191 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 192 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 197 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 198 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 199 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ruan — Beiyi Shen' WHERE position = 200 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sanxian — Beiyi Shen' WHERE position = 201 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 205 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Zhonghu — Jiajun Ma' WHERE position = 206 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 207 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ruan — Beiyi Shen' WHERE position = 208 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 212 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 213 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 214 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 215 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 219 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Yu-Peng Chen' WHERE position = 220 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 224 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 225 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 230 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Yu-Peng Chen' WHERE position = 236 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 237 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 238 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 239 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 240 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 242 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Songjie Zhang' WHERE position = 243 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 244 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 246 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 248 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 249 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 250 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 251 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 254 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 256 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violoncello — Beixing Huang' WHERE position = 257 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 258 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra (sounds like ewso sul pont but i might be trippin)' WHERE position = 262 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 263 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 3: Disc 2 (Shimmering Sea of Clouds and Moonlight)
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 265 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 266 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 267 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 268 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 269 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 271 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 274 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 275 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 276 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 279 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 280 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 281 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 282 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 283 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 284 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 285 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 286 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 287 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 288 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 289 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 291 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 292 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 293 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 294 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 295 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 296 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 297 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 300 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 301 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 302 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 304 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 306 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 307 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 308 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 310 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 314 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 316 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 317 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Mojia Zhao' WHERE position = 318 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 320 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 321 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Mojia Zhao' WHERE position = 322 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 324 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 326 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Yu-Peng Chen' WHERE position = 331 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 334 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 337 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Yu-Peng Chen' WHERE position = 339 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 340 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 342 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Yu-Peng Chen' WHERE position = 343 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 3: Disc 3 (Battles of Liyue)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 346 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 347 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 348 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Mojia Zhao' WHERE position = 349 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 350 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 353 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 354 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 355 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 356 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 358 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 359 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Shasha Lu' WHERE position = 360 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 361 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 4: Vortex of Legends
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 364 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 365 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 366 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 367 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 368 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 370 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 372 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 373 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 375 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 376 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 377 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 378 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 379 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 380 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 381 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 383 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 384 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 385 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 386 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 387 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 389 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra (goated ghibli-core track btw)' WHERE position = 390 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 391 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 392 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 393 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 5: The Shimmering Voyage — Disc 1 (Fairytale of the Isles)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 394 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 395 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 397 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 398 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 399 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 401 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 402 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 404 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 405 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nylon Guitar — Ye Fan' WHERE position = 408 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 409 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Steel Guitar — Siyi Cao' WHERE position = 411 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nylon Guitar — Ye Fan' WHERE position = 412 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 413 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 414 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 415 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nylon Guitar — Ye Fan' WHERE position = 417 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 418 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Yu-Peng Chen' WHERE position = 420 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nylon Guitar — Ye Fan' WHERE position = 421 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 422 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 423 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 5: Disc 2 (Blazing Stars)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 425 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Dimeng Yuan' WHERE position = 426 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Shanghai Zhu Zirong Art Studio' WHERE position = 427 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 428 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 430 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 431 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 432 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nylon Guitar — Ye Fan' WHERE position = 434 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 435 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 437 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 438 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nylon Guitar — Ye Fan' WHERE position = 439 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 440 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 441 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 442 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 444 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 445 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 447 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — Shanghai Symphony Orchestra' WHERE position = 448 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 449 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 451 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 452 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 453 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 454 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Shanghai Zhu Zirong Art Studio' WHERE position = 455 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 456 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 458 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 459 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — Shanghai Symphony Orchestra' WHERE position = 461 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 462 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 464 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 465 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 467 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 468 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 469 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 470 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 472 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Huabing Tu' WHERE position = 473 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Zhonghu — Jiajun Ma' WHERE position = 474 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Mojia Zhao' WHERE position = 475 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 476 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 478 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 479 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — Shanghai Symphony Orchestra' WHERE position = 481 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 482 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 484 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 485 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 5: Disc 3 (Roar of the Formidable)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 487 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 488 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 490 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Yu-Peng Chen' WHERE position = 491 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 492 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 495 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Yu-Peng Chen' WHERE position = 496 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 499 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 500 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Shanghai Zhu Zirong Art Studio' WHERE position = 502 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 503 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 504 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Huabing Tu' WHERE position = 506 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 507 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Jinqiao Ge' WHERE position = 508 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Bass — Li Zhang' WHERE position = 509 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Shanghai Zhu Zirong Art Studio' WHERE position = 510 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 511 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 5: Disc 4 (A Stranger''s Sojourn)
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 513 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 515 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 517 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 519 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 520 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Jinqiao Ge' WHERE position = 522 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 523 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 525 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 526 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 528 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 530 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 531 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 534 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 535 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 537 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 539 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 542 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 545 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 548 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 550 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Steel Guitar — Dimeng Yuan' WHERE position = 551 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 553 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 555 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 558 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 560 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 562 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Sfuture Art Group@Shanghai' WHERE position = 565 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Strings — International Master Philharmonic Orchestra' WHERE position = 566 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 567 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Shanghai Symphony Orchestra' WHERE position = 568 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 569 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 6: Realm of Tranquil Eternity — Disc 1 (Sakura and Violet Thunder)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 572 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 573 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tsugaru-Shamisen — Yutaka Oyama' WHERE position = 574 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 575 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Taiko — Kodo' WHERE position = 576 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Additional Strings — International Master Philharmonic Orchestra' WHERE position = 577 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 579 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 582 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 583 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tsugaru-Shamisen — Yutaka Oyama' WHERE position = 584 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 585 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 587 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 588 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 589 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Additional Strings — International Master Philharmonic Orchestra' WHERE position = 590 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 592 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 594 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 595 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 596 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 597 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 598 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 599 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 600 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 601 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 603 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 604 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 606 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 607 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 609 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 610 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 611 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 613 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 614 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 615 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 617 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 619 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 620 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 621 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 623 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 624 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 625 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 626 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 627 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 628 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 630 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 631 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 633 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 634 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 635 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 636 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 637 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 638 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 639 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 640 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 642 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 643 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 644 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 647 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 648 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 649 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 650 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 651 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 652 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 653 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 654 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 6: Disc 2 (Stories of the Floating World)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 656 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shinobue — Kei Sakamoto' WHERE position = 657 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 658 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Taiko — Kodo' WHERE position = 659 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Tomoko Kanda, Yu-Peng Chen, Kodo' WHERE position = 660 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 661 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 662 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 663 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 664 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 665 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 666 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Taiko — Kodo' WHERE position = 667 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 670 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 671 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 672 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 673 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 675 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 676 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 677 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 680 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 681 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 682 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 684 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 686 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 688 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 690 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 691 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 692 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 694 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 696 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Taiko — Kodo' WHERE position = 697 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 698 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 699 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 700 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 702 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 703 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 704 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 705 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 706 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 707 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 708 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 710 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 711 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 713 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 714 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 715 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 717 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 718 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 6: Disc 3 (Battles of Inazuma)
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 720 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tsugaru-Shamisen — Yutaka Oyama, Sayo Komada' WHERE position = 721 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 722 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Taiko — Kodo' WHERE position = 723 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 724 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 725 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 726 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Taiko — Kodo' WHERE position = 727 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Additional Strings — International Master Philharmonic Orchestra' WHERE position = 728 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piccolo — Chun Liu' WHERE position = 729 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flute — Xiaohua Cheng, Yingxi Liu' WHERE position = 730 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oboe — Xiaogang Yuan, Zhongyi Cong' WHERE position = 731 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: E♭ Clarinet — Qiao Liu' WHERE position = 732 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: B♭ Clarinet — Huijing Yu' WHERE position = 733 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: A Clarinet — Dan Wu' WHERE position = 734 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bass Clarinet — Hanqi Li' WHERE position = 735 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bassoon — Yuping Wang, Shengxian Xie' WHERE position = 736 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Contrabassoon — Yanfang Ke' WHERE position = 737 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 738 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 739 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tsugaru-Shamisen — Yutaka Oyama, Shamio' WHERE position = 740 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 741 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Taiko — Kodo' WHERE position = 742 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Additional Strings — International Master Philharmonic Orchestra' WHERE position = 743 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Tokyo Philharmonic Orchestra' WHERE position = 744 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 745 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tsugaru-Shamisen — Shamio' WHERE position = 746 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 747 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Additional Strings — International Master Philharmonic Orchestra' WHERE position = 748 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piccolo — Chun Liu' WHERE position = 749 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flute — Xiaohua Cheng, Yingxi Liu' WHERE position = 750 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Oboe — Xiaogang Yuan, Zhongyi Cong' WHERE position = 751 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: E♭ Clarinet — Qiao Liu' WHERE position = 752 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: B♭ Clarinet — Dan Wu, Huijing Yu' WHERE position = 753 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bass Clarinet — Hanqi Li' WHERE position = 754 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bassoon — Yuping Wang, Shengxian Xie' WHERE position = 755 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Contrabassoon — Yanfang Ke' WHERE position = 756 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Additional Trumpet — Chenxing Wang, Yubing Wang, Xizheng Cheng' WHERE position = 757 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 7: Islands of the Lost and Forgotten — Disc 1 (Isles of Serenity and Amnesia)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 758 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 759 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 760 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 761 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 762 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 763 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 764 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 765 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 766 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 767 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 768 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 769 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 770 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 771 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 772 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 773 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 774 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 775 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 776 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 777 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 778 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 779 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 780 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 781 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 782 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 783 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 784 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 785 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 786 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 787 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 788 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 789 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 790 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 791 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 792 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 793 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 794 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 795 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 796 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 797 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shamisen — Junnosuke Uehara' WHERE position = 798 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 799 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 800 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 801 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 802 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 803 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 804 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 805 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 806 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 807 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 808 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 809 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 810 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 811 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 812 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 813 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 814 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — He Lin' WHERE position = 815 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 816 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 7: Disc 2 (Beneath the Abyssal Depth)
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 817 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Yu-Peng Chen (Steinway & Sons Steinway D-274)' WHERE position = 818 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 819 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Dragon Orchestra' WHERE position = 821 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 822 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 825 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Violin — Yue Zhu' WHERE position = 827 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Violin — Chang Luo' WHERE position = 828 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 829 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 830 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Violin — Yue Zhu' WHERE position = 832 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Violin — Chang Luo' WHERE position = 833 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 834 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 835 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 837 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 839 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 840 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Violin — Yue Zhu' WHERE position = 845 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Violin — Chang Luo' WHERE position = 846 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 847 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 848 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Violin — Yue Zhu' WHERE position = 850 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Violin — Chang Luo' WHERE position = 851 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 852 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 853 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 855 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 857 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Chang Luo' WHERE position = 858 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 860 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — He Lin' WHERE position = 862 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Violin — Yue Zhu' WHERE position = 863 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Violin — Chang Luo' WHERE position = 864 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 865 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 866 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — He Lin' WHERE position = 867 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Violin — Yue Zhu' WHERE position = 868 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Violin — Chang Luo' WHERE position = 869 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 870 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 871 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — He Lin' WHERE position = 872 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 873 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 874 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — He Lin' WHERE position = 877 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 878 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 879 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Album 7: Disc 3 (Battles of Inazuma 2)
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 882 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Choir — Lin Tang, Huiying Su, Liying Yang, Xinxin Du, ...' WHERE position = 883 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Choir — Shanghai Philharmonic Society & Choir' WHERE position = 884 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 885 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 887 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Soprano — Yi Li' WHERE position = 888 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Choir — Lin Tang, Huiying Su, Liying Yang, Xinxin Du, ...' WHERE position = 889 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Choir — Shanghai Philharmonic Society & Choir' WHERE position = 890 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yingxuan Wei' WHERE position = 891 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 892 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tsugaru-Shamisen — Shamio, Yutaka Oyama' WHERE position = 894 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 895 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 896 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 897 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 898 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 902 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Mamino Yorita' WHERE position = 903 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Kasumi Watanabe' WHERE position = 904 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Xin Zhao' WHERE position = 905 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yu-Peng Chen' WHERE position = 906 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — He Lin' WHERE position = 909 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Violin — Yue Zhu' WHERE position = 910 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Violin — Chang Luo' WHERE position = 911 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 912 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 913 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Double Bass — Bingyang Yang' WHERE position = 914 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 1st Violin — Yue Zhu' WHERE position = 915 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 2nd Violin — Chang Luo' WHERE position = 916 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 917 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 918 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Double Bass — Bingyang Yang' WHERE position = 919 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Philharmonic Orchestra' WHERE position = 920 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 921 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
