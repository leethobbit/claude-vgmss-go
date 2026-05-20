-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 3404-3493
-- Pokémon Sword and Pokémon Shield EX: The Isle of Armor (Nintendo Switch, June 17, 2020).
-- Composers: Minako Adachi, Hitomi Sato, Keita Okamoto.
-- Subsection headers in source: row 3404 (game header; no explicit "Streamed/Sequenced" subhead --
-- rows 3405-3475 are treated as main), row 3476 (Stuff to Find).
-- Per task spec: rows 3405-3475 -> main; rows 3477-3493 -> stuff_to_find.
-- Rows 3489-3493 carry "?,?" for manufacturer/product -> Unknown/Unknown sentinel.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Best Service'),
  ('EastWest'),
  ('Heavyocity'),
  ('Kaeru Cafe'),
  ('Native Instruments'),
  ('Spectrasonics'),
  ('Steinberg'),
  ('Ueberschall'),
  ('UVI'),
  ('Vienna Symphonic Library'),
  ('Xfer Records'),
  ('XLN Audio'),
  ('Zero-G'),
  ('Air Music Tech'),
  ('MusicLab'),
  ('Unknown');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'Ethno World 6 Instruments',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'Chris Hein Horns Pro Complete',                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Ra',                                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Symphonic Orchestra',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'               COLLATE NOCASE), 'Damage',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Kaeru Cafe'               COLLATE NOCASE), 'The Last Life Style Sampling HOUSE & KITCHEN',    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Absynth',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Kontakt Factory Library',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Rise & Hit',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Vintage Organs',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Action Strikes',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Omnisphere',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Omnisphere 2',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Stylus RMX',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion 4',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion Sonic',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion Sonic SE',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'Hypnotic Dance',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'Triebwerk',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'              COLLATE NOCASE), '8 Bit Stylez',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'              COLLATE NOCASE), 'Elastik 2 Demo',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (04-Synths and co)',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'Special Edition Vol. 1',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Xfer Records'             COLLATE NOCASE), 'Serum',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                COLLATE NOCASE), 'Addictive Drums',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Escape from Planet of the Breaks',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Air Music Tech'           COLLATE NOCASE), 'theRiser',                                        'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                 COLLATE NOCASE), 'RealGuitar',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                  COLLATE NOCASE), 'Unknown',                                         NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized) VALUES
  ('Pokémon Sword and Pokémon Shield EX: The Isle of Armor',
   'Nintendo Switch',
   'June 17, 2020',
   'Minako Adachi, Hitomi Sato, Keita Okamoto',
   'minako adachi, hitomi sato, keita okamoto');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Main section (rows 3405-3475)
  -- Row 3405: Best Service / Ethno World 6 Instruments
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> CYMBALS', 'Splash + China Cymbals', NULL, 'Mustard''s Theme',
   'main', 'newer_vgm', 1),

  -- Row 3406
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> KOTO', 'Koto KEY', NULL, 'Mustard''s Theme, Battle! (Mustard), Secret Armor',
   'main', 'newer_vgm', 2),

  -- Row 3407
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'WOODWINDS AND BRASS -> BAMBOO FLUTE', 'Bamboo Flute KEY', NULL, 'Mustard''s Theme, Battle! (Mustard)',
   'main', 'newer_vgm', 3),

  -- Row 3408: EastWest / Ra
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Wind -> Pan Flute', 'Pan Flute KS C0-D#0', NULL, 'The Isle of Armor',
   'main', 'newer_vgm', 4),

  -- Row 3409
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Shamisen', 'Shamisen C0-E0', NULL, 'Master Dojo, Battle! (Serious Mustard), Secret Armor',
   'main', 'newer_vgm', 5),

  -- Row 3410
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Perc -> Taiko Drm', 'Taiko Drums ALL', NULL, 'Master Dojo',
   'main', 'newer_vgm', 6),

  -- Row 3411: EastWest / Symphonic Orchestra
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 5 Keysw', '4TB KS Master', NULL, 'Battle! (Serious Mustard)',
   'main', 'newer_vgm', 7),

  -- Row 3412
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 5 Keysw', '4TP KS Master', NULL, 'Battle! (Serious Mustard), Tower of Darkness, Secret Armor, Victory! (Mustard), Kubfu and Victory',
   'main', 'newer_vgm', 8),

  -- Row 3413
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Xylophone', 'close mic', 'Battle! (Mustard)',
   'main', 'newer_vgm', 9),

  -- Row 3414
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 9 Double Basses - 5 Keysw', 'CBS KS Master', NULL, 'The Isle of Armor',
   'main', 'newer_vgm', 10),

  -- Row 3415
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Cellos -> 5 Keysw', 'VCS KS Master', NULL, 'The Isle of Armor',
   'main', 'newer_vgm', 11),

  -- Row 3416
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'The Isle of Armor, Master Dojo, Tower of Darkness, Tower of Waters, Secret Armor, Battle! (Serious Mustard), Victory! (Mustard), Kubfu and Victory',
   'main', 'newer_vgm', 12),

  -- Row 3417
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', NULL, 'Tower of Waters, The Isle of Armor',
   'main', 'newer_vgm', 13),

  -- Row 3418
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 5 Keysw', 'SVL KS Master', NULL, 'The Isle of Armor, Battle! (Mustard)',
   'main', 'newer_vgm', 14),

  -- Row 3419: Heavyocity / Damage
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Organic Full', 'B3', 'Battle! (Serious Mustard)',
   'main', 'newer_vgm', 15),

  -- Row 3420
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Mangled Pop Full', 'A7', 'Battle (Mustard)',
   'main', 'newer_vgm', 16),

  -- Row 3421
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Mangled Pop Full', 'C#6, D6, F6', 'Battle! (Mustard), Battle! (Avery)',
   'main', 'newer_vgm', 17),

  -- Row 3422
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Mangled Pop Elements 01', 'D#4, F4, E6', 'Battle! (Klara)',
   'main', 'newer_vgm', 18),

  -- Row 3423: Kaeru Cafe / The Last Life Style Sampling HOUSE & KITCHEN
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'The Last Life Style Sampling HOUSE & KITCHEN' COLLATE NOCASE),
   'CD1 -> Track 77', 'DID YOU CALL ME ?', NULL, 'Battle! (Avery)',
   'main', 'newer_vgm', 19),

  -- Row 3424: Native Instruments / Absynth
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Square Pad With Flange', NULL, 'Super Avery',
   'main', 'newer_vgm', 20),

  -- Row 3425: Native Instruments / Kontakt Factory Library
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Xylophone', NULL, 'Battle! (Mustard), Victory! (Mustard)',
   'main', 'newer_vgm', 21),

  -- Row 3426
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Classic Bass', NULL, 'Victory! (Mustard)',
   'main', 'newer_vgm', 22),

  -- Row 3427: Native Instruments / Rise & Hit
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '01 - Orchestral', 'Bowed To Burst', NULL, 'Battle! (Avery)',
   'main', 'newer_vgm', 23),

  -- Row 3428
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '01 - Orchestral', 'Final Descent', NULL, 'Master Dojo, Tower of Darkness, Tower of Waters, Battle! (Serious Mustard)',
   'main', 'newer_vgm', 24),

  -- Row 3429
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '01 - Orchestral', 'Mass Chorus', NULL, 'The Isle of Armor',
   'main', 'newer_vgm', 25),

  -- Row 3430
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Multi Sweep 3', NULL, 'Battle! (Klara)',
   'main', 'newer_vgm', 26),

  -- Row 3431: Native Instruments / Vintage Organs
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Vintage Organs' COLLATE NOCASE),
   '3 - Classic Rock', 'Gimme Some Lovin', NULL, 'Super Avery',
   'main', 'newer_vgm', 27),

  -- Row 3432: Spectrasonics / Omnisphere
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Poly', 'Ol School Freak Fest', 'Modulation value ~70', 'Victory! (Mustard)',
   'main', 'newer_vgm', 28),

  -- Row 3433
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Harmonic Influences', NULL, 'Tower of Waters',
   'main', 'newer_vgm', 29),

  -- Row 3434: Spectrasonics / Omnisphere 2
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Spotlight EDM -> Hits and Bits', 'Bygone Brass', 'it might also be sampled instead', 'Battle! (Avery)',
   'main', 'newer_vgm', 30),

  -- Row 3435: Spectrasonics / Stylus RMX
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 51-Scuba Duba', '51-Scuba Duba LoFi', NULL, 'Super Avery',
   'main', 'newer_vgm', 31),

  -- Row 3436
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 115-Optoman', '115-Optoman Perc + Metal', NULL, 'Battle! (Avery)',
   'main', 'newer_vgm', 32),

  -- Row 3437: Steinberg / HALion 4
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 FM E-Piano 1', 'plays organ parts from sato''s ver', 'Battle! (Avery)',
   'main', 'newer_vgm', 33),

  -- Row 3438: Steinberg / HALion Sonic
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Fooling', NULL, 'Battle! (Klara)',
   'main', 'newer_vgm', 34),

  -- Row 3439
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '80s Bass Arp', 'Play long notes for automatic arp in last part', 'Battle! (Klara)',
   'main', 'newer_vgm', 35),

  -- Row 3440
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '80s Hard', NULL, 'Battle! (Klara)',
   'main', 'newer_vgm', 36),

  -- Row 3441
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Chorused Behemoth Bass', NULL, 'Battle! (Mustard)',
   'main', 'newer_vgm', 37),

  -- Row 3442
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Glocken Velo', NULL, 'Battle! (Klara), Kubfu and Victory',
   'main', 'newer_vgm', 38),

  -- Row 3443
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'One Finger Funk GLP', NULL, 'Battle! (Mustard)',
   'main', 'newer_vgm', 39),

  -- Row 3444: Steinberg / HALion Sonic SE
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist/Studio Set', 'Ethnic Flute', NULL, 'Battle! (Serious Mustard), Tower of Waters, Tower of Darkness',
   'main', 'newer_vgm', 40),

  -- Row 3445
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 014] Xylophone', 'Add reverb', 'Secret Armor, Battle! (Serious Mustard), Victory! (Mustard), Kubfu and Victory',
   'main', 'newer_vgm', 41),

  -- Row 3446
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 039] Synth Bass 1', NULL, 'Battle! (Avery)',
   'main', 'newer_vgm', 42),

  -- Row 3447
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Hybrid Set', 'Blip Organ', 'Add autopan (descending chords part only)', 'Battle! (Avery)',
   'main', 'newer_vgm', 43),

  -- Row 3448
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Funky R&B Lead', NULL, 'Battle! (Klara)',
   'main', 'newer_vgm', 44),

  -- Row 3449: Steinberg / Hypnotic Dance
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Hypnotic Dance' COLLATE NOCASE),
   'Synth Lead', 'DJ Keys 3', NULL, 'Battle! (Klara)',
   'main', 'newer_vgm', 45),

  -- Row 3450: Steinberg / Triebwerk
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Triebwerk' COLLATE NOCASE),
   'Synth Lead', 'Cutting Edge Gater', NULL, 'Battle! (Klara)',
   'main', 'newer_vgm', 46),

  -- Row 3451: Ueberschall / 8 Bit Stylez
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '8 Bit Stylez' COLLATE NOCASE),
   'Loops -> Drumloops -> Drumloops 130', '05drm130_8BS pulsator', NULL, 'Battle! (Avery)',
   'main', 'newer_vgm', 47),

  -- Row 3452
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '8 Bit Stylez' COLLATE NOCASE),
   'Loops -> FX Sequences', '11sfx125_8BS 15-30', NULL, 'Battle! (Avery)',
   'main', 'newer_vgm', 48),

  -- Row 3453
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '8 Bit Stylez' COLLATE NOCASE),
   'Single Sounds -> Sound FX -> Sound FX 2', '16sfx120_8BS sound fx 2_s_', NULL, 'Battle! (Mustard)',
   'main', 'newer_vgm', 49),

  -- Row 3454: Ueberschall / Elastik 2 Demo
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Elastik 2 Demo' COLLATE NOCASE),
   'Elastik 2', '10sfx122_Deephouse', NULL, 'Battle! (Mustard)',
   'main', 'newer_vgm', 50),

  -- Row 3455: UVI / PlugSound Pro (01-Keyboards)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08 - Mallets & co', 'Marimba', NULL, 'Mustard''s Theme',
   'main', 'newer_vgm', 51),

  -- Row 3456: UVI / PlugSound Pro (04-Synths and co)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '06-Filter Sweeps', 'Morphing Wave', NULL, 'Super Avery',
   'main', 'newer_vgm', 52),

  -- Row 3457
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '08-Synth Leads -> Digital', 'Hisound', 'turn on polyphony, play as chords', 'Super Avery',
   'main', 'newer_vgm', 53),

  -- Row 3458
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '08-Synth Leads -> Digital', 'Zoulou', NULL, 'Krazy for Klara',
   'main', 'newer_vgm', 54),

  -- Row 3459: UVI / PlugSound Pro (05-General MIDI)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '01-Piano', '07-Harpsichord', NULL, 'Super Avery',
   'main', 'newer_vgm', 55),

  -- Row 3460
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '01-Piano', '06-Electric Piano 2', NULL, 'Super Avery',
   'main', 'newer_vgm', 56),

  -- Row 3461
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '11-Music Box', NULL, 'Super Avery, Krazy for Klara',
   'main', 'newer_vgm', 57),

  -- Row 3462
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '39-Synth Bass 1', NULL, 'Krazy for Klara',
   'main', 'newer_vgm', 58),

  -- Row 3463
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '40-Synth Bass 2', NULL, 'Avery''s Theme',
   'main', 'newer_vgm', 59),

  -- Row 3464: Vienna Symphonic Library / Special Edition Vol. 1
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 01 Solo strings', '01S Solo violin', NULL, 'Avery''s Theme',
   'main', 'newer_vgm', 60),

  -- Row 3465: Xfer Records / Serum
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD Caliber [SD]', NULL, 'Battle! (Klara)',
   'main', 'newer_vgm', 61),

  -- Row 3466
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Synth', 'SY Runtheharm [GS]', 'Disable Filter', 'Battle! (Avery)',
   'main', 'newer_vgm', 62),

  -- Row 3467
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Good Old C64 [DRK]', NULL, 'Battle! (Avery)',
   'main', 'newer_vgm', 63),

  -- Row 3468: XLN Audio / Addictive Drums
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Bundle - Funk Groove', 'Funk Groove 002', 'Synched to 133 BPM', 'Super Avery',
   'main', 'newer_vgm', 64),

  -- Row 3469
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Funk Fill L-2 01', 'Funk Fill L-2 04', 'Synched to 133 BPM', 'Super Avery',
   'main', 'newer_vgm', 65),

  -- Row 3470: preset empty
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 011 - Funky Swing', NULL, NULL, 'Mustard''s Theme',
   'main', 'newer_vgm', 66),

  -- Row 3471
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Electronica', 'Chemical House', NULL, 'Super Avery',
   'main', 'newer_vgm', 67),

  -- Row 3472
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Dry)', 'Contemp Funk Glossy', NULL, 'Mustard''s Theme',
   'main', 'newer_vgm', 68),

  -- Row 3473
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', NULL, 'Krazy for Klara, Battle! (Mustard)',
   'main', 'newer_vgm', 69),

  -- Row 3474: Zero-G / Escape from Planet of the Breaks
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from Planet of the Breaks' COLLATE NOCASE),
   'Fry Pan 083', 'FP-Drums Fill', NULL, 'Battle! (Avery)',
   'main', 'newer_vgm', 70),

  -- Row 3475
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from Planet of the Breaks' COLLATE NOCASE),
   'Shout Out 2 Monkey Boy 164', 'SO2MB-Drum Fill 09', NULL, 'Battle! (Mustard), Battle! (Klara)',
   'main', 'newer_vgm', 71),

  -- Stuff to Find (row 3476 header; rows 3477-3493) -> stuff_to_find
  -- Row 3477: Air Music Tech / theRiser
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Air Music Tech' COLLATE NOCASE AND p.name = 'theRiser' COLLATE NOCASE),
   '07 Modulating Rises', '21 Noisy Mod Swell', 'big MAYBE', 'Battle! (Avery), Battle! (Mustard), Battle! (Klara)',
   'stuff_to_find', 'newer_vgm', 72),

  -- Row 3478: Best Service / Chris Hein Horns Pro Complete
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol1', '55 Trumpet Section', 'fall lasts too long. weirdly matches KFL more', 'Battle! (Mustard)',
   'stuff_to_find', 'newer_vgm', 73),

  -- Row 3479
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol3 -> Section', '17Tp Sect 12 Trumpets', NULL, 'Battle! (Klara)',
   'stuff_to_find', 'newer_vgm', 74),

  -- Row 3480: EastWest / Symphonic Orchestra (preset empty, notes='Gong')
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Gong', 'Master Dojo',
   'stuff_to_find', 'newer_vgm', 75),

  -- Row 3481 (path 'Woodwinds ->', preset empty, notes='Solo Flute')
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds ->', NULL, 'Solo Flute', 'The Isle of Armor',
   'stuff_to_find', 'newer_vgm', 76),

  -- Row 3482: Heavyocity / Damage (path/preset/notes all empty)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, NULL, 'The Isle of Armor',
   'stuff_to_find', 'newer_vgm', 77),

  -- Row 3483: MusicLab (trailing whitespace in CSV) / RealGuitar (path/preset/notes empty)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   NULL, NULL, NULL, 'The Isle of Armor',
   'stuff_to_find', 'newer_vgm', 78),

  -- Row 3484
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Fingered', 'to do: find guitar rig patches used', 'Super Avery, Krazy for Klara, Mustard''s Theme',
   'stuff_to_find', 'newer_vgm', 79),

  -- Row 3485: Native Instruments / Action Strikes (path/preset empty, notes='not dark city')
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   NULL, NULL, 'not dark city', 'The Isle of Armor',
   'stuff_to_find', 'newer_vgm', 80),

  -- Row 3486: Spectrasonics / Omnisphere (preset empty)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library', NULL, 'search under ''Glassy Colors''', 'The Isle of Armor',
   'stuff_to_find', 'newer_vgm', 81),

  -- Row 3487
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library', NULL, 'Synth koto/synth bamboo pluck', 'Master Dojo',
   'stuff_to_find', 'newer_vgm', 82),

  -- Row 3488: UVI / PlugSound Pro (01-Keyboards) (preset empty)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', NULL, NULL, 'Krazy for Klara',
   'stuff_to_find', 'newer_vgm', 83),

  -- Row 3489: ?,? -> Unknown/Unknown
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'chanting (also used in USUM Ultra Jungle)', 'Master Dojo, Battle! (Serious Mustard), Victory! (Mustard), Tower of Darkness, Tower of Waters',
   'stuff_to_find', 'newer_vgm', 84),

  -- Row 3490
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Noise sweep (seemingly not rise and hit)', 'Battle! (Mustard), Battle! (Avery), Battle! (Klara)',
   'stuff_to_find', 'newer_vgm', 85),

  -- Row 3491
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'drum fill (0:16)', 'Battle! (Avery)',
   'stuff_to_find', 'newer_vgm', 86),

  -- Row 3492
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'drum fill (0:12)', 'Battle! (Klara)',
   'stuff_to_find', 'newer_vgm', 87),

  -- Row 3493
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Isle of Armor'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'lead guitar', 'Battle! (Mustard)',
   'stuff_to_find', 'newer_vgm', 88);
