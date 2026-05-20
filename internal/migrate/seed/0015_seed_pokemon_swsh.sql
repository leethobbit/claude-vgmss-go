-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 2881-3403
-- Pokémon Sword and Pokémon Shield (Nintendo Switch, November 15, 2019).
-- Composers: Minako Adachi, Go Ichinose, Keita Okamoto, Toby Fox.
-- Subsection headers in source:
--   row 3289 (Used as inspiration, but unused) -> unused
--   row 3292 (Stuff to Find)                   -> stuff_to_find
--   row 3366 (Unused Music)                    -> unused
--   row 3372 (Beta Build Music)                -> unused (beta/cut content)
--   row 3400 (Stuff to Find — inside Beta)     -> stuff_to_find
-- No explicit "Streamed Tracks"/"Sequenced Tracks" headers in this section; the entire
-- rows 2882-3288 block defaults to category='main'.
-- DLC sections (Isle of Armor row 3404+, Crown Tundra) are intentionally EXCLUDED;
-- they will be ingested as separate games in a later batch.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Aa6kHMGE0'),
  ('Genuine Soundware'),
  ('Gregjazz'),
  ('Heavyocity'),
  ('Image-Line'),
  ('Impact Soundworks'),
  ('MezmerKaiser'),
  ('Sample Magic'),
  ('Scarbee'),
  ('Shan'),
  ('Simon Harris'),
  ('Spitfire Audio'),
  ('Strezov Sampling'),
  ('Toontrack'),
  ('Vir2'),
  ('Xfer Records'),
  ('Roland Cloud');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Aa6kHMGE0'                    COLLATE NOCASE), 'Soundfont - THFont',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                 COLLATE NOCASE), 'Ethno World 6 Instruments',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                 COLLATE NOCASE), 'ProSamples Vol. 11 - Classic Orchestra',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                 COLLATE NOCASE), 'ProSamples Vol. 15 - Dance Drums',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                 COLLATE NOCASE), 'Red Box Vol.4 (Special and Unusual)',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                 COLLATE NOCASE), 'Celtic ERA',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'               COLLATE NOCASE), 'Discovery Japan',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'               COLLATE NOCASE), 'Sound Effects CD Series 1 - LIFE',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'               COLLATE NOCASE), 'Sound Effects CD Series 3 - TRAFFIC',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                     COLLATE NOCASE), 'Goliath',                                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                     COLLATE NOCASE), 'Ra',                                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                     COLLATE NOCASE), 'Symphonic Choirs',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                     COLLATE NOCASE), 'Symphonic Orchestra',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Genuine Soundware'            COLLATE NOCASE), 'Soundfont - RealAcousticDrum_5',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Gregjazz'                     COLLATE NOCASE), 'Soundfont - Ultimate Guitar Kit 2',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'                   COLLATE NOCASE), 'Damage',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Image-Line'                   COLLATE NOCASE), '3xOsc',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Image-Line'                   COLLATE NOCASE), 'FL Studio',                                       'DAW'),
  ((SELECT id FROM manufacturers WHERE name = 'Impact Soundworks'            COLLATE NOCASE), 'Super Audio Cart',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Impact Soundworks'            COLLATE NOCASE), 'Shreddage II',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                         COLLATE NOCASE), 'M1 Legacy Collection',                            'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                         COLLATE NOCASE), 'Mono/Poly Legacy Collection',                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools'         COLLATE NOCASE), 'Independence Pro',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MezmerKaiser'                 COLLATE NOCASE), 'Soundfont - Pokémon Emerald',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                     COLLATE NOCASE), 'RealGuitar',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                     COLLATE NOCASE), 'RealLPC',                                         'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                     COLLATE NOCASE), 'RealStrat',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'           COLLATE NOCASE), 'Action Strikes',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'           COLLATE NOCASE), 'Kinetic Metal',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'           COLLATE NOCASE), 'Kontakt Factory Library',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'           COLLATE NOCASE), 'Maschine Drum Selection',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'           COLLATE NOCASE), 'Massive',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'           COLLATE NOCASE), 'Rise & Hit',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland Cloud'                 COLLATE NOCASE), 'JV-1080',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Sample Magic'                 COLLATE NOCASE), 'SM101 - Vocal Shouts',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                      COLLATE NOCASE), 'Pre-Bass Amped',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Shan'                         COLLATE NOCASE), 'Soundfont - SGM V2.01',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Simon Harris'                 COLLATE NOCASE), 'Beats, Breaks & Scratches Volume 1',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sound Ideas'                  COLLATE NOCASE), 'The General Series 6000',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'                COLLATE NOCASE), 'Omnisphere',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'                COLLATE NOCASE), 'Omnisphere 2',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'                COLLATE NOCASE), 'Stylus RMX',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'                COLLATE NOCASE), 'Trilian',                                         'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'               COLLATE NOCASE), 'LABS Drums',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'Dark Planet',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'Groove Agent',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'Groove Agent SE',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'HALion 4',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'HALion Sonic',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'HALion Sonic 2',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'HALion Sonic 3',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'HALion Sonic SE',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'Retrologue',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'Triebwerk',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                    COLLATE NOCASE), 'The Grand 3',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Strezov Sampling'             COLLATE NOCASE), 'Arva Children Choir',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Toontrack'                    COLLATE NOCASE), 'EZdrummer 2',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'                  COLLATE NOCASE), '8 Bit Stylez',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'                  COLLATE NOCASE), 'Cinematic Timeshift',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'                  COLLATE NOCASE), 'Elastik 2 Demo',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'                  COLLATE NOCASE), 'Indie Rock',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'                  COLLATE NOCASE), 'Metal 2',                                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'                  COLLATE NOCASE), 'Neurofunk',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'                  COLLATE NOCASE), 'Trap',                                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                          COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                          COLLATE NOCASE), 'PlugSound Pro (03-Drums and Percs)',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                          COLLATE NOCASE), 'PlugSound Pro (04-Synths and co)',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                          COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                          COLLATE NOCASE), 'PlugSound Pro (Loops)',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'     COLLATE NOCASE), 'Special Edition Vol. 1',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'     COLLATE NOCASE), 'Vienna Imperial',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vir2'                         COLLATE NOCASE), 'Electri6ity',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Xfer Records'                 COLLATE NOCASE), 'Serum',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                    COLLATE NOCASE), 'Addictive Drums',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                    COLLATE NOCASE), 'Addictive Drums 2',                               'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                       COLLATE NOCASE), 'Creative Essentials Vol. 30 Orchestral Flavours', 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                       COLLATE NOCASE), 'Total Funk',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                       COLLATE NOCASE), 'Total House',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                      COLLATE NOCASE), 'Unknown',                                         NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized) VALUES
  ('Pokémon Sword and Pokémon Shield',
   'Nintendo Switch',
   'November 15, 2019',
   'Minako Adachi, Go Ichinose, Keita Okamoto, Toby Fox',
   'minako adachi, go ichinose, keita okamoto, toby fox');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Rows 2882-2886: Live Recording rows (non-commercial). product_id NULL; raw_source patched at end.
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   NULL, NULL, NULL, 'most likely estimate', 'Motostoke',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   NULL, NULL, NULL, NULL, 'Wild Area (North)',
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   NULL, NULL, NULL, NULL, 'Battle! (Team Yell), Battle! (Marnie)',
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   NULL, NULL, NULL, NULL, 'Circhester, Stow-on-Side',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   NULL, NULL, NULL, NULL, 'Battle! (Rose)',
   'main', 'newer_vgm', 5),

  -- Rows 2887-2889: Aa6kHMGE0 / Soundfont - THFont
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Aa6kHMGE0' COLLATE NOCASE AND p.name = 'Soundfont - THFont' COLLATE NOCASE),
   '-', 'Blow Tenor', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Aa6kHMGE0' COLLATE NOCASE AND p.name = 'Soundfont - THFont' COLLATE NOCASE),
   '-', 'BRASS', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Aa6kHMGE0' COLLATE NOCASE AND p.name = 'Soundfont - THFont' COLLATE NOCASE),
   '-', 'Brass Trumpet', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 8),

  -- Rows 2890-2898: Best Service
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'KEY INSTRUMENTS', 'Dallape Accordion Key', NULL, 'Route 1, Poké Job',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'KEY INSTRUMENTS', 'Shanghai Babypiano', NULL, 'Poké Job, Chairman Rose',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> KENA + BASS QUENACHO', 'Kena KEY', NULL, 'Route 1',
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> BAG PIPES', 'Zukra Bagpipe KEY', NULL, 'Route 1',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> IRISH WHITLES', 'Low Whistle Licks 70 A TM', 'D3', 'Stow-on-Side',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 11 - Classic Orchestra' COLLATE NOCASE),
   'WAV > Advanced Compact -> Timpani VS', '11-tim03-ff-e', NULL, 'Battle! (Max Raid Battle)',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'BD 061-120', '15A-BDE120', NULL, 'Battle! (Eternatus)',
   'main', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol.4 (Special and Unusual)' COLLATE NOCASE),
   'CD1 -> short - sounds - work', 'releasing air pressure', NULL, 'Motostoke',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol.4 (Special and Unusual)' COLLATE NOCASE),
   'CD3 -> bells', 'church bells calling', NULL, 'Motostoke',
   'main', 'newer_vgm', 17),

  -- Rows 2899-2901: Discovery Firm
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Discovery Japan' COLLATE NOCASE),
   'Track 54', '-', 'Jinglebell (Suzu) - Pitched up 400 cents', 'Route 10',
   'main', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 1 - LIFE' COLLATE NOCASE),
   'Track 76 - SPORTS', 'FOOTBALL SOUND', 'Crowd SFX', 'Decisive Battle! (Marnie)',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 3 - TRAFFIC' COLLATE NOCASE),
   'Track 34 - CAR', 'BRAKING-2', 'Pitchbent up near end of sample', 'Battle! (Bede)',
   'main', 'newer_vgm', 20),

  -- Rows 2902-2940: EastWest (Goliath, Ra, Symphonic Choirs, Symphonic Orchestra)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '17-Drawbar Organ MOD', NULL, 'Pokémon Center, Battle Tower',
   'main', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '20-Church Organ', NULL, 'Darkest Day, Battle! (Rose)',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '22-Accordian', NULL, 'Circhester',
   'main', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 033-40 BASS', '33-Upright Bass', NULL, 'Stow-on-Side',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Wind -> Pan Flute', 'Pan Flute KS C0-D#0', NULL, 'Wild Area (North), Stow-on-Side',
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Koto', 'Koto KS C0-F#0', NULL, 'Stow-on-Side',
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Mid East -> Plucked -> Santoor', 'Santoor KS C0-G0', NULL, 'Wild Area (North), Stow-on-Side',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Instruments -> Boys -> BOYS vowels', 'BOYS ah DFX C0-C#0', NULL, 'Wyndon',
   'main', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 2 Trumpets -> 5 Keysw', '2TP KS Master', NULL, 'Decisive Battle! (Champion Leon)',
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 3 Effects', '4TB Bn Dn HT', NULL, 'Battle! (Eternatus)',
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 5 Keysw', '4TB KS Master', NULL, 'Captured Eternatus!',
   'main', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 5 Keysw', '4TP KS Master', NULL, 'Pokémon Gym, Wild Area (North), Infinite Power, Route 10, Ballonlea',
   'main', 'newer_vgm', 32),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 1 Long', '6FH 3Sec Marc', NULL, 'Wyndon',
   'main', 'newer_vgm', 33),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH Rips S', NULL, 'Battle! (Rose)',
   'main', 'newer_vgm', 34),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, 'Pokémon Gym, Wild Area (South), Battle! (Max Raid Battle), Route 10',
   'main', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '19 French Cymbal', NULL, 'Route 1',
   'main', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '20 Cymbal', NULL, 'Hammerlocke, Stow-on-Side, Ballonlea',
   'main', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '20 French Cymbal', NULL, 'Stow-on-Side',
   'main', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', '3 Snares', NULL, 'Wild Area (North), Battle! (Eternatus), Decisive Battle! (Champion Leon)',
   'main', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', NULL, 'Title Screen, Wild Area (North)',
   'main', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', NULL, 'Poké Job',
   'main', 'newer_vgm', 41),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', NULL, 'Wild Area (South), Darkest Day, Abnormal Situation, Route 3',
   'main', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 9 Double Basses -> 5 Keysw', 'CBS KS Master', NULL, 'Hammerlocke, Ballonlea',
   'main', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Cellos -> 5 Keysw', 'VCS KS Master', NULL, 'Hammerlocke',
   'main', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 3 Effects', '11V Trill W', NULL, 'Route 3',
   'main', 'newer_vgm', 45),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 5 Keysw', '11V KS Master', NULL, 'Wild Area (North), Ballonlea',
   'main', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 1 Long', '18V Trem Leg', NULL, 'To Create a Bright Future',
   'main', 'newer_vgm', 47),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 3 Effects', '18V Clstr & Air', NULL, 'Infinite Power',
   'main', 'newer_vgm', 48),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'Hammerlocke',
   'main', 'newer_vgm', 49),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', NULL, 'Wild Area (North), Pokémon Research Lab, Stow-on-Side, Ballonlea',
   'main', 'newer_vgm', 50),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harpsichord', 'Harpsichord', NULL, 'Hammerlocke, Ballonlea',
   'main', 'newer_vgm', 51),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Large String Ens', 'String Quartet QLeg RR', NULL, 'Ballonlea, Wild Area (North)',
   'main', 'newer_vgm', 52),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Cello -> 5 Keysw', 'SVC KS Master', NULL, 'Ballonlea',
   'main', 'newer_vgm', 53),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Contrabass -> 5 Keysw', 'SCB KS Master', NULL, 'Wild Area (South)',
   'main', 'newer_vgm', 54),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 2 Short', 'SVL Pizz', NULL, 'Glimwood Tangle',
   'main', 'newer_vgm', 55),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 5 Keysw', 'SVL KS Master', NULL, 'Stow-on-Side, Abnormal Situation',
   'main', 'newer_vgm', 56),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Clarinet -> 5 Keysw', 'SCL KS Master', NULL, 'Ballonlea',
   'main', 'newer_vgm', 57),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Flute -> 5 Keysw', 'SFL KS Master', 'Close mic, stac articulation', 'Guide ',
   'main', 'newer_vgm', 58),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Oboe -> 5 Keysw', 'SOB KS Master', NULL, 'Hammerlocke',
   'main', 'newer_vgm', 59),

  -- Rows 2941-2942: Soundfont attributions
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Genuine Soundware' COLLATE NOCASE AND p.name = 'Soundfont - RealAcousticDrum_5' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 60),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Gregjazz' COLLATE NOCASE AND p.name = 'Soundfont - Ultimate Guitar Kit 2' COLLATE NOCASE),
   NULL, NULL, 'Amped', 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 61),

  -- Rows 2943-2955: Heavyocity / Damage
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Organic  Full', NULL, 'Battle! (Oleana), Battle! (Rose)',
   'main', 'newer_vgm', 62),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Organic Elements 01', 'F6', 'Gym Explanation',
   'main', 'newer_vgm', 63),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Organic Elements 02', 'D#0', 'In the Fog',
   'main', 'newer_vgm', 64),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Tech  Full', 'C2, A2, C5', 'Welcome to the World of Pokémon!',
   'main', 'newer_vgm', 65),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Tech Elements 01', 'A#7', 'Battle! (Bede)',
   'main', 'newer_vgm', 66),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Industrial  Full', 'E2', 'Final Battle! (Marnie)',
   'main', 'newer_vgm', 67),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Industrial Elements 01', 'C5', 'Galar Mines',
   'main', 'newer_vgm', 68),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Industrial Elements 03', 'C2, G#2, E4, F4', 'Infinite Power',
   'main', 'newer_vgm', 69),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Mangled Pop  Full', 'C5 for Team Yell Grunt', 'Victory! (Dynamax Pokémon), Battle! (Team Yell), Battle! (Gym Leader Piers), Battle Tower, Team Yell Appears!',
   'main', 'newer_vgm', 70),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Mangled Pop Elements 01', 'C#1, B3, D5', 'Final Tournament Begin!',
   'main', 'newer_vgm', 71),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Mangled Pop Elements 03', NULL, 'Battle! (Final Tournament), Galar Mines',
   'main', 'newer_vgm', 72),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Single Loops', '14 LP Mang Pop (El 01) C#2 Kick', 'likely from a Damage Kit', 'Battle! (Bede), Slumbering Weald',
   'main', 'newer_vgm', 73),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> Damage Kits', 'PERC Tweak Skool Kit', 'layered with AD', 'Motostoke',
   'main', 'newer_vgm', 74),

  -- Rows 2956-2957: Image-Line
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = '3xOsc' COLLATE NOCASE),
   '-', 'Square', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 75),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'FL Studio' COLLATE NOCASE),
   'Packs -> Drums -> Cymbals', '707 Crash', 'Reversed', 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 76),

  -- Rows 2958-2960: Impact Soundworks / Super Audio Cart
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Super Audio Cart' COLLATE NOCASE),
   'Authentic -> GB', 'Drumkit 1', NULL, 'Decisive Battle! (Champion Leon)',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Super Audio Cart' COLLATE NOCASE),
   'Authentic -> GB', 'Pulse 25%', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Super Audio Cart' COLLATE NOCASE),
   'Authentic -> GB', 'Triangle 1', NULL, 'Bede''s Theme, Decisive Battle! (Champion Leon)',
   'main', 'newer_vgm', 79),

  -- Row 2961: KORG / M1 Legacy Collection
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'M1 Legacy Collection' COLLATE NOCASE),
   'PROG', 'M01 30 Lore', NULL, 'Deep in the Forest',
   'main', 'newer_vgm', 80),

  -- Rows 2962-2972: MAGiX / Yellow Tools / Independence Pro
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '03 Acoustic Basses', 'Upright Bass 8th A sc2', NULL, 'Bede''s Theme',
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '03 Acoustic Basses', 'Upright Bass 8th B sc2', NULL, 'Let''s Make Curry!, Curry: Copperajah Class, Curry: Charizard Class',
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'American Ballad 1 Combi KS A-1', NULL, 'At the Train Station',
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'Fat Slap combi KS A-1', NULL, 'In the Fog, Battle! (Bede), Battle! (Zacian/Zamazenta), Rotom Rally',
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'Fat Phaser Slap combi KS A-1', NULL, 'Galar Mines',
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'NY Slap combi KS A-1', NULL, 'Title Screen, Let''s Have a Champion Time!',
   'main', 'newer_vgm', 86),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'Acoustic Bar Piano & Mic Modeler 2', NULL, 'Motostoke',
   'main', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'Acoustic Piano & Mic Modeler', NULL, 'Route 1',
   'main', 'newer_vgm', 88),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '16 Pop Brass Section', 'Brass Section BIG KS C1-F1 & Mic Modeler 1', NULL, 'Battle! (Hop), Battle! (Trainer), Decisive Battle! (Hop), Rotom Rally, At the Train Station, Hulbury, Bede''s Theme',
   'main', 'newer_vgm', 89),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '16 Pop Brass Section', 'Trumpet Section BIG KS C1-F1 & Mic Modeler 1', NULL, 'Battle! (Wild Pokémon), Battle! (Max Raid Battle), Poké Job',
   'main', 'newer_vgm', 90),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '17 Saxophones', 'Alto Sax Jazz BIG Key Switch B-1', NULL, 'Battle! (Hop), At the Train Station',
   'main', 'newer_vgm', 91),

  -- Row 2973: MezmerKaiser / Soundfont - Pokémon Emerald
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MezmerKaiser' COLLATE NOCASE AND p.name = 'Soundfont - Pokémon Emerald' COLLATE NOCASE),
   NULL, 'French Horn', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 92),

  -- Rows 2974-2976: MusicLab
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Fingered', 'under Audio FX, enable Tremolo', 'At the Train Station',
   'main', 'newer_vgm', 93),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Stereo (290MB)', 'change picking position', 'Wedgehurst',
   'main', 'newer_vgm', 94),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealLPC' COLLATE NOCASE),
   '-', 'RealLPC', 're-amped and enable wah', 'Battle! (Hop), Turffield, Hulbury, Battle! (Zacian/Zamazenta), Galar Mines',
   'main', 'newer_vgm', 95),

  -- Rows 2977-2996: Native Instruments
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   '-', 'Hits', NULL, 'Battle! (Rose)',
   'main', 'newer_vgm', 96),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kinetic Metal' COLLATE NOCASE),
   '-', 'Wet Tines', NULL, 'Deep in the Forest',
   'main', 'newer_vgm', 97),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kinetic Metal' COLLATE NOCASE),
   '-', 'Windmill', NULL, 'Deep in the Forest',
   'main', 'newer_vgm', 98),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Classic Bass', NULL, 'Victory! (Gym Leader), Staff Credits',
   'main', 'newer_vgm', 99),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Funk Bass', NULL, 'Evolution (Galar)',
   'main', 'newer_vgm', 100),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Maschine Drum Selection' COLLATE NOCASE),
   'Digital Kits', 'Kondensator Kit', 'Check note for more info', 'Battle! (Gym Leader), Battle! (Final Tournament)',
   'main', 'newer_vgm', 101),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Synth Lead', 'No Limit', NULL, 'Decisive Battle! (Eternatus)',
   'main', 'newer_vgm', 102),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '01 - Orchestral', 'Pizz Up', NULL, 'Battle! (Rose)',
   'main', 'newer_vgm', 103),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '01 - Orchestral', 'Cluster Swell', NULL, 'Leon and Eternatus, Darkest Day',
   'main', 'newer_vgm', 104),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '01 - Orchestral', 'Triple Orchestra', NULL, 'Rose Tower',
   'main', 'newer_vgm', 105),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '02 - Hybrid Orchestra', 'Vowel Raising', NULL, 'Welcome to the World of Pokémon!',
   'main', 'newer_vgm', 106),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '04 - Hybrid Instruments', 'Pure Bells 3', NULL, 'Glimwood Tangle',
   'main', 'newer_vgm', 107),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '07 - Lifters', 'Crushed Glide', NULL, 'Final Tournament Begin!, Battle Tower',
   'main', 'newer_vgm', 108),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '07 - Lifters', 'Pneumatic Lifter', NULL, 'Battle! (Oleana), Battle! (Marnie), Decisive Battle! (Marnie)',
   'main', 'newer_vgm', 109),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '08- Smooth', 'Discreet Metal', NULL, 'Final Tournament Begin!',
   'main', 'newer_vgm', 110),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Down Sweep 2', NULL, 'Gym Challenge Opening Ceremony',
   'main', 'newer_vgm', 111),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Synth Sweep 1', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 112),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Trash Storm', NULL, 'Battle! (Team Yell)',
   'main', 'newer_vgm', 113),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Up Sweep 1', NULL, 'Marnie''s Theme',
   'main', 'newer_vgm', 114),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Up Sweep 2', NULL, 'Battle! (Final Tournament)',
   'main', 'newer_vgm', 115),

  -- Rows 2997-2998: Sample Magic / SM101 - Vocal Shouts
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample Magic' COLLATE NOCASE AND p.name = 'SM101 - Vocal Shouts' COLLATE NOCASE),
   'sm101_shouts_Bass', 'sm101_shouts_bass 2', NULL, 'Battle! (Bede)',
   'main', 'newer_vgm', 116),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample Magic' COLLATE NOCASE AND p.name = 'SM101 - Vocal Shouts' COLLATE NOCASE),
   '-', 'sm101_shouts_baile', 'Remove high end with EQ', 'Battle! (Bede)',
   'main', 'newer_vgm', 117),

  -- Row 2999: Scarbee / Pre-Bass Amped
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Pre-Bass Amped' COLLATE NOCASE),
   '-', 'Pre-Bass - Amped - Rocky', NULL, 'Team Yell Appears!',
   'main', 'newer_vgm', 118),

  -- Rows 3000-3010: Shan / Soundfont - SGM V2.01
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'Piano 1', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 119),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'E. Piano 1', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 120),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'Fantasia', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 121),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'Glockenspiel', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 122),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'Guitar Feedback', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 123),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'Tubular Bells', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 124),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'Slap Bass 2', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 125),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'Overdriven Guitar', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 126),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'Impact Hit', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 127),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'Standard 1', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 128),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Shan' COLLATE NOCASE AND p.name = 'Soundfont - SGM V2.01' COLLATE NOCASE),
   NULL, 'Strings', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 129),

  -- Rows 3011-3012: Sound Ideas / The General Series 6000
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'INDOOR: HOCKEY ARENA, GOAL SCORED,SPORTS', 'CHEERING,CROWD', '#6013_47_01', 'Decisive Battle! (Champion Leon), Decisive Battle! (Hop)',
   'main', 'newer_vgm', 130),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'Applause, Indoor', 'CrowdApplause ', '#6013_11_1', 'Decisive Battle! (Hop)',
   'main', 'newer_vgm', 131),

  -- Rows 3013-3055: Spectrasonics / Omnisphere
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Astral Music Box', NULL, 'Ballonlea',
   'main', 'newer_vgm', 132),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Glass Music Box', NULL, 'Battle! (Marnie)',
   'main', 'newer_vgm', 133),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Mono', 'Portahorn Lead', NULL, 'Battle! (Rose)',
   'main', 'newer_vgm', 134),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Cross Beat Overdriver', NULL, 'Team Yell Appears!, Darkest Day, Leon and Eternatus, Abnormal Situation, At the Stadium',
   'main', 'newer_vgm', 135),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Ode to Mr Newman Arp', NULL, 'Abnormal Situation',
   'main', 'newer_vgm', 136),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Wind Groove', NULL, 'Galar Mines',
   'main', 'newer_vgm', 137),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Carlos Bellsaws', NULL, 'Trade, Wyndon',
   'main', 'newer_vgm', 138),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Glockenspiel Dry', NULL, 'Glimwood Tangle',
   'main', 'newer_vgm', 139),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Glockenspiel Women Oos', NULL, 'Sonia''s Theme',
   'main', 'newer_vgm', 140),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Glockenceleste', NULL, 'Battle! (Oleana)',
   'main', 'newer_vgm', 141),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Liquid Celeste', NULL, 'Circhester',
   'main', 'newer_vgm', 142),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Organic Bells 2', NULL, 'Circhester',
   'main', 'newer_vgm', 143),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Guitars', 'Classic Nylon Guitar', NULL, 'Sonia''s Theme, Salon',
   'main', 'newer_vgm', 144),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Guitars', 'Glorious Steel', NULL, 'Marnie''s Theme, Arrival at the Top',
   'main', 'newer_vgm', 145),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Guitars', 'PRS Lead Guitar a', NULL, 'Rose Tower',
   'main', 'newer_vgm', 146),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Hits and Bits', 'Aggresitronic Beamz', NULL, 'Galar Mines',
   'main', 'newer_vgm', 147),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Human Voices', 'Boys Choir Ees ^', NULL, 'An Old Legend ',
   'main', 'newer_vgm', 148),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Human Voices', 'Choir Full Vowel Octaves', NULL, 'An Old Legend ',
   'main', 'newer_vgm', 149),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Human Voices', 'Jazz Stack Dow Falls', NULL, 'Rotom Rally',
   'main', 'newer_vgm', 150),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Boomerang Dreampiano', NULL, 'Darkest Day',
   'main', 'newer_vgm', 151),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Cedar Plucked Piano', 'delay for Boutique', 'Motostoke, Boutique',
   'main', 'newer_vgm', 152),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Crush Tone Keys', 'low end cut out via EQ', 'Spikemuth',
   'main', 'newer_vgm', 153),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Retrophased Organic Rhodes', NULL, 'Marnie''s Theme',
   'main', 'newer_vgm', 154),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Super Wah Clav', NULL, 'Galar Mines',
   'main', 'newer_vgm', 155),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Cryogenic Freeze', NULL, 'Glimwood Tangle',
   'main', 'newer_vgm', 156),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Platinum Sky', NULL, 'Ballonlea',
   'main', 'newer_vgm', 157),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Retro Land', 'Redwood Message Blip', NULL, 'Victory! (Gym Leader)',
   'main', 'newer_vgm', 158),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Analog Knocker Bass', NULL, 'Obtained a Gym Badge!, Battle! (Final Tournament), Victory! (Champion Cup)',
   'main', 'newer_vgm', 159),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Badd Booty Bass', NULL, 'Sonia''s Theme',
   'main', 'newer_vgm', 160),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Eighties Synth Bass', NULL, 'Battle! (Oleana), Gym Challenge Opening Ceremony',
   'main', 'newer_vgm', 161),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Overtonal Overdrive Bass', NULL, 'Trade',
   'main', 'newer_vgm', 162),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Compressed Supersawz', NULL, 'Battle! (Gym Leader), Battle! (Oleana), Victory! (Gym Leader), Battle! (Final Tournament), Victory! (Champion Cup)',
   'main', 'newer_vgm', 163),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Happy Gaga Lead', NULL, 'Battle! (Marnie), Marnie''s Theme, Victory! (Champion Cup), Sonia''s Theme, Decisive Battle! (Marnie), Time for a Breather, Boutique',
   'main', 'newer_vgm', 164),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Sharp Solo', NULL, 'At the Stadium',
   'main', 'newer_vgm', 165),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Juiced Up', NULL, 'Battle! (Bede)',
   'main', 'newer_vgm', 166),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Unison Detuner Lead', NULL, 'Battle! (Gym Leader), Gym Badge Obtained!, Battle! (Final Tournament), Gym Challenge Opening Ceremony, Wyndon Stadium',
   'main', 'newer_vgm', 167),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Brainsalad Modular', NULL, 'Battle! (Max Raid Battle)',
   'main', 'newer_vgm', 168),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Loud Raving Lunatic', NULL, 'Trade, Battle! (Marnie), Battle! (Gym Leader Piers), Battle! (Team Yell), Decisive Battle! (Marnie)',
   'main', 'newer_vgm', 169),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Sawbrass from the 80''s', 'With each chord, increase velocities by 10', 'Battle! (Max Raid Battle)',
   'main', 'newer_vgm', 170),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Short', 'Buenos Aires', NULL, 'Spikemuth',
   'main', 'newer_vgm', 171),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Short', 'Pizzicato Supersaw Wet', NULL, 'Sonia''s Theme',
   'main', 'newer_vgm', 172),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Textures Playable', 'Binary Awakening', NULL, 'Stow-on-Side, Pokémon Research Lab ',
   'main', 'newer_vgm', 173),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Textures Playable', 'Rippling String Resonance', NULL, 'Circhester',
   'main', 'newer_vgm', 174),

  -- Rows 3056-3057: Spectrasonics / Omnisphere 2
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Tube Keys RMI Warm', 'worth checking if this is still accurate', 'Galar Mines',
   'main', 'newer_vgm', 175),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Euro Juno', 'Poly Mode, turn off arpeggiator, turn up mod', 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 176),

  -- Rows 3058-3077: Spectrasonics / Stylus RMX
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 80-Modren', '80-Modren b', NULL, 'Trainers'' Eyes Meet (Trainer), Trainers'' Eyes Meet (Gym Trainer)',
   'main', 'newer_vgm', 177),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 82-Baghead', '82-Baghead b', NULL, 'Guide',
   'main', 'newer_vgm', 178),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 117-ProgHouse', '117-ProgHouse d', NULL, 'Victory! (Gym Trainer)',
   'main', 'newer_vgm', 179),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 170-Blowout', '170-Blowout a', NULL, 'Battle! (Bede)',
   'main', 'newer_vgm', 180),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Bongos', '85-Bongos 2', NULL, 'Battle! (Hop)',
   'main', 'newer_vgm', 181),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '65-Congas 1', 'rearrange for fills', 'Turffield',
   'main', 'newer_vgm', 182),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 68-Small Blocks', '68-Small Blocks Combo', NULL, 'Chairman Rose',
   'main', 'newer_vgm', 183),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 68-Tower Zero', '68-Tower Zero Hi-Hats', NULL, 'Staff Credits',
   'main', 'newer_vgm', 184),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 73-Caravan', '73-Caravan Perc', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 185),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Bossa Love', '79-BossaLuv No Kick', NULL, 'Marnie''s Theme, Salon, Pokémon Center',
   'main', 'newer_vgm', 186),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 86-Outlaw', '86-Outlaw Combo', 'rearrange snares where necessary', 'Galar Mines, Title Screen, Battle! (Zacian/Zamatenta)',
   'main', 'newer_vgm', 187),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 86-Outlaw', '86-Outlaw Whiner Fill', NULL, 'Galar Mines',
   'main', 'newer_vgm', 188),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Beat Bastard', '90-Beat Bastard', NULL, 'Galar Mines',
   'main', 'newer_vgm', 189),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Madrid', '90-Madrid Hi-Hats', NULL, 'Gym, Spikemuth',
   'main', 'newer_vgm', 190),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Variable Axis', '90-Variable Axis Combo', 'certain slices used + highpassed', 'Chairman Rose',
   'main', 'newer_vgm', 191),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 109-Hypnotic', '109-Hypnotic Beat', NULL, 'Gym Challenge Opening Ceremony, Wyndon Stadium',
   'main', 'newer_vgm', 192),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 112-Jive Walking', '112-Jive No Kick', NULL, 'Sonia''s Theme',
   'main', 'newer_vgm', 193),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Horse Fury', '135-Horse Fury Combo 1', NULL, 'Galar Mines',
   'main', 'newer_vgm', 194),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Horse Fury', '135-Horse Fury Burnbreak', NULL, 'Galar Mines',
   'main', 'newer_vgm', 195),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 160-The Call', '160-The Call Combo', NULL, 'Battle! (Bede)',
   'main', 'newer_vgm', 196),

  -- Rows 3078-3083: Spectrasonics / Trilian
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Acoustic Upright', 'Trilian Ac 1 - Full Range', NULL, 'Budew Drop Inn',
   'main', 'newer_vgm', 197),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Picked', 'Rock P-Bass Pick - Full Range', 'may be a HALion electric bass instead', 'Battle! (Trainer), Victory! (Trainer)',
   'main', 'newer_vgm', 198),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Clicky ''n Solid Omega', NULL, 'Spikemuth',
   'main', 'newer_vgm', 199),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Clubbing Swedes 1', NULL, 'Battle! (Gym Leader), Marnie''s Theme, Battle! (Marnie), Decisive Battle! (Marnie), Time for a Breather',
   'main', 'newer_vgm', 200),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Edge Buzz Omega', NULL, 'Battle! (Gym Leader Piers)',
   'main', 'newer_vgm', 201),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Phatty Acids Wobbler', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 202),

  -- Row 3084: Spitfire Audio / LABS Drums
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'LABS Drums' COLLATE NOCASE),
   NULL, 'Spitfire Labs - Drums', NULL, 'Battle! (Battle Tower Trainer)',
   'main', 'newer_vgm', 203),

  -- Rows 3085-3093: Steinberg (Dark Planet, Groove Agent, Groove Agent SE)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Dark Planet' COLLATE NOCASE),
   'Synth Lead', 'Big Epic Fifth', NULL, 'Exhibition Match',
   'main', 'newer_vgm', 204),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Dark Planet' COLLATE NOCASE),
   'Synth Lead', 'Planet Lead 01', NULL, 'At the Stadium',
   'main', 'newer_vgm', 205),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent' COLLATE NOCASE),
   'Beat Agent', 'Analogical', 'only the hihats used', 'Wyndon',
   'main', 'newer_vgm', 206),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent' COLLATE NOCASE),
   'Beat Agent', 'Free Energy', 'Bede has the clap sampled and mapped', 'Battle! (Eternatus), Motostoke, Battle! (Bede)',
   'main', 'newer_vgm', 207),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent' COLLATE NOCASE),
   'Beat Agent', 'Minitekk', NULL, 'Chairman Rose, Battle! (Eternatus)',
   'main', 'newer_vgm', 208),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent' COLLATE NOCASE),
   'Beat Agent', 'Retroactive', 'Tambourine (also in Retrospective)', 'Battle! (Hop)',
   'main', 'newer_vgm', 209),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent' COLLATE NOCASE),
   'Beat Agent', 'Vintage Funk', 'Toms, Cymbals', 'Battle! (Hop)',
   'main', 'newer_vgm', 210),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent SE' COLLATE NOCASE),
   'Beat Agent SE', 'Dubstep Kit 01', NULL, 'Battle! (Max Raid Battle), Battle! (Bede)',
   'main', 'newer_vgm', 211),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent SE' COLLATE NOCASE),
   'Beat Agent SE', 'Drum & Bass Kit 01', 'Kick, Snare, Hi-Hats', 'Battle! (Bede)',
   'main', 'newer_vgm', 212),

  -- Rows 3094-3102: Steinberg / HALion 4
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Bright Concert Grand', NULL, 'Decisive Battle! (Champion Leon), Battle! (Bede), Let''s Make Curry!, Decisive Battle! (Eternatus), Galar Mines',
   'main', 'newer_vgm', 213),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 FM E-Piano 1', 'Played as octaves in Victory! (Trainer)', 'Slumbering Weald, In the Fog, Victory! (Trainer)',
   'main', 'newer_vgm', 214),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 FM E-Piano 2', NULL, 'Rotom Rally',
   'main', 'newer_vgm', 215),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 FM E-Piano 3', NULL, 'Let''s Have a Champion Time!, Turffield, Hulbury, Budew Drop Inn, Victory! (Wild Pokémon)',
   'main', 'newer_vgm', 216),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 FM E-Piano 5', NULL, 'Battle! (Hop)',
   'main', 'newer_vgm', 217),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Jazz Organ', NULL, 'Wedgehurst',
   'main', 'newer_vgm', 218),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Rock Organ', 'Turn down Reverb Mix', 'Budew Drop Inn, Trainers'' Eyes Meet (Gym Trainer), Turffield',
   'main', 'newer_vgm', 219),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Trance Synth', NULL, 'Victory! (Trainer), Battle! (Bede), Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 220),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', 'Bustling Life', NULL, 'Slumbering Weald',
   'main', 'newer_vgm', 221),

  -- Rows 3103-3147: Steinberg / HALion Sonic (HS Factory Set)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Fooling', 'Turn down Delay Level dial*', 'Decisive Battle! (Eternatus), Battle! (Wild Pokémon), Wedgehurst, Motostoke, Wyndon, Staff Credits, Rotom Rally',
   'main', 'newer_vgm', 222),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Lead', NULL, 'Decisive Battle! (Champion Leon), Motostoke',
   'main', 'newer_vgm', 223),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '5150', NULL, 'Victory! (Gym Leader)',
   'main', 'newer_vgm', 224),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '5th Avenue', NULL, 'Let''s Have a Champion Time!, Decisive Battle! (Champion Leon)',
   'main', 'newer_vgm', 225),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '5th Lead', NULL, 'Rotom Rally',
   'main', 'newer_vgm', 226),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '80s Synth Horns', NULL, 'Let''s Have a Champion Time!, Chairman Rose, Galar Mines',
   'main', 'newer_vgm', 227),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '9o9 Studio Kit', NULL, 'Victory! (Champion Cup)',
   'main', 'newer_vgm', 228),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Airy Lead', 'increase modulation for Wild Area Station', 'At the Train Station, Let''s Make Curry!, Hulbury, Decisive Battle! (Champion Leon)',
   'main', 'newer_vgm', 229),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Arp Sequence 2', NULL, 'Final Tournament Begin!',
   'main', 'newer_vgm', 230),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Ambient Harpsichord', NULL, 'Victory! (Trainer)',
   'main', 'newer_vgm', 231),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Analog Brass', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 232),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bass Head', NULL, 'Spikemuth',
   'main', 'newer_vgm', 233),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bassline Amuse', 'Turn down Reverb Mix', 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 234),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Beverly Hills Lead', NULL, 'Decisive Battle! (Hop)',
   'main', 'newer_vgm', 235),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Boogie Bass', NULL, 'Wedgehurst',
   'main', 'newer_vgm', 236),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Boogie Down', NULL, 'Battle! (Bede), Route 1',
   'main', 'newer_vgm', 237),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Chick Lead', NULL, 'Decisive Battle! (Champion Leon)',
   'main', 'newer_vgm', 238),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Coliseum Bass', 'likely used for Battle! (Trainer Battle)', 'Hop''s Theme',
   'main', 'newer_vgm', 239),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Comp Strat Vel', 'Panned left, velocities 80 or lower', 'Staff Credits',
   'main', 'newer_vgm', 240),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Concert Harpsi 8ft A + 4ft', 'may be used for trainer battle', 'Postwick',
   'main', 'newer_vgm', 241),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'CP80 Vintage Chorus', NULL, 'Motostoke',
   'main', 'newer_vgm', 242),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Crunched Synth Harmonica', NULL, 'Let''s Make Curry!, Turffield',
   'main', 'newer_vgm', 243),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Crunchy Overdrive Pick', NULL, 'Hulbury',
   'main', 'newer_vgm', 244),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'D6 Clavi Double Phased', NULL, 'Battle! (Bede), Rotom Rally',
   'main', 'newer_vgm', 245),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Digi Recorder Pad', '"Wolf", layered with GM Square, use bends', 'Battle! (Zacian/Zamazenta), Deep in the Forest, Destruction of the Mural, Slumbering Weald, In the Fog, Captured Eternatus! , Infinite Power',
   'main', 'newer_vgm', 246),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Flute', 'additional reverb required for Postwick', 'Postwick, Battle! (Eternatus)',
   'main', 'newer_vgm', 247),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'FM Lately', NULL, 'Infinite Power',
   'main', 'newer_vgm', 248),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Fretless B15', NULL, 'Turffield',
   'main', 'newer_vgm', 249),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Funky Organ Solo', NULL, 'Trainers'' Eyes Meet (Worker)',
   'main', 'newer_vgm', 250),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Glockenspiel', NULL, 'Let''s Have a Champion Time!, Turffield',
   'main', 'newer_vgm', 251),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'J-Clean', 'Velocities under 70', 'Staff Credits',
   'main', 'newer_vgm', 252),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Master Accordion', NULL, 'Trainers'' Eyes Meet (Pokémon Breeder)',
   'main', 'newer_vgm', 253),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Mic''d Upright Bass', NULL, 'Slumbering Weald',
   'main', 'newer_vgm', 254),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Phaser Suitcase', NULL, 'Let''s Have a Champion Time!',
   'main', 'newer_vgm', 255),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Prophetic Flute Poly', 'Turn down Reverb Mix dial', 'Rotom Rally',
   'main', 'newer_vgm', 256),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Sine Lead', 'Turn down Delay Mix', 'Staff Credits',
   'main', 'newer_vgm', 257),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Standard Rock Kit', NULL, 'Wedgehurst',
   'main', 'newer_vgm', 258),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Super Phase Clavi', 'Plays the background chords', 'Trainers'' Eyes Meet (Artist), Battle! (Trainer)',
   'main', 'newer_vgm', 259),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Sync Lead 2', NULL, 'Decisive Battle! (Hop)',
   'main', 'newer_vgm', 260),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Touch Wah Clavi', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 261),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Tube Pick Bass', NULL, 'Welcome to the World of Pokémon!',
   'main', 'newer_vgm', 262),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Tubed Synth Clavi', 'Turn down Delay Mix, add reverb', 'Chairman Rose',
   'main', 'newer_vgm', 263),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Who R You Synth', NULL, 'Trainers'' Eyes Meet (Artist)',
   'main', 'newer_vgm', 264),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Wow Bass', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 265),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Xylophone', NULL, 'Guide, Obtained a Key Item!, Obtained an Item!',
   'main', 'newer_vgm', 266),

  -- Rows 3148-3151: Steinberg / HALion Sonic 2
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'B-Box ', 'Dubstep Groove 04 - 140', 'Vari5 - Adjust "Reverb Return Level"', 'Trade',
   'main', 'newer_vgm', 267),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'Voltage Set', 'Against The Current', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 268),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'Voltage Set', 'Cut Bass', '110-127 velocities', 'Motostoke',
   'main', 'newer_vgm', 269),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'Voltage Set', 'Mother Earth', 'Turn down Reverb Mix and Delay Mix', 'Turffield, Hop''s Theme',
   'main', 'newer_vgm', 270),

  -- Rows 3152-3158: Steinberg / HALion Sonic 3
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 3' COLLATE NOCASE),
   'Anima Set', 'Arcade 01', 'play 3 octaves for Zacian/Zamazenta', 'Battle! (Zacian/Zamazenta), Battle! (Eternatus)',
   'main', 'newer_vgm', 271),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 3' COLLATE NOCASE),
   'Anima Set', 'Bass Bit', NULL, 'Trainers'' Eyes Meet (Artist)',
   'main', 'newer_vgm', 272),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 3' COLLATE NOCASE),
   'Anima Set', 'Chorizo', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer), Battle! (Max Raid Battle), Motostoke',
   'main', 'newer_vgm', 273),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 3' COLLATE NOCASE),
   'Anima Set', 'Sync & Cross', NULL, 'Chairman Rose',
   'main', 'newer_vgm', 274),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 3' COLLATE NOCASE),
   'HS3 Combis', 'Chariot Keys', 'Turn down "Raven Level"', 'Slumbering Weald',
   'main', 'newer_vgm', 275),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 3' COLLATE NOCASE),
   'HS3 Combis', 'Grimy', 'Turn down Multi Delay Mix', 'Motostoke',
   'main', 'newer_vgm', 276),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 3' COLLATE NOCASE),
   'Raven', 'Pop Chorus', NULL, 'Budew Drop Inn',
   'main', 'newer_vgm', 277),

  -- Rows 3159-3188: Steinberg / HALion Sonic SE
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', '60s Drawbars Organ', NULL, 'Welcome to the World of Pokémon!',
   'main', 'newer_vgm', 278),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Bottle Blow', NULL, 'Sonia''s Theme',
   'main', 'newer_vgm', 279),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Dry Finger Bass', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 280),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Dyno Tines Piano', 'Layers rock organ, aside from the glissando', 'Budew Drop Inn',
   'main', 'newer_vgm', 281),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Fingered Music Man', NULL, 'Battle Tower',
   'main', 'newer_vgm', 282),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Pulse Clavi', NULL, 'Trainers'' Eyes Meet (Gym Trainer), Trainers'' Eyes Meet (Artist)',
   'main', 'newer_vgm', 283),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Solo Violin', NULL, 'Staff Credits',
   'main', 'newer_vgm', 284),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'T8 Analog Kit', 'use A#0 for the snare', 'Spikemuth',
   'main', 'newer_vgm', 285),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'T9 Analog Kit', NULL, 'Battle! (Marnie), Boutique, Battle Tower',
   'main', 'newer_vgm', 286),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Touched Wah Clavinet', NULL, 'Chairman Rose',
   'main', 'newer_vgm', 287),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 011] Music Box', NULL, 'Rotom Rally',
   'main', 'newer_vgm', 288),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 012] Vibraphone', NULL, 'Pokémon Center, Rose Tower',
   'main', 'newer_vgm', 289),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 014] Xylophone', NULL, 'Gym Mission Cleared!',
   'main', 'newer_vgm', 290),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 022] Accordion', NULL, 'Poké Job',
   'main', 'newer_vgm', 291),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 041] Violin', NULL, 'Trainers'' Eyes Meet (Lass)',
   'main', 'newer_vgm', 292),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 046] Pizzicato Strings', NULL, 'Slumbering Weald, Trainers'' Eyes Meet (Lass)',
   'main', 'newer_vgm', 293),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', 'likely HALionOne version due to no pan lag', 'Battle! (Wild Pokémon), Battle! (Trainer), Decisive Battle! (Champion Leon), Wyndon',
   'main', 'newer_vgm', 294),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Postwick, Route 1, Let''s Have a Champion Time!, Wedgehurst, Motostoke, Battle! (Max Raid Battle), Turffield, Hop''s Theme, Budew Drop Inn, Route 3, Decisive Battle! (Hop), Battle! (Eternatus), Decisive Battle! (Eternatus), Battle! (Wild Pokémon), Battle! (Trainer)',
   'main', 'newer_vgm', 295),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 050] String Ensemble 2', 'additional reverb applied', 'Turffield',
   'main', 'newer_vgm', 296),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 056] Orchestra Hit', NULL, 'Welcome to the World of Pokémon!',
   'main', 'newer_vgm', 297),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 061] French Horn', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 298),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 062] Brass Section', NULL, 'Battle! (Wild Pokémon), Wedgehurst, Route 1',
   'main', 'newer_vgm', 299),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 081] Lead 1 (Square)', NULL, 'Battle! (Zacian/Zamazenta), Motostoke',
   'main', 'newer_vgm', 300),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 132] Percussion', 'could be another HALion kit''s percussion', 'Stow-on-Side',
   'main', 'newer_vgm', 301),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Hybrid Set', 'Eighties Sample Hit', NULL, 'Team Yell Appears!, Battle! (Team Yell), Final Tournament Begin!',
   'main', 'newer_vgm', 302),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Hybrid Set', 'Dark Click', NULL, 'Guide ',
   'main', 'newer_vgm', 303),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Hybrid Set', 'Tube Drive Pick Bass', 'Various velocities used', 'Trainers'' Eyes Meet (Worker)',
   'main', 'newer_vgm', 304),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Acoustic Bass VX', 'Use pitch bend', 'Guide ',
   'main', 'newer_vgm', 305),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Autobahn', NULL, 'Curry: Koffing Class',
   'main', 'newer_vgm', 306),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Trip Set', 'Spinbuzz', NULL, 'At the Stadium',
   'main', 'newer_vgm', 307),

  -- Rows 3189-3190: Steinberg / Retrologue
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Retrologue' COLLATE NOCASE),
   'Synth Comp', 'Poly Pops', 'heavily compressed', 'Battle! (Trainer)',
   'main', 'newer_vgm', 308),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Retrologue' COLLATE NOCASE),
   'Synth Comp', 'Rock Monsters Saws', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 309),

  -- Rows 3191-3192: Steinberg / Triebwerk
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Triebwerk' COLLATE NOCASE),
   'Bass', 'Analog Power', NULL, 'Motostoke',
   'main', 'newer_vgm', 310),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Triebwerk' COLLATE NOCASE),
   'Piano', 'FlexPhrased Piano Love', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 311),

  -- Row 3193: Strezov Sampling / Arva Children Choir
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Strezov Sampling' COLLATE NOCASE AND p.name = 'Arva Children Choir' COLLATE NOCASE),
   NULL, NULL, NULL, 'Slumbering Weald',
   'main', 'newer_vgm', 312),

  -- Row 3194: Toontrack / EZdrummer 2
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Drums -> EZdrummer 2 Modern', 'Basic', NULL, 'Rotom Rally',
   'main', 'newer_vgm', 313),

  -- Rows 3195-3196: Ueberschall / 8 Bit Stylez
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '8 Bit Stylez' COLLATE NOCASE),
   'Construction Kits -> Temple Of Ghosts 100 a', '04bss100_8BS temple of ghosts_a', NULL, 'Chairman Rose',
   'main', 'newer_vgm', 314),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '8 Bit Stylez' COLLATE NOCASE),
   'Construction Kits -> Temple Of Ghosts 100 a', '05pad100_8BS temple of ghosts_a', NULL, 'Chairman Rose',
   'main', 'newer_vgm', 315),

  -- Row 3197: Ueberschall / Cinematic Timeshift
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Cinematic Timeshift' COLLATE NOCASE),
   'Whooshes -> Whooshes 1', '07sfx120_whooshes_s_1', NULL, 'Battle! (Final Tournament)',
   'main', 'newer_vgm', 316),

  -- Rows 3198-3201: Ueberschall / Elastik 2 Demo
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Elastik 2 Demo' COLLATE NOCASE),
   'Elastik 2', '01bde121_Deephouse', NULL, 'Sonia''s Theme',
   'main', 'newer_vgm', 317),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Elastik 2 Demo' COLLATE NOCASE),
   'Elastik 2', '02sde121_Deephouse', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 318),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Elastik 2 Demo' COLLATE NOCASE),
   'Elastik 2', '04bng090_Studioworks', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 319),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Elastik 2 Demo' COLLATE NOCASE),
   'Elastik 2', '10sfx122_Deephouse', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 320),

  -- Rows 3202-3203: Ueberschall / Indie Rock
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Indie Rock' COLLATE NOCASE),
   'Indie Rock A -> Backtrack 154 G -> 4 Verse Backtrack 154 G', '16gte154_IR backtrack_ver_G_1', NULL, 'Rose Tower',
   'main', 'newer_vgm', 321),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Indie Rock' COLLATE NOCASE),
   'Indie Rock A -> Crossfire 170 E -> 3 Chorus End Crossfire 170 E', '14gte170_IR crossfire_choe_E_1', NULL, 'Rose Tower',
   'main', 'newer_vgm', 322),

  -- Rows 3204-3216: Ueberschall / Metal 2
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 A -> 02 Saw What 100 d# -> 4...', '12gtd100_M2 saw what_d#_4', NULL, 'Spikemuth',
   'main', 'newer_vgm', 323),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 A -> 02 Saw What 100 d# -> 6...', '12gtd100_M2 saw what_d#_6', 'SMC only for Exhibition Match', 'Final Tournament Begin!, Exhibition Match',
   'main', 'newer_vgm', 324),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 A -> 02 Saw What 100 d# -> 6...', '12gtd100_M2 bigmuffin_c#_2', NULL, 'Final Tournament Begin!',
   'main', 'newer_vgm', 325),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 A -> 03 BigMuffin 100 c# -> 2...', '13gtd100_M2 bigmuffin_c#_2', NULL, 'Final Tournament Begin!',
   'main', 'newer_vgm', 326),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 06 Scream 094 d# -> 1..', '15syn094_M2 scream_d#_1', 'Pitched up multiple times.', 'Team Yell Appears!',
   'main', 'newer_vgm', 327),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 06 Scream 094 d# -> 4..', '14gtd094_M2 scream_d#_4', NULL, 'Team Yell Appears!',
   'main', 'newer_vgm', 328),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 06 Scream 094 d# -> 4..', '15gtd094_M2 scream_d#_4', NULL, 'Team Yell Appears!',
   'main', 'newer_vgm', 329),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 06 Scream 094 d# -> 5..', '13gtd094_M2 scream_d#_5', NULL, 'Team Yell Appears!',
   'main', 'newer_vgm', 330),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 06 Scream 094 d# -> 6..', '12gtd094_M2 scream_d#_6', NULL, 'Team Yell Appears!',
   'main', 'newer_vgm', 331),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 06 Scream 094 d# -> 6..', '13gtd094_M2 scream_d#_6', NULL, 'Team Yell Appears!',
   'main', 'newer_vgm', 332),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 09 Funkfiction 118 d# -> 4...', '10dfx118_M2 funkfiction_d#_4', NULL, 'Team Yell Appears!',
   'main', 'newer_vgm', 333),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 07 Full Range 140 d# -> 1...', '03drm140_M2 full range_1', NULL, 'Battle! (Team Yell)',
   'main', 'newer_vgm', 334),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 07 Full Range 140 d# -> 6...', '10gtd140_M2 full range_d#_6', NULL, 'Team Yell Appears!',
   'main', 'newer_vgm', 335),

  -- Rows 3217-3218: Ueberschall / Neurofunk
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Neurofunk' COLLATE NOCASE),
   '2 Omega 176 f -> 1 Omega 176 f Intro', '04syn176_NF_omega_f_1', NULL, 'Battle! (Marnie)',
   'main', 'newer_vgm', 336),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Neurofunk' COLLATE NOCASE),
   '2 Omega 176 f -> 2 Omega 176 f Rise', '03drm176_NF_omega_2', NULL, 'Battle! (Final Tournament), Gym Badge Obtained!',
   'main', 'newer_vgm', 337),

  -- Rows 3219-3229: Ueberschall / Trap
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'C-Kits -> At The End 073 g -> 1 At The End 073 g', '03drm073_at the end_1', NULL, 'Boutique',
   'main', 'newer_vgm', 338),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'C-Kits -> Girls 073 a -> 1 Girls 073 a', '07syn073_girls_1_a', NULL, 'Boutique',
   'main', 'newer_vgm', 339),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'C-Kits -> Girls 073 a -> 2 Girls 073 a', '02bac073_girls_2_a', NULL, 'Boutique',
   'main', 'newer_vgm', 340),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'C-Kits -> Girls 073 a -> 2 Girls 073 a', '03drm073_girls_2', NULL, 'Boutique',
   'main', 'newer_vgm', 341),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'C-Kits -> Girls 073 a -> 3 Girls 073 a', '08syn073_girls_3_a', NULL, 'Boutique',
   'main', 'newer_vgm', 342),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'C-Kits -> Got That Green 065 a -> 2 ...', '08syn065_got that green_3_a', NULL, 'Boutique',
   'main', 'newer_vgm', 343),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'C-Kits -> Stunna 078 e -> 1 Stunna 078 e', '09sfx078_stunna_1_e', NULL, 'Gym Challenge Opening Ceremony',
   'main', 'newer_vgm', 344),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'C-Kits -> Stunna 078 e -> 2 Stunna 078 e', '14syn078_stunna_2_e', NULL, 'Battle! (Final Tournament)',
   'main', 'newer_vgm', 345),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'Drumloops -> Hungry 70', '01drm070_hungry', NULL, 'Sonia''s Theme',
   'main', 'newer_vgm', 346),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'Synthlines', '11syn070_plug_a', NULL, 'Boutique',
   'main', 'newer_vgm', 347),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Trap' COLLATE NOCASE),
   'Synthlines', '16syn070_whats this_a', NULL, 'Boutique',
   'main', 'newer_vgm', 348),

  -- Rows 3230-3240: UVI
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 03-Harpsichords & co', 'Harpsichord 16+8', NULL, 'Battle! (Trainer), An Old Legend ',
   'main', 'newer_vgm', 349),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 01-High End Organs', 'Standard Organ fast', NULL, 'Hop''s Theme',
   'main', 'newer_vgm', 350),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '06-Complete GM kits', '1-GM Standard', NULL, 'Chairman Rose',
   'main', 'newer_vgm', 351),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-bells', 'Midoland', 'with autopan', 'Wedgehurst',
   'main', 'newer_vgm', 352),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '07-Analog Brass', 'Idea Sync', NULL, 'Battle! (Bede)',
   'main', 'newer_vgm', 353),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Glass Piano', NULL, 'Rotom Rally',
   'main', 'newer_vgm', 354),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '10-Texture-FX', 'Bendoid', NULL, 'Rotom Rally',
   'main', 'newer_vgm', 355),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '01-Piano', '04-Honky Tonk Piano', NULL, 'Trainers'' Eyes Meet (Worker)',
   'main', 'newer_vgm', 356),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '15-Tubular Bells', NULL, 'Let''s Have a Champion Time!, Let''s Make Curry!, Curry: Charizard Class',
   'main', 'newer_vgm', 357),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '03-Organ & co', '23-Harmonica', 'amped + use pitch wheel for the "vibrato"', 'Hulbury',
   'main', 'newer_vgm', 358),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Drums -> Straight Loops', '093-Straight Fill 01', 'Slice mode, set Slice start at 16', 'Battle! (Team Yell), Team Yell Appears!',
   'main', 'newer_vgm', 359),

  -- Rows 3241-3255: Vienna Symphonic Library / Special Edition Vol. 1
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 01 Solo strings', '01S Solo violin', NULL, 'Wild Area (South)',
   'main', 'newer_vgm', 360),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '24S Strings basses', 'weird EQ', 'Postwick',
   'main', 'newer_vgm', 361),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '29S Strings all', NULL, 'Wedgehurst',
   'main', 'newer_vgm', 362),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 05 Harp', '41S Harp', NULL, 'Wild Area (South)',
   'main', 'newer_vgm', 363),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 11 Flutes', '06S Piccolo + flute 1 - 8va', NULL, 'Route 3, The Secret of Stow-on-Side''s Mural',
   'main', 'newer_vgm', 364),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 12 Oboes', '11S Oboe French', NULL, 'Postwick, Victory! (Wild Pokémon)',
   'main', 'newer_vgm', 365),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 12 Oboes', '14S English Horn', NULL, 'Wild Area (South)',
   'main', 'newer_vgm', 366),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 21 Horns', '03S Horn ensemble - a4', NULL, 'Motostoke, Trainers'' Eyes Meet (Pokémon Breeder)',
   'main', 'newer_vgm', 367),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '14S Trumpet ensemble', NULL, 'Wild Area (South)',
   'main', 'newer_vgm', 368),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '05S Glockenspiel', NULL, 'Postwick',
   'main', 'newer_vgm', 369),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '07S Vibraphone', NULL, 'Route 3',
   'main', 'newer_vgm', 370),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '11S Timpani', NULL, 'Leon and Eternatus, Infinite Power, Battle! (Zacian/Zamazenta)',
   'main', 'newer_vgm', 371),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '12S Drums', NULL, 'Route 3, Wild Area (South), Wyndon',
   'main', 'newer_vgm', 372),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '13S Cymbals+Gongs', NULL, 'Wild Area (South), Route 3',
   'main', 'newer_vgm', 373),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '14S Percussion', 'A#7', 'Wild Area (South)',
   'main', 'newer_vgm', 374),

  -- Row 3256: Vienna Symphonic Library / Vienna Imperial
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Vienna Imperial' COLLATE NOCASE),
   'Factory Presets', '02 Player Position Default', NULL, 'Battle! (Oleana)',
   'main', 'newer_vgm', 375),

  -- Rows 3257-3258: Vir2 / Electri6ity
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Les Paul Amped', 'reamped', 'Title Screen, Let''s Have a Champion Time!, Battle! (Trainer), Battle! (Hop), Battle! (Bede), Decisive Battle! (Hop), Decisive Battle! (Eternatus), Hulbury, Victory! (Champion Leon)',
   'main', 'newer_vgm', 376),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Telecaster Amped', 'reamped', 'Let''s Have a Champion Time!',
   'main', 'newer_vgm', 377),

  -- Rows 3259-3284: Xfer Records / Serum
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass', 'BA Jackson [BR]', NULL, 'Wyndon',
   'main', 'newer_vgm', 378),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX 8bar+riser [FP]', NULL, 'Decisive Battle! (Hop), Infinite Power',
   'main', 'newer_vgm', 379),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX 16-Bar Riser [GS]', NULL, 'Gym Challenge Opening Ceremony, Infinite Power, Battle! (Gym Leader)',
   'main', 'newer_vgm', 380),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Ambiance Evil [KG]', NULL, 'Infinite Power, Energy Plant',
   'main', 'newer_vgm', 381),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Andromeda2 [KG]', NULL, 'Energy Plant',
   'main', 'newer_vgm', 382),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Chromatica [GS]', NULL, 'In the Fog',
   'main', 'newer_vgm', 383),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX ConvergenceB [GS]', 'Seems highpassed + manually panned', 'Slumbering Weald',
   'main', 'newer_vgm', 384),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Debby Downer [JD]', NULL, 'Slumbering Weald, Title Screen',
   'main', 'newer_vgm', 385),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Easy Riser [FN]', NULL, 'Infinite Power',
   'main', 'newer_vgm', 386),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX I''m 12 What is This [LT]', NULL, 'Infinite Power',
   'main', 'newer_vgm', 387),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Juno Wobble Builder [SN]', NULL, 'Infinite Power',
   'main', 'newer_vgm', 388),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Spikes [7S]', 'Make the Pitch Bend range 12', 'Battle! (Final Tournament)',
   'main', 'newer_vgm', 389),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD A Bit of Luck [SD]', NULL, 'Boutique',
   'main', 'newer_vgm', 390),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD booty [AF]', NULL, 'Battle! (Team Yell), Team Yell Appears!, Battle! (Gym Leader Piers)',
   'main', 'newer_vgm', 391),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD C64 Lead [AS]', 'Mono mode off', 'Battle! (Final Tournament)',
   'main', 'newer_vgm', 392),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD Clang [SD]', 'add autopan for Hop''s Theme', 'Hop''s Theme, Trainers'' Eyes Meet (Artist), Route 10',
   'main', 'newer_vgm', 393),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Misc', 'PR Dirty Kick [SN]', 'more likely to be massive', 'Chairman Rose',
   'main', 'newer_vgm', 394),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Automator 2 [GS]', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 395),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Automator 4 [GS]', 'Disable OSC A and B for "Leon and Eternatus"', 'Slumbering Weald, Leon and Eternatus',
   'main', 'newer_vgm', 396),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Automator 5 [GS]', NULL, 'Wyndon',
   'main', 'newer_vgm', 397),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Blade [LT]', 'Use modulation + pitch bend for melody', 'Battle! (Gym Leader), Wyndon Stadium, Battle! (Final Tournament)',
   'main', 'newer_vgm', 398),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Chords Simple [RI]', NULL, 'Team Yell Appears!, Battle! (Gym Leader)',
   'main', 'newer_vgm', 399),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Diver [GS]', NULL, 'Darkest Day, Abnormal Situation',
   'main', 'newer_vgm', 400),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Electro Phrase 2 [SN]', NULL, 'Gym Challenge Opening Ceremony',
   'main', 'newer_vgm', 401),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Synth', 'SY Geoduck [SN]', NULL, 'Wyndon',
   'main', 'newer_vgm', 402),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Synth', 'SY PopSuperSaw [GS]', 'use a sidechain compressor', 'Boutique, Wyndon Stadium',
   'main', 'newer_vgm', 403),

  -- Rows 3285-3287: XLN Audio
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Heavy Acoustic', NULL, 'Hulbury',
   'main', 'newer_vgm', 404),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer), Evolution, Battle! (Team Yell), Decisive Battle! (Eternatus), Battle! (Zacian/Zamazenta), Battle! (Gym Leader)',
   'main', 'newer_vgm', 405),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   'Kits -> Black Velvet', 'Black Velvet - Crisp With Plate', NULL, 'At the Train Station, Staff Credits',
   'main', 'newer_vgm', 406),

  -- Row 3288: Zero-G / Creative Essentials Vol. 30 Orchestral Flavours
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 02', '30_02_07', 'Orchestra hit (major)', 'Battle! (Max Raid Battle), Battle! (Eternatus)',
   'main', 'newer_vgm', 407),

  -- Rows 3290-3291: "Used as inspiration, but unused" -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 07 Full Range 140 d# -> 2...', '13gtd140_M2 full range_d#_2', 'Not used, but inspired progression at 0:34.', 'Battle! (Team Yell)',
   'unused', 'newer_vgm', 408),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Metal 2' COLLATE NOCASE),
   'Metal 2 B -> 07 Full Range 140 d# -> 3...', '12gtd140_M2 full range_d#_3', 'Not used, but inspired an intro element', 'Battle! (Team Yell)',
   'unused', 'newer_vgm', 409),

  -- Rows 3293-3365: Stuff to Find -> stuff_to_find
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Celtic ERA' COLLATE NOCASE),
   NULL, NULL, 'Bagpipe (please test)', 'Wild Area (North)',
   'stuff_to_find', 'newer_vgm', 410),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol.4 (Special and Unusual)' COLLATE NOCASE),
   'CD3 -> bells', 'church bell high pitch', 'Resampled with delay (?), octaves', 'Motostoke, Victory! (Champion Leon)',
   'stuff_to_find', 'newer_vgm', 411),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Multis -> ?', 'various Choir WB', 'For Battle! (Champion) enter "la"', 'Decisive Battle! (Champion Leon), Battle! (Eternatus), Battle! (Zacian/Zamazenta)',
   'stuff_to_find', 'newer_vgm', 412),

  -- Row 3296: Heavyocity / ? -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Unknown loop that sounds like Evolve (raw source: Heavyocity, ?)', 'Battle! (Rose)',
   'stuff_to_find', 'newer_vgm', 413),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, NULL, 'Title Screen, Pokémon Gym',
   'stuff_to_find', 'newer_vgm', 414),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (Wild Pokémon)',
   'stuff_to_find', 'newer_vgm', 415),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, 'loop', 'Route 10',
   'stuff_to_find', 'newer_vgm', 416),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', '?', 'more from lps epic organic elements 02?', 'In the Fog',
   'stuff_to_find', 'newer_vgm', 417),

  -- Row 3301: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Udu (possibly from Damage)', 'Galar Mines',
   'stuff_to_find', 'newer_vgm', 418),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Shreddage II' COLLATE NOCASE),
   'Pre-Amp Preset', 'Lead Screamer', 're-amped', 'Spikemuth, Battle! (Final Tournament)',
   'stuff_to_find', 'newer_vgm', 419),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank B', '034: Kickin'' Bass', 'With reverb + autopan. Pitch bend used?', 'Route 10',
   'stuff_to_find', 'newer_vgm', 420),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'E-Piano Pro & Preamp 2', 'Very likely HALion 4 Epianos instead', 'Battle! (Trainer), Battle! (Zacian/Zamazenta)',
   'stuff_to_find', 'newer_vgm', 421),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   NULL, NULL, NULL, 'Wedgehurst',
   'stuff_to_find', 'newer_vgm', 422),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   NULL, NULL, NULL, 'Pokémon Center',
   'stuff_to_find', 'newer_vgm', 423),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealStrat' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (Zacian/Zamazenta)',
   'stuff_to_find', 'newer_vgm', 424),

  -- Row 3308: MusicLab / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   'Pattern Library -> Funk -> Funk1 S 16th 90-120', 'S06 Funk1', 'to do: find exact guitar (raw source: MusicLab, ?)', 'Welcome to the World of Pokémon!',
   'stuff_to_find', 'newer_vgm', 425),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   NULL, NULL, NULL, 'Wild Area (North)',
   'stuff_to_find', 'newer_vgm', 426),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Exp. 2 -> Bass', 'Robot Bass', 'Double check this', 'Chairman Rose',
   'stuff_to_find', 'newer_vgm', 427),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   NULL, NULL, NULL, 'Abnormal Situation',
   'stuff_to_find', 'newer_vgm', 428),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   NULL, NULL, 'Something', 'Boutique',
   'stuff_to_find', 'newer_vgm', 429),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   NULL, NULL, NULL, 'At the Stadium',
   'stuff_to_find', 'newer_vgm', 430),

  -- Row 3314: ???/?? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'check for kit (might be AD2)', 'Marnie''s Theme, Pokémon Center, Rose Tower',
   'stuff_to_find', 'newer_vgm', 431),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'JV-1080' COLLATE NOCASE),
   'PR-B (Preset B Bank)', '102 Raya Shaku', 'doesn''t match', 'An Old Legend ',
   'stuff_to_find', 'newer_vgm', 432),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> Congas', '?', NULL, 'Battle! (Final Tournament)',
   'stuff_to_find', 'newer_vgm', 433),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '90-Madrid Hi-Hats', NULL, 'At the Stadium',
   'stuff_to_find', 'newer_vgm', 434),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Sweeping the Acid Bass Station', 'varied velocity around 70-90', 'Decisive Battle! (Hop)',
   'stuff_to_find', 'newer_vgm', 435),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Hits and Bits', 'Aggresitronic Beamz', NULL, 'Battle! (Eternatus)',
   'stuff_to_find', 'newer_vgm', 436),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Simon Harris' COLLATE NOCASE AND p.name = 'Beats, Breaks & Scratches Volume 1' COLLATE NOCASE),
   NULL, '42 Radio Tuning', NULL, 'Battle! (Eternatus)',
   'stuff_to_find', 'newer_vgm', 437),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '60s Transistor Organ', 'plays lead', 'Budew Drop Inn',
   'stuff_to_find', 'newer_vgm', 438),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   NULL, NULL, 'Clarinet and English Horn', 'Route 3',
   'stuff_to_find', 'newer_vgm', 439),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', NULL, 'phaser mk 1', 'Turffield',
   'stuff_to_find', 'newer_vgm', 440),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', '60s Combo Organ', 'plays harmony (budew drop inn)', 'Budew Drop Inn, Trainers'' Eyes Meet (Worker)',
   'stuff_to_find', 'newer_vgm', 441),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Kick Shop', 'C3', 'Battle! (Hop)',
   'stuff_to_find', 'newer_vgm', 442),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Cocktail Lounge', 'Lower Delay Mix and Hall Mix', 'Battle! (Trainer)',
   'stuff_to_find', 'newer_vgm', 443),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'The Grand 3' COLLATE NOCASE),
   '01 Yamaha C7 -> Player ECO', 'Japanese Piano and Hall ECO', 'this might just be halion', 'Postwick',
   'stuff_to_find', 'newer_vgm', 444),

  -- Row 3328: Steinberg / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'what sounds like plugsound synth brass (raw source: Steinberg, ?)', 'Recovery',
   'stuff_to_find', 'newer_vgm', 445),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Triebwerk' COLLATE NOCASE),
   NULL, NULL, '80''s toms', '-Used throughout the soundtrack-',
   'stuff_to_find', 'newer_vgm', 446),

  -- Row 3330: Ueberschall / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'There is more for sure (raw source: Ueberschall, ?)', '-Used throughout the soundtrack-',
   'stuff_to_find', 'newer_vgm', 447),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 02-Medium Organs', NULL, 'it''s one of these but not sure which', 'Let''s Make Curry!',
   'stuff_to_find', 'newer_vgm', 448),

  -- Row 3332: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'guitar loop (right before the funkfiction loop)', 'Team Yell Appears!',
   'stuff_to_find', 'newer_vgm', 449),

  -- Row 3333: Vienna Symphonic Library / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Flute (raw source: Vienna Symphonic Library, ?)', 'Galar Mines',
   'stuff_to_find', 'newer_vgm', 450),

  -- Row 3334: Vienna Symphonic Library / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'strings', 'potentially, layered with hsse gm strings (raw source: Vienna Symphonic Library, ?)', 'Wedgehurst',
   'stuff_to_find', 'newer_vgm', 451),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Vienna Imperial' COLLATE NOCASE),
   NULL, NULL, 'adachi songs', 'Battle! (Oleana), Ballonlea, and almost every other Adachi song with a piano',
   'stuff_to_find', 'newer_vgm', 452),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'Paradigm Drift [SN]', 'edited, needs confirmation', 'Wyndon',
   'stuff_to_find', 'newer_vgm', 453),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Synth', NULL, 'Saw lead', 'Gym Challenge Opening Ceremony',
   'stuff_to_find', 'newer_vgm', 454),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Dyk Pyk [PL]', 'maybe (mess with external hi/lo pass filter)', 'Wyndon Stadium',
   'stuff_to_find', 'newer_vgm', 455),

  -- Row 3339: Zero-G / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'orch hit (sample) (raw source: Zero-G, ?)', 'Battle! (Wild Pokémon)',
   'stuff_to_find', 'newer_vgm', 456),

  -- Rows 3340-3365: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'rhythm guitar', 'Battle! (Final Tournament)',
   'stuff_to_find', 'newer_vgm', 457),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'lo-fi piano', 'Wyndon',
   'stuff_to_find', 'newer_vgm', 458),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'piano (can someone check VSL bosendorfer)', 'Wild Area (South)',
   'stuff_to_find', 'newer_vgm', 459),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, '5ths arp, synth bass, quiet + quick upward arp', 'Boutique',
   'stuff_to_find', 'newer_vgm', 460),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'reverby lead synth/keys', 'Battle! (Gym Leader Piers)',
   'stuff_to_find', 'newer_vgm', 461),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'crowd sfx + whistle', 'Battle! (Gym Leader)',
   'stuff_to_find', 'newer_vgm', 462),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'guitar solo', 'Battle! (Team Yell)',
   'stuff_to_find', 'newer_vgm', 463),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'the car horn / alarm sound effect', 'Battle! (Team Yell), Battle! (Gym Leader Piers), Battle! (Marnie), Decisive Battle! (Marnie), Team Yell Appears!',
   'stuff_to_find', 'newer_vgm', 464),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'parts of the guitar solo', 'Final Tournament Begin!',
   'stuff_to_find', 'newer_vgm', 465),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'kick drums, snare and tom (samples)', 'Wyndon',
   'stuff_to_find', 'newer_vgm', 466),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'choir on the left', 'Slumbering Weald',
   'stuff_to_find', 'newer_vgm', 467),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'extreme legato synth bass', 'Wyndon',
   'stuff_to_find', 'newer_vgm', 468),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth supersaw chords w/ vibrato modwheel', 'Wyndon',
   'stuff_to_find', 'newer_vgm', 469),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'riser (sample?)', 'Wyndon',
   'stuff_to_find', 'newer_vgm', 470),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'nasaly synth lead (from xy world champion)', 'Wyndon',
   'stuff_to_find', 'newer_vgm', 471),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth lead / flute', 'Battle! (Eternatus), Hop''s Theme',
   'stuff_to_find', 'newer_vgm', 472),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'square lead w/legato', 'Battle! (Eternatus)',
   'stuff_to_find', 'newer_vgm', 473),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Tine E-Piano', 'Decisive Battle! (Eternatus)',
   'stuff_to_find', 'newer_vgm', 474),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'arp, piano', 'Decisive Battle! (Hop)',
   'stuff_to_find', 'newer_vgm', 475),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'various ambient sounds / synths', 'Battle! (Max Raid Battle), Route 10',
   'stuff_to_find', 'newer_vgm', 476),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'the dubstep shit', 'Wyndon, Battle! (Eternatus)',
   'stuff_to_find', 'newer_vgm', 477),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'drums', 'Title Screen',
   'stuff_to_find', 'newer_vgm', 478),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Noise sweep (seemingly not rise and hit)', 'Sonia''s Theme, Boutique, Wyndon Stadium',
   'stuff_to_find', 'newer_vgm', 479),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'swoosh + various post-production type SFX', 'Battle! (Trainer), In the Fog',
   'stuff_to_find', 'newer_vgm', 480),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth glockenspiel', '-Used throughout the soundtrack-',
   'stuff_to_find', 'newer_vgm', 481),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, '909 Kick (most likely halion''s T9 Analog Kit)', 'Wyndon Stadium',
   'stuff_to_find', 'newer_vgm', 482),

  -- Rows 3367-3371: Unused Music -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Organic  Full', NULL, 'Eternatus'' Theme (Unused)',
   'unused', 'newer_vgm', 483),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Ethnic World', 'Psychopathic Whistle', NULL, 'Eternatus'' Theme (Unused)',
   'unused', 'newer_vgm', 484),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Ethnic World', 'Shepherds Horn', NULL, 'Eternatus'' Theme (Unused)',
   'unused', 'newer_vgm', 485),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Analog Knocker Bass', NULL, 'Gym Leader Theme (Unused)',
   'unused', 'newer_vgm', 486),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass', 'BA Deep Womp [ADWR]', NULL, 'Eternatus'' Theme (Unused)',
   'unused', 'newer_vgm', 487),

  -- Rows 3373-3399: Beta Build Music -> unused (beta/cut content)
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 1 - LIFE' COLLATE NOCASE),
   'Track 76 - SPORTS', 'FOOTBALL SOUND', 'Crowd SFX', 'Battle! (Gym Leader—Beta Version), Title Screen (Early Gym Theme) ',
   'unused', 'newer_vgm', 488),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Maschine Drum Selection' COLLATE NOCASE),
   'Digital Kits', 'Kondensator Kit', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 489),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Synth Sweep 1', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 490),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 54-Eclipse', '54-Eclipse Atoms', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 491),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Compressed Supersawz', 'Also used for Sidechain saws here.', 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 492),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Unison Detuner Lead', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 493),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Clubbing Swedes 1', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 494),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Phatty Acids Wobbler', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 495),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Fooling', 'Turn down Delay Level dial', 'Battle! (Wild Pokémon—Beta Version)',
   'unused', 'newer_vgm', 496),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bassline Amuse', 'Turn down Reverb Mix dial', 'Battle! (Wild Pokémon—Beta Version)',
   'unused', 'newer_vgm', 497),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Boogie Down', 'Add delay', 'Battle! (Wild Pokémon—Beta Version)',
   'unused', 'newer_vgm', 498),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Touch Wah Clavi', NULL, 'Battle! (Wild Pokémon—Beta Version)',
   'unused', 'newer_vgm', 499),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 3' COLLATE NOCASE),
   'Anima Set', 'Chorizo', NULL, 'Battle! (Wild Pokémon—Beta Version)',
   'unused', 'newer_vgm', 500),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', NULL, 'Battle! (Wild Pokémon—Beta Version)',
   'unused', 'newer_vgm', 501),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 061] French Horn', NULL, 'Battle! (Wild Pokémon—Beta Version)',
   'unused', 'newer_vgm', 502),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 062] Brass Section', NULL, 'Battle! (Wild Pokémon—Beta Version)',
   'unused', 'newer_vgm', 503),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Triebwerk' COLLATE NOCASE),
   'Piano', 'FlexPhrased Piano Love', NULL, 'Battle! (Wild Pokémon—Beta Version)',
   'unused', 'newer_vgm', 504),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Elastik 2 Demo' COLLATE NOCASE),
   'Elastik 2', '02sde121_Deephouse', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 505),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Elastik 2 Demo' COLLATE NOCASE),
   'Elastik 2', '04bng090_Studioworks', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 506),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Les Paul Amped', NULL, 'Battle! (Wild Pokémon—Beta Version)',
   'unused', 'newer_vgm', 507),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass', 'BA Modern Fapping [GI]', NULL, 'Placeholder Song',
   'unused', 'newer_vgm', 508),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Automator 2 [GS]', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 509),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Blade [LT]', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 510),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Chords Simple [RI]', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 511),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kit', 'Startup', NULL, 'Battle! (Wild Pokémon—Beta Version), Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 512),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   'Instruments -> Vocals JB Style', 'One Mo Time', NULL, 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 513),

  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total House' COLLATE NOCASE),
   'Instruments -> Vocals -> Vocal Shouts', 'Woo', 'Added delay', 'Battle! (Gym Leader—Beta Version)',
   'unused', 'newer_vgm', 514),

  -- Rows 3401-3403: Stuff to Find (inside Beta Build Music) -> stuff_to_find
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Synth Poly', 'Indigo Melodist', NULL, 'Gym Leader Theme (Unused)',
   'stuff_to_find', 'newer_vgm', 515),

  -- Row 3402: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Saw / Hoover Arp', 'Battle! (Gym Leader—Beta Version)',
   'stuff_to_find', 'newer_vgm', 516),

  -- Row 3403: ? (Native Instruments or Xfer Records) / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Synths, possibly Massive or Serum (raw source: ? (Native Instruments or Xfer Records), ?)', 'Eternatus'' Theme (Unused)',
   'stuff_to_find', 'newer_vgm', 517);

-- Patch raw_source for the non-commercial Live Recording rows (positions 1-5).
-- These rows were inserted with product_id NULL; we stash the original col A/B descriptor here.
UPDATE usages SET raw_source = 'Live Recording: Shu Asaoka — Cannonball A5-B'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield')
    AND position = 1;
UPDATE usages SET raw_source = 'Live Recording: Yoshiaki Gosha — Bagpipes'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield')
    AND position = 2;
UPDATE usages SET raw_source = 'Live Recording: Hirotake Homma — Custom-made Carruthers Guitar'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield')
    AND position = 3;
UPDATE usages SET raw_source = 'Live Recording: Daisuke Miyazaki — Acoustic Guitar'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield')
    AND position = 4;
UPDATE usages SET raw_source = 'Live Recording: Chiemi Monguchi et al. — Choir'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sword and Pokémon Shield')
    AND position = 5;
