-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 4101-4500
-- Pokémon Scarlet and Pokémon Violet (Nintendo Switch, November 18, 2022).
-- Composers: Minako Adachi, Junichi Masuda, Go Ichinose, Hitomi Sato, Hiromitsu Maeba,
-- Teruo Taniguchi, Toby Fox, Yuri Habuka.
-- Subsection headers in source:
--   row 4101 (game header)
--   rows 4102-4104: "Live Performance:" rows -> main, product_id NULL (raw_source patched below)
--   rows 4105-4106: "Sample: GAME FREAK" rows -> main, product_id NULL (raw_source patched below)
--   rows 4107-4433: commercial-product main rows
--   row 4434 (Stuff to Find header)
--   rows 4435: "Live Recording: ?" -> stuff_to_find, product_id NULL (raw_source patched below)
--   row 4436: "Stems: Go Ichinose" -> stuff_to_find, product_id NULL (raw_source patched below)
--   rows 4437-4500: stuff_to_find (incl. "<Mfr>,?" and "?,?" -> Unknown/Unknown sentinel
--     with raw source preserved in notes, per 0018 convention).
-- Note: row 4451 has "LennarDigital,Sylenth1" (sic; spelled differently from "Lennar Digital"
--   used in prior seeds). Treated as Unknown/Unknown sentinel with raw source preserved in notes.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Aa6kHMGE0'),
  ('Aaron Venture'),
  ('Audio Modeling'),
  ('bigsquid2001'),
  ('Embertone'),
  ('Gregjazz'),
  ('Image Line'),
  ('Impact Soundworks'),
  ('Matt Montag'),
  ('MusicalSampling'),
  ('Premier Sound Factory'),
  ('reFX'),
  ('Shan'),
  ('Strezov Sampling'),
  ('Toontrack'),
  ('Vengeance Sound'),
  ('Ample Sound'),
  ('Soniccouture'),
  ('Splice Sounds');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Aa6kHMGE0'                COLLATE NOCASE), 'Soundfont - THFont',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Aaron Venture'            COLLATE NOCASE), 'Infinite Brass',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Arturia'                  COLLATE NOCASE), 'B-3 V',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Audio Modeling'           COLLATE NOCASE), 'SWAM Flute',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'Chris Hein Horns Pro Complete',                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'Ethno World 6 Instruments',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'ProSamples Vol. 15 - Dance Drums',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'bigsquid2001'             COLLATE NOCASE), 'Soundfont - Squidfont Orchestral',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'              COLLATE NOCASE), 'Tina Guo Acoustic Cello Legato',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'           COLLATE NOCASE), 'Discovery Japan',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Goliath',                                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Gypsy',                                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Ra',                                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Symphonic Choirs',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Symphonic Orchestra',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Embertone'                COLLATE NOCASE), 'Chapman Trumpet',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'e-instruments'            COLLATE NOCASE), 'Session Horns Pro',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Gregjazz'                 COLLATE NOCASE), 'Soundfont - Ultimate Guitar Kit 2',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'               COLLATE NOCASE), 'ASPIRE - Modern Mallets',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'               COLLATE NOCASE), 'Damage',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'               COLLATE NOCASE), 'Damage 2',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'               COLLATE NOCASE), 'Evolve Mutations',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Image Line'               COLLATE NOCASE), '3xOsc',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Image Line'               COLLATE NOCASE), 'FL Studio 10',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Impact Soundworks'        COLLATE NOCASE), 'Shreddage',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Impact Soundworks'        COLLATE NOCASE), 'Shreddage Bass 2',                                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Impact Soundworks'        COLLATE NOCASE), 'Shreddage X',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Impact Soundworks'        COLLATE NOCASE), 'Shreddage 3',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools'     COLLATE NOCASE), 'Independence Pro',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Matt Montag'              COLLATE NOCASE), 'NES VST',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicalSampling'          COLLATE NOCASE), 'Austin Saxes',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicalSampling'          COLLATE NOCASE), 'Anthem Choir',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                 COLLATE NOCASE), 'RealGuitar',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                 COLLATE NOCASE), 'RealLPC',                                         'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Absynth',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Action Strikes',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Arkhis',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Drum Lab',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Kontakt Factory Library',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Massive X',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Rise & Hit',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Session Guitarist: Electric Sunburst',            'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Session Guitarist: Picked Nylon',                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Spotlight Collection: Cuba',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Vintage Organs',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Premier Sound Factory'    COLLATE NOCASE), 'Drum Tree',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Premier Sound Factory'    COLLATE NOCASE), 'Acoustic Bass Premier G',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'reFX'                     COLLATE NOCASE), 'NEXUS',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                  COLLATE NOCASE), 'Jay-Bass',                                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                  COLLATE NOCASE), 'Pre-Bass',                                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Shan'                     COLLATE NOCASE), 'Soundfont - SGM V2.01',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Heart of Asia',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Keyscape',                                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Omnisphere',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Omnisphere 2',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Liquid Grooves S.A.G.E Xpander',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Stylus RMX',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Trilian',                                         'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'           COLLATE NOCASE), 'Chamber Strings',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'           COLLATE NOCASE), 'Hans Zimmer Percussion',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'           COLLATE NOCASE), 'LABS Drums',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'           COLLATE NOCASE), 'Symphonic Brass',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'           COLLATE NOCASE), 'Symphonic Woodwinds',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'Dark Planet',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion 4',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion Sonic',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion Sonic 2',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion Sonic SE',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'Hypnotic Dance',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'The Grand 3',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'Triebwerk',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Strezov Sampling'         COLLATE NOCASE), 'Rhodope 2: Ethnic Bulgarian Choir',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Toontrack'                COLLATE NOCASE), 'EZdrummer 2',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'              COLLATE NOCASE), 'Cinematic Timeshift',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'              COLLATE NOCASE), 'Elastik 3 Demo',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'              COLLATE NOCASE), 'Neurofunk',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (02-Fretted)',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (04-Synths and co)',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (Loops)',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vengeance Sound'          COLLATE NOCASE), 'Essential Clubsounds Vol. 2',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vengeance Sound'          COLLATE NOCASE), 'EDM Essentials Vol. 1',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'Special Edition Vol. 1',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'Vienna Imperial',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Vir2'                     COLLATE NOCASE), 'Electri6ity',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Xfer Records'             COLLATE NOCASE), 'Serum',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                COLLATE NOCASE), 'Addictive Drums',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                COLLATE NOCASE), 'Addictive Drums 2',                               'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'YMCK'                     COLLATE NOCASE), 'Magical8bitplug',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Dance Pack 1',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Escape from Planet of the Breaks',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Creative Essentials Vol. 30 Orchestral Flavours', 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'FXpansion'                COLLATE NOCASE), 'BFD3',                                            'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                  COLLATE NOCASE), 'Unknown',                                         NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Scarlet and Pokémon Violet',
   'Nintendo Switch',
   'November 18, 2022',
   'Minako Adachi, Junichi Masuda, Go Ichinose, Hitomi Sato, Hiromitsu Maeba, Teruo Taniguchi, Toby Fox, Yuri Habuka',
   'minako adachi, junichi masuda, go ichinose, hitomi sato, hiromitsu maeba, teruo taniguchi, toby fox, yuri habuka',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Rows 4102-4104: Live Performance rows -> main (product_id NULL; raw_source patched below)
  -- Row 4102: Live Performance: Junnosuke Fujita — Cannonball A5-BR
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   NULL, NULL, NULL, NULL, 'Academy Ace Tournament',
   'main', 'newer_vgm', 1),

  -- Row 4103: Live Performance: Sorao Mori — Addictone ARENA
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   NULL, NULL, NULL, 'most likely estimate', 'Tera Raid Battle, Star Barrage',
   'main', 'newer_vgm', 2),

  -- Row 4104: Live Performance: Toby Fox — Breathing
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   NULL, NULL, NULL, 'at end of the loop, confirmed by SMC Booklet', 'Battle! (Zero Lab)',
   'main', 'newer_vgm', 3),

  -- Rows 4105-4106: Sample: GAME FREAK rows -> main (product_id NULL; raw_source patched below)
  -- Row 4105
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   NULL, 'Arrangement: Go Ichinose', 'Battle! (Pokémon in Area Zero)', NULL, 'Battle! (Area Zero Pokémon 2)',
   'main', 'newer_vgm', 4),

  -- Row 4106
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   NULL, 'Arrangement: Toby Fox', 'Battle! (Zero Lab)', 'bell layer', 'Victory! (Zero Lab)',
   'main', 'newer_vgm', 5),

  -- Row 4107
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Aa6kHMGE0' COLLATE NOCASE AND p.name = 'Soundfont - THFont' COLLATE NOCASE),
   '-', 'Solo Bo_0_57', NULL, 'Academy Ace Tournament',
   'main', 'newer_vgm', 6),

  -- Row 4108
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Aaron Venture' COLLATE NOCASE AND p.name = 'Infinite Brass' COLLATE NOCASE),
   '-', 'Trumpet [1-4]', 'Mutes', 'Battle! (Director Clavell), Escape from the Cave',
   'main', 'newer_vgm', 7),

  -- Row 4109
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Aaron Venture' COLLATE NOCASE AND p.name = 'Infinite Brass' COLLATE NOCASE),
   '-', 'Tenor Trombone [1-3]', NULL, 'Battle! (Director Clavell), Escape from the Cave',
   'main', 'newer_vgm', 8),

  -- Row 4110
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Aaron Venture' COLLATE NOCASE AND p.name = 'Infinite Brass' COLLATE NOCASE),
   '-', 'Bass Trombone [1-3]', NULL, 'Battle! (Director Clavell), Escape from the Cave',
   'main', 'newer_vgm', 9),

  -- Row 4111
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Aaron Venture' COLLATE NOCASE AND p.name = 'Infinite Brass' COLLATE NOCASE),
   '-', 'Tuba', NULL, 'Battle! (Director Clavell)',
   'main', 'newer_vgm', 10),

  -- Row 4112
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Aaron Venture' COLLATE NOCASE AND p.name = 'Infinite Brass' COLLATE NOCASE),
   '-', 'Horn [1-6]', NULL, 'Escape from the Cave',
   'main', 'newer_vgm', 11),

  -- Row 4113
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'B-3 V' COLLATE NOCASE),
   'Standard', 'Soul Sacrifice', NULL, 'A Test of Strength',
   'main', 'newer_vgm', 12),

  -- Row 4114
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audio Modeling' COLLATE NOCASE AND p.name = 'SWAM Flute' COLLATE NOCASE),
   NULL, NULL, NULL, 'Academy Ace Tournament',
   'main', 'newer_vgm', 13),

  -- Row 4115
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol1', '07 Sax Tenor Solo', NULL, 'Battle! (Wild Pokémon), Emotional Spectrum Practice',
   'main', 'newer_vgm', 14),

  -- Row 4116
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol1', '31 Trombone Solo', NULL, 'Emotional Spectrum Practice',
   'main', 'newer_vgm', 15),

  -- Row 4117
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol1', '55 Trumpet Section', NULL, 'Battle! (Wild Pokémon), Victory! (Wild Pokémon), Emotional Spectrum Practice',
   'main', 'newer_vgm', 16),

  -- Row 4118
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'BOWED INSTRUMENTS -> GAOHU', 'Gaohu Licks TM', NULL, 'North Province (Area Two)',
   'main', 'newer_vgm', 17),

  -- Row 4119
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'CONSTRUCTION SETS -> MID EAST SETS', 'Mid East Set 80 TM SYNC', 'C3, C#3, D3', 'Alfornada',
   'main', 'newer_vgm', 18),

  -- Row 4120
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> BELLS + CHIMES', 'Belltree', 'G3', 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 19),

  -- Row 4121
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> BELLS + CHIMES', 'Vietnam Bells Loop 2', 'B3, D4', 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 20),

  -- Row 4122
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> METALLOPHONES', 'Glockenspiel KEY', NULL, 'Let''s Make a Sandwich!',
   'main', 'newer_vgm', 21),

  -- Row 4123
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'KEY INSTRUMENTS', 'Dallape Accordion Key', NULL, 'Battle! (Arven), East Province, Battle! (East Province Wild Pokémon), Home, Cabo Poco, Gym Reception',
   'main', 'newer_vgm', 22),

  -- Row 4124
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'KEY INSTRUMENTS', 'Shanghai Babypiano', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 23),

  -- Row 4125
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> SITAR + TAMPURA', 'Sitar KEY', 'Add 1/6 delay', 'Area Zero',
   'main', 'newer_vgm', 24),

  -- Row 4126
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'WORLD PERCUSSION -> TAMBOURINES + JINGLES', 'Tunis Tamburin + Loops BM', 'tambourine', 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 25),

  -- Row 4127
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'HH 001-052', '15C-CHH020', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 26),

  -- Row 4128
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'HH 001-052', '15C-CHH021', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 27),

  -- Row 4129
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'bigsquid2001' COLLATE NOCASE AND p.name = 'Soundfont - Squidfont Orchestral' COLLATE NOCASE),
   '-', 'Vins II Detache', NULL, 'Academy Ace Tournament, Battle! (Zero Lab)',
   'main', 'newer_vgm', 28),

  -- Row 4130
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'Tina Guo Acoustic Cello Legato' COLLATE NOCASE),
   '-', 'AS Tina Guo Legato', NULL, 'Hasta la Vistar! ☆',
   'main', 'newer_vgm', 29),

  -- Row 4131
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Discovery Japan' COLLATE NOCASE),
   'Track 54', '-', 'Jinglebell (Suzu) - Pitched up 400 cents', 'Area Zero',
   'main', 'newer_vgm', 30),

  -- Row 4132
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '22-Accordian', NULL, 'West Province',
   'main', 'newer_vgm', 31),

  -- Row 4133
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 065-72 REED', '66-Alto Sax', NULL, 'Mesagoza, The Academy, Welcome to Paldea',
   'main', 'newer_vgm', 32),

  -- Row 4134
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 073-080 PIPE', '75-Recorder MOD', NULL, 'Los Platos/Cortondo',
   'main', 'newer_vgm', 33),

  -- Row 4135
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Gypsy' COLLATE NOCASE),
   'Flamenco Dancer', 'Castanets', NULL, 'West Province',
   'main', 'newer_vgm', 34),

  -- Row 4136
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Wind -> Pan Flute', 'Pan Flute KS C0-D#0', NULL, 'West Province',
   'main', 'newer_vgm', 35),

  -- Row 4137
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Mid East -> Plucked -> Santoor', 'Santoor KS C0-G#0', NULL, 'Artazon, East Province',
   'main', 'newer_vgm', 36),

  -- Row 4138
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Instruments -> Sopranos -> SOPR vowels', 'SOPR oh DXF C0-D#0', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 37),

  -- Row 4139
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 5 Keysw', '4TB KS Master', NULL, 'South Province, Victory! (Titan)',
   'main', 'newer_vgm', 38),

  -- Row 4140
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 5 Keysw', '4TP KS Master', NULL, 'Tagtree Thicket',
   'main', 'newer_vgm', 39),

  -- Row 4141
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH Rips S', NULL, 'South Province, Across the Skies of Paldea',
   'main', 'newer_vgm', 40),

  -- Row 4142
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, 'South Province',
   'main', 'newer_vgm', 41),

  -- Row 4143
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '18 Cymbal', NULL, 'South Province',
   'main', 'newer_vgm', 42),

  -- Row 4144
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '20 Cymbal', NULL, 'South Province',
   'main', 'newer_vgm', 43),

  -- Row 4145
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '20 French Cymbal', NULL, 'South Province',
   'main', 'newer_vgm', 44),

  -- Row 4146
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', '3 Snares', 'close mic', 'South Province',
   'main', 'newer_vgm', 45),

  -- Row 4147
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Bass Drum Concert', 'close mic', 'South Province',
   'main', 'newer_vgm', 46),

  -- Row 4148
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', NULL, 'South Province',
   'main', 'newer_vgm', 47),

  -- Row 4149
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', NULL, 'Mesagoza, The Academy, Battle! (Trainer Battle)',
   'main', 'newer_vgm', 48),

  -- Row 4150
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', NULL, 'South Province, The Academy, Welcome to Paldea, Battle! (Top Champion)',
   'main', 'newer_vgm', 49),

  -- Row 4151
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Xylophone', NULL, 'North Province (Area Two)',
   'main', 'newer_vgm', 50),

  -- Row 4152
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 9 Double Basses -> 5 Keysw', 'CBS KS Master', NULL, 'South Province',
   'main', 'newer_vgm', 51),

  -- Row 4153
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Cellos -> 5 Keysw', 'VCS KS Master', NULL, 'South Province',
   'main', 'newer_vgm', 52),

  -- Row 4154
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'South Province, Cabo Poco, Home, Battle! (Trainer Battle), Time to Relax, Battle! (Elite Four)',
   'main', 'newer_vgm', 53),

  -- Row 4155
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 2 Short', 'SVL Pizz', NULL, 'Time to Relax, West Province',
   'main', 'newer_vgm', 54),

  -- Row 4156
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 5 Keysw', 'SVL KS Master', NULL, 'The Academy, Time to Relax, Poco Path',
   'main', 'newer_vgm', 55),

  -- Row 4157
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Piccolo Flute -> 5 Keysw', 'PFL KS Master', NULL, 'South Province',
   'main', 'newer_vgm', 56),

  -- Row 4158
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Embertone' COLLATE NOCASE AND p.name = 'Chapman Trumpet' COLLATE NOCASE),
   '-', 'Chapman Trumpet', NULL, 'A Brief Moment, Earnest Feelings',
   'main', 'newer_vgm', 57),

  -- Row 4159
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'e-instruments' COLLATE NOCASE AND p.name = 'Session Horns Pro' COLLATE NOCASE),
   'Solo Instruments', 'Tenor Sax', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 58),

  -- Row 4160
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Gregjazz' COLLATE NOCASE AND p.name = 'Soundfont - Ultimate Guitar Kit 2' COLLATE NOCASE),
   NULL, NULL, NULL, 'Academy Ace Tournament, Battle! (Zero Lab)',
   'main', 'newer_vgm', 59),

  -- Row 4161
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'ASPIRE - Modern Mallets' COLLATE NOCASE),
   'Core Mallets', 'Lush Bowed Vibes', 'layered with another mallet', 'Going through the Inlet Grotto, Battle in the Grotto',
   'main', 'newer_vgm', 60),

  -- Row 4162
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Organic  Full', 'B1', 'Battle! (The Top Champion)',
   'main', 'newer_vgm', 61),

  -- Row 4163
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Mangled Pop  Full', 'C4', 'The Academy, Welcome to Paldea',
   'main', 'newer_vgm', 62),

  -- Row 4164
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 03 Metals', 'PERC Cymbals Menu Studio', 'B4', 'Gym Test',
   'main', 'newer_vgm', 63),

  -- Row 4165
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> Straight -> 01 All Star Loops (STR)', 'All Star - Industrial Cinematic (STR)', 'E4 [Murderous (High)]', 'Battle! (Area Zero Pokémon 2)',
   'main', 'newer_vgm', 64),

  -- Row 4166
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> Straight -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Check Note', 'Battle! (Elite Four), Battle! (The Top Champion)',
   'main', 'newer_vgm', 65),

  -- Row 4167
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Evolve Mutations' COLLATE NOCASE),
   '4 Tonality and FX -> Pads and FX', 'APT Pulsing Sun', NULL, 'The Pokémon League Interview',
   'main', 'newer_vgm', 66),

  -- Row 4168
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image Line' COLLATE NOCASE AND p.name = '3xOsc' COLLATE NOCASE),
   '-', 'Rounded Saw', NULL, 'Tera Raid Battle',
   'main', 'newer_vgm', 67),

  -- Row 4169
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image Line' COLLATE NOCASE AND p.name = '3xOsc' COLLATE NOCASE),
   '-', 'Square', NULL, 'Tera Raid Battle, Battle! (Zero Lab)',
   'main', 'newer_vgm', 68),

  -- Row 4170
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image Line' COLLATE NOCASE AND p.name = 'FL Studio 10' COLLATE NOCASE),
   'Packs -> Legacy -> Drums -> Dance', 'Clap Basic', NULL, 'Academy Ace Tournament, Battle! (Zero Lab)',
   'main', 'newer_vgm', 69),

  -- Row 4171
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image Line' COLLATE NOCASE AND p.name = 'FL Studio 10' COLLATE NOCASE),
   'Packs -> Legacy -> Drums -> Dance', 'Kick Basic', NULL, 'Academy Ace Tournament, Battle! (Zero Lab)',
   'main', 'newer_vgm', 70),

  -- Row 4172
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image Line' COLLATE NOCASE AND p.name = 'FL Studio 10' COLLATE NOCASE),
   'Packs -> Legacy -> Drums -> Kits -> Drum Kit 04', 'FLS_Crash 04c', 'Reversed', 'Battle! (Zero Lab)',
   'main', 'newer_vgm', 71),

  -- Row 4173
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Shreddage' COLLATE NOCASE),
   'Patches -> Double Tracked', 'DT All Open Sustains Mutes', 'Amped with Guitar Rig - Slip Note Wide', 'Battle! (The Top Champion)',
   'main', 'newer_vgm', 72),

  -- Row 4174
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Shreddage Bass 2' COLLATE NOCASE),
   '-', '-', NULL, 'Tera Raid Battle, Academy Ace Tournament',
   'main', 'newer_vgm', 73),

  -- Row 4175
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Shreddage X' COLLATE NOCASE),
   '-', 'Shreddage X', NULL, 'Academy Ace Tournament',
   'main', 'newer_vgm', 74),

  -- Row 4176
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'Fat Slap combi KS A-1', 'Wild Pokémon Area Zero uses Keyswitch B1', 'Battle! (Area Zero Pokémon), Batʇlə! (■■■)',
   'main', 'newer_vgm', 75),

  -- Row 4177
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '16 Pop Brass Section', 'Brass Section BIG KS C1-F1 & Mic Modeler 1', NULL, 'The Battle Stadium',
   'main', 'newer_vgm', 76),

  -- Row 4178
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '16 Pop Brass Section', 'Brass Section Combi BIG KS C1-F1 & Mic Modeler 1', NULL, 'Batʇlə! (■■■), Battle! (Arven)',
   'main', 'newer_vgm', 77),

  -- Row 4179
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '19 Synthesizers -> # Basic Synthesizer Layers', 'Digital Square', NULL, 'Mystery Gift, Pokémon Center, Pokémon Healed',
   'main', 'newer_vgm', 78),

  -- Row 4180
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Matt Montag' COLLATE NOCASE AND p.name = 'NES VST' COLLATE NOCASE),
   '-', 'Duty Cycle', NULL, 'Tera Raid Battle',
   'main', 'newer_vgm', 79),

  -- Row 4181
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicalSampling' COLLATE NOCASE AND p.name = 'Austin Saxes' COLLATE NOCASE),
   '-', 'Tuned - Alto Workhorse', NULL, 'The Name''s Clive',
   'main', 'newer_vgm', 80),

  -- Row 4182
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicalSampling' COLLATE NOCASE AND p.name = 'Austin Saxes' COLLATE NOCASE),
   '-', 'Tuned - Baritone Workhorse', NULL, 'The Name''s Clive',
   'main', 'newer_vgm', 81),

  -- Row 4183
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicalSampling' COLLATE NOCASE AND p.name = 'Austin Saxes' COLLATE NOCASE),
   '-', 'Tuned - Tenor Workhorse', NULL, 'The Name''s Clive',
   'main', 'newer_vgm', 82),

  -- Row 4184
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Fingered', NULL, 'Still at the Gym Test',
   'main', 'newer_vgm', 83),

  -- Row 4185
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Stereo (290 MB)', NULL, 'Artazon, A Stroll through the East Province, East Province, Battle! (The Top Champion)',
   'main', 'newer_vgm', 84),

  -- Row 4186
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealLPC' COLLATE NOCASE),
   '-', 'RealLPC', 'enable G-0 SlideUp keyswitch', 'Battle! (Nemona), Battle! (Champion Nemona), Let''s Try to Get Stronger!',
   'main', 'newer_vgm', 85),

  -- Row 4187
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth 5', 'Chillout', NULL, 'The Iono Zone',
   'main', 'newer_vgm', 86),

  -- Row 4188
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', '808 Clap', NULL, 'Levincia',
   'main', 'newer_vgm', 87),

  -- Row 4189
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', '808 Kick 2', NULL, 'Levincia',
   'main', 'newer_vgm', 88),

  -- Row 4190
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', '808 Snare 2', NULL, 'Levincia',
   'main', 'newer_vgm', 89),

  -- Row 4191
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Bubblejack', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 90),

  -- Row 4192
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Chorditron Lead', NULL, 'Levincia',
   'main', 'newer_vgm', 91),

  -- Row 4193
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Come Alive LFO', NULL, 'The Iono Zone',
   'main', 'newer_vgm', 92),

  -- Row 4194
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Grandpa Tom', NULL, 'Levincia',
   'main', 'newer_vgm', 93),

  -- Row 4195
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Hammer Tom', NULL, 'Levincia',
   'main', 'newer_vgm', 94),

  -- Row 4196
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Square Pad With Flange', NULL, 'Battle! (Champion Nemona), Levincia',
   'main', 'newer_vgm', 95),

  -- Row 4197
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Pop Bass', NULL, 'Battle! (East Province Wild Pokémon), East Province, Montenevera',
   'main', 'newer_vgm', 96),

  -- Row 4198
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Marimba', NULL, 'Caught A Wild Pokémon!',
   'main', 'newer_vgm', 97),

  -- Row 4199
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Xylophone', NULL, 'North Province (Area Two)',
   'main', 'newer_vgm', 98),

  -- Row 4200
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive X' COLLATE NOCASE),
   'Rush -> Synth Misc', 'Aboree Deep', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 99),

  -- Row 4201
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive X' COLLATE NOCASE),
   'Mechanix -> Synth Misc', 'A Lost Lighthouse', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 100),

  -- Row 4202
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive X' COLLATE NOCASE),
   'MX 1.0 Library -> Synth Misc', 'Advanced Optics', 'Modwheel controlling cutoff', 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 101),

  -- Row 4203
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '02 - Hybrid Orchestra', 'Wrecked Orchestra', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 102),

  -- Row 4204
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '02 - Hybrid Orchestra', 'Strings'' Decline', NULL, 'Battle! (Trainer Battle)',
   'main', 'newer_vgm', 103),

  -- Row 4205
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '06 - Into The Void', 'Lost Siren', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 104),

  -- Row 4206
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '07 - Lifters', 'Nasty Lift Up', NULL, 'Passed the Interview',
   'main', 'newer_vgm', 105),

  -- Row 4207
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Session Guitarist: Electric Sunburst' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (West Province Wild Pokémon), West Province',
   'main', 'newer_vgm', 106),

  -- Row 4208
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '1 - Percussion Ensembles', 'Hand Percussion Ensemble', 'C#1', 'Battle! (Arven)',
   'main', 'newer_vgm', 107),

  -- Row 4209
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '1 - Percussion Ensembles', 'Rumba Ensemble', 'F1, G1', 'Battle! (Arven)',
   'main', 'newer_vgm', 108),

  -- Row 4210
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '1 - Percussion Ensembles', 'Salsa Ensemble', 'F1, F#1', 'Still at the Gym Test, The Battle Stadium',
   'main', 'newer_vgm', 109),

  -- Row 4211
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '2 - Single Percussion', 'Timbales', NULL, 'Still at the Gym Test',
   'main', 'newer_vgm', 110),

  -- Row 4212
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '4 - Melodic Instruments', 'Bass', NULL, 'Still at the Gym Test, Take a Break',
   'main', 'newer_vgm', 111),

  -- Row 4213
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '4 - Melodic Instruments', 'Tres', NULL, 'Still at the Gym Test',
   'main', 'newer_vgm', 112),

  -- Row 4214
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Vintage Organs' COLLATE NOCASE),
   '2 - Jazz', 'Groove Holmes', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 113),

  -- Row 4215
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Premier Sound Factory' COLLATE NOCASE AND p.name = 'Drum Tree' COLLATE NOCASE),
   'Greatest Hits', '60''s Detroit Pop', NULL, 'The Name''s Clive',
   'main', 'newer_vgm', 114),

  -- Row 4216
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'NEXUS' COLLATE NOCASE),
   'Dance Leads', 'LD Supersaw x4', NULL, 'Battle! (Team Star)',
   'main', 'newer_vgm', 115),

  -- Row 4217
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'NEXUS' COLLATE NOCASE),
   'Plucked', 'PL Poppy Bells', NULL, 'Battle! (Team Star)',
   'main', 'newer_vgm', 116),

  -- Row 4218
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'NEXUS' COLLATE NOCASE),
   'Synthetic Brass', 'BR Analog Brass 2', NULL, 'Battle! (Team Star)',
   'main', 'newer_vgm', 117),

  -- Row 4219
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'NEXUS' COLLATE NOCASE),
   'Textures and FX', 'FX Hihat Groove', NULL, 'Team Star',
   'main', 'newer_vgm', 118),

  -- Row 4220
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'NEXUS' COLLATE NOCASE),
   'Vengeance Christmas 2012 Expansion -> Bell (BL)', 'Game Clock', NULL, 'Battle! (Cassiopeia)',
   'main', 'newer_vgm', 119),

  -- Row 4221
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Jay-Bass' COLLATE NOCASE),
   '-', 'Scarbee Jay-Bass - Slap - Both', NULL, 'Battle! (South Province Wild Pokémon), Battle! (West Province Wild Pokémon)',
   'main', 'newer_vgm', 120),

  -- Row 4222
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Pre-Bass' COLLATE NOCASE),
   '-', 'Scarbee Pre-Bass', 'Use slide mode - MIDI CC#64', 'Los Platos/Cortondo',
   'main', 'newer_vgm', 121),

  -- Row 4223
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'BRASS', NULL, 'Academy Ace Tournament',
   'main', 'newer_vgm', 122),

  -- Row 4224
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'Round Glock', 'check note', 'Battle! (Zero Lab), Victory! (Zero Lab)',
   'main', 'newer_vgm', 123),

  -- Row 4225
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'Piano 1', NULL, 'Tera Raid Battle, Battle! (Zero Lab),',
   'main', 'newer_vgm', 124),

  -- Row 4226
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'Piano 3', NULL, 'Academy Ace Tournament',
   'main', 'newer_vgm', 125),

  -- Row 4227
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'Tubular Bells', NULL, 'Tera Raid Battle, Academy Ace Tournament',
   'main', 'newer_vgm', 126),

  -- Row 4228
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'Violin', NULL, 'Battle! (Zero Lab)',
   'main', 'newer_vgm', 127),

  -- Row 4229
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'Strings', NULL, 'Tera Raid Battle',
   'main', 'newer_vgm', 128),

  -- Row 4230
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'Synth Strings 1', NULL, 'Battle! (Zero Lab)',
   'main', 'newer_vgm', 129),

  -- Row 4231
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'Impact Hit', NULL, 'Academy Ace Tournament, Battle! (Zero Lab)',
   'main', 'newer_vgm', 130),

  -- Row 4232
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'Choir Aahs', 'bitrcrush + 180 release for AI Prof', 'Tera Raid Battle, Battle! (Zero Lab)',
   'main', 'newer_vgm', 131),

  -- Row 4233
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   '-', 'Xylophone', NULL, 'Academy Ace Tournament',
   'main', 'newer_vgm', 132),

  -- Row 4234
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   'CD 1 -> Partition H -> TAMPURA', 'TAMPURA TT', 'TAMP DRON2 is the sample in the patch', 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 133),

  -- Row 4235
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Keyscape Library -> Keyboards', 'LA Custom C7 Grand Piano', NULL, 'Hasta la Vistar! ☆, Heart, Clive''s True Identity, Get a Little More Fun Out of this Adventure!',
   'main', 'newer_vgm', 134),

  -- Row 4236
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Keyscape Library -> Keyboards', 'LA Custom C7 - Rock', NULL, 'Escape from the Cave',
   'main', 'newer_vgm', 135),

  -- Row 4237
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Astral Planetarium Sweep', NULL, 'Battle! (Cassiopeia)',
   'main', 'newer_vgm', 136),

  -- Row 4238
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Retro Land', 'Clink Theremin', NULL, 'Area Zero',
   'main', 'newer_vgm', 137),

  -- Row 4239
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Hard Plastic PolyLead', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 138),

  -- Row 4240
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Liquid Grooves S.A.G.E Xpander' COLLATE NOCASE),
   '055-Sand Castles', '055-Sand Castles Mix 2', 'Altered to fit time signature', 'Battle! (Eastern Pokémon)',
   'main', 'newer_vgm', 139),

  -- Row 4241
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 71-Gangois', '71-Gangois', NULL, 'Montenevera',
   'main', 'newer_vgm', 140),

  -- Row 4242
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 82-Baghead', '82-Baghead b', 'Use only 1st quarter of loop', 'Mystery Gift',
   'main', 'newer_vgm', 141),

  -- Row 4243
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 107-Zolar Plexus', '107-Zolar Plexus d', NULL, 'Battle! (West Province Wild Pokémon)',
   'main', 'newer_vgm', 142),

  -- Row 4244
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Bongos', '82-Bongos', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 143),

  -- Row 4245
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Bongos', '85-Bongos 2', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 144),

  -- Row 4246
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Bongos', '105-Bongos', 'edited to be swing', 'A Tune at Mesagoza',
   'main', 'newer_vgm', 145),

  -- Row 4247
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '118-Congas', 'EQ', 'Battle! (South Province Wild Pokémon)',
   'main', 'newer_vgm', 146),

  -- Row 4248
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Cowbells', '93-Agogos', 'ones of the slices is used', 'Levincia',
   'main', 'newer_vgm', 147),

  -- Row 4249
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Cowbells', '105-Cowbell', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 148),

  -- Row 4250
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Tambourines', '122-Tambourine', NULL, 'Let''s Try To Get Stronger!',
   'main', 'newer_vgm', 149),

  -- Row 4251
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 77-Desert Fog', '77-Desert Fog HiHat', NULL, 'Snow Slope Run',
   'main', 'newer_vgm', 150),

  -- Row 4252
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 77-Desert Fog', '77-Desert Fog Kick', NULL, 'Snow Slope Run',
   'main', 'newer_vgm', 151),

  -- Row 4253
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 77-Desert Fog', '77-Desert Fog Perc', NULL, 'Snow Slope Run',
   'main', 'newer_vgm', 152),

  -- Row 4254
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 77-Desert Fog', '77-Desert Fog Snare', NULL, 'Snow Slope Run',
   'main', 'newer_vgm', 153),

  -- Row 4255
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 77-Desert Fog', '77-Desert Fog Toms', NULL, 'Snow Slope Run',
   'main', 'newer_vgm', 154),

  -- Row 4256
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Bossa Love', '79-BossaLuv Combo a', NULL, 'Time to Relax',
   'main', 'newer_vgm', 155),

  -- Row 4257
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Bossa Love', '79-BossaLuv Vinyl Mix', NULL, 'Time to Eat',
   'main', 'newer_vgm', 156),

  -- Row 4258
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 80-Space Ranger', '80-Space Ranger Combo', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 157),

  -- Row 4259
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 86-Outlaw', '86-Outlaw Combo', NULL, 'Batʇlə! (■■■)',
   'main', 'newer_vgm', 158),

  -- Row 4260
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 115-Optoman', '115-Optoman Perc + Metal', NULL, 'Professor Sada / Professor Turo',
   'main', 'newer_vgm', 159),

  -- Row 4261
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 140-Atomic ZOO', '140-Atomic ZOO Combo', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 160),

  -- Row 4262
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 143-Mind Bender', '143-Mind Bender Combo 2', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 161),

  -- Row 4263
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', 'Trilian Ac 1 - Full Range All', 'Pitch bend ranges 12', 'Battle! (Titan)',
   'main', 'newer_vgm', 162),

  -- Row 4264
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Chamber Strings' COLLATE NOCASE),
   '-', 'a - Violins 1', 'Trill (Major 2nd) to Tremolo towards end of loop', 'A Brief Moment',
   'main', 'newer_vgm', 163),

  -- Row 4265
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Hans Zimmer Percussion' COLLATE NOCASE),
   NULL, 'Hans Zimmer Timpani (HZ AE)', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer), Battle! (Top Champion), Victory! (Top Champion)',
   'main', 'newer_vgm', 164),

  -- Row 4266
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'LABS Drums' COLLATE NOCASE),
   '-', 'Spitfire Labs - Drums', NULL, 'Tera Raid Battle, Academy Ace Tournament',
   'main', 'newer_vgm', 165),

  -- Row 4267
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Brass' COLLATE NOCASE),
   '-', 'd - Tenor Trombone Solo', NULL, 'Battle (Top Champion)',
   'main', 'newer_vgm', 166),

  -- Row 4268
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Brass' COLLATE NOCASE),
   '-', 'j - Trumpet Solo', NULL, 'South Province, Battle! (Wild Pokemon), Battle! (Elite Four), Battle (Top Champion), Victory! (Top Champion), Poco Path, Battle! (South Province Wild Pokémon),',
   'main', 'newer_vgm', 167),

  -- Row 4269
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'b - Flute Solo', 'See note:', 'A Brief Moment',
   'main', 'newer_vgm', 168),

  -- Row 4270
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Dark Planet' COLLATE NOCASE),
   'Synth Lead', 'Big Epic Fifth', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 169),

  -- Row 4271
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Bright Concert Grand', NULL, 'Battle! (Arven), Battle! (Titan), Batʇlə! (■■■), Battle! (Calamity Pokémon), Victory! (Titan)',
   'main', 'newer_vgm', 170),

  -- Row 4272
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 FM E-Piano 1', NULL, 'Battle! (Arven), Battle! (Titan)',
   'main', 'newer_vgm', 171),

  -- Row 4273
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', 'Himalayan Chimes', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 172),

  -- Row 4274
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Oct Bass', NULL, 'Battle! (Trainer Battle), Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 173),

  -- Row 4275
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Fooling', NULL, 'Battle! (Arven)',
   'main', 'newer_vgm', 174),

  -- Row 4276
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Lead', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 175),

  -- Row 4277
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '5th Lead', NULL, 'Battle! (Trainer Battle), Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 176),

  -- Row 4278
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Big Band Harmon Section', NULL, 'Battle! (Titan)',
   'main', 'newer_vgm', 177),

  -- Row 4279
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bright Mini Lead', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 178),

  -- Row 4280
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Crossover Pick Bass', NULL, 'Battle! (The Top Champion)',
   'main', 'newer_vgm', 179),

  -- Row 4281
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'D6 Clavi Straight', NULL, 'Battle! (Arven)',
   'main', 'newer_vgm', 180),

  -- Row 4282
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Dream Sequence', NULL, 'The Pokémon League Interview',
   'main', 'newer_vgm', 181),

  -- Row 4283
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Finger JB', NULL, 'Trainers'' Eyes Meet (Trainer)',
   'main', 'newer_vgm', 182),

  -- Row 4284
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Flute', NULL, 'Battle! (Arven)',
   'main', 'newer_vgm', 183),

  -- Row 4285
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Glocken Velo', NULL, 'Battle! (Arven), Los Platos/Cortondo',
   'main', 'newer_vgm', 184),

  -- Row 4286
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Master Accordion', 'Entirely layered with Dallape Accordion Key', 'Battle! (Arven)',
   'main', 'newer_vgm', 185),

  -- Row 4287
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Muted Trumpet XXL', NULL, 'Battle! (Arven)',
   'main', 'newer_vgm', 186),

  -- Row 4288
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Muted-Harmonics Pick EBass', NULL, 'Battle! (Nemona)',
   'main', 'newer_vgm', 187),

  -- Row 4289
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'One Finger Funk GLP', NULL, 'Emotional Spectrum Practice',
   'main', 'newer_vgm', 188),

  -- Row 4290
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'One Finger Funk Slap Bass 2', NULL, 'Emotional Spectrum Practice',
   'main', 'newer_vgm', 189),

  -- Row 4291
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'One Finger Funk Strat', NULL, 'Emotional Spectrum Practice',
   'main', 'newer_vgm', 190),

  -- Row 4292
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'P-Bass RW Pick Studio', NULL, 'Battle & Victory! (Gym Leader)',
   'main', 'newer_vgm', 191),

  -- Row 4293
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Studio Slap Bass', NULL, 'Emotional Spectrum Practice',
   'main', 'newer_vgm', 192),

  -- Row 4294
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Sync Organ', NULL, 'Professor Sado / Professor Turo',
   'main', 'newer_vgm', 193),

  -- Row 4295
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Vibraphone Long', NULL, 'Artazon',
   'main', 'newer_vgm', 194),

  -- Row 4296
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Xylophone', 'Add delay in Area Zero', 'Time to Relax, Area Zero',
   'main', 'newer_vgm', 195),

  -- Row 4297
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'Auron Set', 'Ambinet Glasslight', 'Turn down Reverb Mix dial a little', 'Area Zero',
   'main', 'newer_vgm', 196),

  -- Row 4298
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'Voltage Set', 'Against The Current', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 197),

  -- Row 4299
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'Voltage Set', 'Cut Bass', NULL, 'Area Zero',
   'main', 'newer_vgm', 198),

  -- Row 4300
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Digi Bass', 'Turn down Delay Mix dial. Velocities = 90', 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 199),

  -- Row 4301
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Ethno Attack', 'Turn down Delay Mix and Hall Mix dials', 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 200),

  -- Row 4302
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Fingered Music Man', NULL, 'Time to Relax',
   'main', 'newer_vgm', 201),

  -- Row 4303
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Orchestral Hits', NULL, 'Levincia',
   'main', 'newer_vgm', 202),

  -- Row 4304
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 011] Music Box', NULL, 'Time to Relax',
   'main', 'newer_vgm', 203),

  -- Row 4305
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 013] Marimba', NULL, 'Los Platos - Cortondo',
   'main', 'newer_vgm', 204),

  -- Row 4306
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 046] Pizzicato Strings', NULL, 'Area Zero',
   'main', 'newer_vgm', 205),

  -- Row 4307
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Battle! (Arven), Batʇlə! (■■■), Battle! (Titan), Battle! (Area Zero Pokémon), Area Zero, Across the Skies of Paldea',
   'main', 'newer_vgm', 206),

  -- Row 4308
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 081] Lead 1 (Square)', NULL, 'Area Zero, Battle! (Nemona), Pokédex Evaluation... It''s Perfect!',
   'main', 'newer_vgm', 207),

  -- Row 4309
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Hybrid Set', 'Eighties Sample Hit', NULL, 'Battle! (The Top Champion), Battle! (Elite Four), Battle & Victory! (Gym Leader)',
   'main', 'newer_vgm', 208),

  -- Row 4310
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Hybrid Set', 'Grammophone Muted Trumpet', NULL, 'Battle! (Titan)',
   'main', 'newer_vgm', 209),

  -- Row 4311
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Boost Tines', 'Add reverb', 'Area Zero',
   'main', 'newer_vgm', 210),

  -- Row 4312
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Expressive Flute', NULL, 'Time to Relax',
   'main', 'newer_vgm', 211),

  -- Row 4313
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Soft Tenor Sax', 'Add reverb, EQ and increase Brilliance', 'Let''s Try to Get Stronger!',
   'main', 'newer_vgm', 212),

  -- Row 4314
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Trip Set', 'Acid Reflux', NULL, 'Battle & Victory! (Gym Leader)',
   'main', 'newer_vgm', 213),

  -- Row 4315
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Hypnotic Dance' COLLATE NOCASE),
   'Synth Lead', 'StepMod PWM1', NULL, 'The Pokémon League Interview',
   'main', 'newer_vgm', 214),

  -- Row 4316
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'The Grand 3' COLLATE NOCASE),
   '01 Yamaha C7', 'Player', 'add delay', 'Cascarrafa',
   'main', 'newer_vgm', 215),

  -- Row 4317
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Triebwerk' COLLATE NOCASE),
   'Drum&Perc -> Beats', 'Triebwerk Beat 72 - 125', NULL, 'Emotional Spectrum Practice',
   'main', 'newer_vgm', 216),

  -- Row 4318
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Triebwerk' COLLATE NOCASE),
   'Drum & Perc', 'Triebwerk Drum Kit 7', 'for the Kick', 'Professor Sada / Professor Turo',
   'main', 'newer_vgm', 217),

  -- Row 4319
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Triebwerk' COLLATE NOCASE),
   'Synth Comp', 'VA Attacks 1', NULL, 'Professor Sada / Professor Turo',
   'main', 'newer_vgm', 218),

  -- Row 4320
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Strezov Sampling' COLLATE NOCASE AND p.name = 'Rhodope 2: Ethnic Bulgarian Choir' COLLATE NOCASE),
   '-', 'Rhodope2 Performance', 'Starts with the syllable Yul, the order follows the preset sequence', 'Area Zero, Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 219),

  -- Row 4321
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Drums -> EZdrummer 2 Modern', 'Basic', NULL, 'Let''s Try to Get Stronger!, The Pokémon League Interview',
   'main', 'newer_vgm', 220),

  -- Row 4322
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Drums -> EZdrummer 2 Modern', 'Disco Pop', NULL, 'The Battle Stadium',
   'main', 'newer_vgm', 221),

  -- Row 4323
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Drums -> EZX Action!', 'Orchestral', NULL, 'The Pokémon League',
   'main', 'newer_vgm', 222),

  -- Row 4324
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Drums -> EZX Funkmaster -> Funkmaster Clyde', 'Funky Tape', NULL, 'Let''s Make a Sandwich!',
   'main', 'newer_vgm', 223),

  -- Row 4325
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Grooves -> EZdrummer 2 Modern/Vintage', 'Midtempo Pop 103 BPM - Fills', 'Variation 04', 'The Battle Stadium',
   'main', 'newer_vgm', 224),

  -- Row 4326
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Grooves -> EZdrummer 2 Modern/Vintage', 'Rocking Sixteen 157 BPM - Intro', 'Variation 03', 'Battle! (Champion Nemona)',
   'main', 'newer_vgm', 225),

  -- Row 4327
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Grooves -> EZdrummer 2 Modern/Vintage', 'DBL Kick Metal 170 BPM - Verse', 'Variation 01', 'Battle! (Champion Nemona)',
   'main', 'newer_vgm', 226),

  -- Row 4328
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Grooves -> EZdrummer 2 Modern/Vintage', 'Uptempo Rock 173 VPM - Verse', 'Variation 03', 'Battle! (Champion Nemona)',
   'main', 'newer_vgm', 227),

  -- Row 4329
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Grooves -> EZdrummer 2 Modern/Vintage', 'Punk/Metal 180 BPM - Verse', 'Variation 02', 'Battle! (Champion Nemona)',
   'main', 'newer_vgm', 228),

  -- Row 4330
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Grooves -> EZdrummer 2 Modern/Vintage', 'Punk/Metal 180 BPM - Fills', 'Variation 03', 'Battle! (Champion Nemona)',
   'main', 'newer_vgm', 229),

  -- Row 4331
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Grooves -> EZX Action!', 'Deep Hole 01', NULL, 'The Pokémon League',
   'main', 'newer_vgm', 230),

  -- Row 4332
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Grooves -> EZX Action!', 'Ignite 01', NULL, 'The Pokémon League',
   'main', 'newer_vgm', 231),

  -- Row 4333
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Grooves -> EZX Action!', 'Orchestral 01', NULL, 'The Pokémon League',
   'main', 'newer_vgm', 232),

  -- Row 4334
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Cinematic Timeshift' COLLATE NOCASE),
   'Transitions -> Slow 1', '15sfx120_transitions slow_s_1', 'Can also be found under Wooshes', 'Battle! (Elite Four)',
   'main', 'newer_vgm', 233),

  -- Row 4335
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Elastik 3 Demo' COLLATE NOCASE),
   'Elastik 3', '07cng120 Elastik 3 Demo', NULL, 'Battle & Victory! (Gym Leader)',
   'main', 'newer_vgm', 234),

  -- Row 4336
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Neurofunk' COLLATE NOCASE),
   '1 Deus Ex 172 e -> 1 Deus Ex 172 e A-Part', '11syn172_NF_deus ex_e_1', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 235),

  -- Row 4337
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Neurofunk' COLLATE NOCASE),
   '1 Deus Ex 172 e -> 3 Deus Ex 172 e Rise', '07hhc172_NF_deus ex_3', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 236),

  -- Row 4338
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Neurofunk' COLLATE NOCASE),
   '2 Omega 176 f -> 2 Omega 176 f Rise', '03drm176_NF_omega_2', NULL, 'Battle & Victory! (Gym Leader)',
   'main', 'newer_vgm', 237),

  -- Row 4339
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Neurofunk' COLLATE NOCASE),
   '2 Omega 176 f -> 3 Omega 176 f A-Part', '08crs176_NF_omega_3', 'Manually playing a pattern before the chanting', 'Battle & Victory! (Gym Leader)',
   'main', 'newer_vgm', 238),

  -- Row 4340
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Acoustic Grand Piano', NULL, 'Levincia, Battle! (Nemona), Battle! (Champion Nemona), Pokémon Center, Pokémon Healed, The Pokémon League, Together with Nemona',
   'main', 'newer_vgm', 239),

  -- Row 4341
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 03-Honky Tonk', 'Bright Honky Tonk', NULL, 'Let''s Make a Sandwich!, Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 240),

  -- Row 4342
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '02-Electric Pianos -> 01-Classic EP', 'A Suitcase', NULL, 'Time to Eat',
   'main', 'newer_vgm', 241),

  -- Row 4343
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 01-High End Organs', 'Full Organ Fast', NULL, 'Let''s Make a Sandwich!, Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 242),

  -- Row 4344
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 01-High End Organs', 'Standard Organ', 'use modulation', 'Battle! (Arven)',
   'main', 'newer_vgm', 243),

  -- Row 4345
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 01-Deluxe Bass', 'Ampeg Ac. Bass -Full', NULL, 'Time to Eat',
   'main', 'newer_vgm', 244),

  -- Row 4346
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 01-Deluxe Bass', 'Jazz Bass DI Full', NULL, 'Let''s Try to Get Stronger!',
   'main', 'newer_vgm', 245),

  -- Row 4347
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '06-Ethnic -> 02-Indian', 'Electric Sitar', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 246),

  -- Row 4348
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '01-Composite', 'Bellines', NULL, 'The Pokémon League Interview',
   'main', 'newer_vgm', 247),

  -- Row 4349
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '01-Composite', 'Peel gree', NULL, 'Snow Slope Run',
   'main', 'newer_vgm', 248),

  -- Row 4350
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '01-Composite', 'Sync Us', NULL, 'The Battle Stadium',
   'main', 'newer_vgm', 249),

  -- Row 4351
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '02-Voices-Flutes -> Flutes', 'Atlantis', 'Poly Portamento mode on', 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 250),

  -- Row 4352
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Bell Litte', NULL, 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 251),

  -- Row 4353
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Bell Metal', NULL, 'The Battle Stadium',
   'main', 'newer_vgm', 252),

  -- Row 4354
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Clearlite', NULL, 'Snow Slope Run',
   'main', 'newer_vgm', 253),

  -- Row 4355
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Creation', NULL, 'Let''s Try to Get Stronger!',
   'main', 'newer_vgm', 254),

  -- Row 4356
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Crystal', 'Use a very fast autopanner', 'Snow Slope Run',
   'main', 'newer_vgm', 255),

  -- Row 4357
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-bells', 'Midoland', NULL, 'Battle! (Arven), Pokémon Center',
   'main', 'newer_vgm', 256),

  -- Row 4358
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> Acid', 'Chaos', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 257),

  -- Row 4359
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> Analog Style', 'Mo Bass', NULL, 'The Pokémon League Interview',
   'main', 'newer_vgm', 258),

  -- Row 4360
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> Analog Style', 'Modulation Bass', NULL, 'Battle! (Champion Nemona)',
   'main', 'newer_vgm', 259),

  -- Row 4361
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '05-Pads -> Pads', 'Cosmo Strings', NULL, 'Snow Slope Run, Battle! (Champion Nemona)',
   'main', 'newer_vgm', 260),

  -- Row 4362
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '05-Pads -> Pads', 'Deep Hood', NULL, 'Pokémon Center, Pokémon Healed',
   'main', 'newer_vgm', 261),

  -- Row 4363
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '07-Analog Brass', 'Brass Lead', NULL, 'Battle! (Nemona), Let''s Try to Get Stronger!',
   'main', 'newer_vgm', 262),

  -- Row 4364
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '07-Analog Brass', 'Synth Brass', 'Velocities ~60, add an autopanner', 'Battle! (Champion Nemona)',
   'main', 'newer_vgm', 263),

  -- Row 4365
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '08-Synth Leads -> Analog', 'Clavin', 'Monophonic Mode, adjust glide + add reverb', 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 264),

  -- Row 4366
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '08-Synth Leads -> Digital', 'Hisound', 'Polyphonic mode', 'Levincia',
   'main', 'newer_vgm', 265),

  -- Row 4367
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '08-Synth Leads -> Digital', 'Look Sound', 'Pan left', 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 266),

  -- Row 4368
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Organs', 'Choir Organ', NULL, 'Battle! (Champion Nemona)',
   'main', 'newer_vgm', 267),

  -- Row 4369
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Organs', 'Dr Organ', NULL, 'Battle! (Nemona)',
   'main', 'newer_vgm', 268),

  -- Row 4370
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Attack Keys', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 269),

  -- Row 4371
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Breath Keys', NULL, 'Mystery Gift',
   'main', 'newer_vgm', 270),

  -- Row 4372
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Brezily', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 271),

  -- Row 4373
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Island Piano', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 272),

  -- Row 4374
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Like You', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 273),

  -- Row 4375
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Plunk', NULL, 'Happy Birthday!',
   'main', 'newer_vgm', 274),

  -- Row 4376
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Spectre', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 275),

  -- Row 4377
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '10-Texture FX', 'Bendoid', NULL, 'Battle! (Area Zero Pokémon)',
   'main', 'newer_vgm', 276),

  -- Row 4378
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '01-Piano', '05-Electric Piano 1', NULL, 'Battle! (Champion Nemona), Mystery Gift, Pokémon Center, Happy Birthday!',
   'main', 'newer_vgm', 277),

  -- Row 4379
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '10-Glockenspiel', NULL, 'Battle! (Nemona), Battle! (Champion Nemona), Cascarrafa',
   'main', 'newer_vgm', 278),

  -- Row 4380
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '12-Vibraphone', 'Add 1/8 delay', 'Time to Eat',
   'main', 'newer_vgm', 279),

  -- Row 4381
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '15-Tubular Bells', NULL, 'Battle! (Nemona), Battle! (Champion Nemona), Happy Birthday!, Food Rating: Great',
   'main', 'newer_vgm', 280),

  -- Row 4382
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '03-Organ & co', '23-Harmonica', NULL, 'Medali',
   'main', 'newer_vgm', 281),

  -- Row 4383
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '36-Fretless Bass', NULL, 'Pokémon Center, Pokémon Healed',
   'main', 'newer_vgm', 282),

  -- Row 4384
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '37-Slap Bass 1', NULL, 'Obtained a Badge!, The Battle Stadium',
   'main', 'newer_vgm', 283),

  -- Row 4385
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '39-Synth Bass 1', NULL, 'Cascarrafa, Battle! (Arven), Battle! (Koraidon/Miraidon), Pokédex Evaluation... It''s Perfect!',
   'main', 'newer_vgm', 284),

  -- Row 4386
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '40-Synth Bass 2', NULL, 'Obtained a Berry!',
   'main', 'newer_vgm', 285),

  -- Row 4387
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '11-Synth Lead', '82-Saw Wave', 'Polyphonic mode, pitch bend range 12', 'Cascarrafa, A Short Rest',
   'main', 'newer_vgm', 286),

  -- Row 4388
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '14-Ethnic', '110-Bagpipe', 'Add EQ+reverb. Might be something else', 'Battle! (Calamity Pokémon)',
   'main', 'newer_vgm', 287),

  -- Row 4389
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '15-Percussive', '120-Reverse Cymbal', NULL, 'The Pokémon League Interview',
   'main', 'newer_vgm', 288),

  -- Row 4390
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Drums -> Groovy', '093-Groovy Var 06', 'Autoplay off', 'The Pokémon League Interview',
   'main', 'newer_vgm', 289),

  -- Row 4391
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Drums -> Funky', '097-Funky Var 02', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 290),

  -- Row 4392
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Drums -> Funky', '097-Funky Var 03', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 291),

  -- Row 4393
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Essential Clubsounds Vol. 2' COLLATE NOCASE),
   'VEC2 Cymbals -> VEC2 Crash', 'VEC2 Cymbals Crash 01', NULL, 'Battle! (Cassiopeia)',
   'main', 'newer_vgm', 292),

  -- Row 4394
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Essential Clubsounds Vol. 2' COLLATE NOCASE),
   'VEC2 Loops -> VEC2 Fills', 'VEC2 Loops Fills 054', NULL, 'Battle! (Cassiopeia)',
   'main', 'newer_vgm', 293),

  -- Row 4395
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 05 Harp', '041S Harp', NULL, 'Cascarrafa, Battle! (Nemona), Battle! (Koraidon/Miraidon), Victory! (Titan)',
   'main', 'newer_vgm', 294),

  -- Row 4396
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 11 Flutes', '02S Flute 1', NULL, 'Battle! (Titan), Battle! (Koraidon/Miraidon), Happy Birthday!',
   'main', 'newer_vgm', 295),

  -- Row 4397
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 12 Oboes', '11S Oboe French', NULL, 'Across the Skies of Paldea',
   'main', 'newer_vgm', 296),

  -- Row 4398
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '12S Trumpet C', NULL, 'A New Power for Your Ride',
   'main', 'newer_vgm', 297),

  -- Row 4399
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '14S Trumpet ensemble', NULL, 'Batʇlə! (■■■)',
   'main', 'newer_vgm', 298),

  -- Row 4400
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '06S Xylophone', NULL, 'Batʇlə! (■■■)',
   'main', 'newer_vgm', 299),

  -- Row 4401
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '11S Timpani', NULL, 'Battle! (Titan), Batʇlə! (■■■)',
   'main', 'newer_vgm', 300),

  -- Row 4402
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '12S Drums', NULL, 'Together with Nemona',
   'main', 'newer_vgm', 301),

  -- Row 4403
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '14S Percussion', NULL, 'Together with Nemona',
   'main', 'newer_vgm', 302),

  -- Row 4404
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Vienna Imperial' COLLATE NOCASE),
   'Factory Presets', '02 Player Position Default', NULL, 'A Stroll through the West Province',
   'main', 'newer_vgm', 303),

  -- Row 4405
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Vienna Imperial' COLLATE NOCASE),
   'Factory Presets', '03 Distant Position Default', NULL, 'A Stroll through the South Province, Your Dorm Room',
   'main', 'newer_vgm', 304),

  -- Row 4406
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Les Paul Amped', 'Pitch bend range 12', 'Battle! (Titan), Batʇlə! (■■■)',
   'main', 'newer_vgm', 305),

  -- Row 4407
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'DI', 'Les Paul DI', 'Use Guitar Rig - Cool Clean Chorus', 'Battle! (Arven)',
   'main', 'newer_vgm', 306),

  -- Row 4408
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass', 'BA D_Bass 1 [DU]', 'Disable sub and osc a', 'Levincia',
   'main', 'newer_vgm', 307),

  -- Row 4409
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass (Hard)', 'BA DarkWobble [CFA]', NULL, 'Area Zero',
   'main', 'newer_vgm', 308),

  -- Row 4410
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX 16-Bar Riser [FP]', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 309),

  -- Row 4411
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Alien Interface [SN]', NULL, 'Professor Sada / Professor Turo',
   'main', 'newer_vgm', 310),

  -- Row 4412
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD 8bitcycle [AF]', NULL, 'Professor Sada / Professor Turo, Levincia',
   'main', 'newer_vgm', 311),

  -- Row 4413
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD Analogesque [EE]', NULL, 'Battle! (Elite Four), Battle! (The Top Champion)',
   'main', 'newer_vgm', 312),

  -- Row 4414
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD D_Lead2 [DU]', NULL, 'Levincia',
   'main', 'newer_vgm', 313),

  -- Row 4415
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Plucked', 'PL Cliche d00t [GI]', NULL, 'The Battle Stadium',
   'main', 'newer_vgm', 314),

  -- Row 4416
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Plucked', 'PL Dyk Pyk [PL]', NULL, 'Levincia',
   'main', 'newer_vgm', 315),

  -- Row 4417
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Plucked', 'PL Phantoms [SD]', 'Add 1/8 delay', 'Snow Slope Run',
   'main', 'newer_vgm', 316),

  -- Row 4418
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Happylights [GS]', 'Pitch bend required', 'Battle & Victory! (Gym Leader)',
   'main', 'newer_vgm', 317),

  -- Row 4419
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 007 - Fast Funk', 'Song 007 - Fast Funk (Verse)', NULL, 'Battle! (North Province Wild Pokémon)',
   'main', 'newer_vgm', 318),

  -- Row 4420
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 014 - Disco Beat', 'Song 014 - Disco Beat (Chorus)', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 319),

  -- Row 4421
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 014 - Disco Beat', 'Song 014 - Disco Beat (Middle8)', 'Add some extra snare hits', 'Cascarrafa',
   'main', 'newer_vgm', 320),

  -- Row 4422
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 014 - Disco Beat', 'Song 014 - Disco Beat (Verse)', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 321),

  -- Row 4423
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> PopRock Fill L-2', 'PopRock Fill L-2 - 16', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 322),

  -- Row 4424
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', NULL, 'The Academy, Battle & Victory! (Gym Leader), Battle! (Titan), Battle! (Wild Pokémon), Battle! (Trainer Battle), Battle! (Arven), Battle! (Area Zero Pokémon), Battle! (Calamity Pokémon), Battle! (■■■■), Welcome to Paldea',
   'main', 'newer_vgm', 323),

  -- Row 4425
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Vintage', 'Disco Fever', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 324),

  -- Row 4426
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   'Beats -> Bread''n''Butter Beat 18', '8th HH Closed', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 325),

  -- Row 4427
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   'Beats -> Funk Fill L-1', 'Funk Fill L-1 14', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 326),

  -- Row 4428
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   'Beats -> Funk Fill L-4', 'Funk Fill L-4 06', NULL, 'Cascarrafa',
   'main', 'newer_vgm', 327),

  -- Row 4429
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   'Kits -> Metal', 'Metal - Dry Metal', NULL, 'Battle! (Nemona), Battle! (Champion Nemona)',
   'main', 'newer_vgm', 328),

  -- Row 4430
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'YMCK' COLLATE NOCASE AND p.name = 'Magical8bitplug' COLLATE NOCASE),
   '-', 'Triangle', NULL, 'Battle! (Zero Lab)',
   'main', 'newer_vgm', 329),

  -- Row 4431
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-37 Dance Synths -> Arpeggios 160-BPM', 'Tinitus ZG', NULL, 'Battle! (The Top Champion)',
   'main', 'newer_vgm', 330),

  -- Row 4432
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from Planet of the Breaks' COLLATE NOCASE),
   'Fry Pan 083', 'FP-Drums Fill', NULL, 'Battle & Victory! (Gym Leader), Welcome to Paldea, The Academy',
   'main', 'newer_vgm', 331),

  -- Row 4433
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from Planet of the Breaks' COLLATE NOCASE),
   'Shout Out 2 Monkey Boy 164', 'SO2MB-Drum Fill 06', 'Pitched up 1.5 semitones', 'Emotional Spectrum Practice',
   'main', 'newer_vgm', 332),

  -- Stuff to Find (rows 4435-4500) -> stuff_to_find
  -- Row 4435: Live Recording: ? — Brass & Woodwind Band (non-commercial; raw_source patched below)
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   NULL, NULL, NULL, 'check credits?', 'Title Screen',
   'stuff_to_find', 'newer_vgm', 333),

  -- Row 4436: Stems: Go Ichinose — Pokémon Sun/Moon (2016) (non-commercial; raw_source patched below)
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   NULL, '-', 'Obtained a Z-Crystal!', 'rearranged and extended', 'Battle Form',
   'stuff_to_find', 'newer_vgm', 334),

  -- Row 4437: Ample Sound,? -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'guitars and basses (raw source: Ample Sound / ?)', 'Maeba songs',
   'stuff_to_find', 'newer_vgm', 335),

  -- Row 4438
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   NULL, NULL, NULL, 'Emotional Spectrum Practice',
   'stuff_to_find', 'newer_vgm', 336),

  -- Row 4439
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   NULL, NULL, NULL, 'The Opening Act!',
   'stuff_to_find', 'newer_vgm', 337),

  -- Row 4440: Cinesamples,? -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'check for maeba stuff (raw source: Cinesamples / ?)', NULL,
   'stuff_to_find', 'newer_vgm', 338),

  -- Row 4441
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Perc -> Gamelan', NULL, 'something tuned. probably gamelan ensemble', 'North Province',
   'stuff_to_find', 'newer_vgm', 339),

  -- Row 4442
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Europe -> Wind -> Ir Low Whistle', 'IRL Lo Whs KS C0-B0', 'might be Ra bansuri instead', 'East Province',
   'stuff_to_find', 'newer_vgm', 340),

  -- Row 4443
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Gypsy' COLLATE NOCASE),
   'Flamenco Guitar', 'Flam Lead Master', 'guitar', 'East Province',
   'stuff_to_find', 'newer_vgm', 341),

  -- Row 4444
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'FXpansion' COLLATE NOCASE AND p.name = 'BFD3' COLLATE NOCASE),
   'BFD3 Core Library', 'BFD3 Rock Alt Smash 85bpm ER', 'requires some editing', 'Battle! (Team Star)',
   'stuff_to_find', 'newer_vgm', 342),

  -- Row 4445
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites', NULL, NULL, 'East Province (Area Three)',
   'stuff_to_find', 'newer_vgm', 343),

  -- Row 4446
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', NULL, 'one of the mangled pop elements menus', 'Battle! (Titan), Batʇlə! (■■■)',
   'stuff_to_find', 'newer_vgm', 344),

  -- Row 4447
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> ?', NULL, NULL, 'The Pokémon League',
   'stuff_to_find', 'newer_vgm', 345),

  -- Row 4448
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer', NULL, NULL, 'Escape from the Cave',
   'stuff_to_find', 'newer_vgm', 346),

  -- Row 4449
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'dramatic cinematic percussion', 'Battle! (Calamity Pokémon), Battle! (Titan), Victory! (Titan Pokémon)',
   'stuff_to_find', 'newer_vgm', 347),

  -- Row 4450
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Shreddage 3' COLLATE NOCASE),
   NULL, NULL, 'Taniguchi has this', 'Team Star, Raiding the Base, A Team Star Boss Appears!, Treasure of the Stars',
   'stuff_to_find', 'newer_vgm', 348),

  -- Row 4451: LennarDigital,Sylenth1 (sic; spelled differently from "Lennar Digital"). Treated as Unknown/Unknown.
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'taniguchi songs (raw source: LennarDigital / Sylenth1)', NULL,
   'stuff_to_find', 'newer_vgm', 349),

  -- Row 4452
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicalSampling' COLLATE NOCASE AND p.name = 'Anthem Choir' COLLATE NOCASE),
   NULL, NULL, 'maybe', 'Battle & Victory! (Gym Leader)',
   'stuff_to_find', 'newer_vgm', 350),

  -- Row 4453
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'SkinnyAbby Bass', 'filter modified?', 'The Iono Zone',
   'stuff_to_find', 'newer_vgm', 351),

  -- Row 4454
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Am I Still Here', NULL, 'Snow Slope Run',
   'stuff_to_find', 'newer_vgm', 352),

  -- Row 4455
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   NULL, NULL, NULL, 'North Province',
   'stuff_to_find', 'newer_vgm', 353),

  -- Row 4456
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Arkhis' COLLATE NOCASE),
   NULL, NULL, 'maybe', 'Going through the Inlet Grotto',
   'stuff_to_find', 'newer_vgm', 354),

  -- Row 4457
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Drum Lab' COLLATE NOCASE),
   'Single Instruments -> Percussion', 'Claps Single Stereo', NULL, 'East Province',
   'stuff_to_find', 'newer_vgm', 355),

  -- Row 4458
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Tubular Bells (metal)', 'check if this is cineperc or smth first', 'Reunion',
   'stuff_to_find', 'newer_vgm', 356),

  -- Row 4459
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive X' COLLATE NOCASE),
   NULL, 'Kuiper Belt', NULL, 'Area Zero',
   'stuff_to_find', 'newer_vgm', 357),

  -- Row 4460
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   NULL, NULL, NULL, 'The Academy',
   'stuff_to_find', 'newer_vgm', 358),

  -- Row 4461
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Session Guitarist: Picked Nylon' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (The Top Champion)',
   'stuff_to_find', 'newer_vgm', 359),

  -- Row 4462
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   NULL, NULL, NULL, 'The Battle Stadium',
   'stuff_to_find', 'newer_vgm', 360),

  -- Row 4463
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Premier Sound Factory' COLLATE NOCASE AND p.name = 'Acoustic Bass Premier G' COLLATE NOCASE),
   NULL, NULL, 'acoustic bass', 'The Name''s Clive',
   'stuff_to_find', 'newer_vgm', 361),

  -- Row 4464: Soniccouture,? -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'maybe? (raw source: Soniccouture / ?)', 'Maeba songs',
   'stuff_to_find', 'newer_vgm', 362),

  -- Row 4465
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   'Disc 1 -> Partition H -> TAMPURA', 'TAMPURA 2', 'add autopan', 'Battle! (Calamity Pokémon)',
   'stuff_to_find', 'newer_vgm', 363),

  -- Row 4466
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library', NULL, 'pad', 'North Province',
   'stuff_to_find', 'newer_vgm', 364),

  -- Row 4467
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library', NULL, 'simple octave saw', 'Battle! (Wild Pokémon), Battle! (The Top Champion)',
   'stuff_to_find', 'newer_vgm', 365),

  -- Row 4468
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Human Voices', NULL, NULL, 'Gym Test',
   'stuff_to_find', 'newer_vgm', 366),

  -- Row 4469
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', NULL, NULL, 'Escape from the Cave',
   'stuff_to_find', 'newer_vgm', 367),

  -- Row 4470
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'ARP + BPM', NULL, NULL, 'Battle! (Elite Four)',
   'stuff_to_find', 'newer_vgm', 368),

  -- Row 4471
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Feedback Cwejman Bassliner', NULL, 'A Call from Cassiopeia',
   'stuff_to_find', 'newer_vgm', 369),

  -- Row 4472: Spectrasonics,? -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'for maeba and taniguchi songs (raw source: Spectrasonics / ?)', NULL,
   'stuff_to_find', 'newer_vgm', 370),

  -- Row 4473: ?,? -> Unknown/Unknown
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'bass clarinet', 'A Brief Moment',
   'stuff_to_find', 'newer_vgm', 371),

  -- Row 4474: Spitfire Audio,? -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'check for maeba stuff (raw source: Spitfire Audio / ?)', NULL,
   'stuff_to_find', 'newer_vgm', 372),

  -- Row 4475: Splice Sounds,? (Sounds of KSHMR packs) -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'maeba''s more electronic stuff (raw source: Splice Sounds / ? (Sounds of KSHMR packs))', NULL,
   'stuff_to_find', 'newer_vgm', 373),

  -- Row 4476
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   NULL, NULL, 'electric basses in adachi songs', NULL,
   'stuff_to_find', 'newer_vgm', 374),

  -- Row 4477
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Warm Phaser String Pad NoteExp', 'could be Phaser Stringensemble from Dark P.', 'Battle! (The Top Champion)',
   'stuff_to_find', 'newer_vgm', 375),

  -- Row 4478
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   NULL, NULL, 'high reverbed piano', 'Battle! (Titan)',
   'stuff_to_find', 'newer_vgm', 376),

  -- Row 4479
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'The Grand 3' COLLATE NOCASE),
   NULL, NULL, 'same as Wild Area (South) - test using that', 'Across the Skies of Paldea',
   'stuff_to_find', 'newer_vgm', 377),

  -- Row 4480: UVI,? -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'raw source: UVI / ?', 'Battle! (Arven), Battle! (Area Zero Pokémon)',
   'stuff_to_find', 'newer_vgm', 378),

  -- Row 4481
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> ?', NULL, 'same kind of EQ as most plugsound basses', 'Snow Slope Run, Happy Birthday!',
   'stuff_to_find', 'newer_vgm', 379),

  -- Row 4482
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   NULL, NULL, 'synth voice pad + other synth piano', 'Cascarrafa',
   'stuff_to_find', 'newer_vgm', 380),

  -- Row 4483
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '11-Short-Rezo -> Rezo', 'Cry T', 'maybe', 'Snow Slope Run',
   'stuff_to_find', 'newer_vgm', 381),

  -- Row 4484
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'EDM Essentials Vol. 1' COLLATE NOCASE),
   NULL, 'VEDM Uplifter 33 Noise 8 Bars_2', 'close but cant quite match it up', 'Battle! (Cassiopeia)',
   'stuff_to_find', 'newer_vgm', 382),

  -- Row 4485: Vengeance Sound,? -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'taniguchi songs (raw source: Vengeance Sound / ?)', 'Battle! (Cassiopeia)',
   'stuff_to_find', 'newer_vgm', 383),

  -- Row 4486
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   'Kits -> Metal', 'Metal - Tight Hard', 'for the muted trumpet bit', 'Battle! (Arven)',
   'stuff_to_find', 'newer_vgm', 384),

  -- Row 4487
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Synth', 'SY Hypersaw Basic [SD]', 'disable sub (could also be a massive preset)', 'Area Zero',
   'stuff_to_find', 'newer_vgm', 385),

  -- Row 4488
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   NULL, NULL, 'sounds like LD A Bit of Luck [SD] with editing', 'Cascarrafa',
   'stuff_to_find', 'newer_vgm', 386),

  -- Row 4489
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   NULL, NULL, 'orch hit (there are two)', 'Battle! (Titan)',
   'stuff_to_find', 'newer_vgm', 387),

  -- Row 4490: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'timpani', 'may be the same as adachi''s new one', 'Batʇlə! (■■■)',
   'stuff_to_find', 'newer_vgm', 388),

  -- Row 4491: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'electric guitar', 'Welcome to Paldea',
   'stuff_to_find', 'newer_vgm', 389),

  -- Row 4492: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'loop', 'Battle! (Zero Lab)',
   'stuff_to_find', 'newer_vgm', 390),

  -- Row 4493: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'pianoforte reed/bagpipe lead', 'Battle! (Arven)',
   'stuff_to_find', 'newer_vgm', 391),

  -- Row 4494: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'not any FM bass from Halion', 'Battle! (The Top Champion), Battle! (Elite Four)',
   'stuff_to_find', 'newer_vgm', 392),

  -- Row 4495: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'studio recording? sounds too natural', 'crowd vocals (similar to Sw/Sh''s version*)', 'Battle & Victory! (Gym Leader)',
   'stuff_to_find', 'newer_vgm', 393),

  -- Row 4496: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Drum Loop', 'Battle & Victory! (Gym Leader)',
   'stuff_to_find', 'newer_vgm', 394),

  -- Row 4497: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Phaser EP / Guitar', 'Battle & Victory! (Gym Leader)',
   'stuff_to_find', 'newer_vgm', 395),

  -- Row 4498: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Organ', 'Battle & Victory! (Gym Leader)',
   'stuff_to_find', 'newer_vgm', 396),

  -- Row 4499: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Risers', 'Battle & Victory! (Gym Leader)',
   'stuff_to_find', 'newer_vgm', 397),

  -- Row 4500: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'main drums', 'Battle! (South Province Wild Pokémon)',
   'stuff_to_find', 'newer_vgm', 398);

-- Patch raw_source for the non-commercial Live Performance / Sample / Live Recording / Stems rows.
UPDATE usages SET raw_source = 'Live Performance: Junnosuke Fujita — Cannonball A5-BR'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet')
    AND position = 1;
UPDATE usages SET raw_source = 'Live Performance: Sorao Mori — Addictone ARENA'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet')
    AND position = 2;
UPDATE usages SET raw_source = 'Live Performance: Toby Fox — Breathing'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet')
    AND position = 3;
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Scarlet and Pokémon Violet'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet')
    AND position = 4;
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Scarlet and Pokémon Violet'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet')
    AND position = 5;
UPDATE usages SET raw_source = 'Live Recording: ? — Brass & Woodwind Band'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet')
    AND position = 333;
UPDATE usages SET raw_source = 'Stems: Go Ichinose — Pokémon Sun/Moon (2016)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Scarlet and Pokémon Violet')
    AND position = 334;
