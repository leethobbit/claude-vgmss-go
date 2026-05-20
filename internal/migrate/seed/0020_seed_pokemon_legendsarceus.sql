-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 3745-4100
-- Pokémon Legends: Arceus (Nintendo Switch, January 28, 2022).
-- Composers: Go Ichinose, Hitomi Sato, Hiromitsu Maeba.
-- Subsection structure in source:
--   row 3745: game header
--   rows 3746-3748: Sample: GAME FREAK rows (non-commercial) — product_id NULL, raw_source patched at end
--   rows 3749-4026: main commercial product usages (no explicit "Streamed/Sequenced" subhead)
--   row 4027: "Stuff to Find"                                                 -> stuff_to_find (rows 4028-4082)
--   row 4083: "Early Music (Teraleak / Freakleak - 20191220_Hayabusa_L_Develop.nsp)" -> unused (rows 4084-4086)
--   row 4087: "Early Music (Teraleak / Freakleak - May Build)"                -> unused (rows 4088-4100)

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Roland Cloud'),
  ('Sonica Instruments'),
  ('Toontrack'),
  ('Premier Sound Factory'),
  ('Impact Soundworks'),
  ('Ableton'),
  ('Ample Sound'),
  ('Audio Modelling / Samplemodeling'),
  ('Soniccouture'),
  ('Strezov Sampling'),
  ('Orchestral Tools');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'Ethno World 6 Instruments',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 11 - Classic Orchestra',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 15 - Dance Drums',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 55 - Retro Sampler',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'Ethno World Instruments',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'                 COLLATE NOCASE), 'CineWinds Core',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'                 COLLATE NOCASE), 'CineHarps',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'              COLLATE NOCASE), 'Discovery Japan',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'e-instruments'               COLLATE NOCASE), 'Session Horns Pro',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'e-instruments'               COLLATE NOCASE), 'Stradivari Violin',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Ra',                                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Symphonic Orchestra',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'                  COLLATE NOCASE), 'Damage',                                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'                  COLLATE NOCASE), 'Damage 2',                                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'                  COLLATE NOCASE), 'FORZO - Modern Brass',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Impact Soundworks'           COLLATE NOCASE), 'Super Audio Cart',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Kaeru Cafe'                  COLLATE NOCASE), 'Treasure in Japan Vol. 3',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                        COLLATE NOCASE), 'Mono/Poly Legacy Collection',                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools'        COLLATE NOCASE), 'Independence Pro',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                    COLLATE NOCASE), 'RealGuitar',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                    COLLATE NOCASE), 'RealStrat',                                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Absynth',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Kinetic Metal',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Massive',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Rise & Hit',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Spotlight Collection: Cuba',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Spotlight Collection: India',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Arkhis',                                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Spotlight Collection: East Asia',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Premier Sound Factory'       COLLATE NOCASE), 'Shakuhachi Premier G',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Premier Sound Factory'       COLLATE NOCASE), 'Acoustic Bass Premier G',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Premier Sound Factory'       COLLATE NOCASE), 'Bass Premier G',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland Cloud'                COLLATE NOCASE), 'JV-1080',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland Cloud'                COLLATE NOCASE), 'SOUND Canvas VA',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonica Instruments'          COLLATE NOCASE), 'Kabuki & Noh Percussion 96k',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonica Instruments'          COLLATE NOCASE), 'KOTO 13',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonica Instruments'          COLLATE NOCASE), 'Tsugaru Shamisen',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Keyscape',                                         'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Omnisphere',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Omnisphere 2',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Stylus RMX',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Heart of Asia',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'              COLLATE NOCASE), 'Hans Zimmer Percussion Professional',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'              COLLATE NOCASE), 'Symphonic Strings',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'              COLLATE NOCASE), 'Symphonic Woodwinds',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'Dark Planet',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'Groove Agent SE',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'HALion 4',                                         'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'HALion Sonic',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'HALion Sonic 2',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'HALion Sonic 3',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'HALion Sonic SE',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'Triebwerk',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'The Grand 3',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Toontrack'                   COLLATE NOCASE), 'EZdrummer 2',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (02-Fretted)',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (03-Drums and Percs)',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (04-Synths and co)',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (Loops)',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'    COLLATE NOCASE), 'Special Edition Vol. 1',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vir2'                        COLLATE NOCASE), 'Electri6ity',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Xfer Records'                COLLATE NOCASE), 'Serum',                                            'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                   COLLATE NOCASE), 'Addictive Drums',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                   COLLATE NOCASE), 'Addictive Drums 2',                                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Creative Essentials Vol. 30 Orchestral Flavours',  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Creative Essentials Vol. 16 Drum & Percussion Tools', 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'ProSamples Vol. 37 - Dance Synths',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ableton'                     COLLATE NOCASE), 'Live Core Library',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Orchestral Tools'            COLLATE NOCASE), 'Berlin Percussion',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Soniccouture'                COLLATE NOCASE), 'Grand Marimba',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Soniccouture'                COLLATE NOCASE), 'Pan Drums',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Strezov Sampling'            COLLATE NOCASE), 'Storm Choir',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                     COLLATE NOCASE), 'Unknown',                                          NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized) VALUES
  ('Pokémon Legends: Arceus',
   'Nintendo Switch',
   'January 28, 2022',
   'Go Ichinose, Hitomi Sato, Hiromitsu Maeba',
   'go ichinose, hitomi sato, hiromitsu maeba');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Rows 3746-3748: Sample: GAME FREAK rows (non-commercial; raw_source patched below)
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   NULL, NULL, 'Combat: Arceus', 'Substantial editing on Combat: Arceus 4', 'Combat: Arceus 2, Combat: Arceus 3, Combat: Arceus 4',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   NULL, NULL, 'Obsidian Fieldlands 1-1', NULL, 'Transition',
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   NULL, NULL, 'Calamity', NULL, 'Prepare to Battle (Calamity), Prepare to Battle (Calamity): Noble Pokémon, Prepare to Battle (Calamity): Pokémon',
   'main', 'newer_vgm', 3),

  -- Rows 3749-3765: Best Service / Ethno World 6 Instruments
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'BOWED INSTRUMENTS -> HURDY-GURDY', 'Hurdy-Gurdy + Drones KEY', NULL, 'Combat: Uxie / Azelf / Mesprit, Firespit Island',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'BOWED INSTRUMENTS -> MORIN KHUUR STRING ENSEMBLE', 'MK Ens Sustain KEY', NULL, 'Jubilife Village',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> BELLS + CHIMES', 'Belltree', 'Add delay', 'The Temple of Sinnoh',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> BELLS + CHIMES', 'Bhutan Bell Wide Range 1', NULL, 'Snowpoint Temple',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> BELLS + CHIMES', 'Dreamcatcher Windchime', NULL, 'Wayward Cave',
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> BELLS + CHIMES', 'Windchimes Ethno World', NULL, 'Deep in the Forest',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> METAL TYPE', 'Gamelan Crashbells Wide Range 1', NULL, 'Combat: Uxie / Azelf / Mesprit, Firespit Island',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'GONGS, BELLS & METALS -> METALLOPHONES', 'Saron Gamelan Low+Wide Range', NULL, 'Lake Caverns',
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'KEY INSTRUMENTS -> DALLAPE ACCORDION', 'Dallape Accordion Key', NULL, 'Settlement',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> AUTOHARP', 'Autoharp KEY', NULL, 'Wayward Cave',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> JOOCHIN DULCIMER', 'Joochin Dulcimer KEY', 'Finger P-F Vel KS', 'Jubilife Village',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> SAZ + SAZ LOOPS', 'Saz Licks 80-140 TM Sync', 'D2', 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> SITAR + TAMPURA', 'Sitar Gliss + FX', 'D3', 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> SITAR + TAMPURA', 'Sitar KEY', NULL, 'Combat: King / Queen, The Seat of A Noble',
   'main', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> BAMBOO FLUTE', 'Bamboo Flute KEY', NULL, 'Jubilife Village, Obsidian Fieldlands 1-1',
   'main', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'WOODWINDS AND BRASS -> BAG PIPES', 'Zukra Bagpipe KEY', 'Use pitchbend', 'Firespit Island',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'WOODWINDS AND BRASS -> SHAKUHACHI + HOTCHIKU', 'Shakuhachi KEY', NULL, 'The Temple of Sinnoh',
   'main', 'newer_vgm', 20),

  -- Row 3766: Best Service / ProSamples Vol. 11 - Classic Orchestra
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 11 - Classic Orchestra' COLLATE NOCASE),
   'WAV -> Advanced Compact -> Timpani VS', '11-tim03-ff-e', NULL, 'Combat: Arceus, Combat: Dialga / Palkia (Origin Forme), Combat: Hisui Person 2',
   'main', 'newer_vgm', 21),

  -- Rows 3767-3773: Best Service / ProSamples Vol. 15 - Dance Drums
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'BD 001-060', '15A-BDE050', 'add light reverb', 'Combat: Amazing Pokémon (First Half)',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'BD 061-120', '15A-BDE066', 'use EQ + compressor for Giratina', 'Combat: Giratina, Combat: Dialga / Palkia (Origin Forme), Stone Portal',
   'main', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'BD 061-120', '15A-BDE080', 'Add autopan', 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'BD 061-120', '15A-BDE120', NULL, 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'HH 001-052', '15C-CHH021', NULL, 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'SD 001-060', '15A-SDE001', NULL, 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'SD 061-120', '15A-SDE105', NULL, 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 28),

  -- Rows 3774-3776: Cinesamples / CineWinds Core
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CineWinds Core' COLLATE NOCASE),
   '-', '08 Oboe 2 Articulations', NULL, 'Precursor to Combat',
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CineWinds Core' COLLATE NOCASE),
   '-', '09 Clarinet Articulations', NULL, 'Precursor to Combat',
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CineWinds Core' COLLATE NOCASE),
   '-', '11 Bassoon Articulations', NULL, 'Precursor to Combat',
   'main', 'newer_vgm', 31),

  -- Row 3777: Discovery Firm / Discovery Japan
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Discovery Japan' COLLATE NOCASE),
   'Track 54', '-', 'Jinglebell (Suzu) - Pitched up 1 semitone', 'Alabaster Icelands: 1-1, Jubilife Village',
   'main', 'newer_vgm', 32),

  -- Row 3778: e-instruments / Session Horns Pro
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'e-instruments' COLLATE NOCASE AND p.name = 'Session Horns Pro' COLLATE NOCASE),
   'Solo Instruments', 'Alto Sax', NULL, 'Crimson Mirelands: 2-1',
   'main', 'newer_vgm', 33),

  -- Row 3779: e-instruments / Stradivari Violin
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'e-instruments' COLLATE NOCASE AND p.name = 'Stradivari Violin' COLLATE NOCASE),
   '-', 'Stradivari Violin', NULL, 'Jubilife Village ~ Home',
   'main', 'newer_vgm', 34),

  -- Rows 3780-3781: EastWest / Ra
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Koto', 'Koto KS C0-F#0', 'play chords with tremolo keyswitch', 'Target Practice',
   'main', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Shamisen', 'Shamisen C0-E0', 'C#0', 'Combat: Hisui Person',
   'main', 'newer_vgm', 36),

  -- Rows 3782-3790: EastWest / Symphonic Orchestra
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 2 Short', '4TB Stac', NULL, 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 3 Effects', '4TB 1Sec Cres', NULL, 'Combat: King / Queen',
   'main', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 3 Effects', '4TB Bn Dn HT', NULL, 'Combat: Hisui Person',
   'main', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 5 Keysw', '4TB KS Master', NULL, 'Combat: Arceus, Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 1 Long', '6FH Sfz', NULL, 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 41),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> CymGong', '26 Zildjan Crash', NULL, 'Field (Night)',
   'main', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> Metals', 'Orch chimes', NULL, 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 3 Effects', '11V Run Up Psycho RR', NULL, 'Combat: Amazing Pokémon (First Half)',
   'main', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Cello -> 1 Long', 'SVC Double Bow Exp', NULL, 'Obsidian Fieldlands: 1-1',
   'main', 'newer_vgm', 45),

  -- Rows 3791-3792: Heavyocity / Damage
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Tech  Full', 'C2', 'Combat: King / Queen',
   'main', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 02 Ethnic Drums', 'PERC Ethnic Tribal Drums', NULL, 'Firespit Island',
   'main', 'newer_vgm', 47),

  -- Rows 3793-3794: Heavyocity / Damage 2
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Ensemble Designer -> 01 All Star Presets', 'Armageddon 2 (17)', 'close mic only', 'Precursor to Combat',
   'main', 'newer_vgm', 48),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> Straight -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', NULL, 'Calamity Combat: Pokémon',
   'main', 'newer_vgm', 49),

  -- Row 3795: Impact Soundworks / Super Audio Cart
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Super Audio Cart' COLLATE NOCASE),
   'Authentic -> GB', 'Pulse 50%', 'Ending Segment only', 'Combat: Wild Pokémon',
   'main', 'newer_vgm', 50),

  -- Rows 3796-3797: Kaeru Cafe / Treasure in Japan Vol. 3
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 16', 'Shakuhachi Com02,03', '0:08 (second sample)', 'Target Practice',
   'main', 'newer_vgm', 51),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 72', 'Uniending L/R', NULL, 'Target Practice',
   'main', 'newer_vgm', 52),

  -- Row 3798: KORG / Mono/Poly Legacy Collection
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   NULL, 'GunTop Bass', 'layered', 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 53),

  -- Rows 3799-3806: MAGiX / Yellow Tools / Independence Pro
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'Fat Slap combi KS A-1', 'add room reverb and EQ. use keyswitch B1', 'Combat: Amazing Pokémon (First Half)',
   'main', 'newer_vgm', 54),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'NY Slap combi KS A-1', NULL, 'Combat: Hisui Person 2, Stone Portal, Cobalt Coastlands: 1-1',
   'main', 'newer_vgm', 55),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'Acoustic Piano', 'Add delay and reverb', 'Combat: Uxie / Azelf / Mesprit',
   'main', 'newer_vgm', 56),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '16 Pop Brass Section', 'Brass Section BIG KS C1-F1 & Mic Modeler 1', 'pitch bend is used for vibrato', 'Combat: King / Queen, A Touchy Subject!',
   'main', 'newer_vgm', 57),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '16 Pop Brass Section', 'Brass Section Combi BIG KS C1-F1 & Mic Modeler 1', NULL, 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 58),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '17 Saxophones', 'Alto Sax Jazz BIG KS B-1 & Mic Modeler', NULL, 'Crimson Mirelands: 1-1',
   'main', 'newer_vgm', 59),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '19 Synthesizers -> # Basic Synthesizer Layers', 'Digital Square', 'under layer enable pan + volume automation', 'Combat: Uxie / Azelf / Mesprit, Ending',
   'main', 'newer_vgm', 60),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   'Yellow Tools Culture -> ...', 'temple blocks plastic duo set', NULL, 'Jubilife Village',
   'main', 'newer_vgm', 61),

  -- Rows 3807-3809: MusicLab / RealGuitar
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Fingered', NULL, 'Cobalt Coastlands: 2-1, Obsidian Fieldlands: 2-1',
   'main', 'newer_vgm', 62),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Picked', 'add chorus and delay', 'Cobalt Coastlands: 2-1',
   'main', 'newer_vgm', 63),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic:: Nylon Fingered', NULL, 'Emotion',
   'main', 'newer_vgm', 64),

  -- Row 3810: MusicLab / RealStrat
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealStrat' COLLATE NOCASE),
   '-', 'Strat', NULL, 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 65),

  -- Rows 3811-3831: Native Instruments / Absynth
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth 5', 'Blue Sun', NULL, 'Midnight',
   'main', 'newer_vgm', 66),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth 5', 'Disintegrating Bells', NULL, 'Deep in the Forest',
   'main', 'newer_vgm', 67),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth 5', 'Kammersutra', 'Add delay', 'Combat: Uxie / Azelf / Mesprit',
   'main', 'newer_vgm', 68),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth 5', 'Waterbowl Bell', NULL, 'Lake',
   'main', 'newer_vgm', 69),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', '500 Foot Wide Steel Drum', NULL, 'Stone Portal',
   'main', 'newer_vgm', 70),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Acid Maschine saw', 'vary velocities', 'Combat: Giratina, Stone Portal',
   'main', 'newer_vgm', 71),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Alchemy Flute', 'use autopan', 'Stone Portal',
   'main', 'newer_vgm', 72),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Another Notcher', NULL, 'Combat: Amazing Pokémon (Both Halves)',
   'main', 'newer_vgm', 73),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Big Phase', NULL, 'Cobalt Coastlands: 1-2',
   'main', 'newer_vgm', 74),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Backwards Rhodes', 'Reverb and delay added, vary note velocities', 'Obsidian Fieldlands: 1-1, Stone Portal',
   'main', 'newer_vgm', 75),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Chorditron Lead', NULL, 'Alabaster Icelands: 2-1',
   'main', 'newer_vgm', 76),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Drainpipe Vamps 3', NULL, 'Volo''s Goal',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Electro', NULL, 'Ending',
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Falling Waves', NULL, 'Cobalt Coastlands: 2-1',
   'main', 'newer_vgm', 79),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Jupiter Choir', 'doubt', 'Calamity',
   'main', 'newer_vgm', 80),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Whoopwhoop', NULL, 'Combat: Giratina',
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Twilights', 'Dark Blue Sky', NULL, 'Calamity',
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Spectral Expansion', 'Buzzer', NULL, 'Combat: Giratina',
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Spectral Expansion', 'Body Double', NULL, 'Calamity',
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Spectral Expansion', 'Galactic Highway', 'add delay', 'Calamity',
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Spectral Expansion', 'Pandora', NULL, 'Volo''s Goal',
   'main', 'newer_vgm', 86),

  -- Rows 3832-3833: Native Instruments / Kinetic Metal
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kinetic Metal' COLLATE NOCASE),
   '-', 'Broken Clock', NULL, 'Ancient Retreat',
   'main', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kinetic Metal' COLLATE NOCASE),
   '-', 'Telegraph Key', NULL, 'Professor Laventon''s Theme',
   'main', 'newer_vgm', 88),

  -- Row 3834: Native Instruments / Massive
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Queensbridge Story', 'Pad Hardwhite', NULL, 'Space-Time Distortion',
   'main', 'newer_vgm', 89),

  -- Rows 3835-3836: Native Instruments / Rise & Hit
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '1 - Orchestral', 'Chaos Stairs', 'track needs to be set to 155 bpm', 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 90),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '3 - Hybrid Sounds', 'Hydraulic Gate', NULL, 'Combat: Dialga / Palkia',
   'main', 'newer_vgm', 91),

  -- Rows 3837-3840: Native Instruments / Spotlight Collection: Cuba
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '1 - Percussion Ensembles', 'Hand Percussion Ensemble', 'Use only woodblock, cowbell & clave', 'Crimson Mirelands: 2-1',
   'main', 'newer_vgm', 92),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '1 - Percussion Ensembles', 'Cajon Ensemble', NULL, 'Survey Report: Daytime',
   'main', 'newer_vgm', 93),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '4 - Melodic Instruments', 'Bass', NULL, 'Survey Report: Nighttime',
   'main', 'newer_vgm', 94),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '4 - Melodic Instruments', 'Trumpet', NULL, 'Survey Report: Nighttime',
   'main', 'newer_vgm', 95),

  -- Rows 3841-3842: Native Instruments / Spotlight Collection: India
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: India' COLLATE NOCASE),
   '2 - Percussion', 'Tabla', 'C1', 'Firespit Island, Settlement',
   'main', 'newer_vgm', 96),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: India' COLLATE NOCASE),
   '2 - Percussion', 'Ghatam', NULL, 'The Seat of A Noble',
   'main', 'newer_vgm', 97),

  -- Rows 3843-3844: Premier Sound Factory / Shakuhachi Premier G
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Premier Sound Factory' COLLATE NOCASE AND p.name = 'Shakuhachi Premier G' COLLATE NOCASE),
   '-', 'Shakuhachi Premier G', 'Mezzo Soprano (Isshaku Hachi-sun)', 'The Shift, King of the Forest Kleavor',
   'main', 'newer_vgm', 98),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Premier Sound Factory' COLLATE NOCASE AND p.name = 'Shakuhachi Premier G' COLLATE NOCASE),
   '-', 'Shakuhachi Premier G', 'Alto', 'Suspicions, Case Closed',
   'main', 'newer_vgm', 99),

  -- Row 3845: Roland Cloud / JV-1080
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'JV-1080' COLLATE NOCASE),
   'PR-E', '004 PopDrumSet 2', 'Piccolo Snare', 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 100),

  -- Rows 3846-3853: Roland Cloud / SOUND Canvas VA
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-55 Map', '000 004 Honky-tonk', NULL, 'Crimson Mirelands: 1-2',
   'main', 'newer_vgm', 101),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-55 Map', '009 015 Carillon', NULL, 'Alabaster Icelands: 1-1',
   'main', 'newer_vgm', 102),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-55 Map', '000 048 Timpani', NULL, 'Combat: Wild Pokémon, Combat: Giratina, Stone Portal, Combat: Dialga / Palkia (Origin Forme), Crimson Mirelands: 1-1, Combat: Hisui Person 2, Ending, Precursor to Combat: 3',
   'main', 'newer_vgm', 103),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-55 Map', '000 057 Trumpet', NULL, 'Combat: Wild Pokémon, Crimson Mirelands: 1-2',
   'main', 'newer_vgm', 104),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-88Pro Map', '000 015 Church Bell', NULL, 'Ending',
   'main', 'newer_vgm', 105),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-88Pro Map', '000 039 Synth Bass 1', 'Apply chorus', 'Combat: Amazing Pokémon (Second Half)',
   'main', 'newer_vgm', 106),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-88Pro Map', '000 047 Harp', NULL, 'Combat: Wild Pokémon',
   'main', 'newer_vgm', 107),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-88Pro Map -> Drum Set', '017 POWER', NULL, 'Combat: Wild Pokémon',
   'main', 'newer_vgm', 108),

  -- Row 3854: Sonica Instruments / Kabuki & Noh Percussion 96k
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonica Instruments' COLLATE NOCASE AND p.name = 'Kabuki & Noh Percussion 96k' COLLATE NOCASE),
   '-', '07 Metal Percussions', NULL, 'Settlement',
   'main', 'newer_vgm', 109),

  -- Row 3855: Sonica Instruments / KOTO 13
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonica Instruments' COLLATE NOCASE AND p.name = 'KOTO 13' COLLATE NOCASE),
   '-', '13 String Koto', NULL, 'Settle the Score',
   'main', 'newer_vgm', 110),

  -- Row 3856: Sonica Instruments / Tsugaru Shamisen
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonica Instruments' COLLATE NOCASE AND p.name = 'Tsugaru Shamisen' COLLATE NOCASE),
   '-', 'Sonica Tsugaru Shamisen', NULL, 'Settle the Score',
   'main', 'newer_vgm', 111),

  -- Row 3857: Spectrasonics / Keyscape
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Keyscape Library -> Keyboards', 'LA Custom C7 Grand Piano', 'Maeba''s Main Piano (?)', 'Courage, Case Closed, Settle the Score',
   'main', 'newer_vgm', 112),

  -- Rows 3858-3864: Spectrasonics / Omnisphere
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Fairy Tale Bells', NULL, 'Jubilife Village',
   'main', 'newer_vgm', 113),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Ethnic World', 'Egyptian Saz a', NULL, 'Courage',
   'main', 'newer_vgm', 114),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Guitars', 'Jazz Guitar Fingers b', 'max velocity', 'Courage',
   'main', 'newer_vgm', 115),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Human Voices', 'Tuvan Drones', NULL, 'Lake Caverns',
   'main', 'newer_vgm', 116),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Cedar Plucked Piano', NULL, 'Jubilife Village: 3',
   'main', 'newer_vgm', 117),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Brainsalad Modular', 'lower velocity on harmony + use modulation', 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 118),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Textures Playable', 'Ice Castle Rolling Motion 1', NULL, 'Alabaster Icelands: 2-1',
   'main', 'newer_vgm', 119),

  -- Rows 3865-3871: Spectrasonics / Omnisphere 2
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Rolling Hangdrum Accel', NULL, 'Deep in the Forest',
   'main', 'newer_vgm', 120),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Distant Memories', NULL, 'Suspicions',
   'main', 'newer_vgm', 121),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Omnisphere Library -> Percussive Organic', 'Cave Stalactites', NULL, 'Deep in the Forest',
   'main', 'newer_vgm', 122),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Spotlight - EDM -> Bells and Vibes', 'Lead VibraBell', NULL, 'Jubilife Village: 3',
   'main', 'newer_vgm', 123),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Spotlight - EDM -> Keyboards', 'House Piano Brite', NULL, 'Deep in the Forest',
   'main', 'newer_vgm', 124),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Omnisphere Library -> Textures Playable', 'Bells of Apprehension', NULL, 'Snowpoint Temple',
   'main', 'newer_vgm', 125),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Omnisphere Library -> Textures Playable', 'Clock Shop', NULL, 'Ancient Retreat',
   'main', 'newer_vgm', 126),

  -- Rows 3872-3875: Spectrasonics / Stylus RMX
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 120-Dirty house', '120-Dirty house a', NULL, 'Combat: Uxie / Azelf / Mesprit',
   'main', 'newer_vgm', 127),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 68-Small Blocks', '68-Small Blocks BendingBass', 'Add reverb + delay', 'Combat: Uxie / Azelf / Mesprit',
   'main', 'newer_vgm', 128),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 72-Half Moon', '72-Half Moon Ride Thick', NULL, 'Combat: Uxie / Azelf / Mesprit',
   'main', 'newer_vgm', 129),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 144-Electric Flower', '144-Electric Flower Metals', NULL, 'Wayward Cave',
   'main', 'newer_vgm', 130),

  -- Row 3876: Spitfire Audio / Hans Zimmer Percussion Professional
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Hans Zimmer Percussion Professional' COLLATE NOCASE),
   'Hans Zimmer Presets -> _Presets_', 'Taikos (HZ AE)', 'may be other mix preset', 'Combat: Alpha Pokémon, Uncertainty',
   'main', 'newer_vgm', 131),

  -- Rows 3877-3881: Spitfire Audio / Symphonic Strings
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'a - Violins 1', NULL, 'Courage, The Shift',
   'main', 'newer_vgm', 132),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'c - Violas', NULL, 'The Shift',
   'main', 'newer_vgm', 133),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'd - Celli', NULL, 'The Shift',
   'main', 'newer_vgm', 134),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'e - Basses', NULL, 'The Shift',
   'main', 'newer_vgm', 135),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '_Advanced_ -> Performance legato', 'a - Violins 1 - Performance legato', NULL, 'Courage',
   'main', 'newer_vgm', 136),

  -- Row 3882: Spitfire Audio / Symphonic Woodwinds
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'b - Flute Solo', NULL, 'Courage',
   'main', 'newer_vgm', 137),

  -- Row 3883: Steinberg / Dark Planet
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Dark Planet' COLLATE NOCASE),
   'Dark Planet', 'Coyote', 'needs slight highpass', 'Combat: Arceus',
   'main', 'newer_vgm', 138),

  -- Row 3884: Steinberg / Groove Agent SE
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent SE' COLLATE NOCASE),
   'Beat Agent SE', 'Dancehall Kit 01', 'Snare 2. One of many snares in this track', 'Target Practice',
   'main', 'newer_vgm', 139),

  -- Rows 3885-3893: Steinberg / HALion 4
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Bright Concert Grand', NULL, 'Combat: King / Queen, Combat: Hisui Person 2, Combat: Hisui Person',
   'main', 'newer_vgm', 140),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Fat Saw Bass', NULL, 'Combat: Amazing Pokémon (First Half)',
   'main', 'newer_vgm', 141),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 FM E-Piano 1', 'any panning in a track is from an autopanner', 'Stone Portal, Crimson Mirelands: 1-1, Combat: Dialga / Palkia (Origin Forme), Combat: Hisui Person',
   'main', 'newer_vgm', 142),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 FM E-Piano 3', '3 or more instances', 'Cobalt Coastlands: 1-1, Crimson Mirelands: 1-1',
   'main', 'newer_vgm', 143),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Piano + Strings', NULL, 'Combat: Hisui Person',
   'main', 'newer_vgm', 144),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Trance Synth', 'plays 2 ascending arps 01:05-01:09', 'Combat: Giratina',
   'main', 'newer_vgm', 145),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', 'Baroque Ensemble', NULL, 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 146),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', 'Bustling Life', NULL, 'Alabaster Icelands: 1-1',
   'main', 'newer_vgm', 147),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', 'Sharp Trombone', NULL, 'Combat: King / Queen',
   'main', 'newer_vgm', 148),

  -- Rows 3894-3904: Steinberg / HALion Sonic
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Fooling', NULL, 'Combat: Hisui Person 2, Stone Portal',
   'main', 'newer_vgm', 149),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Lead', NULL, 'Combat: Dialga / Palkia (Origin Forme), Ending, Combat: Hisui Person',
   'main', 'newer_vgm', 150),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Saw Comp', NULL, 'Combat: Giratina',
   'main', 'newer_vgm', 151),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '8 Voice Brass', 'layered with something.* add 1/4 delay', 'Combat: Amazing Pokémon (First Half)',
   'main', 'newer_vgm', 152),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Amped Mark 1', NULL, 'Combat: King / Queen',
   'main', 'newer_vgm', 153),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Arp Sequence 3', NULL, 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 154),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bright Mini Lead', NULL, 'Combat: King / Queen',
   'main', 'newer_vgm', 155),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Crossover Pick Bass', 'add EQ + add room reverb', 'Combat: Amazing Pokémon (Second Half)',
   'main', 'newer_vgm', 156),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'D6 Clavi Double Phased', NULL, 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 157),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Glocken Velo', NULL, 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 158),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Muted Trumpet XXL', NULL, 'Target Practice',
   'main', 'newer_vgm', 159),

  -- Row 3905: Steinberg / HALion Sonic 2
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'Voltage Set', 'Brite Light', 'turn down "Delay Mix" dial', 'Cobalt Coastlands: 1-2',
   'main', 'newer_vgm', 160),

  -- Rows 3906-3907: Steinberg / HALion Sonic 3
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 3' COLLATE NOCASE),
   'Hot Brass Set', 'Action Section', 'Add 1/8 ping-pong delay', 'Combat: Hisui Person',
   'main', 'newer_vgm', 161),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 3' COLLATE NOCASE),
   'Model C Set', 'Drawbar Cello', 'Use modulation', 'A Meeting in Hisui',
   'main', 'newer_vgm', 162),

  -- Rows 3908-3942: Steinberg / HALion Sonic SE
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', '1984 Synth Stab', 'Add reverb', 'Combat: Giratina',
   'main', 'newer_vgm', 163),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', '80s Piano Layer', NULL, 'Combat: Giratina',
   'main', 'newer_vgm', 164),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Big 80s Kit', 'pitched down a little', 'Alabaster Icelands: 1-1',
   'main', 'newer_vgm', 165),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Dyno Tines Piano', NULL, 'Cobalt Coastlands: 1-1',
   'main', 'newer_vgm', 166),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Solo Trombone', 'pitched up a little', 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 167),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Touched Wah Clavinet', NULL, 'Crimson Mirelands: 1-1',
   'main', 'newer_vgm', 168),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 002] Bright Acoustic Piano', 'Add ping-pong 1/4 delay + reverb', 'Combat: King / Queen',
   'main', 'newer_vgm', 169),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 008] Clavinet', NULL, 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 170),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 010] Glockenspiel', 'For Giratina add reverb + delay', 'Combat: Giratina, Ending',
   'main', 'newer_vgm', 171),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 015] Tubular Bells', 'Add delay', 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 172),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 020] Church Organ', NULL, 'Midnight',
   'main', 'newer_vgm', 173),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 035] Electric Bass (Pick)', NULL, 'Combat: Giratina',
   'main', 'newer_vgm', 174),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 039] Synth Bass 1', NULL, 'Combat: Arceus, Combat: Giratina',
   'main', 'newer_vgm', 175),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 040] Synth Bass 2', NULL, 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 176),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 042] Viola', 'Add reverb', 'A Meeting in Hisui',
   'main', 'newer_vgm', 177),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 043] Cello', 'Pitched up 30 cents + other effects added', 'Stone Portal',
   'main', 'newer_vgm', 178),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 045] Tremolo Strings', NULL, 'Combat: Amazing Pokémon (Second Half)',
   'main', 'newer_vgm', 179),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', NULL, 'Combat: Arceus, Combat: King / Queen, Combat: Wild Pokémon, Crimson Mirelands 1-1',
   'main', 'newer_vgm', 180),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', 'Add reverb', 'Combat: Giratina, Combat: Wild Pokémon, Combat: Arceus, Combat: Dialga / Palkia (Origin Forme), Combat: King / Queen, Combat: Hisui Person 2, Combat: Amazing Pokémon (First Half), Obsidian Fieldlands: 1-1',
   'main', 'newer_vgm', 181),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 057] Trumpet', 'Add reverb + delay', 'Combat: Amazing Pokémon (First Half)',
   'main', 'newer_vgm', 182),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 061] French Horn', 'Add reverb', 'Combat: Giratina',
   'main', 'newer_vgm', 183),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 063] Synth Brass 1', 'See notes', 'Combat: Hisui Person, Combat: Hisui Person 2',
   'main', 'newer_vgm', 184),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 064] Synth Brass 2', NULL, 'Combat: Giratina',
   'main', 'newer_vgm', 185),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 071] Bassoon', 'slightly highpassed. add reverb', 'A Meeting in Hisui',
   'main', 'newer_vgm', 186),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 075] Recorder', NULL, 'Combat: Giratina',
   'main', 'newer_vgm', 187),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 079] Whistle', 'A lot of reverb added', 'Jubilife Village',
   'main', 'newer_vgm', 188),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', 'All The Lovers', 'One of the lead layers', 'Combat: Hisui Person',
   'main', 'newer_vgm', 189),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Hybrid Set', 'Tube Drive Pick Bass', 'Reverb added + EQ out lower end slightly', 'Combat: Wild Pokémon',
   'main', 'newer_vgm', 190),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Amped Wah Tines', NULL, 'Cobalt Coastlands: 1-1',
   'main', 'newer_vgm', 191),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Boost Tines', NULL, 'Jubilife Village',
   'main', 'newer_vgm', 192),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Darkened Base', NULL, 'Combat: Hisui Person, Combat: Hisui Person 2',
   'main', 'newer_vgm', 193),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Digital Clavinet', NULL, 'Combat: King / Queen',
   'main', 'newer_vgm', 194),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Dual Manual Split', NULL, 'Settlement',
   'main', 'newer_vgm', 195),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Electro-Acoustic Guitar', NULL, 'Combat: King / Queen',
   'main', 'newer_vgm', 196),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Prog Rock Organ', 'Pitched up slightly', 'Obsidian Fieldlands: 2-1',
   'main', 'newer_vgm', 197),

  -- Row 3943: Steinberg / Triebwerk
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Triebwerk' COLLATE NOCASE),
   'Synth Comp', 'Dance Power Stabs', NULL, 'Combat: Dialga / Palkia (Origin Forme)',
   'main', 'newer_vgm', 198),

  -- Rows 3944-3948: Steinberg / The Grand 3
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'The Grand 3' COLLATE NOCASE),
   '01 Yamaha C7 -> Player ECO', 'Lifetime Performance ECO', 'Adjust position in Ambience', 'Combat: Dialga / Palkia (Origin Forme), Combat: Volo, All Out of Strength',
   'main', 'newer_vgm', 199),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'The Grand 3' COLLATE NOCASE),
   '01 Yamaha C7 -> Player ECO', 'Japanese Piano and Hall ECO', 'Adjust position in Ambience', 'Obsidian Fieldlands: 1-1',
   'main', 'newer_vgm', 200),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'The Grand 3' COLLATE NOCASE),
   '02 Model D -> Close ECO', 'NY Piano and Studio ECO', 'Adjust position in Ambience', 'Combat: Giratina',
   'main', 'newer_vgm', 201),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'The Grand 3' COLLATE NOCASE),
   '02 Model D -> Player ECO', 'NY Piano and Church ECO', 'Add delay, adjust position in Ambience', 'Obsidian Fieldlands: 1-1',
   'main', 'newer_vgm', 202),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'The Grand 3' COLLATE NOCASE),
   '03 Bösendorfer 290 -> Player ECO', 'Rehearsal Room ECO', NULL, 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 203),

  -- Row 3949: Toontrack / EZdrummer 2
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'Drums -> EZdrummer 2 Modern', 'Basic', NULL, 'Obsidian Fieldlands: 2-1, Cobalt Coastlands: 2-1',
   'main', 'newer_vgm', 204),

  -- Rows 3950-3954: UVI / PlugSound Pro (01-Keyboards)
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Acoustic Grand Piano', NULL, 'Survey Report: Daytime, Crimson Mirelands: 2-1, Mystery Gift',
   'main', 'newer_vgm', 205),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Classical Grand 2', NULL, 'Professor Laventon',
   'main', 'newer_vgm', 206),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Rock Piano', NULL, 'Ending',
   'main', 'newer_vgm', 207),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 02-Jazz Piano', 'Acoustic Jazz Piano', NULL, 'Survey Report: Nighttime',
   'main', 'newer_vgm', 208),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '02-Electric Pianos -> 01-Classic EP', 'A Suitcase Med and Loud', NULL, 'Ending, Midnight',
   'main', 'newer_vgm', 209),

  -- Rows 3955-3959: UVI / PlugSound Pro (02-Fretted)
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '03-Acoustic Bass -> 01-Jazzistic Bass', 'Jazz Double Bass', NULL, 'Survey Report: Daytime',
   'main', 'newer_vgm', 210),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 01-Deluxe Bass', 'Ampeg Ac. Bass -Full', NULL, 'Wayward Cave',
   'main', 'newer_vgm', 211),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 02-Exotic Bass', 'Cuba Bass', NULL, 'Emotion',
   'main', 'newer_vgm', 212),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 04 Fend. Jazz Bass', 'Fend. Slap 1', NULL, 'Cobalt Coastlands: 2-1',
   'main', 'newer_vgm', 213),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 04 Fend. Jazz Bass', 'Fend. Slap 2 Thumb', 'add subtle 1/8 delay', 'Combat: Hisui Person 2',
   'main', 'newer_vgm', 214),

  -- Row 3960: UVI / PlugSound Pro (03-Drums and Percs)
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '06-Complete GM kits', '1-GM Standard', NULL, 'Combat: Amazing Pokémon (Second Half), Evolve',
   'main', 'newer_vgm', 215),

  -- Rows 3961-3983: UVI / PlugSound Pro (04-Synths and co)
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '01-Composite', 'Sync Us', 'play as octaves', 'Midnight',
   'main', 'newer_vgm', 216),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '02-Voices-Flutes', 'Bottle Hit', NULL, 'Clefairy''s Moon Viewing Party',
   'main', 'newer_vgm', 217),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '02-Voices-Flutes -> Voices', 'Angel', NULL, 'Firespit Island',
   'main', 'newer_vgm', 218),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Bell Litte', NULL, 'Firespit Island',
   'main', 'newer_vgm', 219),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Bell Space', NULL, 'Ending',
   'main', 'newer_vgm', 220),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Creation', NULL, 'Emotion',
   'main', 'newer_vgm', 221),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Crystal', 'plays high arp near end of loop', 'Wayward Cave',
   'main', 'newer_vgm', 222),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Harponium', NULL, 'Wayward Cave',
   'main', 'newer_vgm', 223),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Magician', NULL, 'Clefairy''s Moon Viewing Party',
   'main', 'newer_vgm', 224),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> Analog Style', 'Zx Bass', NULL, 'Combat: Giratina',
   'main', 'newer_vgm', 225),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '05-Pads -> Pads', 'Beend', NULL, 'Alabaster Icelands: 2-1, Mystery Gift',
   'main', 'newer_vgm', 226),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '06-Filter Sweeps', 'Keith Pad', NULL, 'Stone Portal',
   'main', 'newer_vgm', 227),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '06-Filter Sweeps', 'Magma FX', NULL, 'Combat: Uxie / Azelf / Mesprit',
   'main', 'newer_vgm', 228),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '06-Filter Sweeps', 'Morphing Wave', NULL, 'Combat: Uxie / Azelf / Mesprit, Ending',
   'main', 'newer_vgm', 229),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '07-Analog Brass', 'Analog Brass 1', 'Increase pitch bend range', 'Combat: Giratina',
   'main', 'newer_vgm', 230),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '08-Synth Leads -> Analog', 'Synckror', 'Increase pitch bend range', 'Combat: Giratina',
   'main', 'newer_vgm', 231),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Breath Keys', 'chords layer uses autopan', 'Cobalt Coastlands: 2-1',
   'main', 'newer_vgm', 232),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'El.Piano', NULL, 'Cobalt Coastlands: 2-1',
   'main', 'newer_vgm', 233),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Glass Piano', 'low velocity', 'Emotion',
   'main', 'newer_vgm', 234),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Island Piano', 'low velocity for Cogita''s Retreat', 'Alabaster Icelands: 2-1, Ancient Retreat, Pokémon Healed',
   'main', 'newer_vgm', 235),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '10-Texture FX', 'Asteroid', NULL, 'Calamity',
   'main', 'newer_vgm', 236),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '10-Texture FX', 'Bendoid', 'C#1', 'Combat: Dialga / Palkia',
   'main', 'newer_vgm', 237),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '10-Texture FX', 'Ocean Floor', NULL, 'Combat: Uxie / Azelf / Mesprit',
   'main', 'newer_vgm', 238),

  -- Rows 3984-3994: UVI / PlugSound Pro (05-General MIDI)
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '01-Piano', '06-Electric Piano 2', NULL, 'Crimson Mirelands: 2-1, Mystery Gift',
   'main', 'newer_vgm', 239),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '12-Vibraphone', NULL, 'Obsidian Fieldlands: 2-2',
   'main', 'newer_vgm', 240),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '15-Tubular Bells', NULL, 'Coronet Highlands',
   'main', 'newer_vgm', 241),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '34-Electric Bass 1', 'Velocity ~110', 'A Touchy Subject!',
   'main', 'newer_vgm', 242),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '39-Synth Bass 1', NULL, 'Combat: King / Queen, Combat: Uxie / Azelf / Mesprit, Crimson Mirelands: 1-1, Cobalt Coastlands: 1-1, Firespit Island, Obsidian Fieldlands: 2-1, Alabaster Icelands: 1-1',
   'main', 'newer_vgm', 243),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '40-Synth Bass 2', NULL, 'Crimson Mirelands: 2-1, Ending',
   'main', 'newer_vgm', 244),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '07-Ensemble', '51-Synth Strings 1', NULL, 'Crimson Mirelands: 2-1',
   'main', 'newer_vgm', 245),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '07-Ensemble', '52-Synth Strings 2', NULL, 'Alabaster Icelands: 2-1',
   'main', 'newer_vgm', 246),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '10-Pipe', '76-Pan Flute', NULL, 'Deep in the Forest',
   'main', 'newer_vgm', 247),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '11-Synth Lead', '82-Saw Wave', '2 parallel instances', 'Cobalt Coastlands: 1-1',
   'main', 'newer_vgm', 248),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '16-Sound Effects', '122-Breath', NULL, 'Combat: Arceus',
   'main', 'newer_vgm', 249),

  -- Row 3995: UVI / PlugSound Pro (Loops)
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Drums -> Funky', '097-Funky Var 03', NULL, 'Mystery Gift',
   'main', 'newer_vgm', 250),

  -- Rows 3996-4013: Vienna Symphonic Library / Special Edition Vol. 1
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 01 Solo strings', '01S Solo violin', NULL, 'Combat: Dialga / Palkia',
   'main', 'newer_vgm', 251),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 01 Solo strings', '02S Solo viola', 'Atk slider ~ 20-25%', 'Obsidian Fieldlands: 2-1',
   'main', 'newer_vgm', 252),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 01 Solo strings', '03S Solo cello', 'Atk slider ~ 20-25% (Obsidian Fieldlands: 2-1)', 'Combat: Hisui Person 2, Combat: Giratina, Obsidian Fieldlands: 2-1',
   'main', 'newer_vgm', 253),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '21S Strings violins', NULL, 'Galactic Expedition Team Building, Survey Report: Daytime, Crimson Mirelands: 2-1, Obsidian Fieldlands: 2-1, Combat: Volo',
   'main', 'newer_vgm', 254),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 05 Harp', '041S Harp', NULL, 'Galactic Expedition Team Building',
   'main', 'newer_vgm', 255),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 11 Flutes', '02S Flute 1', NULL, 'Survey Report: Daytime, Combat: Volo, Night',
   'main', 'newer_vgm', 256),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 12 Oboes', '11S Oboe french', NULL, 'Galactic Expedition Team Building, Coronet Highlands',
   'main', 'newer_vgm', 257),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 13 Clarinets', '22S Clarinet Bb', NULL, 'Night',
   'main', 'newer_vgm', 258),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 14 Bassoons', '31 Bassoon', NULL, 'Galactic Expedition Team Building',
   'main', 'newer_vgm', 259),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '12S Trumpet C', NULL, 'Combat: Dialga / Palkia, Galactic Expedition Team Building',
   'main', 'newer_vgm', 260),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 24 Tubas', '31S Tuba', NULL, 'Professor Laventon''s Theme',
   'main', 'newer_vgm', 261),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '05S Glockenspiel', NULL, 'Survey Report: Daytime, Survey Report: Nighttime',
   'main', 'newer_vgm', 262),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '06S Xylophone', NULL, 'A Touchy Subject!',
   'main', 'newer_vgm', 263),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '07S Vibraphone', NULL, 'Night, The Seat of A Noble',
   'main', 'newer_vgm', 264),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '11S Timpani', NULL, 'Combat: Dialga / Palkia, Combat: Amazing Pokémon (Second Half), Combat: Volo, The Temple of Sinnoh, Coronet Highlands, A Touchy Subject!',
   'main', 'newer_vgm', 265),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '12S Drums', NULL, 'Galactic Expedition Team Building, Alabaster Icelands: 1-1, Combat: Amazing Pokémon (Second Half)',
   'main', 'newer_vgm', 266),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '13S Cymbals+Gongs', NULL, 'Galactic Expedition Team Building',
   'main', 'newer_vgm', 267),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '155 Tubular bells', NULL, 'Combat: Dialga / Palkia, Combat: Volo',
   'main', 'newer_vgm', 268),

  -- Rows 4014-4015: Vir2 / Electri6ity
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Les Paul Amped', NULL, 'Alabaster Icelands: 1-1, Combat: Dialga / Palkia (Origin Forme), Combat: Hisui Person, Cobalt Coastlands: 1-1',
   'main', 'newer_vgm', 269),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'DI', 'Les Paul DI', 'FX A2 and F2', 'Combat: Giratina',
   'main', 'newer_vgm', 270),

  -- Rows 4016-4019: Xfer Records / Serum
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass (Hard)', 'BA Deth reece [GI]', NULL, 'Combat: Uxie / Azelf / Mesprit',
   'main', 'newer_vgm', 271),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Noisy Downer [SN]', NULL, 'Volo''s Goal',
   'main', 'newer_vgm', 272),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Pads', 'PD Night Desert MW [BR]', NULL, 'Calamity',
   'main', 'newer_vgm', 273),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Plucked', 'PL Phantoms [SD]', 'Add 1/8 Delay', 'Alabaster Icelands: 2-1',
   'main', 'newer_vgm', 274),

  -- Rows 4020-4023: XLN Audio / Addictive Drums
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 014 - Disco Beat', 'Verse', NULL, 'Crimson Mirelands: 2-1',
   'main', 'newer_vgm', 275),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Electronica', 'LiteHeadz', NULL, 'Emotion',
   'main', 'newer_vgm', 276),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Dry)', '70''s Kit', NULL, 'Crimson Mirelands: 2-1',
   'main', 'newer_vgm', 277),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', 'mix/EQ drum elements separately if ichinose', 'Combat: Dialga / Palkia (Origin Forme), Combat: Giratina, Combat: Wild Pokémon, Combat: King / Queen, Crimson Mirelands: 1-1, Stone Portal',
   'main', 'newer_vgm', 278),

  -- Row 4024: XLN Audio / Addictive Drums 2
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   'Beats -> Funk Fill L-1', 'Funk Fill L-1 14', NULL, 'Crimson Mirelands: 2-1',
   'main', 'newer_vgm', 279),

  -- Rows 4025-4026: Zero-G / Creative Essentials Vol. 30 Orchestral Flavours
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_01', NULL, 'Combat: Giratina',
   'main', 'newer_vgm', 280),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 04', '30_04_05', NULL, 'Combat: Giratina',
   'main', 'newer_vgm', 281),

  -- Stuff to Find (rows 4028-4082) -> stuff_to_find
  -- Row 4028: Ableton / Live Core Library
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ableton' COLLATE NOCASE AND p.name = 'Live Core Library' COLLATE NOCASE),
   NULL, NULL, 'potentially used for Maeba''s stuff', NULL,
   'stuff_to_find', 'newer_vgm', 282),

  -- Row 4029: Ample Sound / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'basses and acoustic guitar maybe? (raw source: Ample Sound, ?)', 'Maeba songs',
   'stuff_to_find', 'newer_vgm', 283),

  -- Row 4030: Audio Modelling / Samplemodeling / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'could be used for Maeba''s stuff (raw source: Audio Modelling / Samplemodeling, ?)', NULL,
   'stuff_to_find', 'newer_vgm', 284),

  -- Row 4031: Audiobro / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'could be used for Maeba''s stuff (raw source: Audiobro, ?)', NULL,
   'stuff_to_find', 'newer_vgm', 285),

  -- Row 4032: Best Service / ProSamples Vol. 15 - Dance Drums
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   NULL, NULL, 'drumkit elements with multiple pitches', 'Combat: Wild Pokémon, Combat: Hisui Person 2, Combat: Dialga / Palkia (Origin Forme), Combat: Amazing Pokémon (Second Half), Cobalt Coastlands: 1-1, Stone Portal',
   'stuff_to_find', 'newer_vgm', 286),

  -- Row 4033: Best Service / ProSamples Vol. 15 - Dance Drums
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition A -> SD 121-180', '15A-SDE152', 'either this or SDE151', 'Combat: Dialga / Palkia (Origin Forme)',
   'stuff_to_find', 'newer_vgm', 287),

  -- Row 4034: Best Service / ProSamples Vol. 55 - Retro Sampler
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'Partition B -> DRUMCOMPUTER -> YAMAHA R5+RX7', '55p-drm19-f#2', '80s tom drum', 'Combat: Dialga / Palkia (Origin Forme)',
   'stuff_to_find', 'newer_vgm', 288),

  -- Row 4035: Best Service / Ethno World Instruments
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   NULL, NULL, 'could be used for Maeba''s stuff', NULL,
   'stuff_to_find', 'newer_vgm', 289),

  -- Row 4036: Cinesamples / CineHarps
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CineHarps' COLLATE NOCASE),
   NULL, NULL, NULL, 'Hall of Origin',
   'stuff_to_find', 'newer_vgm', 290),

  -- Row 4037: Cinesamples / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'could be used for Maeba''s stuff (raw source: Cinesamples, ?)', NULL,
   'stuff_to_find', 'newer_vgm', 291),

  -- Row 4038: e-instruments / Session Horns Pro
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'e-instruments' COLLATE NOCASE AND p.name = 'Session Horns Pro' COLLATE NOCASE),
   'Session Horns Pro - Keyswitch', 'please find the presets', NULL, 'Professor Laventon''s Theme, Crimson Mirelands: 2-1, Survey Report: Nighttime',
   'stuff_to_find', 'newer_vgm', 292),

  -- Row 4039: EastWest / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'could be used for Maeba''s stuff (raw source: EastWest, ?)', NULL,
   'stuff_to_find', 'newer_vgm', 293),

  -- Row 4040: Heavyocity / Damage
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, 'To-do: find the loops (might use panning)', 'Combat: Boss, Combat: Dialga / Palkia (Origin Forme)',
   'stuff_to_find', 'newer_vgm', 294),

  -- Row 4041: Heavyocity / FORZO - Modern Brass
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'FORZO - Modern Brass' COLLATE NOCASE),
   NULL, NULL, 'maybe, checked albion iceni already', 'The Beginning, Hall of Origin',
   'stuff_to_find', 'newer_vgm', 295),

  -- Row 4042: Impact Soundworks / Super Audio Cart
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Super Audio Cart' COLLATE NOCASE),
   NULL, NULL, 'at some point, these may need revisiting', NULL,
   'stuff_to_find', 'newer_vgm', 296),

  -- Row 4043: MusicLab / RealGuitar
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   NULL, NULL, 'specify preset', 'Ancient Retreat',
   'stuff_to_find', 'newer_vgm', 297),

  -- Row 4044: Native Instruments / Arkhis
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Arkhis' COLLATE NOCASE),
   'Motions', 'Life in Fifths', 'maybe', 'Precursor to Combat: Boss',
   'stuff_to_find', 'newer_vgm', 298),

  -- Row 4045: Native Instruments / Spotlight Collection: Cuba
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   NULL, NULL, 'Percussion Ensemble', 'Jubilife Village',
   'stuff_to_find', 'newer_vgm', 299),

  -- Row 4046: Native Instruments / Spotlight Collection: East Asia
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: East Asia' COLLATE NOCASE),
   NULL, NULL, 'ichinose/maeba tracks', NULL,
   'stuff_to_find', 'newer_vgm', 300),

  -- Row 4047: Native Instruments / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'could be used for Maeba''s stuff (raw source: Native Instruments, ?)', NULL,
   'stuff_to_find', 'newer_vgm', 301),

  -- Row 4048: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'claps', 'doesnt seem to be berlin perc or cineperc', 'Courage',
   'stuff_to_find', 'newer_vgm', 302),

  -- Row 4049: Orchestral Tools / Berlin Percussion
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Orchestral Tools' COLLATE NOCASE AND p.name = 'Berlin Percussion' COLLATE NOCASE),
   NULL, NULL, 'timpani maybe', 'Maeba songs',
   'stuff_to_find', 'newer_vgm', 303),

  -- Row 4050: Orchestral Tools / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'potentially used for Maeba''s stuff (raw source: Orchestral Tools, ?)', NULL,
   'stuff_to_find', 'newer_vgm', 304),

  -- Row 4051: Premier Sound Factory / Acoustic Bass Premier G
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Premier Sound Factory' COLLATE NOCASE AND p.name = 'Acoustic Bass Premier G' COLLATE NOCASE),
   NULL, NULL, 'acoustic basses', 'Maeba songs',
   'stuff_to_find', 'newer_vgm', 305),

  -- Row 4052: Premier Sound Factory / Bass Premier G
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Premier Sound Factory' COLLATE NOCASE AND p.name = 'Bass Premier G' COLLATE NOCASE),
   NULL, NULL, 'electric basses', 'Maeba songs',
   'stuff_to_find', 'newer_vgm', 306),

  -- Row 4053: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'couldnt find the drums in drum tree', 'All Aboard!',
   'stuff_to_find', 'newer_vgm', 307),

  -- Row 4054: Roland Cloud / SOUND Canvas VA
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-88Pro Map', '000 056 Orchestra Hit', NULL, 'Combat: King / Queen',
   'stuff_to_find', 'newer_vgm', 308),

  -- Row 4055: Roland Cloud / SOUND Canvas VA
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-88Pro Map', 'MuteTrumpet 2', 'could be SC-55 Mute Trumpet', 'Combat: Amazing Pokémon (First Half)',
   'stuff_to_find', 'newer_vgm', 309),

  -- Row 4056: Roland Cloud / SOUND Canvas VA
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-88Pro Map', 'P5 Saw Lead', 'the lead synth maybe', 'Combat: Giratina',
   'stuff_to_find', 'newer_vgm', 310),

  -- Row 4057: Roland Cloud / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Orch hit (raw source: Roland Cloud, ?)', 'Combat: Amazing Pokémon (Second Half)',
   'stuff_to_find', 'newer_vgm', 311),

  -- Row 4058: Roland Cloud / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'slightly distorted kick (raw source: Roland Cloud, ?)', 'Combat: Hisui Person 2',
   'stuff_to_find', 'newer_vgm', 312),

  -- Row 4059: Soniccouture / Grand Marimba
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Soniccouture' COLLATE NOCASE AND p.name = 'Grand Marimba' COLLATE NOCASE),
   NULL, NULL, 'maybe?', 'Case Closed',
   'stuff_to_find', 'newer_vgm', 313),

  -- Row 4060: Soniccouture / Pan Drums
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Soniccouture' COLLATE NOCASE AND p.name = 'Pan Drums' COLLATE NOCASE),
   NULL, NULL, 'maybe?', 'Case Closed',
   'stuff_to_find', 'newer_vgm', 314),

  -- Row 4061: Scarbee / ? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'electric bass (raw source: Scarbee, ?)', 'Emotion',
   'stuff_to_find', 'newer_vgm', 315),

  -- Row 4062: Spectrasonics / Keyscape
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Keyscape Library', NULL, 'potentially used for Maeba''s stuff', NULL,
   'stuff_to_find', 'newer_vgm', 316),

  -- Row 4063: Spectrasonics / Stylus RMX
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus', 'Shakers', '87-Shaker', 'Obsidian Fieldlands: 2-1',
   'stuff_to_find', 'newer_vgm', 317),

  -- Row 4064: Spectrasonics / Heart of Asia
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   NULL, NULL, 'Dragon Drum', 'Combat: Hisui Person 2',
   'stuff_to_find', 'newer_vgm', 318),

  -- Row 4065: Spitfire Audio / Hans Zimmer Percussion Professional
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Hans Zimmer Percussion Professional' COLLATE NOCASE),
   NULL, NULL, 'probably more maeba stuff too', NULL,
   'stuff_to_find', 'newer_vgm', 319),

  -- Row 4066: Steinberg / HALion 4
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', 'Fusion Horns', 'probably halion, but could be another patch', 'Deep in the Forest',
   'stuff_to_find', 'newer_vgm', 320),

  -- Row 4067: Steinberg / HALion Sonic
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Natural Grand', NULL, 'Combat: King / Queen',
   'stuff_to_find', 'newer_vgm', 321),

  -- Row 4068: Steinberg / HALion Sonic
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'TW Bring the Pedals', NULL, 'Survey Report: Nighttime',
   'stuff_to_find', 'newer_vgm', 322),

  -- Row 4069: Steinberg / HALion Sonic (no path/preset)
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   NULL, NULL, 'soft tenor sax', 'Crimson Mirelands: 1-1',
   'stuff_to_find', 'newer_vgm', 323),

  -- Row 4070: Steinberg / HALion Sonic
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'Artist / Studio Set', '60s Combo Organ', 'pitched up and autopanner added', 'Combat: Wild Pokémon',
   'stuff_to_find', 'newer_vgm', 324),

  -- Row 4071: Strezov Sampling / Storm Choir
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Strezov Sampling' COLLATE NOCASE AND p.name = 'Storm Choir' COLLATE NOCASE),
   NULL, NULL, NULL, 'Stone Portal',
   'stuff_to_find', 'newer_vgm', 325),

  -- Row 4072: UVI / PlugSound Pro (04-Synths and co)
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '03-Tines-bells', 'Millenium', 'ending segment "clap" - low note?', 'Combat: Uxie / Azelf / Mesprit',
   'stuff_to_find', 'newer_vgm', 326),

  -- Row 4073: UVI / PlugSound Pro (04-Synths and co)
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '06-Filter Sweeps', 'Sweep Hot', 'Similar sound, highend doesnt match fully', 'Stone Portal',
   'stuff_to_find', 'newer_vgm', 327),

  -- Row 4074: Zero-G / Creative Essentials Vol. 16 Drum & Percussion Tools
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   NULL, NULL, 'Snare, kick', 'Combat: Hisui Person, Stone Portal',
   'stuff_to_find', 'newer_vgm', 328),

  -- Row 4075: Zero-G / Creative Essentials Vol. 30 Orchestral Flavours
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   NULL, NULL, NULL, 'Combat: Dialga / Palkia (Origin Forme), Combat: Amazing Pokémon (Second Half)',
   'stuff_to_find', 'newer_vgm', 329),

  -- Row 4076: Zero-G / ProSamples Vol. 37 - Dance Synths
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'ProSamples Vol. 37 - Dance Synths' COLLATE NOCASE),
   'Percussion -> Ethnic Perc 3', '37n05prc1', 'some pitch bend for half semitones', 'Combat: Hisui Person',
   'stuff_to_find', 'newer_vgm', 330),

  -- Row 4077: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'winds', 'Precursor to Combat',
   'stuff_to_find', 'newer_vgm', 331),

  -- Row 4078: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'piano, church organ, deep synth bass layer', 'Combat: Dialga / Palkia',
   'stuff_to_find', 'newer_vgm', 332),

  -- Row 4079: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'flute', 'Cobalt Coastlands: 1-1',
   'stuff_to_find', 'newer_vgm', 333),

  -- Row 4080: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'pad', 'Ancient Retreat',
   'stuff_to_find', 'newer_vgm', 334),

  -- Row 4081: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'cello', 'Ancient Retreat',
   'stuff_to_find', 'newer_vgm', 335),

  -- Row 4082: ?,? -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Synth Glockenspiel + chiptune', 'Combat: Dialga / Palkia (Origin Forme), Combat: Hisui Person, Cobalt Coastlands: 1-1',
   'stuff_to_find', 'newer_vgm', 336),

  -- Early Music (Teraleak / Freakleak - 20191220_Hayabusa_L_Develop.nsp) (rows 4084-4086) -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Cello -> 1 Long', 'SVC Double Bow Exp', NULL, 'Obsidian Fieldlands (904218705)',
   'unused', 'newer_vgm', 337),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Backwards Rhodes', 'Reverb and delay added, vary note velocities', 'Obsidian Fieldlands (904218705)',
   'unused', 'newer_vgm', 338),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Obsidian Fieldlands (904218705)',
   'unused', 'newer_vgm', 339),

  -- Early Music (Teraleak / Freakleak - May 2020 Build) (rows 4088-4100) -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'BOWED INSTRUMENTS -> MORIN KHUUR STRING ENSEMBLE', 'MK Ens Sustain KEY', NULL, 'Jubilife Village (Early Mix)',
   'unused', 'newer_vgm', 340),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> JOOCHIN DULCIMER', 'Joochin Dulcimer KEY', 'Finger P-F Vel KS', 'Jubilife Village (Early Mix)',
   'unused', 'newer_vgm', 341),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 6 Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> BAMBOO FLUTE', 'Bamboo Flute KEY', NULL, 'Jubilife Village (Early Mix)',
   'unused', 'newer_vgm', 342),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Discovery Japan' COLLATE NOCASE),
   'Track 54', '-', 'Jinglebell (Suzu) - Pitched up 1 semitone', 'Jubilife Village (Early Mix)',
   'unused', 'newer_vgm', 343),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Cello -> 1 Long', 'SVC Double Bow Exp', NULL, 'Obsidian Fieldlands 1-1, Obsidian Fieldlands 1-2',
   'unused', 'newer_vgm', 344),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Backwards Rhodes', 'Reverb and delay added, vary note velocities', 'Obsidian Fieldlands 1-1, Obsidian Fieldlands 1-2',
   'unused', 'newer_vgm', 345),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland Cloud' COLLATE NOCASE AND p.name = 'SOUND Canvas VA' COLLATE NOCASE),
   'SC-55 Map', '000 048 Timpani', NULL, 'Battle! (Wild Pokémon) Unfinished version by Go Ichinose',
   'unused', 'newer_vgm', 346),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Fairy Tale Bells', NULL, 'Jubilife Village (Early Mix)',
   'unused', 'newer_vgm', 347),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Cedar Plucked Piano', NULL, 'Jubilife Village (Early Mix)',
   'unused', 'newer_vgm', 348),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Spotlight - EDM -> Bells and Vibes', 'Lead VibraBell', NULL, 'Jubilife Village (Early Mix)',
   'unused', 'newer_vgm', 349),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Obsidian Fieldlands 1-1',
   'unused', 'newer_vgm', 350),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 079] Whistle', NULL, 'Jubilife Village (Early Mix)',
   'unused', 'newer_vgm', 351),

  ((SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Boost Tines', NULL, 'Jubilife Village (Early Mix)',
   'unused', 'newer_vgm', 352);

-- Patch raw_source for the three Sample: GAME FREAK rows (positions 1-3) inserted with product_id NULL.
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Legends: Arceus / Arrangement: Go Ichinose'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus')
    AND position = 1;
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Legends: Arceus / Arrangement: Go Ichinose'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus')
    AND position = 2;
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Legends: Arceus / Arrangement: Hitomi Sato'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Legends: Arceus')
    AND position = 3;
