-- Source: reference/HOYO-MiX Sound Sources - Genshin Impact.csv (rows 5481-6583)
-- Part 4 of 4: usages only (games row created by part 1, file 0032).
-- Albums covered (4):
--   1. Radiance Aflame (Discs 1, 2, 3)
--   2. The Shimmering Voyage Vol. 5 (Discs 1, 2, 3)
--   3. Outside It Is Growing Dark (Discs 1, 2, 3)
--   4. Unreleased Soundtrack
-- Live Recording rows: product_id NULL, raw_source populated via UPDATE at end of file.
-- Recording Studio multi-line annotation blocks are dropped.
-- Annotation-only rows (only col E populated, no product) are dropped.
-- Track header rows themselves are dropped.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Splice Sounds'),
  ('EastWest'),
  ('Spectrasonics'),
  ('Synapse Audio'),
  ('Best Service'),
  ('Heavyocity'),
  ('Native Instruments');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Splice Sounds'      COLLATE NOCASE), 'Sounds of KSHMR Vol. 3',     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Symphonic Orchestra',         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Trilian',                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Synapse Audio'      COLLATE NOCASE), 'DUNE 2',                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'ERA II Medieval Legends',     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'         COLLATE NOCASE), 'Damage 2',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'Massive',                     'Synth');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Album: Radiance Aflame
  -- =========================================================================
  -- Disc 1: Where the Sacred Mountain Shelters the Fields
  -- 1. Bounty of the Fertile Slopes
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '1. Bounty of the Fertile Slopes', 'main', 'hoyo_mix', 1),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '1. Bounty of the Fertile Slopes', 'main', 'hoyo_mix', 2),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '1. Bounty of the Fertile Slopes', 'main', 'hoyo_mix', 3),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '1. Bounty of the Fertile Slopes', 'main', 'hoyo_mix', 4),
  -- 2. The Brisk Morning Air
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '2. The Brisk Morning Air', 'main', 'hoyo_mix', 5),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '2. The Brisk Morning Air', 'main', 'hoyo_mix', 6),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '2. The Brisk Morning Air', 'main', 'hoyo_mix', 7),
  -- 3. Strength in Motion
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '3. Strength in Motion', 'main', 'hoyo_mix', 8),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '3. Strength in Motion', 'main', 'hoyo_mix', 9),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '3. Strength in Motion', 'main', 'hoyo_mix', 10),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '3. Strength in Motion', 'main', 'hoyo_mix', 11),
  -- 4. Evening's Ease
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '4. Evening''s Ease', 'main', 'hoyo_mix', 12),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '4. Evening''s Ease', 'main', 'hoyo_mix', 13),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '4. Evening''s Ease', 'main', 'hoyo_mix', 14),
  -- 5. Soil of Bright Flame
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. Soil of Bright Flame', 'main', 'hoyo_mix', 15),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. Soil of Bright Flame', 'main', 'hoyo_mix', 16),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. Soil of Bright Flame', 'main', 'hoyo_mix', 17),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. Soil of Bright Flame', 'main', 'hoyo_mix', 18),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. Soil of Bright Flame', 'main', 'hoyo_mix', 19),
  -- 6. Meandering Fruit Fragrance
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '6. Meandering Fruit Fragrance', 'main', 'hoyo_mix', 20),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '6. Meandering Fruit Fragrance', 'main', 'hoyo_mix', 21),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '6. Meandering Fruit Fragrance', 'main', 'hoyo_mix', 22),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '6. Meandering Fruit Fragrance', 'main', 'hoyo_mix', 23),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '6. Meandering Fruit Fragrance', 'main', 'hoyo_mix', 24),
  -- 7. Sleep After the Toil
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '7. Sleep After the Toil', 'main', 'hoyo_mix', 25),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '7. Sleep After the Toil', 'main', 'hoyo_mix', 26),
  -- 8. A Flicker in the Quiet
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '8. A Flicker in the Quiet', 'main', 'hoyo_mix', 27),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '8. A Flicker in the Quiet', 'main', 'hoyo_mix', 28),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Tambourine_Transitions', 'KSHMR_Tambourine_Transition_07', 'Album: Radiance Aflame', '8. A Flicker in the Quiet', 'main', 'hoyo_mix', 29),
  -- 11. Walk With the Blazing Fire
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '11. Walk With the Blazing Fire', 'main', 'hoyo_mix', 30),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '11. Walk With the Blazing Fire', 'main', 'hoyo_mix', 31),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '11. Walk With the Blazing Fire', 'main', 'hoyo_mix', 32),
  -- 12. Land of Primal Flame
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '12. Land of Primal Flame', 'main', 'hoyo_mix', 33),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '12. Land of Primal Flame', 'main', 'hoyo_mix', 34),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '12. Land of Primal Flame', 'main', 'hoyo_mix', 35),
  -- 13. A Deed No Less Than Star-Forging
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '13. A Deed No Less Than Star-Forging', 'main', 'hoyo_mix', 36),
  -- 14. Sea of Shifting Sentience
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '14. Sea of Shifting Sentience', 'main', 'hoyo_mix', 37),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '14. Sea of Shifting Sentience', 'main', 'hoyo_mix', 38),
  -- 15. The Dream That Was Tollan
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '15. The Dream That Was Tollan', 'main', 'hoyo_mix', 39),
  -- 16. Of That Colossal Wreck
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '16. Of That Colossal Wreck', 'main', 'hoyo_mix', 40),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '16. Of That Colossal Wreck', 'main', 'hoyo_mix', 41),
  -- 17. Ri Yokobal kech ri Ajaw Ch'ulel
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '17. Ri Yokobal kech ri Ajaw Ch''ulel', 'main', 'hoyo_mix', 42),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '17. Ri Yokobal kech ri Ajaw Ch''ulel', 'main', 'hoyo_mix', 43),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '17. Ri Yokobal kech ri Ajaw Ch''ulel', 'main', 'hoyo_mix', 44),
  -- 18. The Path Towards Tota'ch'imil
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '18. The Path Towards Tota''ch''imil', 'main', 'hoyo_mix', 45),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '18. The Path Towards Tota''ch''imil', 'main', 'hoyo_mix', 46),
  -- 19. Kukulkan's Deceit
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '19. Kukulkan''s Deceit', 'main', 'hoyo_mix', 47),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '19. Kukulkan''s Deceit', 'main', 'hoyo_mix', 48),
  -- 20. Where the Dragon Casts Its Will
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '20. Where the Dragon Casts Its Will', 'main', 'hoyo_mix', 49),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '20. Where the Dragon Casts Its Will', 'main', 'hoyo_mix', 50),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '20. Where the Dragon Casts Its Will', 'main', 'hoyo_mix', 51),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '20. Where the Dragon Casts Its Will', 'main', 'hoyo_mix', 52),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '20. Where the Dragon Casts Its Will', 'main', 'hoyo_mix', 53),
  -- 21. Radiance Unfading
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '21. Radiance Unfading', 'main', 'hoyo_mix', 54),
  -- 24. Spring Returns in Splendor
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '24. Spring Returns in Splendor', 'main', 'hoyo_mix', 55),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '24. Spring Returns in Splendor', 'main', 'hoyo_mix', 56),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '24. Spring Returns in Splendor', 'main', 'hoyo_mix', 57),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '24. Spring Returns in Splendor', 'main', 'hoyo_mix', 58),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '24. Spring Returns in Splendor', 'main', 'hoyo_mix', 59),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '24. Spring Returns in Splendor', 'main', 'hoyo_mix', 60),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '24. Spring Returns in Splendor', 'main', 'hoyo_mix', 61),
  -- 25. The World at Bay Beyond the Pillow
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '25. The World at Bay Beyond the Pillow', 'main', 'hoyo_mix', 62),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '25. The World at Bay Beyond the Pillow', 'main', 'hoyo_mix', 63),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '25. The World at Bay Beyond the Pillow', 'main', 'hoyo_mix', 64),
  -- 26. Misty Redolence
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '26. Misty Redolence', 'main', 'hoyo_mix', 65),
  -- 28. Drifting Into Dream
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '28. Drifting Into Dream', 'main', 'hoyo_mix', 66),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '28. Drifting Into Dream', 'main', 'hoyo_mix', 67),
  -- 29. A Fox's Little Daydream
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '29. A Fox''s Little Daydream', 'main', 'hoyo_mix', 68),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '29. A Fox''s Little Daydream', 'main', 'hoyo_mix', 69),
  -- 30. The Mushroom Creeps In
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '30. The Mushroom Creeps In', 'main', 'hoyo_mix', 70),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '30. The Mushroom Creeps In', 'main', 'hoyo_mix', 71),
  -- Disc 2: In Noiseless Dreams Hundreds of Battle-Flags
  -- 1. Duel Between the Springs and the Echoes
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '1. Duel Between the Springs and the Echoes', 'main', 'hoyo_mix', 72),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '1. Duel Between the Springs and the Echoes', 'main', 'hoyo_mix', 73),
  -- 2. Not All Blades Point the Same Way
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '2. Not All Blades Point the Same Way', 'main', 'hoyo_mix', 74),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '2. Not All Blades Point the Same Way', 'main', 'hoyo_mix', 75),
  -- 4. Those That Stand With the Flame
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '4. Those That Stand With the Flame', 'main', 'hoyo_mix', 76),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '4. Those That Stand With the Flame', 'main', 'hoyo_mix', 77),
  -- 5. And We Burn as One
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. And We Burn as One', 'main', 'hoyo_mix', 78),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. And We Burn as One', 'main', 'hoyo_mix', 79),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. And We Burn as One', 'main', 'hoyo_mix', 80),
  -- 6. Blaze to Break the Dawn
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '6. Blaze to Break the Dawn', 'main', 'hoyo_mix', 81),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '6. Blaze to Break the Dawn', 'main', 'hoyo_mix', 82),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '6. Blaze to Break the Dawn', 'main', 'hoyo_mix', 83),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '6. Blaze to Break the Dawn', 'main', 'hoyo_mix', 84),
  -- 7. Here Cometh the Flamelord
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '7. Here Cometh the Flamelord', 'main', 'hoyo_mix', 85),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '7. Here Cometh the Flamelord', 'main', 'hoyo_mix', 86),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '7. Here Cometh the Flamelord', 'main', 'hoyo_mix', 87),
  -- 8. Till a Thousand Suns Arose
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '8. Till a Thousand Suns Arose', 'main', 'hoyo_mix', 88),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '8. Till a Thousand Suns Arose', 'main', 'hoyo_mix', 89),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '8. Till a Thousand Suns Arose', 'main', 'hoyo_mix', 90),
  -- 9. The Return Through the Fire
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '9. The Return Through the Fire', 'main', 'hoyo_mix', 91),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '9. The Return Through the Fire', 'main', 'hoyo_mix', 92),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '9. The Return Through the Fire', 'main', 'hoyo_mix', 93),
  -- 10. To the End, They Remain
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '10. To the End, They Remain', 'main', 'hoyo_mix', 94),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '10. To the End, They Remain', 'main', 'hoyo_mix', 95),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '10. To the End, They Remain', 'main', 'hoyo_mix', 96),
  -- 11. Pro Vitis Horum
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '11. Pro Vitis Horum', 'main', 'hoyo_mix', 97),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '11. Pro Vitis Horum', 'main', 'hoyo_mix', 98),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '11. Pro Vitis Horum', 'main', 'hoyo_mix', 99),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '11. Pro Vitis Horum', 'main', 'hoyo_mix', 100),
  -- 12. Vigil for Reunion
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '12. Vigil for Reunion', 'main', 'hoyo_mix', 101),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '12. Vigil for Reunion', 'main', 'hoyo_mix', 102),
  -- 13. Circle of the Journey
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '13. Circle of the Journey', 'main', 'hoyo_mix', 103),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '13. Circle of the Journey', 'main', 'hoyo_mix', 104),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '13. Circle of the Journey', 'main', 'hoyo_mix', 105),
  -- 14. Of Truth Etched in Name
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '14. Of Truth Etched in Name', 'main', 'hoyo_mix', 106),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '14. Of Truth Etched in Name', 'main', 'hoyo_mix', 107),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '14. Of Truth Etched in Name', 'main', 'hoyo_mix', 108),
  -- 15. Sprouting of a Gentle Wish
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '15. Sprouting of a Gentle Wish', 'main', 'hoyo_mix', 109),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '15. Sprouting of a Gentle Wish', 'main', 'hoyo_mix', 110),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '15. Sprouting of a Gentle Wish', 'main', 'hoyo_mix', 111),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '15. Sprouting of a Gentle Wish', 'main', 'hoyo_mix', 112),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '15. Sprouting of a Gentle Wish', 'main', 'hoyo_mix', 113),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '15. Sprouting of a Gentle Wish', 'main', 'hoyo_mix', 114),
  -- 16. Beneath My Wings
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '16. Beneath My Wings', 'main', 'hoyo_mix', 115),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '16. Beneath My Wings', 'main', 'hoyo_mix', 116),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '16. Beneath My Wings', 'main', 'hoyo_mix', 117),
  -- 17. The Flame Ever Ablaze
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '17. The Flame Ever Ablaze', 'main', 'hoyo_mix', 118),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '17. The Flame Ever Ablaze', 'main', 'hoyo_mix', 119),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '17. The Flame Ever Ablaze', 'main', 'hoyo_mix', 120),
  -- 18. Woven in the Smoke of Memory
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '18. Woven in the Smoke of Memory', 'main', 'hoyo_mix', 121),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '18. Woven in the Smoke of Memory', 'main', 'hoyo_mix', 122),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '18. Woven in the Smoke of Memory', 'main', 'hoyo_mix', 123),
  -- 19. A Favor of the Great Shaman
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '19. A Favor of the Great Shaman', 'main', 'hoyo_mix', 124),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '19. A Favor of the Great Shaman', 'main', 'hoyo_mix', 125),
  -- 20. Nibbling on Nightmares
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '20. Nibbling on Nightmares', 'main', 'hoyo_mix', 126),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '20. Nibbling on Nightmares', 'main', 'hoyo_mix', 127),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '20. Nibbling on Nightmares', 'main', 'hoyo_mix', 128),
  -- 21. When Slumber Lifts
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '21. When Slumber Lifts', 'main', 'hoyo_mix', 129),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '21. When Slumber Lifts', 'main', 'hoyo_mix', 130),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '21. When Slumber Lifts', 'main', 'hoyo_mix', 131),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '21. When Slumber Lifts', 'main', 'hoyo_mix', 132),
  -- 22. Eat or Be Eaten
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '22. Eat or Be Eaten', 'main', 'hoyo_mix', 133),
  -- 23. Here Lies the Realm of Dragons
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '23. Here Lies the Realm of Dragons', 'main', 'hoyo_mix', 134),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '23. Here Lies the Realm of Dragons', 'main', 'hoyo_mix', 135),
  -- Disc 3: To Strive and Not Yield
  -- 1. The Fire That Memory Keeps
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '1. The Fire That Memory Keeps', 'main', 'hoyo_mix', 136),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '1. The Fire That Memory Keeps', 'main', 'hoyo_mix', 137),
  -- 2. Path Lit by Night
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '2. Path Lit by Night', 'main', 'hoyo_mix', 138),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '2. Path Lit by Night', 'main', 'hoyo_mix', 139),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '2. Path Lit by Night', 'main', 'hoyo_mix', 140),
  -- 3. Vitas Corrodens Pestis
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '3. Vitas Corrodens Pestis', 'main', 'hoyo_mix', 141),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '3. Vitas Corrodens Pestis', 'main', 'hoyo_mix', 142),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '3. Vitas Corrodens Pestis', 'main', 'hoyo_mix', 143),
  -- 4. Ode of Resurrection: Recapitulation
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '4. Ode of Resurrection: Recapitulation', 'main', 'hoyo_mix', 144),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '4. Ode of Resurrection: Recapitulation', 'main', 'hoyo_mix', 145),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '4. Ode of Resurrection: Recapitulation', 'main', 'hoyo_mix', 146),
  -- 5. The Chosen of Dragons' Trials
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. The Chosen of Dragons'' Trials', 'main', 'hoyo_mix', 147),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. The Chosen of Dragons'' Trials', 'main', 'hoyo_mix', 148),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Radiance Aflame', '5. The Chosen of Dragons'' Trials', 'main', 'hoyo_mix', 149),

  -- =========================================================================
  -- Album: The Shimmering Voyage Vol. 5
  -- =========================================================================
  -- Disc 1: Joy Upon the endless Summer Draft
  -- 1. Indulgence Beneath the Sun
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '1. Indulgence Beneath the Sun', 'main', 'hoyo_mix', 150),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '1. Indulgence Beneath the Sun', 'main', 'hoyo_mix', 151),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '1. Indulgence Beneath the Sun', 'main', 'hoyo_mix', 152),
  -- 2. Idle Days of Ease
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '2. Idle Days of Ease', 'main', 'hoyo_mix', 153),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '2. Idle Days of Ease', 'main', 'hoyo_mix', 154),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '2. Idle Days of Ease', 'main', 'hoyo_mix', 155),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '2. Idle Days of Ease', 'main', 'hoyo_mix', 156),
  -- 3. When the Mead First Ferments
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '3. When the Mead First Ferments', 'main', 'hoyo_mix', 157),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '3. When the Mead First Ferments', 'main', 'hoyo_mix', 158),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '3. When the Mead First Ferments', 'main', 'hoyo_mix', 159),
  -- 4. A Ramble Through the Market Lanes
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '4. A Ramble Through the Market Lanes', 'main', 'hoyo_mix', 160),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '4. A Ramble Through the Market Lanes', 'main', 'hoyo_mix', 161),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '4. A Ramble Through the Market Lanes', 'main', 'hoyo_mix', 162),
  -- 5. Drifting Like Clusters of Cloud
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '5. Drifting Like Clusters of Cloud', 'main', 'hoyo_mix', 163),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '5. Drifting Like Clusters of Cloud', 'main', 'hoyo_mix', 164),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '5. Drifting Like Clusters of Cloud', 'main', 'hoyo_mix', 165),
  -- 7. Warmth Upon the Hills
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '7. Warmth Upon the Hills', 'main', 'hoyo_mix', 166),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '7. Warmth Upon the Hills', 'main', 'hoyo_mix', 167),
  -- 8. Tapestry of Resplendent Hues
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '8. Tapestry of Resplendent Hues', 'main', 'hoyo_mix', 168),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '8. Tapestry of Resplendent Hues', 'main', 'hoyo_mix', 169),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '8. Tapestry of Resplendent Hues', 'main', 'hoyo_mix', 170),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> CymGong', '22 Cymbal', 'Album: The Shimmering Voyage Vol. 5', '8. Tapestry of Resplendent Hues', 'main', 'hoyo_mix', 171),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> Metals', 'Glock', 'Album: The Shimmering Voyage Vol. 5', '8. Tapestry of Resplendent Hues', 'main', 'hoyo_mix', 172),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> Metals', 'Various Metals', 'Album: The Shimmering Voyage Vol. 5', '8. Tapestry of Resplendent Hues', 'main', 'hoyo_mix', 173),
  -- 10. The Wild Soft Summer Darkness
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '10. The Wild Soft Summer Darkness', 'main', 'hoyo_mix', 174),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '10. The Wild Soft Summer Darkness', 'main', 'hoyo_mix', 175),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '10. The Wild Soft Summer Darkness', 'main', 'hoyo_mix', 176),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '10. The Wild Soft Summer Darkness', 'main', 'hoyo_mix', 177),
  -- 11. Splendors of High Summer
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '11. Splendors of High Summer', 'main', 'hoyo_mix', 178),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '11. Splendors of High Summer', 'main', 'hoyo_mix', 179),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '11. Splendors of High Summer', 'main', 'hoyo_mix', 180),
  -- 13. The Traveling Boats Gentle Rocking
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '13. The Traveling Boats Gentle Rocking', 'main', 'hoyo_mix', 181),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '13. The Traveling Boats Gentle Rocking', 'main', 'hoyo_mix', 182),
  -- 14. Shells at the Hem of the Sea
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '14. Shells at the Hem of the Sea', 'main', 'hoyo_mix', 183),
  -- 15. Waves Curl Over Drifting Sand
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '15. Waves Curl Over Drifting Sand', 'main', 'hoyo_mix', 184),
  -- 16. Bathing in Shifting Waves
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. Bathing in Shifting Waves', 'main', 'hoyo_mix', 185),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. Bathing in Shifting Waves', 'main', 'hoyo_mix', 186),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. Bathing in Shifting Waves', 'main', 'hoyo_mix', 187),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. Bathing in Shifting Waves', 'main', 'hoyo_mix', 188),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. Bathing in Shifting Waves', 'main', 'hoyo_mix', 189),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. Bathing in Shifting Waves', 'main', 'hoyo_mix', 190),
  -- 17. The Watch of a Sleepless Sheep
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '17. The Watch of a Sleepless Sheep', 'main', 'hoyo_mix', 191),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '17. The Watch of a Sleepless Sheep', 'main', 'hoyo_mix', 192),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '17. The Watch of a Sleepless Sheep', 'main', 'hoyo_mix', 193),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', NULL, 'Album: The Shimmering Voyage Vol. 5', '17. The Watch of a Sleepless Sheep', 'main', 'hoyo_mix', 194),
  -- 18. Duel at High Noon
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '18. Duel at High Noon', 'main', 'hoyo_mix', 195),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '18. Duel at High Noon', 'main', 'hoyo_mix', 196),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', NULL, 'Album: The Shimmering Voyage Vol. 5', '18. Duel at High Noon', 'main', 'hoyo_mix', 197),
  -- 19. Wind-Blown Ravines
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '19. Wind‑Blown Ravines', 'main', 'hoyo_mix', 198),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '19. Wind‑Blown Ravines', 'main', 'hoyo_mix', 199),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '19. Wind‑Blown Ravines', 'main', 'hoyo_mix', 200),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '19. Wind‑Blown Ravines', 'main', 'hoyo_mix', 201),
  -- 20. The Pleasant Tipsiness After the Feast
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '20. The Pleasant Tipsiness After the Feast', 'main', 'hoyo_mix', 202),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '20. The Pleasant Tipsiness After the Feast', 'main', 'hoyo_mix', 203),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '20. The Pleasant Tipsiness After the Feast', 'main', 'hoyo_mix', 204),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '20. The Pleasant Tipsiness After the Feast', 'main', 'hoyo_mix', 205),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', NULL, 'Album: The Shimmering Voyage Vol. 5', '20. The Pleasant Tipsiness After the Feast', 'main', 'hoyo_mix', 206),
  -- 21. Sunlit Expanse
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '21. Sunlit Expanse', 'main', 'hoyo_mix', 207),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '21. Sunlit Expanse', 'main', 'hoyo_mix', 208),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '21. Sunlit Expanse', 'main', 'hoyo_mix', 209),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '21. Sunlit Expanse', 'main', 'hoyo_mix', 210),
  -- 22. Harbor-Bound Warm Breeze
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '22. Harbor-Bound Warm Breeze', 'main', 'hoyo_mix', 211),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '22. Harbor-Bound Warm Breeze', 'main', 'hoyo_mix', 212),
  -- 23. Feelings Nested in a Seashell
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '23. Feelings Nested in a Seashell', 'main', 'hoyo_mix', 213),
  -- 24. Memories Imprinted in Soft Sand
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '24. Memories Imprinted in Soft Sand', 'main', 'hoyo_mix', 214),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '24. Memories Imprinted in Soft Sand', 'main', 'hoyo_mix', 215),
  -- 25. The Tides Leisurely Tune
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '25. The Tides Leisurely Tune', 'main', 'hoyo_mix', 216),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '25. The Tides Leisurely Tune', 'main', 'hoyo_mix', 217),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '25. The Tides Leisurely Tune', 'main', 'hoyo_mix', 218),
  -- 31. Snug Bundle of Warmth
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '31. Snug Bundle of Warmth', 'main', 'hoyo_mix', 219),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '31. Snug Bundle of Warmth', 'main', 'hoyo_mix', 220),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '31. Snug Bundle of Warmth', 'main', 'hoyo_mix', 221),
  -- 32. Dream Reels Behind the Canvas
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '32. Dream Reels Behind the Canvas', 'main', 'hoyo_mix', 222),
  -- 34. The Homeland Held in Song
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '34. The Homeland Held in Song', 'main', 'hoyo_mix', 223),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '34. The Homeland Held in Song', 'main', 'hoyo_mix', 224),
  -- 35. Alone at the Rifts Edge
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Synapse Audio' COLLATE NOCASE AND p.name = 'DUNE 2' COLLATE NOCASE),
   'Arp', 'Chill Moments RH', 'Album: The Shimmering Voyage Vol. 5', '35. Alone at the Rifts Edge', 'main', 'hoyo_mix', 225),
  -- 36. The Wanderers Trace
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Synapse Audio' COLLATE NOCASE AND p.name = 'DUNE 2' COLLATE NOCASE),
   'Arp', 'Chill Moments RH', 'Album: The Shimmering Voyage Vol. 5', '36. The Wanderers Trace', 'main', 'hoyo_mix', 226),
  -- 37. Crossing the Liminal Threshold
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Synapse Audio' COLLATE NOCASE AND p.name = 'DUNE 2' COLLATE NOCASE),
   'Arp', 'Aquatix EDT', 'Album: The Shimmering Voyage Vol. 5', '37. Crossing the Liminal Threshold', 'main', 'hoyo_mix', 227),
  -- Disc 2: Fate Drawn Asunder
  -- 1. Caught on the Hunters Hook
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '1. Caught on the Hunters Hook', 'main', 'hoyo_mix', 228),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '1. Caught on the Hunters Hook', 'main', 'hoyo_mix', 229),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '1. Caught on the Hunters Hook', 'main', 'hoyo_mix', 230),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '1. Caught on the Hunters Hook', 'main', 'hoyo_mix', 231),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '1. Caught on the Hunters Hook', 'main', 'hoyo_mix', 232),
  -- 2. Fontaine est une fete
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '2. Fontaine est une fete', 'main', 'hoyo_mix', 233),
  -- 3. Beyond the Royal Fork
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '3. Beyond the Royal Fork', 'main', 'hoyo_mix', 234),
  -- 4. Reversed Paths to Yesod
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '4. Reversed Paths to Yesod', 'main', 'hoyo_mix', 235),
  -- 5. A Wound Unheeded in Quiet
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '5. A Wound Unheeded in Quiet', 'main', 'hoyo_mix', 236),
  -- 6. End of the Beginning
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '6. End of the Beginning', 'main', 'hoyo_mix', 237),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '6. End of the Beginning', 'main', 'hoyo_mix', 238),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '6. End of the Beginning', 'main', 'hoyo_mix', 239),
  -- 7. The Unbearable Weight of Being
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '7. The Unbearable Weight of Being', 'main', 'hoyo_mix', 240),
  -- 8. The Ancient Doom Descends
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '8. The Ancient Doom Descends', 'main', 'hoyo_mix', 241),
  -- 9. Nothing Gold Can Stay
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '9. Nothing Gold Can Stay', 'main', 'hoyo_mix', 242),
  -- 10. The Sparkle in Your Smile
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '10. The Sparkle in Your Smile', 'main', 'hoyo_mix', 243),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '10. The Sparkle in Your Smile', 'main', 'hoyo_mix', 244),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '10. The Sparkle in Your Smile', 'main', 'hoyo_mix', 245),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '10. The Sparkle in Your Smile', 'main', 'hoyo_mix', 246),
  -- 11. A Promise to the Heart
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '11. A Promise to the Heart', 'main', 'hoyo_mix', 247),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '11. A Promise to the Heart', 'main', 'hoyo_mix', 248),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '11. A Promise to the Heart', 'main', 'hoyo_mix', 249),
  -- 12. Kathisma Chrysopoleos
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '12. Kathisma Chrysopoleos', 'main', 'hoyo_mix', 250),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '12. Kathisma Chrysopoleos', 'main', 'hoyo_mix', 251),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '12. Kathisma Chrysopoleos', 'main', 'hoyo_mix', 252),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '12. Kathisma Chrysopoleos', 'main', 'hoyo_mix', 253),
  -- 13. Fortune at the Tea Table
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '13. Fortune at the Tea Table', 'main', 'hoyo_mix', 254),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '13. Fortune at the Tea Table', 'main', 'hoyo_mix', 255),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '13. Fortune at the Tea Table', 'main', 'hoyo_mix', 256),
  -- 14. Infallibilitas Deitates
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '14. Infallibilitas Deitates', 'main', 'hoyo_mix', 257),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '14. Infallibilitas Deitates', 'main', 'hoyo_mix', 258),
  -- 15. Flectere Si Nequeo Superos
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '15. Flectere Si Nequeo Superos', 'main', 'hoyo_mix', 259),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '15. Flectere Si Nequeo Superos', 'main', 'hoyo_mix', 260),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '15. Flectere Si Nequeo Superos', 'main', 'hoyo_mix', 261),
  -- 16. When Night Deepens, the Moon Falls
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. When Night Deepens, the Moon Falls', 'main', 'hoyo_mix', 262),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. When Night Deepens, the Moon Falls', 'main', 'hoyo_mix', 263),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. When Night Deepens, the Moon Falls', 'main', 'hoyo_mix', 264),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. When Night Deepens, the Moon Falls', 'main', 'hoyo_mix', 265),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '16. When Night Deepens, the Moon Falls', 'main', 'hoyo_mix', 266),
  -- Disc 3: Luck That Leaps Through the Doom
  -- 1. Ensnared Upon the Chessboard
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '1. Ensnared Upon the Chessboard', 'main', 'hoyo_mix', 267),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '1. Ensnared Upon the Chessboard', 'main', 'hoyo_mix', 268),
  -- 2. Order in Chaos
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '2. Order in Chaos', 'main', 'hoyo_mix', 269),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '2. Order in Chaos', 'main', 'hoyo_mix', 270),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '2. Order in Chaos', 'main', 'hoyo_mix', 271),
  -- 3. In Mating Nets
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '3. In Mating Nets', 'main', 'hoyo_mix', 272),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '3. In Mating Nets', 'main', 'hoyo_mix', 273),
  -- 4. Shuttling Through the Abyssal Rift
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Synapse Audio' COLLATE NOCASE AND p.name = 'DUNE 2' COLLATE NOCASE),
   NULL, NULL, 'Album: The Shimmering Voyage Vol. 5 | DUNE 2 / 3, To be found', '4. Shuttling Through the Abyssal Rift', 'main', 'hoyo_mix', 274),
  -- 5. Prayer in a Land of War
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '5. Prayer in a Land of War', 'main', 'hoyo_mix', 275),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '5. Prayer in a Land of War', 'main', 'hoyo_mix', 276),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '5. Prayer in a Land of War', 'main', 'hoyo_mix', 277),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol. 5', '5. Prayer in a Land of War', 'main', 'hoyo_mix', 278),

  -- =========================================================================
  -- Album: Outside It Is Growing Dark
  -- =========================================================================
  -- Disc 1: Peace Dropping from The Veils of The Moonlight
  -- 1. Nod-Krai
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. Nod-Krai', 'main', 'hoyo_mix', 279),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. Nod-Krai', 'main', 'hoyo_mix', 280),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. Nod-Krai', 'main', 'hoyo_mix', 281),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. Nod-Krai', 'main', 'hoyo_mix', 282),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. Nod-Krai', 'main', 'hoyo_mix', 283),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. Nod-Krai', 'main', 'hoyo_mix', 284),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. Nod-Krai', 'main', 'hoyo_mix', 285),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. Nod-Krai', 'main', 'hoyo_mix', 286),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. Nod-Krai', 'main', 'hoyo_mix', 287),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. Nod-Krai', 'main', 'hoyo_mix', 288),
  -- 2. The Bustling Port Market
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. The Bustling Port Market', 'main', 'hoyo_mix', 289),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. The Bustling Port Market', 'main', 'hoyo_mix', 290),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. The Bustling Port Market', 'main', 'hoyo_mix', 291),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. The Bustling Port Market', 'main', 'hoyo_mix', 292),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. The Bustling Port Market', 'main', 'hoyo_mix', 293),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. The Bustling Port Market', 'main', 'hoyo_mix', 294),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. The Bustling Port Market', 'main', 'hoyo_mix', 295),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. The Bustling Port Market', 'main', 'hoyo_mix', 296),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. The Bustling Port Market', 'main', 'hoyo_mix', 297),
  -- 3. Tourdion of Silver Seagulls
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. Tourdion of Silver Seagulls', 'main', 'hoyo_mix', 298),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. Tourdion of Silver Seagulls', 'main', 'hoyo_mix', 299),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. Tourdion of Silver Seagulls', 'main', 'hoyo_mix', 300),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. Tourdion of Silver Seagulls', 'main', 'hoyo_mix', 301),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. Tourdion of Silver Seagulls', 'main', 'hoyo_mix', 302),
  -- 4. Sea Shanties Resounding
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Sea Shanties Resounding', 'main', 'hoyo_mix', 303),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Sea Shanties Resounding', 'main', 'hoyo_mix', 600),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Sea Shanties Resounding', 'main', 'hoyo_mix', 304),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Sea Shanties Resounding', 'main', 'hoyo_mix', 305),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Sea Shanties Resounding', 'main', 'hoyo_mix', 306),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Bowed -> Hurdy Gurdy', 'Hurdy Gurdy Chanters', 'Album: Outside It Is Growing Dark', '4. Sea Shanties Resounding', 'main', 'hoyo_mix', 307),
  -- 5. Desire's Intent
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Desire''s Intent', 'main', 'hoyo_mix', 308),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Desire''s Intent', 'main', 'hoyo_mix', 309),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Desire''s Intent', 'main', 'hoyo_mix', 310),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Desire''s Intent', 'main', 'hoyo_mix', 311),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Desire''s Intent', 'main', 'hoyo_mix', 312),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Desire''s Intent', 'main', 'hoyo_mix', 313),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Bowed -> Hurdy Gurdy', 'Hurdy Gurdy Chanters', 'Album: Outside It Is Growing Dark', '5. Desire''s Intent', 'main', 'hoyo_mix', 314),
  -- 6. Terms of Accord
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Terms of Accord', 'main', 'hoyo_mix', 315),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Terms of Accord', 'main', 'hoyo_mix', 316),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Terms of Accord', 'main', 'hoyo_mix', 317),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Terms of Accord', 'main', 'hoyo_mix', 318),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Terms of Accord', 'main', 'hoyo_mix', 319),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Terms of Accord', 'main', 'hoyo_mix', 320),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Terms of Accord', 'main', 'hoyo_mix', 321),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Terms of Accord', 'main', 'hoyo_mix', 322),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Terms of Accord', 'main', 'hoyo_mix', 323),
  -- 7. Homecoming to Port
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Homecoming to Port', 'main', 'hoyo_mix', 324),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Homecoming to Port', 'main', 'hoyo_mix', 325),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Homecoming to Port', 'main', 'hoyo_mix', 326),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Homecoming to Port', 'main', 'hoyo_mix', 327),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Homecoming to Port', 'main', 'hoyo_mix', 328),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Homecoming to Port', 'main', 'hoyo_mix', 329),
  -- 8. Unfurling Night
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '8. Unfurling Night', 'main', 'hoyo_mix', 330),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '8. Unfurling Night', 'main', 'hoyo_mix', 331),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '8. Unfurling Night', 'main', 'hoyo_mix', 332),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '8. Unfurling Night', 'main', 'hoyo_mix', 333),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '8. Unfurling Night', 'main', 'hoyo_mix', 334),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '8. Unfurling Night', 'main', 'hoyo_mix', 335),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '8. Unfurling Night', 'main', 'hoyo_mix', 336),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '8. Unfurling Night', 'main', 'hoyo_mix', 337),
  -- 9. The Still Sea-Cliff
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '9. The Still Sea-Cliff', 'main', 'hoyo_mix', 338),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '9. The Still Sea-Cliff', 'main', 'hoyo_mix', 339),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '9. The Still Sea-Cliff', 'main', 'hoyo_mix', 340),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '9. The Still Sea-Cliff', 'main', 'hoyo_mix', 341),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '9. The Still Sea-Cliff', 'main', 'hoyo_mix', 342),
  -- 10. The Swinging Motion of the Hulls
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '10. The Swinging Motion of the Hulls', 'main', 'hoyo_mix', 343),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '10. The Swinging Motion of the Hulls', 'main', 'hoyo_mix', 344),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '10. The Swinging Motion of the Hulls', 'main', 'hoyo_mix', 345),
  -- 12. A Carefree Cup
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '12. A Carefree Cup', 'main', 'hoyo_mix', 346),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '12. A Carefree Cup', 'main', 'hoyo_mix', 347),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '12. A Carefree Cup', 'main', 'hoyo_mix', 348),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '12. A Carefree Cup', 'main', 'hoyo_mix', 349),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '12. A Carefree Cup', 'main', 'hoyo_mix', 350),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '12. A Carefree Cup', 'main', 'hoyo_mix', 351),
  -- 13. Notes From Striking the Anvil
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. Notes From Striking the Anvil', 'main', 'hoyo_mix', 352),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. Notes From Striking the Anvil', 'main', 'hoyo_mix', 353),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. Notes From Striking the Anvil', 'main', 'hoyo_mix', 354),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. Notes From Striking the Anvil', 'main', 'hoyo_mix', 355),
  -- 14. A Borrowed Hour
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. A Borrowed Hour', 'main', 'hoyo_mix', 356),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. A Borrowed Hour', 'main', 'hoyo_mix', 357),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. A Borrowed Hour', 'main', 'hoyo_mix', 358),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. A Borrowed Hour', 'main', 'hoyo_mix', 359),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. A Borrowed Hour', 'main', 'hoyo_mix', 360),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. A Borrowed Hour', 'main', 'hoyo_mix', 361),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. A Borrowed Hour', 'main', 'hoyo_mix', 362),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. A Borrowed Hour', 'main', 'hoyo_mix', 363),
  -- 15. At Ease Near Night's End
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '15. At Ease Near Night''s End', 'main', 'hoyo_mix', 364),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '15. At Ease Near Night''s End', 'main', 'hoyo_mix', 365),
  -- 16. Fields After Dusk
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '16. Fields After Dusk', 'main', 'hoyo_mix', 366),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Bowed', 'Nyckelharpa', 'Album: Outside It Is Growing Dark', '16. Fields After Dusk', 'main', 'hoyo_mix', 367),
  -- 17. Fresh Baked Egg Rolls
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '17. Fresh Baked Egg Rolls', 'main', 'hoyo_mix', 368),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Bowed -> Hurdy Gurdy', 'Hurdy Gurdy Chanters', 'Album: Outside It Is Growing Dark', '17. Fresh Baked Egg Rolls', 'main', 'hoyo_mix', 369),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Plucked', 'Zither', 'Album: Outside It Is Growing Dark', '17. Fresh Baked Egg Rolls', 'main', 'hoyo_mix', 370),
  -- 18. Old Tales Inscribed in Verse
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '18. Old Tales Inscribed in Verse', 'main', 'hoyo_mix', 371),
  -- 19. Lakelight Turquoise
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '19. Lakelight Turquoise', 'main', 'hoyo_mix', 372),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '19. Lakelight Turquoise', 'main', 'hoyo_mix', 373),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '19. Lakelight Turquoise', 'main', 'hoyo_mix', 374),
  -- 20. Reflections in a Timeless Calm
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Reflections in a Timeless Calm', 'main', 'hoyo_mix', 375),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Reflections in a Timeless Calm', 'main', 'hoyo_mix', 376),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Reflections in a Timeless Calm', 'main', 'hoyo_mix', 377),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Reflections in a Timeless Calm', 'main', 'hoyo_mix', 378),
  -- 21. Shimmering Water Like Flickering Souls
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '21. Shimmering Water Like Flickering Souls', 'main', 'hoyo_mix', 379),
  -- 22. Where the Wandering Ones Rest
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '22. Where the Wandering Ones Rest', 'main', 'hoyo_mix', 380),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '22. Where the Wandering Ones Rest', 'main', 'hoyo_mix', 381),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '22. Where the Wandering Ones Rest', 'main', 'hoyo_mix', 382),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '22. Where the Wandering Ones Rest', 'main', 'hoyo_mix', 383),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '22. Where the Wandering Ones Rest', 'main', 'hoyo_mix', 384),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '22. Where the Wandering Ones Rest', 'main', 'hoyo_mix', 385),
  -- 23. Lullaby of the New Moon (I): Somnias a Luna
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '23. Lullaby of the New Moon (I): Somnias a Luna', 'main', 'hoyo_mix', 386),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '23. Lullaby of the New Moon (I): Somnias a Luna', 'main', 'hoyo_mix', 387),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '23. Lullaby of the New Moon (I): Somnias a Luna', 'main', 'hoyo_mix', 388),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '23. Lullaby of the New Moon (I): Somnias a Luna', 'main', 'hoyo_mix', 389),
  -- 24. Lullaby of the New Moon (II): Lucens ut risus
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '24. Lullaby of the New Moon (II): Lucens ut risus', 'main', 'hoyo_mix', 390),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '24. Lullaby of the New Moon (II): Lucens ut risus', 'main', 'hoyo_mix', 391),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '24. Lullaby of the New Moon (II): Lucens ut risus', 'main', 'hoyo_mix', 392),
  -- 25. Lullaby of the New Moon (III): Petala ceciderunt
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '25. Lullaby of the New Moon (III): Petala ceciderunt', 'main', 'hoyo_mix', 393),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '25. Lullaby of the New Moon (III): Petala ceciderunt', 'main', 'hoyo_mix', 394),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '25. Lullaby of the New Moon (III): Petala ceciderunt', 'main', 'hoyo_mix', 395),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '25. Lullaby of the New Moon (III): Petala ceciderunt', 'main', 'hoyo_mix', 396),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '25. Lullaby of the New Moon (III): Petala ceciderunt', 'main', 'hoyo_mix', 397),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '25. Lullaby of the New Moon (III): Petala ceciderunt', 'main', 'hoyo_mix', 398),
  -- 26. The Distant Moon Sits Alone
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. The Distant Moon Sits Alone', 'main', 'hoyo_mix', 399),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. The Distant Moon Sits Alone', 'main', 'hoyo_mix', 400),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. The Distant Moon Sits Alone', 'main', 'hoyo_mix', 401),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. The Distant Moon Sits Alone', 'main', 'hoyo_mix', 402),
  -- 27. Hymn to the Moon
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '27. Hymn to the Moon', 'main', 'hoyo_mix', 403),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '27. Hymn to the Moon', 'main', 'hoyo_mix', 404),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '27. Hymn to the Moon', 'main', 'hoyo_mix', 405),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '27. Hymn to the Moon', 'main', 'hoyo_mix', 406),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '27. Hymn to the Moon', 'main', 'hoyo_mix', 407),
  -- 28. The Bright Frontier Land
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. The Bright Frontier Land', 'main', 'hoyo_mix', 408),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. The Bright Frontier Land', 'main', 'hoyo_mix', 409),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. The Bright Frontier Land', 'main', 'hoyo_mix', 410),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. The Bright Frontier Land', 'main', 'hoyo_mix', 411),
  -- 29. Ancient Heirs of Grace
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '29. Ancient Heirs of Grace', 'main', 'hoyo_mix', 412),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '29. Ancient Heirs of Grace', 'main', 'hoyo_mix', 413),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '29. Ancient Heirs of Grace', 'main', 'hoyo_mix', 414),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '29. Ancient Heirs of Grace', 'main', 'hoyo_mix', 415),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '29. Ancient Heirs of Grace', 'main', 'hoyo_mix', 416),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '29. Ancient Heirs of Grace', 'main', 'hoyo_mix', 417),
  -- 30. Rite Beneath the Radiance
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '30. Rite Beneath the Radiance', 'main', 'hoyo_mix', 418),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '30. Rite Beneath the Radiance', 'main', 'hoyo_mix', 419),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '30. Rite Beneath the Radiance', 'main', 'hoyo_mix', 420),
  -- 31. The Path That the Moon Reveals
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '31. The Path That the Moon Reveals', 'main', 'hoyo_mix', 421),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '31. The Path That the Moon Reveals', 'main', 'hoyo_mix', 422),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '31. The Path That the Moon Reveals', 'main', 'hoyo_mix', 423),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '31. The Path That the Moon Reveals', 'main', 'hoyo_mix', 424),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '31. The Path That the Moon Reveals', 'main', 'hoyo_mix', 425),
  -- 33. Wading in Hazy Light
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '33. Wading in Hazy Light', 'main', 'hoyo_mix', 426),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Plucked', 'Early Renaissance Harp', 'Album: Outside It Is Growing Dark', '33. Wading in Hazy Light', 'main', 'hoyo_mix', 427),
  -- 34. Dzwony na nieszpory
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '34. Dzwony na nieszpory', 'main', 'hoyo_mix', 428),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '34. Dzwony na nieszpory', 'main', 'hoyo_mix', 429),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '34. Dzwony na nieszpory', 'main', 'hoyo_mix', 430),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '34. Dzwony na nieszpory', 'main', 'hoyo_mix', 431),
  -- 35. The Redoubt Amidst the Frigid Wind
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '35. The Redoubt Amidst the Frigid Wind', 'main', 'hoyo_mix', 432),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '35. The Redoubt Amidst the Frigid Wind', 'main', 'hoyo_mix', 433),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '35. The Redoubt Amidst the Frigid Wind', 'main', 'hoyo_mix', 434),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '35. The Redoubt Amidst the Frigid Wind', 'main', 'hoyo_mix', 435),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '35. The Redoubt Amidst the Frigid Wind', 'main', 'hoyo_mix', 436),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '35. The Redoubt Amidst the Frigid Wind', 'main', 'hoyo_mix', 437),
  -- 36. Raised on Fallen Meteorites
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '36. Raised on Fallen Meteorites', 'main', 'hoyo_mix', 438),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '36. Raised on Fallen Meteorites', 'main', 'hoyo_mix', 439),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '36. Raised on Fallen Meteorites', 'main', 'hoyo_mix', 440),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Crash_Transitions', 'KSHMR_Orchestral_Crash_Transition_05', 'Album: Outside It Is Growing Dark', '36. Raised on Fallen Meteorites', 'main', 'hoyo_mix', 441),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Tambourine_Transitions', NULL, 'Album: Outside It Is Growing Dark', '36. Raised on Fallen Meteorites', 'main', 'hoyo_mix', 442),
  -- 37. Keen as Winter Hail
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '37. Keen as Winter Hail', 'main', 'hoyo_mix', 443),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '37. Keen as Winter Hail', 'main', 'hoyo_mix', 444),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '37. Keen as Winter Hail', 'main', 'hoyo_mix', 445),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 03 Hybrid Cinematic (STR)', 'Hybrid Cinematic - Full Breakout Loops 03 (STR)', 'Album: Outside It Is Growing Dark | G#4', '37. Keen as Winter Hail', 'main', 'hoyo_mix', 446),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Tambourine_Transitions', NULL, 'Album: Outside It Is Growing Dark', '37. Keen as Winter Hail', 'main', 'hoyo_mix', 447),
  -- 38. The Forbidding Ground
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '38. The Forbidding Ground', 'main', 'hoyo_mix', 448),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '38. The Forbidding Ground', 'main', 'hoyo_mix', 449),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '38. The Forbidding Ground', 'main', 'hoyo_mix', 450),
  -- Disc 2: Evenings on a Farm Near Nasha
  -- 2. Dawn Breeze of Lempoinen
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Dawn Breeze of Lempoinen', 'main', 'hoyo_mix', 451),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Dawn Breeze of Lempoinen', 'main', 'hoyo_mix', 452),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Dawn Breeze of Lempoinen', 'main', 'hoyo_mix', 453),
  -- 3. Sails Set With Eagerness
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Bowed -> Hurdy Gurdy', 'Hurdy Gurdy Chanters', 'Album: Outside It Is Growing Dark', '3. Sails Set With Eagerness', 'main', 'hoyo_mix', 454),
  -- 4. Foresighting From the Frigid Shore
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Foresighting From the Frigid Shore', 'main', 'hoyo_mix', 455),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Foresighting From the Frigid Shore', 'main', 'hoyo_mix', 456),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Foresighting From the Frigid Shore', 'main', 'hoyo_mix', 457),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Foresighting From the Frigid Shore', 'main', 'hoyo_mix', 458),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Foresighting From the Frigid Shore', 'main', 'hoyo_mix', 459),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Foresighting From the Frigid Shore', 'main', 'hoyo_mix', 460),
  -- 5. Hopak of Cape and Wave
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Hopak of Cape and Wave', 'main', 'hoyo_mix', 461),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Hopak of Cape and Wave', 'main', 'hoyo_mix', 462),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Hopak of Cape and Wave', 'main', 'hoyo_mix', 463),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Hopak of Cape and Wave', 'main', 'hoyo_mix', 464),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Hopak of Cape and Wave', 'main', 'hoyo_mix', 465),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Hopak of Cape and Wave', 'main', 'hoyo_mix', 466),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Hopak of Cape and Wave', 'main', 'hoyo_mix', 467),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '5. Hopak of Cape and Wave', 'main', 'hoyo_mix', 468),
  -- 6. Whirling Out and Over
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Whirling Out and Over', 'main', 'hoyo_mix', 469),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Whirling Out and Over', 'main', 'hoyo_mix', 470),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Whirling Out and Over', 'main', 'hoyo_mix', 471),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Whirling Out and Over', 'main', 'hoyo_mix', 472),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '6. Whirling Out and Over', 'main', 'hoyo_mix', 473),
  -- 8. Mayskaya Noch'
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '8. Mayskaya Noch''', 'main', 'hoyo_mix', 474),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Plucked', 'Zither', 'Album: Outside It Is Growing Dark', '8. Mayskaya Noch''', 'main', 'hoyo_mix', 475),
  -- 9. Where the Cricket Sings
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '9. Where the Cricket Sings', 'main', 'hoyo_mix', 476),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Plucked', 'Zither', 'Album: Outside It Is Growing Dark', '9. Where the Cricket Sings', 'main', 'hoyo_mix', 477),
  -- 13. From Beyond
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. From Beyond', 'main', 'hoyo_mix', 478),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. From Beyond', 'main', 'hoyo_mix', 479),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. From Beyond', 'main', 'hoyo_mix', 480),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. From Beyond', 'main', 'hoyo_mix', 481),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. From Beyond', 'main', 'hoyo_mix', 482),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. From Beyond', 'main', 'hoyo_mix', 483),
  -- 14. Loafing on the Grass
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. Loafing on the Grass', 'main', 'hoyo_mix', 484),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. Loafing on the Grass', 'main', 'hoyo_mix', 485),
  -- 15. Vestige of Hurtling Foam
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '15. Vestige of Hurtling Foam', 'main', 'hoyo_mix', 486),
  -- 16. Cozy Home Underground
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '16. Cozy Home Underground', 'main', 'hoyo_mix', 487),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '16. Cozy Home Underground', 'main', 'hoyo_mix', 488),
  -- 17. Half-Finished Heaven
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '17. Half-Finished Heaven', 'main', 'hoyo_mix', 489),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '17. Half-Finished Heaven', 'main', 'hoyo_mix', 490),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '17. Half-Finished Heaven', 'main', 'hoyo_mix', 491),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '17. Half-Finished Heaven', 'main', 'hoyo_mix', 492),
  -- 18. Tells of the Frost-Lamp in One's Heart
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '18. Tells of the Frost-Lamp in One''s Heart', 'main', 'hoyo_mix', 493),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '18. Tells of the Frost-Lamp in One''s Heart', 'main', 'hoyo_mix', 494),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '18. Tells of the Frost-Lamp in One''s Heart', 'main', 'hoyo_mix', 495),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '18. Tells of the Frost-Lamp in One''s Heart', 'main', 'hoyo_mix', 496),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '18. Tells of the Frost-Lamp in One''s Heart', 'main', 'hoyo_mix', 497),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '18. Tells of the Frost-Lamp in One''s Heart', 'main', 'hoyo_mix', 498),
  -- 19. Dream of Birch and Pellucid Water
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '19. Dream of Birch and Pellucid Water', 'main', 'hoyo_mix', 499),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '19. Dream of Birch and Pellucid Water', 'main', 'hoyo_mix', 500),
  -- 20. Sariola's Threnody
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Sariola''s Threnody', 'main', 'hoyo_mix', 501),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Sariola''s Threnody', 'main', 'hoyo_mix', 502),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Sariola''s Threnody', 'main', 'hoyo_mix', 503),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Sariola''s Threnody', 'main', 'hoyo_mix', 504),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Sariola''s Threnody', 'main', 'hoyo_mix', 505),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Sariola''s Threnody', 'main', 'hoyo_mix', 506),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Sariola''s Threnody', 'main', 'hoyo_mix', 507),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '20. Sariola''s Threnody', 'main', 'hoyo_mix', 508),
  -- 22. Vessel for Prayer
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '22. Vessel for Prayer', 'main', 'hoyo_mix', 509),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '22. Vessel for Prayer', 'main', 'hoyo_mix', 510),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '22. Vessel for Prayer', 'main', 'hoyo_mix', 511),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Crash_Transitions', 'KSHMR_Orchestral_Crash_Transition_05', 'Album: Outside It Is Growing Dark', '22. Vessel for Prayer', 'main', 'hoyo_mix', 512),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Tambourine_Transitions', 'KSHMR_Tambourine_Transition_03', 'Album: Outside It Is Growing Dark', '22. Vessel for Prayer', 'main', 'hoyo_mix', 513),
  -- 23. A Green Hill Remade
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '23. A Green Hill Remade', 'main', 'hoyo_mix', 514),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '23. A Green Hill Remade', 'main', 'hoyo_mix', 515),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Plucked', 'Early Renaissance Harp', 'Album: Outside It Is Growing Dark', '23. A Green Hill Remade', 'main', 'hoyo_mix', 516),
  -- 24. Omens Brought On the Wind
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '24. Omens Brought On the Wind', 'main', 'hoyo_mix', 517),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '24. Omens Brought On the Wind', 'main', 'hoyo_mix', 518),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ERA II Medieval Legends' COLLATE NOCASE),
   'Instruments -> String -> Plucked', 'Zither', 'Album: Outside It Is Growing Dark', '24. Omens Brought On the Wind', 'main', 'hoyo_mix', 519),
  -- 25. Darkness Surges Beneath the Stone
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '25. Darkness Surges Beneath the Stone', 'main', 'hoyo_mix', 520),
  -- 26. Rosy Marshland
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. Rosy Marshland', 'main', 'hoyo_mix', 521),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. Rosy Marshland', 'main', 'hoyo_mix', 522),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. Rosy Marshland', 'main', 'hoyo_mix', 523),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. Rosy Marshland', 'main', 'hoyo_mix', 524),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. Rosy Marshland', 'main', 'hoyo_mix', 525),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. Rosy Marshland', 'main', 'hoyo_mix', 526),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '26. Rosy Marshland', 'main', 'hoyo_mix', 527),
  -- 27. Wandering Through the Starry Night
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '27. Wandering Through the Starry Night', 'main', 'hoyo_mix', 528),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '27. Wandering Through the Starry Night', 'main', 'hoyo_mix', 529),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '27. Wandering Through the Starry Night', 'main', 'hoyo_mix', 530),
  -- 28. Warm Remembrance
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. Warm Remembrance', 'main', 'hoyo_mix', 531),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. Warm Remembrance', 'main', 'hoyo_mix', 532),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. Warm Remembrance', 'main', 'hoyo_mix', 533),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. Warm Remembrance', 'main', 'hoyo_mix', 534),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. Warm Remembrance', 'main', 'hoyo_mix', 535),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. Warm Remembrance', 'main', 'hoyo_mix', 536),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '28. Warm Remembrance', 'main', 'hoyo_mix', 537),
  -- 29. The Solitary Silhouette
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '29. The Solitary Silhouette', 'main', 'hoyo_mix', 538),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '29. The Solitary Silhouette', 'main', 'hoyo_mix', 539),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '29. The Solitary Silhouette', 'main', 'hoyo_mix', 540),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Crash_Transitions', 'KSHMR_Orchestral_Crash_Transition_05', 'Album: Outside It Is Growing Dark', '29. The Solitary Silhouette', 'main', 'hoyo_mix', 541),
  -- 30. Grief Spreading Like Haze
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '30. Grief Spreading Like Haze', 'main', 'hoyo_mix', 542),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '30. Grief Spreading Like Haze', 'main', 'hoyo_mix', 543),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '30. Grief Spreading Like Haze', 'main', 'hoyo_mix', 544),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '30. Grief Spreading Like Haze', 'main', 'hoyo_mix', 545),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '30. Grief Spreading Like Haze', 'main', 'hoyo_mix', 546),
  -- 31. Sea-Gnawed Hollow
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '31. Sea-Gnawed Hollow', 'main', 'hoyo_mix', 547),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '31. Sea-Gnawed Hollow', 'main', 'hoyo_mix', 548),
  -- 32. Secrets Cast in a Deep Cave
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '32. Secrets Cast in a Deep Cave', 'main', 'hoyo_mix', 549),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '32. Secrets Cast in a Deep Cave', 'main', 'hoyo_mix', 550),
  -- 33. Kuunsilta of Thousand Lakes
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '33. Kuunsilta of Thousand Lakes', 'main', 'hoyo_mix', 551),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '33. Kuunsilta of Thousand Lakes', 'main', 'hoyo_mix', 552),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '33. Kuunsilta of Thousand Lakes', 'main', 'hoyo_mix', 553),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '33. Kuunsilta of Thousand Lakes', 'main', 'hoyo_mix', 554),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '33. Kuunsilta of Thousand Lakes', 'main', 'hoyo_mix', 555),
  -- 36. Votum Awaited in Vain
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '36. Votum Awaited in Vain', 'main', 'hoyo_mix', 556),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '36. Votum Awaited in Vain', 'main', 'hoyo_mix', 557),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '36. Votum Awaited in Vain', 'main', 'hoyo_mix', 558),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '36. Votum Awaited in Vain', 'main', 'hoyo_mix', 559),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '36. Votum Awaited in Vain', 'main', 'hoyo_mix', 560),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '36. Votum Awaited in Vain', 'main', 'hoyo_mix', 561),
  -- 37. The Gleaming Thread
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '37. The Gleaming Thread', 'main', 'hoyo_mix', 562),
  -- 42. Ruinous Clamor
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '42. Ruinous Clamor', 'main', 'hoyo_mix', 563),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '42. Ruinous Clamor', 'main', 'hoyo_mix', 564),
  -- 43. The Roiling Streets
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '43. The Roiling Streets', 'main', 'hoyo_mix', 565),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '43. The Roiling Streets', 'main', 'hoyo_mix', 566),
  -- 44. A Sitting on a Gate
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '44. A Sitting on a Gate', 'main', 'hoyo_mix', 567),
  -- Disc 3: Svart eller vitt
  -- 1. To Light the Aeon Dark
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 568),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 569),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 570),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 571),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 572),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 573),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 574),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 575),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 576),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 577),
  -- 2. Straight Through the Snowtide
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 578),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 579),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 580),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 581),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 582),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 583),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 584),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 585),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 586),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 587),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 588),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '2. Straight Through the Snowtide', 'main', 'hoyo_mix', 589),
  -- 3. A Thirst That Cuts
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. A Thirst That Cuts', 'main', 'hoyo_mix', 590),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. A Thirst That Cuts', 'main', 'hoyo_mix', 591),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. A Thirst That Cuts', 'main', 'hoyo_mix', 592),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. A Thirst That Cuts', 'main', 'hoyo_mix', 593),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. A Thirst That Cuts', 'main', 'hoyo_mix', 594),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. A Thirst That Cuts', 'main', 'hoyo_mix', 595),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. A Thirst That Cuts', 'main', 'hoyo_mix', 596),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. A Thirst That Cuts', 'main', 'hoyo_mix', 597),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. A Thirst That Cuts', 'main', 'hoyo_mix', 598),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '3. A Thirst That Cuts', 'main', 'hoyo_mix', 599),
  -- 4. Syntyloitsut of Koitar
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 601),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 602),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 603),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 604),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 605),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 606),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 607),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 608),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 609),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 610),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Syntyloitsut of Koitar', 'main', 'hoyo_mix', 611),
  -- 5. The Iron-Cast Torrent
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> Metals', 'Orch chimes', 'Album: Outside It Is Growing Dark', '5. The Iron-Cast Torrent', 'main', 'hoyo_mix', 612),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> Drums', 'Timp Sft Mlt Hits LR', 'Album: Outside It Is Growing Dark', '5. The Iron-Cast Torrent', 'main', 'hoyo_mix', 613),
  -- 7. Duckle 'em Down!
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Duckle ''em Down!', 'main', 'hoyo_mix', 614),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Duckle ''em Down!', 'main', 'hoyo_mix', 615),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Duckle ''em Down!', 'main', 'hoyo_mix', 616),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Duckle ''em Down!', 'main', 'hoyo_mix', 617),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '7. Duckle ''em Down!', 'main', 'hoyo_mix', 618),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> Drums', NULL, 'Album: Outside It Is Growing Dark', '7. Duckle ''em Down!', 'main', 'hoyo_mix', 619),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> Metals', 'Orch chimes', 'Album: Outside It Is Growing Dark', '7. Duckle ''em Down!', 'main', 'hoyo_mix', 620),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', 'Studio Slap - Sustains', 'Album: Outside It Is Growing Dark', '7. Duckle ''em Down!', 'main', 'hoyo_mix', 621),
  -- 10. Armor of Light
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '10. Armor of Light', 'main', 'hoyo_mix', 622),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '10. Armor of Light', 'main', 'hoyo_mix', 623),
  -- 12. Luchnos en toi Skotei
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '12. Luchnos en toi Skotei', 'main', 'hoyo_mix', 624),
  -- 13. An Obsession Unriven
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '13. An Obsession Unriven', 'main', 'hoyo_mix', 625),
  -- 14. La preuve d'une demoiselle, ou le bal de la numerologie
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '14. La preuve d''une demoiselle, ou le bal de la numerologie', 'main', 'hoyo_mix', 626),

  -- =========================================================================
  -- Album: Unreleased Soundtrack
  -- =========================================================================
  -- "Nightsoul's Blessing: Xilonen" BGM
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Exp. 2 -> Synth Misc', 'Sandcastle', 'Album: Unreleased Soundtrack', '"Nightsoul''s Blessing: Xilonen" BGM', 'main', 'hoyo_mix', 627),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Multitrack', 'Computer Sequence', 'Album: Unreleased Soundtrack', '"Nightsoul''s Blessing: Xilonen" BGM', 'main', 'hoyo_mix', 628),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Soundscapes', 'Baby Cybermen', 'Album: Unreleased Soundtrack', '"Nightsoul''s Blessing: Xilonen" BGM', 'main', 'hoyo_mix', 629),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Synth Misc', 'Metix', 'Album: Unreleased Soundtrack', '"Nightsoul''s Blessing: Xilonen" BGM', 'main', 'hoyo_mix', 630),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Threat -> Synth Misc', 'Loop-Sharpshooter(92bpm)', 'Album: Unreleased Soundtrack', '"Nightsoul''s Blessing: Xilonen" BGM', 'main', 'hoyo_mix', 631),
  -- Missing rows (appended; CSV row counts required these)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '4. Foresighting From the Frigid Shore', 'main', 'hoyo_mix', 632),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 633),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Outside It Is Growing Dark', '1. To Light the Aeon Dark', 'main', 'hoyo_mix', 634);

-- =========================================================================
-- UPDATE statements: populate raw_source for Live Recording rows
-- (and 1 Credited Piano Performance row at position 53)
-- =========================================================================

-- Radiance Aflame Disc 1
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 1 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 2 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Zhao Liu' WHERE position = 3 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 4 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 5 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 6 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Zhao Liu' WHERE position = 7 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 8 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Xiaonan Xu' WHERE position = 9 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flamenco Guitar — Lei Chen' WHERE position = 10 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Xunji Yang' WHERE position = 11 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 12 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 13 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Yidu Jiang' WHERE position = 14 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 15 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Zhao Liu' WHERE position = 16 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Xiaokui Ding' WHERE position = 17 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Ye Fan' WHERE position = 18 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 19 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 20 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Banjo — Lei Chen' WHERE position = 21 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flute — Xiaohua Cheng' WHERE position = 22 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Hui Li' WHERE position = 23 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 24 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 25 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 26 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 27 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Zhao Liu' WHERE position = 28 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 30 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 31 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 32 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 33 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 34 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Xiaokui Ding' WHERE position = 35 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 36 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 37 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 38 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 39 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 40 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 41 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 42 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 43 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 44 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 45 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 46 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 47 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 48 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 49 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 50 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 51 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 52 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Arcangelo Chen' WHERE position = 53 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 54 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 55 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 56 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 57 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 58 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Yijing Shen' WHERE position = 59 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Xiaojing Liu' WHERE position = 60 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Ying Wang' WHERE position = 61 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 62 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 63 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piccolo — Xiaohua Cheng' WHERE position = 64 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 65 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Xiaokui Ding' WHERE position = 66 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Koto — Yijing Shen' WHERE position = 67 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 68 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 69 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 70 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flute — Xiaohua Cheng' WHERE position = 71 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Radiance Aflame Disc 2
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 72 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 73 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 74 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 75 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 76 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 77 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 78 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 79 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 80 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 81 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 82 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 83 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Jiannan Gu' WHERE position = 84 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 85 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 86 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 87 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 88 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 89 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 90 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 91 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 92 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 93 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 94 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 95 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 96 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 97 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 98 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Genshin Choir' WHERE position = 99 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ping Zhang' WHERE position = 100 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 101 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 102 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 103 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 104 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 105 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 106 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 107 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 108 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 109 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 110 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 111 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Children''s Choir — Deep Space Choir' WHERE position = 112 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bansuri — Jiannan Gu' WHERE position = 113 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Ye Fan' WHERE position = 114 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 115 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 116 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ping Zhang' WHERE position = 117 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 118 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 119 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 120 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 121 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 122 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 123 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 124 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 125 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 126 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 127 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Children''s Choir — Deep Space Choir' WHERE position = 128 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 129 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ping Zhang' WHERE position = 130 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Shakuhachi — Jiannan Gu' WHERE position = 131 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 132 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 133 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 134 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 135 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Radiance Aflame Disc 3
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 136 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 137 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 138 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 139 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 140 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 141 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 142 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Genshin Choir' WHERE position = 143 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 144 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 145 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 146 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 147 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 148 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 149 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Shimmering Voyage Vol. 5 Disc 1
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 150 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 151 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 152 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 153 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 154 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Lei Chen' WHERE position = 155 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Danfeng Hu' WHERE position = 156 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Lei Chen' WHERE position = 157 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Xiaokui Ding' WHERE position = 158 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 159 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 160 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Lei Chen' WHERE position = 161 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Alto Saxophone — Shihai Li' WHERE position = 162 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 163 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Danfeng Hu' WHERE position = 164 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Lei Chen' WHERE position = 165 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Justin Quinn' WHERE position = 166 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Alto Saxophone — Shihai Li' WHERE position = 167 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 168 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Justin Quinn' WHERE position = 169 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 12-String Guitar — Justin Quinn' WHERE position = 170 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 174 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Peijia You' WHERE position = 175 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Danfeng Hu' WHERE position = 176 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Xiaonan Xu' WHERE position = 177 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 178 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cabasa — Peijia You' WHERE position = 179 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 180 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 181 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Danfeng Hu' WHERE position = 182 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Alto Saxophone — Shihai Li' WHERE position = 183 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Danfeng Hu' WHERE position = 184 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 185 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 186 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 187 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Lei Chen' WHERE position = 188 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Lei Chen' WHERE position = 189 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 12-String Guitar — Lei Chen' WHERE position = 190 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Lei Chen' WHERE position = 191 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Danfeng Hu' WHERE position = 192 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 193 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 195 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 196 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 198 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 199 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 200 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 201 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Justin Quinn' WHERE position = 202 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Peijia You' WHERE position = 203 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Danfeng Hu' WHERE position = 204 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cabasa — Peijia You' WHERE position = 205 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 207 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Peijia You' WHERE position = 208 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Xiaonan Xu' WHERE position = 209 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Xiaokui Ding' WHERE position = 210 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 211 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Xiaokui Ding' WHERE position = 212 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 213 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 214 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 215 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 216 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Justin Quinn' WHERE position = 217 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 218 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 219 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Yidu Jiang' WHERE position = 220 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 221 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 222 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 223 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ying Xie' WHERE position = 224 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Shimmering Voyage Vol. 5 Disc 2
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 228 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Yidu Jiang' WHERE position = 229 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Alto Saxophone — Shatong Chen' WHERE position = 230 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Soprano Sax — Shihai Li' WHERE position = 231 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trombone — Kan Cao' WHERE position = 232 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 233 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 234 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 235 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 236 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 237 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 238 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Yuqiong Liu' WHERE position = 239 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 240 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 241 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 242 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 243 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 244 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Alto Voice — Genshin Choir' WHERE position = 245 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harmonica — Xiao Sun' WHERE position = 246 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 247 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 248 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ying Lang' WHERE position = 249 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 250 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 251 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Jiali Zhang' WHERE position = 252 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Hui He' WHERE position = 253 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 254 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Xiaokui Ding' WHERE position = 255 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 256 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 257 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Zirong Zhu' WHERE position = 258 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 259 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Genshin Choir' WHERE position = 260 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Zirong Zhu' WHERE position = 261 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 262 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Genshin Choir' WHERE position = 263 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Elim' WHERE position = 264 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 265 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 266 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- The Shimmering Voyage Vol. 5 Disc 3
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 267 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 268 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 269 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 270 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Soprano Voice — Genshin Choir' WHERE position = 271 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 272 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 273 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 275 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Soprano Voice — Genshin Choir' WHERE position = 276 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tenor Voice — Genshin Choir' WHERE position = 277 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Hui He' WHERE position = 278 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Outside It Is Growing Dark Disc 1
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 279 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — AURORA' WHERE position = 280 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 281 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 282 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 283 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 284 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 285 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Ye Fan' WHERE position = 286 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 287 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 288 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 289 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 290 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 291 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 292 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 293 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 294 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 295 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 296 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 297 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 298 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Magdalena Filipczak' WHERE position = 299 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 300 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 301 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 302 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 303 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 600 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 304 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 305 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Ye Fan' WHERE position = 306 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 308 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 309 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 310 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 311 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 312 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 313 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 315 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 316 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 317 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Genshin Choir' WHERE position = 318 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 319 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 320 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 321 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 322 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 323 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 324 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 325 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 326 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 327 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 328 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 329 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 330 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 331 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 332 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 333 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 334 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Lei Chen' WHERE position = 335 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 336 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tagelharpa — Anna Tam' WHERE position = 337 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 338 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 339 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 340 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 341 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tagelharpa — Anna Tam' WHERE position = 342 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 343 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Hui He' WHERE position = 344 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Lei Chen' WHERE position = 345 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 346 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Magdalena Filipczak' WHERE position = 347 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 348 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Ye Fan' WHERE position = 349 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 350 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Sandro Friedrich' WHERE position = 351 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 352 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 353 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 354 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 355 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 356 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 357 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 358 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 359 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 360 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 361 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 362 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 363 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 364 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 365 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 366 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 368 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 371 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 372 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 373 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 374 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 375 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 376 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 377 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 378 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 379 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 380 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 381 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 382 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 383 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 384 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 385 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 386 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Elim' WHERE position = 387 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 388 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 389 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 390 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Elim' WHERE position = 391 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 392 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Elim' WHERE position = 393 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Hui He' WHERE position = 394 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: First Violin — Qin Zhang' WHERE position = 395 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Second Violin — Damao Wang' WHERE position = 396 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 397 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 398 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 399 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 400 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 401 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 402 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 403 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 404 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 405 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 406 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 407 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 408 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 409 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 410 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 411 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 412 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Linyao Feng' WHERE position = 413 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 414 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 415 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 416 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 417 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 418 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 419 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 420 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 421 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 422 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Genshin Choir' WHERE position = 423 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 424 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 425 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Yuqi Ding' WHERE position = 426 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Yuqi Ding' WHERE position = 428 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 429 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Genshin Choir' WHERE position = 430 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 431 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 432 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 433 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 434 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 435 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 436 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 437 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 438 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 439 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 440 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 443 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 444 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tagelharpa — Anna Tam' WHERE position = 445 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 448 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 449 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tagelharpa — Anna Tam' WHERE position = 450 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Outside It Is Growing Dark Disc 2
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Sandro Friedrich' WHERE position = 451 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 452 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 453 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 455 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 456 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 457 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 458 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Ye Fan' WHERE position = 459 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 460 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 632 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 461 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 462 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 463 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 464 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 465 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 466 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 467 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 468 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 469 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 470 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 471 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 472 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Lei Chen' WHERE position = 473 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 474 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 476 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 478 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 479 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 480 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 481 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 482 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 483 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 484 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 485 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 486 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 487 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Yuqi Ding' WHERE position = 488 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 489 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 490 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 491 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 492 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 493 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 494 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 495 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Genshin Choir' WHERE position = 496 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 497 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — Yuqi Ding' WHERE position = 498 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 499 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tagelharpa — Anna Tam' WHERE position = 500 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 501 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 502 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 503 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 504 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 505 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Ye Fan' WHERE position = 506 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 507 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 508 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Clara Sorace' WHERE position = 509 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 510 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 511 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Genshin Choir' WHERE position = 514 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 515 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 517 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 518 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 520 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 521 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 522 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 523 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 524 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 525 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Ye Fan' WHERE position = 526 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 527 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 528 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 529 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 530 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 531 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 532 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 533 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 534 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 535 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 536 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 537 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Clara Sorace' WHERE position = 538 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 539 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 540 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 542 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 543 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 544 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 545 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 546 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 547 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 548 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 549 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 550 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 551 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 552 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 553 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Lei Chen' WHERE position = 554 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 555 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 556 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 557 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 558 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 559 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Lei Chen' WHERE position = 560 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 561 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 562 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 563 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 564 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 565 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 566 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piano — Arcangelo Chen' WHERE position = 567 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';

-- Outside It Is Growing Dark Disc 3
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 568 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Clara Sorace' WHERE position = 569 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 570 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 571 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 572 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 573 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 574 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 575 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hurdy-Gurdy — Anna Tam' WHERE position = 576 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Ye Fan' WHERE position = 577 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 633 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tagelharpa — Anna Tam' WHERE position = 634 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 578 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Imogen Parry' WHERE position = 579 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 580 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 581 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 582 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 583 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 584 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 585 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 586 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 587 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 588 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tagelharpa — Anna Tam' WHERE position = 589 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 590 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Clara Sorace' WHERE position = 591 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 592 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 593 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Justin Quinn' WHERE position = 594 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 595 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 596 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 597 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 598 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: 12-String Guitar — Lei Chen' WHERE position = 599 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 601 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 602 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Clara Sorace' WHERE position = 603 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Sandro Friedrich' WHERE position = 604 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 605 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Dongfang Ouyang' WHERE position = 606 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Nyckelharpa — Vicki Swan' WHERE position = 607 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kantele — Ida Elina' WHERE position = 608 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cimbalom — Ed Cervenka' WHERE position = 609 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Uilleann Pipes — Philippe Barnes' WHERE position = 610 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Sandro Friedrich' WHERE position = 611 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 614 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tin Whistle — Philippe Barnes' WHERE position = 615 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Irish Flute — Philippe Barnes' WHERE position = 616 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bouzouki — Lei Chen' WHERE position = 617 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 618 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 622 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voices' WHERE position = 623 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 624 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 625 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 626 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
