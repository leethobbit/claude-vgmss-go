-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 3494-3605
-- Pokémon Sword and Pokémon Shield EX: The Crown Tundra (Nintendo Switch, October 22, 2020).
-- Composers: Minako Adachi, Go Ichinose, Hitomi Sato, Junichi Masuda, Keita Okamoto.
-- Subsection headers in source:
--   row 3494 (game header — no "Streamed Tracks" or "Sequenced Tracks" sub-headers exist for this section;
--             all rows from 3495 up to the "Stuff to Find" header are commercial-product main usages),
--   row 3576 (Stuff to Find).
-- Per task spec: commercial-product rows 3495-3575 -> main; rows 3577-3605 -> stuff_to_find.
-- Row 3577 is "Arturia,?" — manufacturer known, product unknown; routed to Unknown/Unknown sentinel
-- with raw source preserved in notes (matches convention from 0013/0014).
-- Rows 3599-3605 are "?,?" rows — routed to Unknown/Unknown sentinel.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('e-instruments'),
  ('Arturia'),
  ('Heavyocity'),
  ('Scarbee'),
  ('Vir2'),
  ('Xfer Records');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'Ethno World 6 Instruments',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'e-instruments'            COLLATE NOCASE), 'Session Horns Pro',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Goliath',                                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Ra',                                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Symphonic Adventures',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Symphonic Orchestra',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'               COLLATE NOCASE), 'Damage',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools'     COLLATE NOCASE), 'Independence Pro',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                 COLLATE NOCASE), 'RealGuitar',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                 COLLATE NOCASE), 'RealLPC',                                         'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Absynth',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Action Strikes',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Kontakt Factory Library',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Rise & Hit',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Spotlight Collection: Cuba',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Vintage Organs',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                  COLLATE NOCASE), 'Jay-Bass',                                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Omnisphere',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Omnisphere 2',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'Groove Agent',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion 4',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion Sonic',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion Sonic 2',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion Sonic SE',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (02-Fretted)',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (04-Synths and co)',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'Special Edition Vol. 1',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'Special Edition Vol. 1 PLUS',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vir2'                     COLLATE NOCASE), 'Electri6ity',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Xfer Records'             COLLATE NOCASE), 'Serum',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                COLLATE NOCASE), 'Addictive Drums',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Creative Essentials Vol. 30 Orchestral Flavours', 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                  COLLATE NOCASE), 'Unknown',                                         NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Sword and Pokémon Shield EX: The Crown Tundra',
   'Nintendo Switch',
   'October 22, 2020',
   'Minako Adachi, Go Ichinose, Hitomi Sato, Junichi Masuda, Keita Okamoto',
   'minako adachi, go ichinose, hitomi sato, junichi masuda, keita okamoto',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Main usages (rows 3495-3575)
  -- Row 3495
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> BELLS + CHIMES', 'Belltree', '(in order of use) C2, E4, F#2, E3', 'King of Bountiful Harvests',
   'main', 'newer_vgm', 1),

  -- Row 3496
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'e-instruments' COLLATE NOCASE AND p.name = 'Session Horns Pro' COLLATE NOCASE),
   '-', 'Session Horns Pro - Keyswitch', NULL, 'Peony''s Theme, Battle! (Peony)',
   'main', 'newer_vgm', 2),

  -- Row 3497
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'e-instruments' COLLATE NOCASE AND p.name = 'Session Horns Pro' COLLATE NOCASE),
   'Solo Instruments', 'Alto Sax', NULL, 'Peony''s Theme, Battle! (Peony)',
   'main', 'newer_vgm', 3),

  -- Row 3498
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '20-Church Organ', NULL, 'Crown Shrine',
   'main', 'newer_vgm', 4),

  -- Row 3499
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Wind -> Pan Flute', 'Pan Flute KS C0-D#0', NULL, 'The Crown Tundra, Dance of Bountiful Harvests',
   'main', 'newer_vgm', 5),

  -- Row 3500
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Adventures' COLLATE NOCASE),
   '02 Suspense', 'Suspense 09', 'D5', 'Battle! (Dynamax Adventure)',
   'main', 'newer_vgm', 6),

  -- Row 3501
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 2 Trumpets -> 5 Keysw', '2TP KS Master', 'briefly', 'Battle! (Dynamax Adventure)',
   'main', 'newer_vgm', 7),

  -- Row 3502
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 1 Long', '4TB Sus', 'layered with 6FH during time signature shift', 'Battle! (Calyrex), Battle! (Glastrier/Spectrier)',
   'main', 'newer_vgm', 8),

  -- Row 3503
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 3 Effects', '4TB 1Sec Cres', NULL, 'Battle! (Dynamax Adventure)',
   'main', 'newer_vgm', 9),

  -- Row 3504
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 5 Keysw', '4TB KS Master', NULL, 'The Crown Tundra',
   'main', 'newer_vgm', 10),

  -- Row 3505
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 1 Long', '4TP Sus', NULL, 'Battle! (Calyrex), Battle! (Glastrier/Spectrier)',
   'main', 'newer_vgm', 11),

  -- Row 3506
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 5 Keysw', '4TP KS Master', NULL, 'The Crown Tundra, Gather at the Dyna Tree',
   'main', 'newer_vgm', 12),

  -- Row 3507
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 1 Long', '6FH Sus 4 Lay', 'could be 6FH Sus 5 Lay', 'Battle! (Dynamax Adventure)',
   'main', 'newer_vgm', 13),

  -- Row 3508
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH 3sec Cres Fltr', NULL, 'Battle! (Glastrier/Spectrier)',
   'main', 'newer_vgm', 14),

  -- Row 3509
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', 'All Cymbals', NULL, 'The Crown Tundra, Dance of Bountiful Harvests, Crown Shrine, Unity of Rider and Horse, Gather at the Dyna Tree',
   'main', 'newer_vgm', 15),

  -- Row 3510
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', NULL, 'Battle! (Calyrex), Battle! (Glastrier/Spectrier), Battle! (King of Bountiful Harvests), The Crown Tundra',
   'main', 'newer_vgm', 16),

  -- Row 3511
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', NULL, 'Battle! (King of Bountiful Harvests)',
   'main', 'newer_vgm', 17),

  -- Row 3512
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', NULL, 'Gather at the Dyna Tree',
   'main', 'newer_vgm', 18),

  -- Row 3513
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 3 Effects', '11V Violins Scratching FX', NULL, 'Battle! (Dynamax Adventure)',
   'main', 'newer_vgm', 19),

  -- Row 3514
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'The Crown Tundra',
   'main', 'newer_vgm', 20),

  -- Row 3515
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', NULL, 'The Crown Tundra, Dance of Bountiful Harvests, Gather at the Dyna Tree',
   'main', 'newer_vgm', 21),

  -- Row 3516
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Large String Ens', '50 Piece Str Sec Sus', NULL, 'Freezington',
   'main', 'newer_vgm', 22),

  -- Row 3517
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Cello -> 2 Short', 'SVC Pizz RR', NULL, 'Freezington',
   'main', 'newer_vgm', 23),

  -- Row 3518
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 2 Short', 'SVL Pizz RR', NULL, 'Freezington',
   'main', 'newer_vgm', 24),

  -- Row 3519
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Flute -> 5 Keysw', 'SFL KS Master', NULL, 'Battle! (King of Bountiful Harvests)',
   'main', 'newer_vgm', 25),

  -- Row 3520
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Piccolo Flute -> 5 Keysw', 'PFL KS Master', NULL, 'Battle! (King of Bountiful Harvests)',
   'main', 'newer_vgm', 26),

  -- Row 3521
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Tech  Full', 'B4, C5', 'Battle! (Dynamax Adventure)',
   'main', 'newer_vgm', 27),

  -- Row 3522
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Single Loops', '14 LP Mang Pop (El 01) C#2 Kick', 'layered with something', 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 28),

  -- Row 3523
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 3 Metals', 'PERC Metal Menu 1', NULL, 'Battle! (Peony), Peony''s Theme',
   'main', 'newer_vgm', 29),

  -- Row 3524
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'NY Slap combi KS A-1', NULL, 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 30),

  -- Row 3525
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '19 Synthesizers -> # Basic Synthesizer Layers', 'Digital Square', 'Has delay, reverb, and a LP filter.', 'Battle! (Legendary Giants), Dynamax Adventure',
   'main', 'newer_vgm', 31),

  -- Row 3526
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Stereo (290 MB)', NULL, 'Dance of Bountiful Harvests',
   'main', 'newer_vgm', 32),

  -- Row 3527
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealLPC' COLLATE NOCASE),
   '-', 'RealLPC', NULL, 'Max Lair',
   'main', 'newer_vgm', 33),

  -- Row 3528
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealLPC' COLLATE NOCASE),
   'Pattern Library -> Funk -> Funk3 S 16th 90-120', 'S05 Funk3', 'second half of the pattern only', 'Max Lair',
   'main', 'newer_vgm', 34),

  -- Row 3529
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'I Call You Later', NULL, 'Battle! (Legendary Giants)',
   'main', 'newer_vgm', 35),

  -- Row 3530
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Prairiephone', 'Add delay', 'Max Lair',
   'main', 'newer_vgm', 36),

  -- Row 3531
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Square Pad With Flange', 'melody is mostly octave-layered', 'Battle! (Legendary Giants)',
   'main', 'newer_vgm', 37),

  -- Row 3532
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 7 - Metallophones', 'Music Box', NULL, 'Freezington',
   'main', 'newer_vgm', 38),

  -- Row 3533
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '1 - Percussion Ensembles', 'Cajon Ensemble', 'A3, G3', 'Max Lair',
   'main', 'newer_vgm', 39),

  -- Row 3534
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '1 - Percussion Ensembles', 'Salsa Ensemble', NULL, 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 40),

  -- Row 3535
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '4 - Melodic Instruments', 'Trumpet', NULL, 'Battle! (Peony)',
   'main', 'newer_vgm', 41),

  -- Row 3536
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Vintage Organs' COLLATE NOCASE),
   '3 - Classic Rock', 'Time of the Season', NULL, 'Peony''s Theme',
   'main', 'newer_vgm', 42),

  -- Row 3537
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Jay-Bass' COLLATE NOCASE),
   '-', 'Scarbee Jay-Bass - Slap - Both', 'Under ">> Player Profile" tab... (see note)', 'Max Lair',
   'main', 'newer_vgm', 43),

  -- Row 3538
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Classic Super Bells', NULL, 'Freezington',
   'main', 'newer_vgm', 44),

  -- Row 3539
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Beacon', NULL, 'Freezington',
   'main', 'newer_vgm', 45),

  -- Row 3540
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 FM E-Piano 1', 'use autopan', 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 46),

  -- Row 3541
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Boogie Down', NULL, 'Battle! (Calyrex), Battle! (Glastrier/Spectrier), Battle! (King of Bountiful Harvests)',
   'main', 'newer_vgm', 47),

  -- Row 3542
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Grand Accordion', NULL, 'Calyrex''s Carrot Dance',
   'main', 'newer_vgm', 48),

  -- Row 3543
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Whistle Lead', '01:04-01:18', 'Battle! (Calyrex)',
   'main', 'newer_vgm', 49),

  -- Row 3544
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'B-Box Set', 'Trip Hop Dust 03 - 090', 'use kit elements (white notes)', 'Battle! (King of Bountiful Harvests)',
   'main', 'newer_vgm', 50),

  -- Row 3545
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Bells Ensemble', NULL, 'Battle! (Calyrex)',
   'main', 'newer_vgm', 51),

  -- Row 3546
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Ethnic Flute', NULL, 'Crown Shrine, Unity of Rider and Horse',
   'main', 'newer_vgm', 52),

  -- Row 3547
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Hardcore Kit', 'A0 (Distorted Kick)', 'Battle! (King of Bountiful Harvests)',
   'main', 'newer_vgm', 53),

  -- Row 3548
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Hip Hop Kit 5', 'D#1 F#5 (Claps)', 'Dance of Bountiful Harvests',
   'main', 'newer_vgm', 54),

  -- Row 3549
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 001] Acoustic Grand Piano', NULL, 'Battle! (Calyrex)',
   'main', 'newer_vgm', 55),

  -- Row 3550
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 014] Xylophone', NULL, 'Unity of Rider and Horse',
   'main', 'newer_vgm', 56),

  -- Row 3551
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 57),

  -- Row 3552
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 076] Pan Flute', NULL, 'Freezington',
   'main', 'newer_vgm', 58),

  -- Row 3553
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 119] Synth Drum', NULL, 'A Legend! A Legend of Legends!',
   'main', 'newer_vgm', 59),

  -- Row 3554
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Acoustic Grand Piano', NULL, 'Battle! (Peony)',
   'main', 'newer_vgm', 60),

  -- Row 3555
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 03-Honky Tonk', 'Bright Honky Tonk', NULL, 'Peony''s Theme',
   'main', 'newer_vgm', 61),

  -- Row 3556
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 01-High End Organs', 'Full Organ', NULL, 'Peony''s Theme',
   'main', 'newer_vgm', 62),

  -- Row 3557
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08 - Mallets & co', 'Marimba', NULL, 'Max Lair',
   'main', 'newer_vgm', 63),

  -- Row 3558
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 01-Deluxe Bass', 'Ampeg Ac. Bass -Full', NULL, 'Peony''s Theme',
   'main', 'newer_vgm', 64),

  -- Row 3559
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 04 Fend. Jazz Bass', 'Fend. Slap 1', NULL, 'Battle! (Peony)',
   'main', 'newer_vgm', 65),

  -- Row 3560
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '02-Voices-Flutes', 'Mallet', NULL, 'Max Lair',
   'main', 'newer_vgm', 66),

  -- Row 3561
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Grunge one', NULL, 'Peony''s Theme',
   'main', 'newer_vgm', 67),

  -- Row 3562
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '15-Tubular Bells', NULL, 'Battle! (Legendary Giants)',
   'main', 'newer_vgm', 68),

  -- Row 3563
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '08-Brass', '63-Synth Brass 1', 'EQ out lows', 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 69),

  -- Row 3564
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '08-Brass', '64-Synth Brass 2', NULL, 'A Legend! A Legend of Legends!',
   'main', 'newer_vgm', 70),

  -- Row 3565
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '21S Strings violins', NULL, 'Battle! (Legendary Giants)',
   'main', 'newer_vgm', 71),

  -- Row 3566
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 23 Trombones', '25S Trombone ensemble', NULL, 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 72),

  -- Row 3567
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '11S Timpani', NULL, 'Battle! (Legendary Bird Pokémon), Battle! (Dynamax Adventure), Battle! (Legendary Giants), Dynamax Adventure',
   'main', 'newer_vgm', 73),

  -- Row 3568
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1 PLUS' COLLATE NOCASE),
   'MATRIX -> 21 Horns', '03S Horn ensemble - a4 +', 'fortepiano keyswitch', 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 74),

  -- Row 3569
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Les Paul Amped', NULL, 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 75),

  -- Row 3570
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass', 'BA Modwheel me [GI]', NULL, 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 76),

  -- Row 3571
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD Hypersaw [JD]', NULL, 'Battle! (Legendary Giants)',
   'main', 'newer_vgm', 77),

  -- Row 3572
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Automator 5 [GS]', NULL, 'Battle! (Legendary Bird Pokémon)',
   'main', 'newer_vgm', 78),

  -- Row 3573
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', NULL, 'Battle! (Peony), Battle! (Legendary Bird Pokémon), Battle! (Legendary Giants), Dynamax Adventure',
   'main', 'newer_vgm', 79),

  -- Row 3574
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Vintage', 'Disco Fever', NULL, 'Max Lair',
   'main', 'newer_vgm', 80),

  -- Row 3575
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_01', 'Orchestra hit (minor)', 'Battle! (Dynamax Adventure)',
   'main', 'newer_vgm', 81),

  -- Stuff to Find (rows 3577-3605) -> stuff_to_find
  -- Row 3577: Arturia,? — uncertain product, route to Unknown/Unknown sentinel with raw source in notes
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'could be used (raw source: Arturia / ?)', 'Battle! (Calyrex), Battle! (Glastrier/Spectrier), Battle! (King of Bountiful Harvests)',
   'stuff_to_find', 'newer_vgm', 82),

  -- Row 3578
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', NULL, 'One of the snare ensembles', 'The Crown Tundra',
   'stuff_to_find', 'newer_vgm', 83),

  -- Row 3579
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'pizz strings', 'Battle! (Calyrex)',
   'stuff_to_find', 'newer_vgm', 84),

  -- Row 3580
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Large String Ens', NULL, 'for the low strings', 'The Crown Tundra',
   'stuff_to_find', 'newer_vgm', 85),

  -- Row 3581
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Flute', NULL, NULL, 'Battle! (King of Bountiful Harvests)',
   'stuff_to_find', 'newer_vgm', 86),

  -- Row 3582
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (Dynamax Adventure), Battle! (Peony), Gather at the Dyna Tree',
   'stuff_to_find', 'newer_vgm', 87),

  -- Row 3583
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '19 Synthesizers', 'Reso Bass', 'does not match anything plugsound', 'Battle! (Legendary Giants)',
   'stuff_to_find', 'newer_vgm', 88),

  -- Row 3584
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   NULL, NULL, NULL, 'The Crown Tundra',
   'stuff_to_find', 'newer_vgm', 89),

  -- Row 3585
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 2 - VSL Woodwinds', 'Flute', 'Most likely VSL special edition vol 1 instead', 'Dynamax Adventure',
   'stuff_to_find', 'newer_vgm', 90),

  -- Row 3586
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 2 - VSL Woodwinds', 'French Oboe', 'Most likely VSL special edition vol 1 instead', 'Dynamax Adventure',
   'stuff_to_find', 'newer_vgm', 91),

  -- Row 3587
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'French Horn Ensemble', 'Most likely VSL special edition vol 1 instead', 'Dynamax Adventure',
   'stuff_to_find', 'newer_vgm', 92),

  -- Row 3588
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trombone Ensemble', 'Most likely VSL special edition vol 1 instead', 'Dynamax Adventure, Max Lair',
   'stuff_to_find', 'newer_vgm', 93),

  -- Row 3589
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trumpet', 'Most likely VSL special edition vol 1 instead', 'Dynamax Adventure',
   'stuff_to_find', 'newer_vgm', 94),

  -- Row 3590
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Snare Drum ens', 'Most likely VSL special edition vol 1 instead', 'Dynamax Adventure',
   'stuff_to_find', 'newer_vgm', 95),

  -- Row 3591
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   NULL, NULL, NULL, 'Gather at the Dyna Tree',
   'stuff_to_find', 'newer_vgm', 96),

  -- Row 3592
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library', NULL, NULL, 'The Crown Tundra',
   'stuff_to_find', 'newer_vgm', 97),

  -- Row 3593
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent' COLLATE NOCASE),
   'Beat Agent', 'Minitekk', 'hihats dont match', 'Battle! (Legendary Bird Pokémon)',
   'stuff_to_find', 'newer_vgm', 98),

  -- Row 3594
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   NULL, NULL, 'trumpet (check)', 'Battle! (Dynamax Adventure)',
   'stuff_to_find', 'newer_vgm', 99),

  -- Row 3595
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bass Head', '0:37 has it kinda audible with stem sep', 'Battle! (Glastrier/Spectrier)',
   'stuff_to_find', 'newer_vgm', 100),

  -- Row 3596
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bright Saw Bass', 'closest thing in halion, however... (see note)', 'Battle! (Legendary Bird Pokémon)',
   'stuff_to_find', 'newer_vgm', 101),

  -- Row 3597
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (Dynamax Adventure), Battle! (Legendary Bird Pokémon)',
   'stuff_to_find', 'newer_vgm', 102),

  -- Row 3598
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_03', 'Orchestra hit (minor)', 'Battle! (Legendary Bird Pokémon)',
   'stuff_to_find', 'newer_vgm', 103),

  -- Row 3599: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'voice ahh and church organs', 'King of Bountiful Harvests',
   'stuff_to_find', 'newer_vgm', 104),

  -- Row 3600: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'trumpets', 'Battle! (Dynamax Adventure)',
   'stuff_to_find', 'newer_vgm', 105),

  -- Row 3601: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'snare sample', 'Battle! (Legendary Bird Pokémon), Battle! (Dynamax Adventure)',
   'stuff_to_find', 'newer_vgm', 106),

  -- Row 3602: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synths (leads + bass)', 'Battle! (Legendary Bird Pokémon)',
   'stuff_to_find', 'newer_vgm', 107),

  -- Row 3603: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Distorted Woodwind / Trumpet lead', 'Battle! (Legendary Giants)',
   'stuff_to_find', 'newer_vgm', 108),

  -- Row 3604: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'percussion', 'Battle! (Legendary Giants)',
   'stuff_to_find', 'newer_vgm', 109),

  -- Row 3605: ?,?
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield EX: The Crown Tundra'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth (similar stuff is used in Go)', 'Battle! (Glastrier/Spectrier)',
   'stuff_to_find', 'newer_vgm', 110);
