-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 287-379
-- Pokémon HeartGold and Pokémon SoulSilver (DS, 2009).
-- Composers: Go Ichinose, Shota Kageyama, Hitomi Sato, Junichi Masuda, Takuto Kitsuta.
-- Bonus Tracks subsection (rows 376-379) composed by Hitomi Sato.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Best Service'),
  ('Discovery Firm'),
  ('EastWest'),
  ('IK Multimedia'),
  ('Kaeru Cafe'),
  ('MOTU'),
  ('Native Instruments'),
  ('Nine Volt Audio'),
  ('UVI'),
  ('EDIROL'),
  ('Roland'),
  ('Victor'),
  ('Yamaha'),
  ('Zero-G');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'ProSamples Vol. 11 - Classic Orchestra',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'ProSamples Vol. 13 - Choirs',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'ProSamples Vol. 15 - Dance Drums',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'ProSamples Vol. 55 - Retro Sampler',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'     COLLATE NOCASE), 'Discovery Japan',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'     COLLATE NOCASE), 'Sound Effects CD Series 6 - NATURE',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Symphonic Orchestra',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'ProSamples Vol. 18 - Steinway Grand Piano',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'ProSamples Vol. 16 - Guitar & Bass',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'ProSamples Vol. 19 - Pop Brass',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Goliath',                                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'IK Multimedia'      COLLATE NOCASE), 'SampleTank 2 XL',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Kaeru Cafe'         COLLATE NOCASE), 'Treasure in Japan Vol. 3',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MOTU'               COLLATE NOCASE), 'Ethno Instrument',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'Battery 3',                                           'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'Kontakt Factory Library',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Nine Volt Audio'    COLLATE NOCASE), 'Taiko 1',                                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                COLLATE NOCASE), 'PlugSound Pro (02-Fretted)',                          'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                COLLATE NOCASE), 'PlugSound Pro (04-Synths and co)',                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                COLLATE NOCASE), 'PlugSound Pro (06-Orchestral)',                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'EDIROL'             COLLATE NOCASE), 'STUDIO Canvas SD-90',                                 'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SOUND Canvas SC-88 Pro',                              'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Victor'             COLLATE NOCASE), '効果音大全集 (VICG-40059~60)',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'QY70',                                                'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'             COLLATE NOCASE), 'Creative Essentials Vol. 16 Drum & Percussion Tools', 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'             COLLATE NOCASE), 'Creative Essentials Vol. 17 Bass Separates',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'             COLLATE NOCASE), 'Creative Essentials Vol. 30 Orchestral Flavours',     'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon HeartGold and Pokémon SoulSilver',
   'Nintendo DS',
   'September 12, 2009',
   'Go Ichinose, Shota Kageyama, Hitomi Sato, Junichi Masuda, Takuto Kitsuta',
   'go ichinose, shota kageyama, hitomi sato, junichi masuda, takuto kitsuta',
   'All other documented instruments were ripped from previous Pokémon titles (per source CSV annotation, row 338). Bonus Tracks (rows 376-379) composed by Hitomi Sato.');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Main usages (rows 288-337): new HG/SS samples
  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 13 - Choirs' COLLATE NOCASE),
   'Classic Choir', 'AHH', 'New sample', 'Battle! (Frontier Brain), Battle! (Rival), Battle! (Gym Leader—Johto Version), Ruins of Alph',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Discovery Japan' COLLATE NOCASE),
   'PERCUSSION', 'Percussion_Suzu_54', 'Suzu (Japanese sleigh bell)', 'Battle! (Ho-Oh), Ecruteak City, The Dance of Ecruteak (in-game SFX version only)',
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> Metals', 'Orch chimes', NULL, 'Battle! (Wild Pokémon—Johto Version), Battle! (Trainer Battle—Johto Version), Battle! (Rival), Goldenrod City, etc.',
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 18 - Steinway Grand Piano' COLLATE NOCASE),
   '-', 'PS-18 AIFF Grand Piano', NULL, 'National Park',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2 XL' COLLATE NOCASE),
   'Winds', 'Clarinet', NULL, 'Route 34, Battle! (Lugia), etc.',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2 XL' COLLATE NOCASE),
   'Orchestra', 'String Orchestra', NULL, '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 20', 'Hyoshigi-3,4', 'Hyoshigi', 'Battle! (Ho-Oh), Ecruteak City',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 25', 'Kodaiko-2 L/R', 'Taiko Element (Program 066)', 'Battle! (Ho-Oh), Ecruteak City',
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 34', 'Okedo-Ohdaiko Rim-1, 2 L/R', 'Taiko Element (Program 040)', 'Battle! (Ho-Oh)',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 37', 'Taiko-2 L/R', 'Taiko Element (Program 040)', 'Battle! (Ho-Oh)',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 37', 'Taiko-3 L/R', 'Taiko Element (Program 040), sample is cut', 'Battle! (Ho-Oh)',
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 48', 'Kotsu-1, 2 L/R', 'Kotsuzumi (Program 067)', 'Battle! (Ho-Oh), Ecruteak City',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'Ethno Instrument' COLLATE NOCASE),
   'Geographic -> Asia -> Koto', 'Koto 2 picked', 'Velocity 110', 'Ecruteak City, Sprout Tower, Bell Tower, Battle! (Ho-Oh), etc.',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'Ethno Instrument' COLLATE NOCASE),
   'Geographic -> Asia -> Shamisen', 'Shamisen picked', 'Velocity 127', 'Ecruteak City, Sprout Tower, Bell Tower, Battle! (Ho-Oh), etc.',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'GM Kit', '#39 drum kit elements', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'Rock Kit', '#39 drum kit elements', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Cello Ensemble', 'Pizzicato articulation', 'Ruins of Alph, Goldenrod City, Poké Mart, Pokémon Center',
   'main', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Harp', 'Cut samples', 'Vermillion City, Lavender Town',
   'main', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Violin Ensemble', 'Pizzicato articulation', 'Ruins of Alph, Goldenrod City, Poké Mart, Pokémon Center',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 2 - VSL Woodwinds', 'Oboe', NULL, 'New Bark Town, etc.',
   'main', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'French Horn Ensemble', 'Sustain articulation', 'The Pokémon League, etc.',
   'main', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'French Horn', NULL, 'Route 29, etc.',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trombone Ensemble', NULL, 'Battle! (Wild Pokémon—Johto Version), etc.',
   'main', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trumpet Ensemble', 'Sustain articulation', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Cymbals a due', NULL, 'Route 26, etc.',
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Glockenspiel', NULL, 'Battle! (Wild Pokémon—Johto Version), Battle! (Trainer Battle—Johto Version), Battle! (Rival), etc.',
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Marimba', NULL, 'Route 29, etc.',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Xylophone', NULL, 'Battle! (Gym Leader—Johto Version), etc.',
   'main', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Nine Volt Audio' COLLATE NOCASE AND p.name = 'Taiko 1' COLLATE NOCASE),
   'Instruments', 'n - Hall All', 'C#3, Velocity 127, right channel sampled', 'Battle! (Ho-Oh)',
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Acoustic Grand Piano', NULL, 'Basically every theme with a piano not named National Park.',
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Rock Piano', 'Program 1, max velocity', 'Buena''s Password, etc.',
   'main', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '02-Electric Pianos -> 01-Classic EP', 'A Suitcase Medium', NULL, 'Pokémon Center, etc.',
   'main', 'newer_vgm', 32),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 01-High End Organs', 'Full Organ', NULL, 'Bicycle, etc.',
   'main', 'newer_vgm', 33),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 01-High End Organs', 'Jazz Organ', NULL, 'Ice Path, Elm Pokémon Lab',
   'main', 'newer_vgm', 34),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08-Mallets & co', 'Music Box', NULL, 'Lyra, etc.',
   'main', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08-Mallets & co', 'Vibraphone 1', NULL, 'Vermillion City, etc.',
   'main', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '07-Accordions', 'Accordion Diatonic 1', NULL, 'Cianwood City',
   'main', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '01-Acoustic Guitar -> 01-Nylon', 'Gerome Finger Soft 2', NULL, 'Cianwood City',
   'main', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '01-Acoustic Guitar -> 03-Folk', 'Martin Soft 2', NULL, 'Pewter City',
   'main', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '03-Acoustic Bass -> 01-Jazzistic Bass', 'Jazz Double Bass', NULL, 'New Bark Town, etc.',
   'main', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 01-Deluxe Bass', 'Ampeg Ac. Bass -Full', '110 velocity', 'Goldenrod City, etc.',
   'main', 'newer_vgm', 41),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> R''n B - Funk', 'Elastik', NULL, 'Battle! (Gym Leader—Johto Version), etc.',
   'main', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '04-Guitar', '28-Electric Guitar', NULL, 'Violet City',
   'main', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '06-String & Orchestra', '48-Timpani', NULL, 'Route 42, etc.',
   'main', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '07-Ensemble', '56-Orchestra Hit', 'Sample octaves', 'Battle! (Gym Leader—Johto Version), etc.',
   'main', 'newer_vgm', 45),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '11-Synth Lead', '81-Square Wave', NULL, 'Viridian Forest',
   'main', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Strings Solo', 'Cello Sus', NULL, 'Battle! (Lugia), etc.',
   'main', 'newer_vgm', 47),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Strings Solo', 'Violin Sus', NULL, 'Olivine Lighthouse',
   'main', 'newer_vgm', 48),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Woodwinds Solo', 'Bassoon sus', NULL, 'Route 38',
   'main', 'newer_vgm', 49),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Woodwinds Solo', 'Flute sus', NULL, 'New Bark Town, etc.',
   'main', 'newer_vgm', 50),

  -- Samples reused from earlier Pokémon games (rows 339-374)
  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 11 - Classic Orchestra' COLLATE NOCASE),
   'Partition E-> ADV ORCH 3', 'TIMPANI VS', 'from Pokémon Diamond/Pearl', 'Battle! (Lugia), etc.',
   'main', 'newer_vgm', 51),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 13 - Choirs' COLLATE NOCASE),
   'Classic Choir', 'AHH', 'Partially reused from D/P', 'Battle! (Frontier Brain), Battle! (Rival), Battle! (Gym Leader—Johto Version), Ruins of Alph',
   'main', 'newer_vgm', 52),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition A -> BD 001-060', 'BD 031-060', '15A-BDE050 (Electric Kick)', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 53),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CLAP 45-88', 'CLAP 45-66', '15C-CLP45', NULL,
   'main', 'newer_vgm', 54),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CYM 01-44', 'CYM 01-22', '15E-CYM11', NULL,
   'main', 'newer_vgm', 55),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CYM 01-44', 'CYM 03-44', '15E-CYM36', NULL,
   'main', 'newer_vgm', 56),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 16 - Guitar & Bass' COLLATE NOCASE),
   'Plexi LD', 'Dist Gtr', 'from Pokémon Diamond/Pearl', 'A Rival Appears!, Battle! (Rival), Battle! (Team Rocket), Battle! (Champion), etc.',
   'main', 'newer_vgm', 57),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 19 - Pop Brass' COLLATE NOCASE),
   'Partition A -> VOLUME 002', '3TP SUS', 'T3SSFC#3, T3SSFC#4, T3SSFB4', NULL,
   'main', 'newer_vgm', 58),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'Partition B -> DRUMCOMPUTER', 'YAMAHA R5+RX', '55P-DRM54-F5', NULL,
   'main', 'newer_vgm', 59),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 6 - NATURE' COLLATE NOCASE),
   'Track 27 - WIND', 'WIND-1', 'Not to be confused with the SFX wind originally from RSE', 'Battle! (Frontier Brain)',
   'main', 'newer_vgm', 60),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '018 000 Organ 2', 'from Pokémon Diamond/Pearl', 'Unused sample',
   'main', 'newer_vgm', 61),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '037 000 Slap Bass 1', 'from Pokémon Diamond/Pearl', 'Olivine Lighthouse, Battle! (Trainer Battle—Johto Version), Battle! (Trainer Battle—Kanto Version) Battle! (Rival), Battle! (Ho-Oh), etc.',
   'main', 'newer_vgm', 62),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '028 000 TC Rear', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 63),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '039 000 MG303 Bass', 'from Pokémon Diamond/Pearl', 'Battle! (Gym Leader—Kanto Version), Battle! (Trainer Battle—Kanto Version), etc.',
   'main', 'newer_vgm', 64),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '058 000 Solo Bone', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 65),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '065 000 Soprano Sax2', 'from Pokémon Diamond/Pearl', 'Battle Hall',
   'main', 'newer_vgm', 66),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '079 000 Whistle 2', 'from Pokémon Diamond/Pearl', 'Unused sample',
   'main', 'newer_vgm', 67),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '001 StandardSet2', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 68),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '017 Power Set 2', 'Power snare', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 69),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '025 Dance Set', 'Reverse cymbal', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 70),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '026 Rave Set', 'Analog (808) snare', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 71),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '049 OrchestraSet', 'Orchestral snare', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 72),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '081 000 Square Wave', 'from Pokémon Ruby/Sapphire', 'Battle! (Entei), Battle! (Rival)',
   'main', 'newer_vgm', 73),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '123 005 Bubble', 'from Pokémon Ruby/Sapphire', 'Battle! (Lugia)',
   'main', 'newer_vgm', 74),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Victor' COLLATE NOCASE AND p.name = '効果音大全集 (VICG-40059~60)' COLLATE NOCASE),
   'Disc 1 -> Track 11', '自然篇 吹雪', 'from Pokémon Ruby/Sapphire', 'SFX',
   'main', 'newer_vgm', 75),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '082 032 DoublSaw', 'from Pokémon Diamond/Pearl (Check Notes)', 'Battle! (Rival), Battle! (Gym Leader--Kanto Version), Battle! (Frontier Brain), etc.',
   'main', 'newer_vgm', 76),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '028 127 Dance Kit', '[Notes C2 and D2] from Pokémon Diamond/Pearl (Check Notes)', 'Battle! (Rival), Battle! (Gym Leader--Kanto Version), Battle! (Frontier Brain), etc.',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 2', '16_02_06', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 2', '16_02_10', 'Highly compressed and clipped', NULL,
   'main', 'newer_vgm', 79),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 18', '16_18_02', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 80),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 24', '16_24_06', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 26', '16_26_10', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 12', '17_12_13', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 44', '17_44_04', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 02', '30_02_01', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_01', 'from Pokémon Diamond/Pearl', NULL,
   'main', 'newer_vgm', 86),

  -- Bonus Tracks (rows 376-379) — "Ballad to the Safari Zone", composed by Hitomi Sato
  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Solo Set', '057 000 Romantic Tp', NULL, 'Ballad to the Safari Zone, Ballad to the Safari Zone (Instrumental Version)',
   'bonus', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 049-056 ENSEMBLE', '56-Orchestra Hit', NULL, 'Ballad to the Safari Zone, Ballad to the Safari Zone (Instrumental Version)',
   'bonus', 'newer_vgm', 88),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Pop Brass -> Trumpet', 'TP minidamoocha', NULL, 'Ballad to the Safari Zone, Ballad to the Safari Zone (Instrumental Version)',
   'bonus', 'newer_vgm', 89),

  ((SELECT id FROM games WHERE title = 'Pokémon HeartGold and Pokémon SoulSilver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '15-Tubular Bells', NULL, 'Ballad to the Safari Zone, Ballad to the Safari Zone (Instrumental Version)',
   'bonus', 'newer_vgm', 90);
