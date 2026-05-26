-- NEWER VGM SEGA/Atlus — Section 14 (Trauma Center)
--
-- Source: reference/NEWER VGM Sound Sources - SEGAAtlus.csv lines 2396-2443.
-- 3 game records, ~40 usage rows.
--
-- Trauma Center: Second Opinion (Wii) introduces "AKAI / S3000 CD-ROM
-- Sound Library Vol. 3" as a new product. Under the Knife 2 (DS) is
-- EastWest Symphonic-heavy. Trauma Team (Wii) leans Spectrasonics
-- Stylus RMX.
--
-- Verbatim preservations (Rule 2):
--   - Trauma Team's "Whatever It Takes" track title has literal
--     double-quotes (T2438) preserved as '"Whatever It Takes"' in
--     examples.
--   - "Spectrasonics / Trilogy" (Under the Knife 2 T2424-2425) is the
--     predecessor to Spectrasonics Trilian — new product entry.

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'AKAI'           COLLATE NOCASE), 'S3000 CD-ROM Sound Library Vol. 3',   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'Symphonic Choirs',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'  COLLATE NOCASE), 'Trilogy',                             'Instrument');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Trauma Center: Second Opinion',    'Wii',         '2006-11-19', NULL, NULL, 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 14 Trauma Center). Wii launch title.'),
  ('Trauma Center: Under the Knife 2', 'Nintendo DS', '2008-07-01', NULL, NULL, 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 14 Trauma Center). DS sequel; EastWest Symphonic Orchestra and Symphonic Choirs heavy.'),
  ('Trauma Team',                      'Wii',         '2010-05-18', NULL, NULL, 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 14 Trauma Center). Final entry in the franchise; Spectrasonics Stylus RMX dominates.');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, raw_source, examples, category, source_family, position)
VALUES
  -- G1: Trauma Center: Second Opinion — 8 main + 3 stuff = 11 rows
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AKAI' COLLATE NOCASE AND p.name = 'S3000 CD-ROM Sound Library Vol. 3' COLLATE NOCASE),
   'Partition B -> LUDWIG SNARE', 'TT SN-B 2', NULL, NULL, 'Final Operation', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Advanced Orchestra Extended' COLLATE NOCASE),
   NULL, NULL, 'Timpani', NULL, 'Final Operation', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Dance Mega Drums' COLLATE NOCASE),
   'CD 2 -> Partition B -> SD-HIP 02', 'D2 SD1-063', NULL, NULL, 'Exchange Surgeon', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Dance Mega Drums' COLLATE NOCASE),
   'CD 2 -> Partition B -> SD-HIP 02', 'D2 SD1-064', NULL, NULL, 'Exchange Surgeon', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Dance Mega Drums' COLLATE NOCASE),
   'CD 2 -> Partition B -> 02 SD-HIP 02', 'D2 SD1-066', NULL, NULL, 'Event: Second Opinion', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Dance Mega Drums' COLLATE NOCASE),
   'CD 2 -> Partition A -> 06 BD-HOU 02', 'D2 BD2-072', NULL, NULL, 'Main Menu', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Dance Mega Drums' COLLATE NOCASE),
   'CD 2 -> Partition B -> 03 SD-HIP 03', 'D2 SD1-098', 'add reverb', NULL, 'Main Menu', 'main', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Dance Mega Drums' COLLATE NOCASE),
   'CD 2 -> Partition C -> 06 HH-HIP 6', 'D2 HH1-241', NULL, NULL, 'Main Menu', 'main', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AKAI' COLLATE NOCASE AND p.name = 'S3000 CD-ROM Sound Library Vol. 3' COLLATE NOCASE),
   NULL, NULL, 'drums', NULL, 'Final Operation/Vulnerability, Main Map 1/Hope Hospital', 'stuff_to_find', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Advanced Orchestra Extended' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 10),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Second Opinion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Dance Mega Drums' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 11),

  -- G2: Trauma Center: Under the Knife 2 — 14 main + 1 stuff = 15 rows
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, 'Cut Off the Fate!!', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, NULL, 'Cut Off the Fate!!', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', NULL, NULL, 'To the Neverending Tomorrow', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Xylophone', NULL, NULL, 'Cut Off the Fate!!', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 2 Short', '18V Pizz RR x3', NULL, NULL, 'Gentle Breeze', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 5 Keysw', 'SVL KS Master', NULL, NULL, 'Asclepius, Again', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM8 Factory', 'Anatomie', NULL, NULL, 'Cut Off the Fate!!', 'main', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Pro-53' COLLATE NOCASE),
   'Program 111', 'Super Sync Lead', NULL, NULL, 'Unflagging Surgery', 'main', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Pop snare', NULL, 'Growing Feeling in My Heart, Swaying Shadow of GUILT', 'main', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 68-Tower Zero', '68-Tower Zero Hi Hats', NULL, NULL, 'Clinical Skills', 'main', 'newer_vgm', 10),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 174-World Hunt', '174-World Hunt ', NULL, NULL, 'Medical Tactics', 'main', 'newer_vgm', 11),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', NULL, NULL, NULL, 'Asclepius, Again', 'main', 'newer_vgm', 12),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilogy' COLLATE NOCASE),
   'Electric Bass -> Fingered -> 4 string Modern', 'Modern 4 string Full Range A', NULL, NULL, 'Gentle Breeze', 'main', 'newer_vgm', 13),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilogy' COLLATE NOCASE),
   'Electric Bass -> Fingered -> 4 string Modern', 'Modern 4 string Slides', NULL, NULL, 'Gentle Breeze', 'main', 'newer_vgm', 14),
  ((SELECT id FROM games WHERE title = 'Trauma Center: Under the Knife 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, 'Drum loop', NULL, 'Gentle Breeze', 'stuff_to_find', 'newer_vgm', 15),

  -- G3: Trauma Team — 11 main + 3 stuff = 14 rows
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AMG' COLLATE NOCASE AND p.name = 'Kick-Ass Brass!' COLLATE NOCASE),
   'KAB Alto Sax', 'Alto Express, Alto Slides, Alto Swells', NULL, NULL, 'Cool Beauty', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AMG' COLLATE NOCASE AND p.name = 'Kick-Ass Brass!' COLLATE NOCASE),
   'KAB Trumpet', 'Trumpet Exp', NULL, NULL, 'Cool Beauty', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'Logic Pro' COLLATE NOCASE),
   '03 Bass -> 02 Electric Bass', 'Deep Bass', NULL, NULL, 'Cool Beauty', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'Logic Pro' COLLATE NOCASE),
   NULL, NULL, 'noticeable in Kozuka tracks', NULL, NULL, 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, 'A Rose', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 93-RnBees', '93-RnBees a', 'add swing', NULL, 'Cool Beauty', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 84-Particles', '84-Particles Combo', NULL, NULL, 'Blue Examination', 'main', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 84-Particles', '84-Particles Reflections 2', NULL, NULL, 'Soul Scream, Lights of Life', 'main', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 126-Reaction', '126-Reaction Kick', NULL, NULL, 'Soul Scream, Lights of Life', 'main', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 140-Encripted', '140-Encripted Combo', NULL, NULL, '"Whatever It Takes"', 'main', 'newer_vgm', 10),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 160-Spheres', '160-Spheres Glass', NULL, NULL, 'Soul Scream', 'main', 'newer_vgm', 11),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 12),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 13),
  ((SELECT id FROM games WHERE title = 'Trauma Team'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 14);
