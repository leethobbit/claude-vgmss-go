-- NEWER VGM SEGA/Atlus — Section 15 (Etrian Odyssey)
--
-- Source: reference/NEWER VGM Sound Sources - SEGAAtlus.csv lines 2445-2507.
-- 5 game/album records, ~53 usage rows.
--
-- All four mainline Etrian games in this section credit Yuzo Koshiro
-- directly via "(Music by: Yuzo Koshiro)" in the CSV. The arrange album
-- ("The Drowned City Super Arrange Version") has no in-CSV composer
-- note and so leaves composers NULL.
--
-- New manufacturers introduced this batch:
--   - NEC          (PC-8801 MH is referenced as a hardware FM source)
--   - Sam          (VOPM — free YM2151 emulation VST distributed by Sam)
--
-- New products introduced this batch:
--   - EDIROL / Hyper Canvas          (Roland-EDIROL ROMpler module)
--   - EDIROL / Super Quartet         (EDIROL combo sample library)
--   - MusicLab / RealGuitar 2L       (RealGuitar 2L is a distinct release
--                                    from the existing MusicLab RealGuitar
--                                    entry — preserved verbatim per Rule 2)
--   - Sam / VOPM                     (FM synth VST)
--   - NEC / PC-8801 MH               (Yuzo Koshiro's PC-8801 era FM rig)
--   - Steinberg / HALion 3           (distinct verbatim from existing
--                                    Steinberg "HALion" product per Rule 2)
--   - IK Multimedia / SampleTank 2
--   - Toontrack / EZDrummer
--   - reFX / Nexus²                  (distinct from existing reFX "Nexus";
--                                    superscript-2 preserved per Rule 2)
--   - Zero-G / Return to the Planet of the Breaks
--
-- Conventions (same as prior batches):
--   - Per-game positions start at 1, monotonic across both 'main' and
--     'stuff_to_find' categories.
--   - "?,?" CSV rows → product_id NULL, raw_source NULL.
--   - "Manufacturer,?" CSV rows → product_id NULL,
--     raw_source = 'Manufacturer - ?'. Includes the composite
--     "Toontrack / XLN Audio,?" entries which are preserved verbatim
--     rather than split.
--   - The "Notes / Sample Library" CSV column maps to usages.notes; the
--     "Where Used" column maps to usages.examples.
--   - EDIROL Hyper Canvas is a Roland-subsidiary product but the CSV
--     credits the EDIROL brand, so we follow the CSV verbatim.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('NEC'),
  ('Sam');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'EDIROL'         COLLATE NOCASE), 'Hyper Canvas',                        'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'EDIROL'         COLLATE NOCASE), 'Super Quartet',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'       COLLATE NOCASE), 'RealGuitar 2L',                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Sam'            COLLATE NOCASE), 'VOPM',                                'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'NEC'            COLLATE NOCASE), 'PC-8801 MH',                          'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'      COLLATE NOCASE), 'HALion 3',                            'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'IK Multimedia'  COLLATE NOCASE), 'SampleTank 2',                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Toontrack'      COLLATE NOCASE), 'EZDrummer',                           'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'reFX'           COLLATE NOCASE), 'Nexus²',                              'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'         COLLATE NOCASE), 'Return to the Planet of the Breaks',  'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Etrian Odyssey',                                              'Nintendo DS',  '2007-01-18', 'Yuzo Koshiro', 'yuzo koshiro', 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 15 Etrian Odyssey). First entry in the series; introduces the EDIROL Hyper Canvas + Sam VOPM + NEC PC-8801 MH stack that recurs throughout Koshiro''s EO work.'),
  ('Etrian Odyssey II: Heroes of Lagaard',                        'Nintendo DS',  '2008-02-21', 'Yuzo Koshiro', 'yuzo koshiro', 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 15 Etrian Odyssey).'),
  ('Etrian Odyssey III',                                          'Nintendo DS',  '2010-04-01', 'Yuzo Koshiro', 'yuzo koshiro', 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 15 Etrian Odyssey). Only two source rows identified — both XLN Audio Addictive Drums kits.'),
  ('Etrian Odyssey III: The Drowned City Super Arrange Version',  'Album',        '2010-05-12', NULL,           NULL,           'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 15 Etrian Odyssey). Arrange album companion to Etrian Odyssey III; no in-CSV composer credit. Treated as a game record per CSV layout, matching the Section 1 Atlus arrange-album convention.'),
  ('Etrian Odyssey IV',                                           'Nintendo 3DS', '2012-07-05', 'Yuzo Koshiro', 'yuzo koshiro', 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 15 Etrian Odyssey). Platform shift to 3DS; Stylus RMX leans heavier than the DS-era entries.');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, raw_source, examples, category, source_family, position)
VALUES
  -- G1: Etrian Odyssey — 12 main + 8 stuff = 20 rows
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Hyper Canvas' COLLATE NOCASE),
   'Preset -> Chromatic Percussion', '013 000 Marimba', NULL, NULL, 'Labyrinth IV - Sandy Barrens', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Hyper Canvas' COLLATE NOCASE),
   'Preset -> Ensemble', '053 000 Choir Aahs', NULL, NULL, 'Labyrinth IV - Sandy Barrens', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Hyper Canvas' COLLATE NOCASE),
   'Preset -> Drum Set', '001 Standard Set', NULL, NULL, '-Used throughout the soundtrack-', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Orchestral' COLLATE NOCASE),
   'String Sections -> Full Strings', 'P-0 034 FullStrings Pizzcato', NULL, NULL, 'Cityscape - Lounge with Talks of Tomorrow', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Orchestral' COLLATE NOCASE),
   'Key&Percussion -> Chromatic Percussion', 'P-5 010 Tubular-bell2', NULL, NULL, 'Labyrinth V - Lost Shinjuku', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Orchestral' COLLATE NOCASE),
   'Key&Percussion -> Timpani', 'P-5 011 Timpani', NULL, NULL, 'Labyrinth V - Lost Shinjuku', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Orchestral' COLLATE NOCASE),
   'Rhythm Set', 'P-6 001 Orchestra Kit', NULL, NULL, 'That Name Was Engraved Into the 100th Volume!, Labyrinth V - Lost Shinjuku', 'main', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Super Quartet' COLLATE NOCASE),
   'Preset Drums', '002 Acoustic Set', NULL, NULL, 'Cityscape - Roadside Trees Outside the Window, Strife - Kill or be Killed', 'main', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar 2L' COLLATE NOCASE),
   NULL, 'Acoustic::Steel Fingered', NULL, NULL, 'Labyrinth I - Emerald Grove, Labyrinth V - Lost Shinjuku', 'main', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sam' COLLATE NOCASE AND p.name = 'VOPM' COLLATE NOCASE),
   'tone -> bass', '016 E.Bass 70', NULL, NULL, 'Strife - Rapture', 'main', 'newer_vgm', 10),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sam' COLLATE NOCASE AND p.name = 'VOPM' COLLATE NOCASE),
   'tone -> bell', '015 Viberaphon AMS-', NULL, NULL, 'Labyrinth V - Lost Shinjuku', 'main', 'newer_vgm', 11),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sam' COLLATE NOCASE AND p.name = 'VOPM' COLLATE NOCASE),
   'tone -> lead', '033 Synth lead 6', 'FM strings', NULL, 'The Tale Unfolds, Labyrinth I - Emerald Grove, Battlefield - Drenched in Red', 'main', 'newer_vgm', 12),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'NEC' COLLATE NOCASE AND p.name = 'PC-8801 MH' COLLATE NOCASE),
   NULL, NULL, 'FM Strings 1, from Sonic 1 (Genesis)', NULL, 'The Tale Unfolds', 'stuff_to_find', 'newer_vgm', 13),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'NEC' COLLATE NOCASE AND p.name = 'PC-8801 MH' COLLATE NOCASE),
   NULL, NULL, 'FM Bell, from Sonic 1 (Genesis)', NULL, 'The Tale Unfolds, That Name Was Engraved Into the 100th Volume!', 'stuff_to_find', 'newer_vgm', 14),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'NEC' COLLATE NOCASE AND p.name = 'PC-8801 MH' COLLATE NOCASE),
   NULL, NULL, 'Layered FM Synth', NULL, 'Strife - First Strike', 'stuff_to_find', 'newer_vgm', 15),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'NEC' COLLATE NOCASE AND p.name = 'PC-8801 MH' COLLATE NOCASE),
   NULL, NULL, 'FM Bass, from Sonic 1 (Genesis)', NULL, 'Strife - First Strike', 'stuff_to_find', 'newer_vgm', 16),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 3' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 17),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   NULL,
   NULL, NULL, 'Drumset', 'Toontrack / XLN Audio - ?', 'Cityscape - Lounge with Talks of Tomorrow', 'stuff_to_find', 'newer_vgm', 18),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   NULL,
   NULL, NULL, 'Reverse Cymbal', NULL, 'Battlefield - Drenched in Red', 'stuff_to_find', 'newer_vgm', 19),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey'),
   NULL,
   NULL, NULL, '2 Snares', NULL, 'Battlefield - Drenched in Red', 'stuff_to_find', 'newer_vgm', 20),

  -- G2: Etrian Odyssey II: Heroes of Lagaard — 13 main + 5 stuff = 18 rows
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Hyper Canvas' COLLATE NOCASE),
   'Preset -> Orchestra', '048 000 Timpani', NULL, NULL, 'Labyrinth VI - Forbidden Wood', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Hyper Canvas' COLLATE NOCASE),
   'Preset -> Drum Set', '001 Standard Set', NULL, NULL, '-Used throughout the soundtrack-', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2' COLLATE NOCASE),
   'Orchestra', 'Comp String Orchestra', NULL, NULL, 'Labyrinth VI - Forbidden Wood', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2' COLLATE NOCASE),
   'Orchestra', 'Glockenspiel', NULL, NULL, 'Labyrinth VI - Forbidden Wood', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sam' COLLATE NOCASE AND p.name = 'VOPM' COLLATE NOCASE),
   'tone -> bell', '015 Viberaphon AMS-', NULL, NULL, 'Labyrinth IV - Petal Bridge', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sam' COLLATE NOCASE AND p.name = 'VOPM' COLLATE NOCASE),
   'tone -> lead', '033 Synth lead 6', 'FM strings', NULL, 'Cityscape - Land Spread Up North, Battlefield - First Battle, Labyrinth IV - Petal Bridge', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sam' COLLATE NOCASE AND p.name = 'VOPM' COLLATE NOCASE),
   'tone -> Guitar', '008 Dis.Guitar 3+', NULL, NULL, 'Battlefield - First Battle', 'main', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sam' COLLATE NOCASE AND p.name = 'VOPM' COLLATE NOCASE),
   'tone -> piano', '007 E.piano #3', NULL, NULL, 'Labyrinth IV - Petal Bridge', 'main', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sam' COLLATE NOCASE AND p.name = 'VOPM' COLLATE NOCASE),
   'tone -> piano', '015 piano 4', NULL, NULL, 'Labyrinth IV - Petal Bridge', 'main', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_01', NULL, NULL, 'Battlefield - Scarlet Rain', 'main', 'newer_vgm', 10),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_02', NULL, NULL, 'Battlefield - Scarlet Rain', 'main', 'newer_vgm', 11),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_03', NULL, NULL, 'Battlefield - Scarlet Rain', 'main', 'newer_vgm', 12),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_04', NULL, NULL, 'Battlefield - Scarlet Rain', 'main', 'newer_vgm', 13),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'NEC' COLLATE NOCASE AND p.name = 'PC-8801 MH' COLLATE NOCASE),
   NULL, NULL, 'Layered FM Synth', NULL, 'Labyrinth IV - Petal Bridge', 'stuff_to_find', 'newer_vgm', 14),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'NEC' COLLATE NOCASE AND p.name = 'PC-8801 MH' COLLATE NOCASE),
   NULL, NULL, 'FM Bass', NULL, 'Cityscape - Land Spread Up North, Labyrinth IV - Petal Bridge', 'stuff_to_find', 'newer_vgm', 15),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'NEC' COLLATE NOCASE AND p.name = 'PC-8801 MH' COLLATE NOCASE),
   NULL, NULL, 'FM Bell, from Sonic 1 (Genesis)', NULL, 'Cityscape - Land Spread Up North', 'stuff_to_find', 'newer_vgm', 16),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   NULL,
   NULL, NULL, 'Drumset', 'Toontrack / XLN Audio - ?', 'Battlefield - First Battle', 'stuff_to_find', 'newer_vgm', 17),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey II: Heroes of Lagaard'),
   NULL,
   NULL, NULL, 'Konami orchestra hit', NULL, 'Battlefield - Shudder', 'stuff_to_find', 'newer_vgm', 18),

  -- G3: Etrian Odyssey III — 2 main rows
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kit -> PopRock (Dry)', 'Contemp Funk Glossy', NULL, NULL, 'Labyrinth I - Waterfall Wood', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kit -> PopRock (Medium)', 'Startup', NULL, NULL, 'All Battle Themes', 'main', 'newer_vgm', 2),

  -- G4: Etrian Odyssey III: The Drowned City Super Arrange Version — 5 main rows
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey III: The Drowned City Super Arrange Version'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, 'Town: Engrave Thy Name', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey III: The Drowned City Super Arrange Version'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, 'Labyrinth 6 Evil God in the Dark Ocean Depths~Calling That Detestable Name', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey III: The Drowned City Super Arrange Version'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey III: The Drowned City Super Arrange Version'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kit', 'Startup', NULL, NULL, 'All Battle Themes', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey III: The Drowned City Super Arrange Version'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Return to the Planet of the Breaks' COLLATE NOCASE),
   'Booty Luchy 091', 'Booty-Harmonic 2-E', NULL, NULL, 'That Fresh Blood is Thine or the Enemy''s~The End of the Raging Waves', 'main', 'newer_vgm', 5),

  -- G5: Etrian Odyssey IV — 4 main + 4 stuff = 8 rows
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey IV'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 6 - Keyboard Instruments', 'Harpsichord', NULL, NULL, 'The Ancient Oath', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey IV'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Madrid', '90-Madrid Massive Snares', NULL, NULL, 'Battlefield - With Eyes Blazing', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey IV'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '99-Congas', '+4 Coarse Pitch', NULL, 'Labyrinth V - Forgotten Capital', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey IV'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZDrummer' COLLATE NOCASE),
   'EZX Latin Percussion', 'Default', NULL, NULL, 'A Moment of Peace', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey IV'),
   NULL,
   NULL, NULL, 'just a guess', 'KORG - ?', 'Battlefield - With Eyes Blazing', 'stuff_to_find', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey IV'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus²' COLLATE NOCASE),
   NULL, NULL, 'bells (confirmed by projectfile)', NULL, 'Battlefield - Storm', 'stuff_to_find', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey IV'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Bongos', NULL, NULL, NULL, 'Battlefield - With Eyes Blazing', 'stuff_to_find', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Etrian Odyssey IV'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 8);
