-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 1948-2549
-- Pokémon Sun and Pokémon Moon (Nintendo 3DS, November 18, 2016).
-- Composers: Minako Adachi, Go Ichinose, Junichi Masuda, Hitomi Sato, Tomoaki Oga, Hideaki Kuroda, Jun Fukuda.
--
-- Subsection headers in source:
--   row 1948: game header (no explicit "Streamed/Sequenced" subhead in this section — main body runs 1949-2457)
--   rows 1949-1959: Live Recording: <person> rows (non-commercial) — product_id NULL, raw_source patched at end
--   row 1960: Sample: GAME FREAK row (non-commercial) — product_id NULL, raw_source patched at end
--   rows 1961-2457: main commercial product usages
--   row 2458: "Stuff to Find"           -> stuff_to_find (rows 2459-2517)
--   row 2518: "Beta / Unreleased Tracks - (Steinberg Sound Roster & Japan Expo)" -> unused (rows 2519-2534)
--   row 2535: "Early Music (Teraleak / Freakleak - XY Part 1)" -> unused (rows 2536-2549)

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Arturia'),
  ('Audiobro'),
  ('Best Service'),
  ('Cinematic Studio Series'),
  ('Discovery Firm'),
  ('e-instruments'),
  ('EastWest'),
  ('eLAB'),
  ('Heavyocity'),
  ('Impact Soundworks'),
  ('iZotope'),
  ('Kaeru Cafe'),
  ('KORG'),
  ('MAGiX / Yellow Tools'),
  ('MOTU'),
  ('MusicLab'),
  ('Native Instruments'),
  ('Pettinhouse'),
  ('Scarbee'),
  ('Sound Ideas'),
  ('Spectrasonics'),
  ('Steinberg'),
  ('Synthogy'),
  ('Toontrack'),
  ('Ueberschall'),
  ('UVI'),
  ('Vienna Symphonic Library'),
  ('Vir2'),
  ('XLN Audio'),
  ('Zero-G'),
  ('Unknown');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Arturia'                 COLLATE NOCASE), 'ARP2600 V2',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Audiobro'                COLLATE NOCASE), 'LA Scoring Strings',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'            COLLATE NOCASE), 'Chris Hein Horns Pro Complete',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'            COLLATE NOCASE), 'Ethno World 5 Instruments',                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'            COLLATE NOCASE), 'Ethno World 5 Voices',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'            COLLATE NOCASE), 'Forest Kingdom II',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'            COLLATE NOCASE), 'Psy - FX',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'            COLLATE NOCASE), 'ProSamples Vol. 55 - Retro Sampler',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinematic Studio Series' COLLATE NOCASE), 'Cinematic Strings 2',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'          COLLATE NOCASE), 'Discovery Japan',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'          COLLATE NOCASE), 'Sound Effects CD Series 6 - NATURE',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'e-instruments'           COLLATE NOCASE), 'Session Horns Pro',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                COLLATE NOCASE), 'Goliath',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                COLLATE NOCASE), 'Hollywood Brass',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                COLLATE NOCASE), 'Hollywood Orchestral Woodwinds',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                COLLATE NOCASE), 'Ra',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                COLLATE NOCASE), 'Stormdrum 2',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                COLLATE NOCASE), 'Symphonic Orchestra',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                COLLATE NOCASE), 'Voices of Passion',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'eLAB'                    COLLATE NOCASE), 'Xtortion',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'              COLLATE NOCASE), 'Damage',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'              COLLATE NOCASE), 'Evolve Mutations',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'              COLLATE NOCASE), 'Evolve Mutations 2',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'              COLLATE NOCASE), 'Evolve R2',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Impact Soundworks'       COLLATE NOCASE), 'Shreddage',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'iZotope'                 COLLATE NOCASE), 'Vinyl',                                       'Effect'),
  ((SELECT id FROM manufacturers WHERE name = 'Kaeru Cafe'              COLLATE NOCASE), 'The Last Life Style Sampling HOUSE & KITCHEN','Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Kaeru Cafe'              COLLATE NOCASE), 'Treasure in Japan Vol. 3',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                    COLLATE NOCASE), 'M1 Legacy Collection',                        'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                    COLLATE NOCASE), 'Mono/Poly Legacy Collection',                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                    COLLATE NOCASE), 'MS-20 Legacy Collection',                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                    COLLATE NOCASE), 'Polysix Legacy Collection',                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                    COLLATE NOCASE), 'WAVESTATION Legacy Collection',               'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                    COLLATE NOCASE), 'Unknown',                                     NULL),
  ((SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools'    COLLATE NOCASE), 'Independence Pro',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MOTU'                    COLLATE NOCASE), 'MachFive 3',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                COLLATE NOCASE), 'RealGuitar',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                COLLATE NOCASE), 'RealLPC',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Absynth 5',                                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Action Strikes',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'B4 II',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Battery 3',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Battery 4',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Drumlab',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Elektrik Piano',                              'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'FM8',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Kontakt Factory Library',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Maschine Drum Selection',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Massive',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Rise & Hit',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Spotlight Collection: Balinese Gamelan',     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Spotlight Collection: Cuba',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Spotlight Collection: India',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Spotlight Collection: West Africa',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Studio Drummer',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Vintage Organs',                              'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Pettinhouse'             COLLATE NOCASE), 'UkuleleGuitar',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                 COLLATE NOCASE), 'A-200',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                 COLLATE NOCASE), 'Jay-Bass',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                 COLLATE NOCASE), 'Pre-Bass',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                 COLLATE NOCASE), 'Pre-Bass Amped',                              'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                 COLLATE NOCASE), 'Rickenbacker Bass',                           'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Sound Ideas'             COLLATE NOCASE), 'The General Series 6000',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'           COLLATE NOCASE), 'Heart of Asia',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'           COLLATE NOCASE), 'Omnisphere',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'           COLLATE NOCASE), 'Stylus RMX',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'           COLLATE NOCASE), 'Trilian',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'               COLLATE NOCASE), 'HALion 4',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'               COLLATE NOCASE), 'HALion Sonic',                                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'               COLLATE NOCASE), 'HALion Sonic 2',                              'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'               COLLATE NOCASE), 'HALion Sonic SE',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'               COLLATE NOCASE), 'Retrologue',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Synthogy'                COLLATE NOCASE), 'Ivory',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Synthogy'                COLLATE NOCASE), 'Ivory II',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Toontrack'               COLLATE NOCASE), 'EZdrummer',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'             COLLATE NOCASE), 'Jam Box',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                     COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                     COLLATE NOCASE), 'PlugSound Pro (02-Fretted)',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                     COLLATE NOCASE), 'PlugSound Pro (03-Drums and Percs)',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                     COLLATE NOCASE), 'PlugSound Pro (04-Synths and co)',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                     COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                     COLLATE NOCASE), 'PlugSound Pro (06-Orchestral)',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                     COLLATE NOCASE), 'PlugSound Pro (Loops)',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                     COLLATE NOCASE), 'Unknown',                                     NULL),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'COLLATE NOCASE), 'Special Edition Vol. 1',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'COLLATE NOCASE), 'Special Edition Vol. 2',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'COLLATE NOCASE), 'Vienna Imperial',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Vir2'                    COLLATE NOCASE), 'Electri6ity',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'               COLLATE NOCASE), 'Addictive Drums',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                  COLLATE NOCASE), 'Chemical Beats',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                  COLLATE NOCASE), 'Creative Essentials Vol. 30 Orchestral Flavours','Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                  COLLATE NOCASE), 'Escape from the Planet of the Breaks',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                  COLLATE NOCASE), 'N.Y. CUTZ vol. 2 - Off Da Hook',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                  COLLATE NOCASE), 'Phantom Horns',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                  COLLATE NOCASE), 'Planet of the Breaks',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                  COLLATE NOCASE), 'Total Funk',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                  COLLATE NOCASE), 'World Pack',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                  COLLATE NOCASE), 'ProSamples Vol. 37 - Dance Synths',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                 COLLATE NOCASE), 'Unknown',                                     NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Sun and Pokémon Moon',
   'Nintendo 3DS',
   'November 18, 2016',
   'Minako Adachi, Go Ichinose, Junichi Masuda, Hitomi Sato, Tomoaki Oga, Hideaki Kuroda, Jun Fukuda',
   'minako adachi, go ichinose, junichi masuda, hitomi sato, tomoaki oga, hideaki kuroda, jun fukuda',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Live Recording rows (1949-1959): product_id NULL, raw_source patched at end of file
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed via the S/M SMC''s liner notes', 'Paniola Town (Night)',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed via the S/M SMC''s liner notes', 'Paniola Town (Night)',
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed via the S/M SMC''s liner notes', 'Battle Royal Dome, Paniola Town (Night)',
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed via the S/M SMC''s liner notes', 'Battle! (Battle Tree Boss)',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed via the S/M SMC''s liner notes', 'Battle Royal Dome',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed via the S/M SMC''s liner notes', 'Paniola Town (Night)',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed by Go Ichinose', 'Battle! (Tapu)',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed via the S/M SMC''s liner notes', 'Hau''oli City (Day)',
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed via the S/M SMC''s liner notes', 'Team Skull Appears!, Battle! (Team Skull Admin), Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed via the S/M SMC''s liner notes', 'Title Screen, Alola Region Theme',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, NULL, NULL, 'Confirmed via the S/M SMC''s liner notes', 'Iki Town (Day), Iki Town (Night), Hau''oli City (Day)',
   'main', 'newer_vgm', 11),

  -- Row 1960: Sample: GAME FREAK — Pokémon Sun and Moon (non-commercial; raw_source patched below)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   NULL, 'Track 108', 'Aether House', NULL, 'Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 12),

  -- Arturia ARP2600 V2 (row 1961)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'ARP2600 V2' COLLATE NOCASE),
   'Sequences', 'Groover_Seq', 'Add Distortion. See note', 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 13),

  -- Audiobro LA Scoring Strings (rows 1962-1966)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'LASS Ensemble Patches', 'Ens Sus Esp (3 Layer)_', NULL, 'Ultra Beasts...?',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Cellos -> Cello First Chair (Solo)', 'Cello Legato Sus', NULL, 'An Encounter',
   'main', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Violins', 'Vlns Full Trills ', NULL, 'Ultra Beasts...?, Blue''s Theme',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Violas -> Viola First Chair (Solo)', 'Vla Spiccato ', NULL, 'Escape!, Apparel Shop, Infiltration',
   'main', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Violas -> Viola First Chair (Solo)', 'Vla Legato Sus', NULL, 'An Encounter, Blue''s Theme',
   'main', 'newer_vgm', 18),

  -- Best Service Chris Hein Horns Pro Complete (rows 1967-1971)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol1', '18 Trumpet Solo', NULL, 'Nanu''s Theme',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol2 -> Section', 'Trumpet-Full Section', NULL, 'Battle Royale Dome, Victory! (Trainer)',
   'main', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol2 -> Solo', '19 Trumpet A', NULL, 'Ride Pokémon (Aquatic)',
   'main', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol3 -> Section', '24Tb Sect 14 Trombones', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol4 -> Solo', 'Clarinet Bb', NULL, 'Festival Plaza (Day)',
   'main', 'newer_vgm', 23),

  -- Best Service Ethno World 5 Instruments (rows 1972-1981)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'KEY INSTRUMENTS -> DALLAPE ACCORDION', 'DALLAPE ACCORDION KEY', NULL, 'Paniola Ranch, Lively Lillie!',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'METAL TYPE INSTRUMENTS -> JEWS HARP', 'JEWS HARP', NULL, 'Paniola Town (Day)',
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> BANJO FRAMUS', 'BANJO FRAMUS', NULL, 'Ride Pokémon (Land)',
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> SITAR', 'SITAR KEY', NULL, 'Battle! (Ultra Beast), Konikoni City (Day)',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'STRINGED INSTRUMENTS -> TANBUR', 'TANBUR', NULL, 'Battle Tree',
   'main', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'WOODWINDS AND BRASS -> IRISH WHISTLES -> OVERTON IRISH WHISTLE', 'OVERTON IRISH WHISTLE KEY HIGH', NULL, 'Let''s Go to Ultra Space!, Someday..., Vast Poni Canyon, Mt. Lanakila',
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'WOODWINDS AND BRASS -> KENA', 'KENA KEY', NULL, 'Apparel Shop, An Encounter',
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'WOODWINDS AND BRASS -> ZUKRA BAGPIPE', 'ZUKRA BAGPIPE 1', NULL, 'The Battle Tree',
   'main', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'WORLD DRUMS -> DARABUKA', 'DARABUKA HITS + ROLLS + LOOPS BM', 'G#6, ', 'Apparel Shop',
   'main', 'newer_vgm', 32),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'WORLD PERCUSSION -> SHAKERS', 'BAOBAB SHAKER + LOOPS BM', NULL, 'Apparel Shop',
   'main', 'newer_vgm', 33),

  -- Best Service Ethno World 5 Voices (rows 1982-1983)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Voices' COLLATE NOCASE),
   'HUMAN WHISTLING', 'Human Whistling KEY', 'highpass EQ + legato', 'Paniola Town (Day)',
   'main', 'newer_vgm', 34),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Voices' COLLATE NOCASE),
   'NATIVE AMERICAN VOICES -> STYLE CHANTS', 'Native AM Style Chants F+D 100', 'G#4 / A4', 'Verdant Cavern—A Trial Site',
   'main', 'newer_vgm', 35),

  -- Best Service Forest Kingdom II (rows 1984-1985)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom II' COLLATE NOCASE),
   '2 Pads', 'Sanctum', 'panned to the left', 'Infiltration',
   'main', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom II' COLLATE NOCASE),
   '4 Voices', 'Ethereal Female Solo Voice', NULL, 'Lusamine''s Revenge, Mother and Daughter',
   'main', 'newer_vgm', 37),

  -- Best Service Psy - FX (row 1986)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Psy - FX' COLLATE NOCASE),
   'Track 54', 'Timestamp 0:49', 'Requires Lowpass', 'Ultra Space',
   'main', 'newer_vgm', 38),

  -- Discovery Firm (rows 1987-1988)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Discovery Japan' COLLATE NOCASE),
   'Track 54', '-', 'Jinglebell (Suzu) - Pitched up 400 cents', 'Nanu''s Theme',
   'main', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 6 - NATURE' COLLATE NOCASE),
   '-', '05 WAVE-2', NULL, 'The End',
   'main', 'newer_vgm', 40),

  -- e-instruments Session Horns Pro (row 1989)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'e-instruments' COLLATE NOCASE AND p.name = 'Session Horns Pro' COLLATE NOCASE),
   'Solo Instruments', 'Tuba', NULL, 'Battle! (Hau)',
   'main', 'newer_vgm', 41),

  -- EastWest Goliath (rows 1990-1997)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Acoustic Drumkits', 'Jazz Kit Brushes', NULL, 'Seafolk Village (Day)',
   'main', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Acoustic Guitar Family', 'Acoustic God', NULL, 'Seafolk Village (Day)',
   'main', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 009-16 CROMPERC', '11-Music Box', NULL, 'Seafolk Village (Night)',
   'main', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '17-Drawbar Organ MOD', NULL, 'Mallow''s Trial',
   'main', 'newer_vgm', 45),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '20-Church Organ', NULL, 'Battle! (Lusamine), Lusamine''s Madness, Showdown! (Lusamine)',
   'main', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 033-40 BASS', '33-Upright Bass', NULL, 'Lillie''s Theme, Hau''oli City (Day)',
   'main', 'newer_vgm', 47),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 033-40 BASS', '34-El. Bass (Finger)', NULL, 'Iki Town (Day)',
   'main', 'newer_vgm', 48),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 073-080 PIPE', '75-Recorder MOD', NULL, 'Route 1 on Melemele Island',
   'main', 'newer_vgm', 49),

  -- EastWest Hollywood Brass (rows 1998-1999)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Hollywood Brass' COLLATE NOCASE),
   '3 Trumpets', '3TP KS Sus_Short C0-G#0', NULL, 'Blue''s Theme',
   'main', 'newer_vgm', 50),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Hollywood Brass' COLLATE NOCASE),
   '6 French Horns', '6FH KS Sus_Short C0-G#0', NULL, 'On The Bridge..., There''s Trouble!, The Entrance to Another World',
   'main', 'newer_vgm', 51),

  -- EastWest Hollywood Orchestral Woodwinds (rows 2000-2001)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Hollywood Orchestral Woodwinds' COLLATE NOCASE),
   'Oboe', 'OB KS Sus_Short C0-A#0', NULL, 'The Entrance to Another World',
   'main', 'newer_vgm', 52),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Hollywood Orchestral Woodwinds' COLLATE NOCASE),
   'Piccolo Flute ', 'PF KS Sus_Short C0-C1', NULL, 'The Entrance to Another World',
   'main', 'newer_vgm', 53),

  -- EastWest Ra (rows 2002-2011)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Wind -> FN CDR Flute', 'FNC Flute KS C0-G#0', NULL, 'Solgaleo - Lunala Appears!',
   'main', 'newer_vgm', 54),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Wind -> Pan Flute', 'Pan Flute KS C0-D#0', NULL, 'The Festival in Iki Town, Route 2 on Melemele Island, Seafolk Village (both versions), Island Kahuna''s Theme',
   'main', 'newer_vgm', 55),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Perc -> Gamelan', 'Gamelan Ensemble Tuned', NULL, 'Seafolk Village (both versions)',
   'main', 'newer_vgm', 56),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Perc -> Gamelan', 'Pamade Tuned', 'external effects', 'Haina Desert',
   'main', 'newer_vgm', 57),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Koto', 'Koto KS C0-F#0', NULL, 'Konikoni City (Day), Malie City (Day), Malie City (Night)',
   'main', 'newer_vgm', 58),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Shamisen', 'Shamisen C0-E0', NULL, 'Malie City (Day)',
   'main', 'newer_vgm', 59),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Mid East -> Bowed -> ME Str Sect', 'MidEast Strings KS C0-F0', NULL, 'Konikoni City (Day)',
   'main', 'newer_vgm', 60),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Mid East -> Bowed -> Yalli Tambur', 'Yalli Tambur KS C0-A0', NULL, 'Konikoni City (Day)',
   'main', 'newer_vgm', 61),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Mid East -> Plucked -> Santoor', 'Santoor KS C0-G#0', NULL, 'Konikoni City (Day), Island Kahuna''s Theme',
   'main', 'newer_vgm', 62),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Mid East -> Wind -> Zourna', 'Zourna KS C0-A#0', NULL, 'The Festival in Iki Town',
   'main', 'newer_vgm', 63),

  -- EastWest Stormdrum 2 (rows 2012-2013)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Stormdrum 2' COLLATE NOCASE),
   'Ethnic Drums', 'O Daiko Set', 'F2', 'Konikoni City (Day)',
   'main', 'newer_vgm', 64),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Stormdrum 2' COLLATE NOCASE),
   'SD2 PRO new material', 'Lion Drum Ens Hits', 'C1, C2, E2, A2', 'Konikoni City (Day)',
   'main', 'newer_vgm', 65),

  -- EastWest Symphonic Orchestra (rows 2014-2050)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 2 Trumpets -> 5 Keysw', '2TP KS Master', 'unsure for route 10, check the solo trumpets', 'Title Screen, The Battle at the Summit!, Route 10 on Ula''ula Island, Special Demo Version Movie',
   'main', 'newer_vgm', 66),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 2 Short', '4TB Stac', NULL, 'A Totem Pokémon Appears!, Battle! (Tapu), Route 10 on Ula''ula Island',
   'main', 'newer_vgm', 67),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 5 Keysw', '4TB KS Master', NULL, 'Alola Region Theme, Battle! (Island Kahuna), Battle! (Wild Pokémon), Battle! (Aether Foundation), Route 4 on Akala Island, Showdown! (Lusamine)',
   'main', 'newer_vgm', 68),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 5 Keysw', '4TP KS Master', NULL, 'Alola Region Theme, Battle! (Aether Foundation), Battle! (Lusamine), Route 4 on Akala Island, Victory! (Aether Foundation), Victory! (Totem Pokémon), The Path to the League, The Pokémon League',
   'main', 'newer_vgm', 69),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH Flutter Cres Fst', NULL, 'Showdown! (Lusamine)',
   'main', 'newer_vgm', 70),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH Rips F', 'might be 3 Wagner Tuben 3WT Rips instead', 'Title Screen, The Battle at the Summit!',
   'main', 'newer_vgm', 71),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, 'Showdown! (Lusamine), The Battle at the Summit!, Obtained a Z-Crystal!, Victory! (Aether Foundation), The Path to the League, The Summit of Mount Lanakila, The Pokémon League',
   'main', 'newer_vgm', 72),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> Solo Tuba -> 5 Keysw', 'STU KS Master', 'Hold down sforzando note for crescendo fx', 'Alola Region Theme',
   'main', 'newer_vgm', 73),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '12 Cymbal', NULL, 'Battle! (Tapu)',
   'main', 'newer_vgm', 74),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '16 German Cymbal', 'Reversed, right at the intro', 'Team Skull Appears!',
   'main', 'newer_vgm', 75),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '18 Cymbal', NULL, 'Malie City (Day)',
   'main', 'newer_vgm', 76),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '18 German Cymbal', 'See note', 'Lusamine''s Theme',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '20 Cymbal', NULL, 'Seafolk Village (Day), Seafolk Village (Night)',
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '37 Chinese Tam Tam', NULL, 'The Protector of the Island, To the Altar...',
   'main', 'newer_vgm', 79),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Roll DXF Mod Hits', NULL, 'A Totem Pokemon Appears!',
   'main', 'newer_vgm', 80),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', 'Close Mic', 'Battle! (Hau)',
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', NULL, 'Trainers'' School, Route 4 on Akala Island, Island Kahuna''s Theme',
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Xylophone', NULL, 'The Battle at the Summit!, Title Screen, Special Demo Version Movie',
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 9 Double Basses -> 5 Keysw', 'CBS KS Master', NULL, 'The Battle at the Summit!, Verdant Cavern—A Trial Site',
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Violas -> 2 Short', 'VAS Pizz RR x3', NULL, 'Verdant Cavern—A Trial Site',
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 3 Effects', '11V Trill H', NULL, 'A Totem Pokémon Appears!',
   'main', 'newer_vgm', 86),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 3 Effects', '11V Trill W', NULL, 'Obtained a Z-Crystal!',
   'main', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 5 Keysw', '11V KS Master', 'Close Mic', 'Verdant Cavern—A Trial Site',
   'main', 'newer_vgm', 88),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 2 Short', '18V Pizz RR x3', 'Close Mic', 'Verdant Cavern—A Trial Site',
   'main', 'newer_vgm', 89),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'Alola Region Theme, Battle! (Team Skull), Route 4 on Akala Island',
   'main', 'newer_vgm', 90),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', NULL, 'Route 4 on Akala Island, Seafolk Village (Day), Seafolk Village (Night), The End',
   'main', 'newer_vgm', 91),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 3 Effects', 'Harp Gliss', NULL, 'Route 4 on Akala Island',
   'main', 'newer_vgm', 92),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harpsichord', 'Harpsichord', NULL, 'Battle! (Lusamine), Lusamine''s Madness, Battle! (Aether Foundation)',
   'main', 'newer_vgm', 93),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Large String Ens', '50 Piece Str Sec Sus', NULL, 'Iki Town (Day), Iki Town (Night), Malie City (Day), Malie City (Night), Seafolk Village (Night)',
   'main', 'newer_vgm', 94),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Large String Ens', 'String Quartet QLeg RR', NULL, 'Lusamine''s Theme',
   'main', 'newer_vgm', 95),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 1 Long', 'SVL QLeg', NULL, 'Battle! (Island Kahuna)',
   'main', 'newer_vgm', 96),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 1 Long', 'SVL Sus Vib Hard', 'For Admin Battle, needs heavy distortion', 'Battle! (Aether Foundation), Battle! (Team Skull Admin), Lillie''s Theme',
   'main', 'newer_vgm', 97),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 2 Short', 'SVL Stac RR x4', NULL, 'Battle! (Aether Foundation), Lillie''s Theme',
   'main', 'newer_vgm', 98),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Cellos -> 5 Keysw', 'VCS KS Master', NULL, 'Aether House, Alola Region Theme, An Adventure Is Beginning, Battle! (Aether Foundation), Battle! (Lusamine), Route 4 on Akala Island',
   'main', 'newer_vgm', 99),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Viola -> 5 Keysw', 'VAS KS Master', NULL, 'Lillie''s Theme',
   'main', 'newer_vgm', 100),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> 3 Flutes -> 5 Keysw', '3FL KS Master', NULL, 'Alola Region Theme',
   'main', 'newer_vgm', 101),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Bassoon -> Keysw', 'BSN KS Master', NULL, 'Verdant Cavern—A Trial Site',
   'main', 'newer_vgm', 102),

  -- EastWest Voices of Passion (rows 2051-2052)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Voices of Passion' COLLATE NOCASE),
   'America', 'America Elements', NULL, 'Battle! (Lusamine), Lusamine''s Madness, Showdown! (Lusamine)',
   'main', 'newer_vgm', 103),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Voices of Passion' COLLATE NOCASE),
   'India', 'India Master', 'A5', 'Konikoni City (Night)',
   'main', 'newer_vgm', 104),

  -- eLAB Xtortion (row 2053)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'eLAB' COLLATE NOCASE AND p.name = 'Xtortion' COLLATE NOCASE),
   'Track 24 - SYN', 'Timestamp 0:06', 'pitched up a little', 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 105),

  -- Heavyocity Damage (rows 2054-2060)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Organic  Full', NULL, 'Battle! (Island Kahuna), Battle! (Aether Foundation), Battle! (Lusamine), To the Altar..., Lusamine''s Madness, Battle! (Tapu)',
   'main', 'newer_vgm', 106),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Organic Elements 01', 'E1', 'Battle! (Tapu)',
   'main', 'newer_vgm', 107),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Tech  Full', 'E3', 'Battle! (Ultra Beast), Showdown! (Lusamine)',
   'main', 'newer_vgm', 108),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Industrial  Full', 'D#3 C4 F#4', 'Infiltration, The Pokémon League, The Battle at the Summit!',
   'main', 'newer_vgm', 109),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Industrial Elements 02', 'D#1', 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 110),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Mangled Pop Elements 02', 'F1 G#2', 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 111),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Single Loops', '14 LP Mang Pop (El 01) C#2 Kick', NULL, 'Battle! (Gladion), Battle! (Ultra Beast)',
   'main', 'newer_vgm', 112),

  -- Heavyocity Evolve Mutations (rows 2061-2062)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Evolve Mutations' COLLATE NOCASE),
   '4 Tonality and FX -> Pads and FX', 'APT Pulsing Sun', NULL, 'Ferry Terminal',
   'main', 'newer_vgm', 113),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Evolve Mutations' COLLATE NOCASE),
   '4 Tonality and FX -> Melodic', 'INST SYN Organ Snaps MW', NULL, 'Ten Carat Hill',
   'main', 'newer_vgm', 114),

  -- Heavyocity Evolve Mutations 2 (row 2063)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Evolve Mutations 2' COLLATE NOCASE),
   '1 Rhythmic Suites -> Percussive', 'LPS Scoreface Menu 3', '49 C4', 'Aether House',
   'main', 'newer_vgm', 115),

  -- Heavyocity Evolve R2 (row 2064)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Evolve R2' COLLATE NOCASE),
   '1 Rhythmic Suites -> Looped Percussives', 'RockPop No TFX', 'Multiple loops', 'Unsettling Atmosphere',
   'main', 'newer_vgm', 116),

  -- iZotope Vinyl (row 2065)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'iZotope' COLLATE NOCASE AND p.name = 'Vinyl' COLLATE NOCASE),
   '-', '1960 Preset', 'See note', 'Acerola''s Trial',
   'main', 'newer_vgm', 117),

  -- Kaeru Cafe The Last Life Style Sampling HOUSE & KITCHEN (rows 2066-2067)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'The Last Life Style Sampling HOUSE & KITCHEN' COLLATE NOCASE),
   'CD 2 -> Track 62', 'COOL TIMES', 'Sample 1', 'Verdant Cavern—A Trial Site',
   'main', 'newer_vgm', 118),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'The Last Life Style Sampling HOUSE & KITCHEN' COLLATE NOCASE),
   'CD 2 -> Track 67', 'HAVE A BREAK', 'Sample 2 (Drum Loop + Noise Riser)', 'Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 119),

  -- Kaeru Cafe Treasure in Japan Vol. 3 (rows 2068-2070)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 56', 'Ohtsu01,02', NULL, 'Malie City (Day)',
   'main', 'newer_vgm', 120),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 58', 'Ei Yoh, FuYah', 'Koitsuzumi', 'Malie City (Day)',
   'main', 'newer_vgm', 121),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 72', 'Uniending L/R', NULL, 'Malie City (Day)',
   'main', 'newer_vgm', 122),

  -- KORG M1 Legacy Collection (row 2071)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'M1 Legacy Collection' COLLATE NOCASE),
   'COMBI', 'M01 17 Perc-Organ', NULL, 'Konikoni City (Night)',
   'main', 'newer_vgm', 123),

  -- KORG Mono/Poly Legacy Collection (rows 2072-2083)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '003: Phet Sync Lead', NULL, 'Battle! (Tapu), Battle! (Ultra Beast)',
   'main', 'newer_vgm', 124),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '013: AnalogTrumpet', NULL, 'Professor Kukui''s Theme, Battle! (Hau)',
   'main', 'newer_vgm', 125),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '021: Clavish Synth', NULL, 'Konikoni City (Night)',
   'main', 'newer_vgm', 126),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '026: Dark Digi Bass', NULL, 'Battle! (Totem Pokémon)',
   'main', 'newer_vgm', 127),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '037: Fire Eater', NULL, 'Konikoni City (Night)',
   'main', 'newer_vgm', 128),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '038: SynKalimba', NULL, 'Battle! (Hau)',
   'main', 'newer_vgm', 129),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '059: Square Lead', 'Portamento time increased to roughly 2.40', 'Battle! (Island Kahuna)',
   'main', 'newer_vgm', 130),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '075: Chocolate Lead', NULL, 'Battle! (Hau)',
   'main', 'newer_vgm', 131),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '060: Phaser Clav', NULL, 'Battle! (Gladion)',
   'main', 'newer_vgm', 132),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '099: Pulsin'' Solo', NULL, 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 133),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank B', '035: Epic Unison Lead', NULL, 'Battle! (Tapu)',
   'main', 'newer_vgm', 134),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Korg USA Bank -> Bass', 'Bass Gwaitar', 'needs rechecking', 'Battle! (Totem Pokémon)',
   'main', 'newer_vgm', 135),

  -- KORG MS-20 Legacy Collection (rows 2084-2086)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'MS-20 Legacy Collection' COLLATE NOCASE),
   '-', '000: Synthetic Snore', NULL, 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 136),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'MS-20 Legacy Collection' COLLATE NOCASE),
   '-', '007: Euphoric Stab', NULL, 'Gladion''s Theme',
   'main', 'newer_vgm', 137),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'MS-20 Legacy Collection' COLLATE NOCASE),
   '-', '018: Deep Synth Bass', NULL, 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 138),

  -- KORG Polysix Legacy Collection (rows 2087-2090)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Polysix Legacy Collection' COLLATE NOCASE),
   '-', '000: Fat Line Bass', 'Modify resonance and ASDR', 'Battle! (Ultra Beast), Konikoni City (Night)',
   'main', 'newer_vgm', 139),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Polysix Legacy Collection' COLLATE NOCASE),
   '-', '006: Velo Filter Lead', 'Use modulation', 'Battle! (Tapu)',
   'main', 'newer_vgm', 140),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Polysix Legacy Collection' COLLATE NOCASE),
   '-', '007: Stab Saw', 'Mostly layered with MS-20 Deep Synth Bass', 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 141),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Polysix Legacy Collection' COLLATE NOCASE),
   '-', '010: Cosmic Nag', NULL, 'Battle! (Island Kahuna)',
   'main', 'newer_vgm', 142),

  -- KORG WAVESTATION Legacy Collection (row 2091)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'WAVESTATION Legacy Collection' COLLATE NOCASE),
   'ROM7', '45 P5 Organ', 'check this isnt M1 organ 2', 'Gladion''s Theme',
   'main', 'newer_vgm', 143),

  -- MAGiX / Yellow Tools Independence Pro (rows 2092-2099)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'NY Slap combi KS A-1', NULL, 'Battle! (Wild Pokémon), Gladion''s Theme, Battle! (Gladion), Battle! (Island Kahuna)',
   'main', 'newer_vgm', 144),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'LA Slap combi KS A-1 VR', NULL, 'A Captain''s Trial Begins!',
   'main', 'newer_vgm', 145),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'Acoustic Grand Piano', NULL, 'Heahea City (Day)',
   'main', 'newer_vgm', 146),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '14 Orchestral Strings (KHSO)', 'KHSO All Strings Key Switch C-1 Basic', NULL, 'The Battle At The Summit!',
   'main', 'newer_vgm', 147),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '17 Saxophones', 'Alto Sax Jazz BIG KS B-1', NULL, 'The Pokémon Research Lab',
   'main', 'newer_vgm', 148),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '19 Synthesizers -> # Basic Synthesizer Layers', 'Analog 1 Pulse 2', NULL, 'Burnet''s Lab',
   'main', 'newer_vgm', 149),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '19 Synthesizers -> # Basic Synthesizer Layers', 'Digital Square', 'Under "Layer" turn on Pan Automation', 'A Mission at Festival Plaza, Burnet''s Lab, Festival Plaza Mission Complete!, Festival Plaza Mission Failed..., Trade',
   'main', 'newer_vgm', 150),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '21 Groove Instruments', 'Tambourine C1 Default', NULL, 'Burnet''s Lab',
   'main', 'newer_vgm', 151),

  -- MusicLab RealGuitar (rows 2100-2104)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Fingered', 'See note', 'Vast Poni Canyon, The Pokémon Research Lab',
   'main', 'newer_vgm', 152),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Nylon Fingered', NULL, 'My Home',
   'main', 'newer_vgm', 153),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::12-string', NULL, 'Route 2 on Melemele Island',
   'main', 'newer_vgm', 154),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   'Pattern Library -> Funk -> Funk1 S 16th 90-120', 'S06 Funk1', 'find guitar preset', 'Vast Poni Canyon',
   'main', 'newer_vgm', 155),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   'Pattern Library -> Funk -> Funk1 S 16th 90-120', 'S13 Funk1', 'find guitar preset', 'Ride Pokémon (Aquatic)',
   'main', 'newer_vgm', 156),

  -- MusicLab RealLPC (row 2105)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealLPC' COLLATE NOCASE),
   '-', 'RealLPC', NULL, 'Battle! (Hau), The Pokémon Center',
   'main', 'newer_vgm', 157),

  -- Native Instruments Absynth 5 (rows 2106-2107)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth 5' COLLATE NOCASE),
   'Absynth Legacy', 'Bass Kick', 'F2', 'Ultra Space',
   'main', 'newer_vgm', 158),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth 5' COLLATE NOCASE),
   'Absynth Legacy', 'Electric Piano', NULL, 'Thrifty Megamart',
   'main', 'newer_vgm', 159),

  -- Native Instruments Action Strikes (rows 2108-2110)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', 'Dark City', 'D#1 (Chasing Accents A - 16th feel)', 'Malie City (Day)',
   'main', 'newer_vgm', 160),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', 'Tangarian Drums', NULL, 'Battle! (Tapu)',
   'main', 'newer_vgm', 161),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Hits', 'Big Cinematic Hits', NULL, 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 162),

  -- Native Instruments Battery 3 (rows 2111-2112)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '03 - Percussion Kits', 'Orchestral Percussion', NULL, 'On the Bridge...',
   'main', 'newer_vgm', 163),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '03 - Percussion Kits', 'Timpani Kit', NULL, 'There''s Trouble!',
   'main', 'newer_vgm', 164),

  -- Native Instruments Battery 4 (rows 2113-2114)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 4' COLLATE NOCASE),
   '-', 'Alphabetical Pop Kit', NULL, 'Apparel Shop',
   'main', 'newer_vgm', 165),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 4' COLLATE NOCASE),
   '-', 'Sharp Shooter Kit', NULL, 'Escape!, Infiltration',
   'main', 'newer_vgm', 166),

  -- Native Instruments Drumlab (row 2115)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Drumlab' COLLATE NOCASE),
   'Single Instruments -> Percussion', 'Claps Single Stereo', NULL, 'Trainers'' School',
   'main', 'newer_vgm', 167),

  -- Native Instruments Elektrik Piano (row 2116)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Elektrik Piano' COLLATE NOCASE),
   '3 - A200', 'A200 –  Essential', 'also in KFL as "Wurly EP"', 'Festival Plaza Mission Results',
   'main', 'newer_vgm', 168),

  -- Native Instruments FM8 (rows 2117-2118)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM8 Factory', 'Anatomie', NULL, 'Ultra Space',
   'main', 'newer_vgm', 169),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM8 Factory', 'Aqua Atmo', NULL, 'Ultra Space',
   'main', 'newer_vgm', 170),

  -- Native Instruments Kontakt Factory Library (rows 2119-2152)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 1 - Horns', 'Trumpet', NULL, 'Festival Plaza',
   'main', 'newer_vgm', 171),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 1 - Horns', 'Alto Saxophone', NULL, 'Royal Avenue',
   'main', 'newer_vgm', 172),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitar', 'Rock Guitar', 'Enable Wah', 'Route 1',
   'main', 'newer_vgm', 173),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Classic Bass', NULL, 'Poké Pelago (Day), Poké Pelago (Night), Thrifty Megamart',
   'main', 'newer_vgm', 174),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Jazz Upright', NULL, 'Hau''oli City (Night)',
   'main', 'newer_vgm', 175),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Pop Bass', NULL, 'The Festival in Iki Town, Victory! (Trainer), Victory! (Totem Pokémon)',
   'main', 'newer_vgm', 176),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Bling Bling Kit', NULL, 'Battle! (Team Skull)',
   'main', 'newer_vgm', 177),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Chocolate City Kit', NULL, 'Ferry Terminal',
   'main', 'newer_vgm', 178),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Funk Kit', NULL, 'Route 1',
   'main', 'newer_vgm', 179),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Jazz Kit', NULL, 'Hau''oli City (Night)',
   'main', 'newer_vgm', 180),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Platinum Plus Kit', NULL, 'Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 181),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Rock Kit', NULL, 'Trainers'' School',
   'main', 'newer_vgm', 182),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Street Knowledge Kit', 'Uses C3 loop with additional notes on top', 'Lusamine''s Theme',
   'main', 'newer_vgm', 183),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'String Ensemble', NULL, 'Festival Plaza, Lively Lillie',
   'main', 'newer_vgm', 184),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Harp', NULL, 'Escape!, On the Bridge..., Unsettling Atmosphere, Lillie’s Resolve, Solgaleo - Lunala Appears!, Let''s Go to Ultra Space!, A World Falls Apart, Mother and Daughter',
   'main', 'newer_vgm', 185),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Violin Solo', NULL, 'Ride Pokémon (Land)',
   'main', 'newer_vgm', 186),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 2 - VSL Woodwinds', 'Piccolo', NULL, 'Escape!, Festival Plaza',
   'main', 'newer_vgm', 187),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 2 - VSL Woodwinds', 'Flute', NULL, 'On the Ship, Malie City (Night)',
   'main', 'newer_vgm', 188),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Glockenspiel', NULL, 'Festival Plaza',
   'main', 'newer_vgm', 189),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Marimba', NULL, 'Hurry Along!, An Encounter',
   'main', 'newer_vgm', 190),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Xylophone', NULL, 'Route 1',
   'main', 'newer_vgm', 191),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 5 - Orchestral Percussion', 'Snare Drums', 'also exists in Battery 3', 'On the Bridge...',
   'main', 'newer_vgm', 192),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 6 - Keyboard Instruments', 'Harpsichord', NULL, 'The Secret Side of Aether Paradise',
   'main', 'newer_vgm', 193),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 3 - Bass', '700 Dirt Bass', NULL, 'Guzma''s Theme',
   'main', 'newer_vgm', 194),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 3 - Bass', 'Adrenaline', NULL, 'Lusamine''s Theme',
   'main', 'newer_vgm', 195),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 3 - Bass', 'Skinhead', NULL, 'Aether House',
   'main', 'newer_vgm', 196),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 3 - Bass', 'Cabinet Bass 2', NULL, 'Vast Poni Canyon',
   'main', 'newer_vgm', 197),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 1 - Flutes', 'Bansuri', NULL, 'Ferry Terminal',
   'main', 'newer_vgm', 198),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 1 - Flutes', 'Shakuhachi', NULL, 'Malie City (Day)',
   'main', 'newer_vgm', 199),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 7 - Metallophones', 'Kalimba', 'Both Sansa and Kalimba presets are used', 'Verdant Cavern—A Trial Site',
   'main', 'newer_vgm', 200),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 7 - Metallophones', 'Music Box', NULL, 'Lively Lillie!, Malie City (Night)',
   'main', 'newer_vgm', 201),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 7 - Metallophones', 'Sansa', 'Both Sansa and Kalimba presets are used', 'Verdant Cavern—A Trial Site',
   'main', 'newer_vgm', 202),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 7 - Metallophones', 'Steel Drums', NULL, 'Poké Pelago (Day), Evolution (Alola)',
   'main', 'newer_vgm', 203),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 8 - Percussion', 'Djembes', 'Loops E3, G3, A3, B3 are used, see note', 'Verdant Cavern—A Trial Site',
   'main', 'newer_vgm', 204),

  -- Native Instruments Massive (rows 2153-2155)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Bass', 'Brutal Electro', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 205),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Mallet Instruments', 'Bellus Blingus', NULL, 'Crisis in Alola!, Infiltration',
   'main', 'newer_vgm', 206),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Exp. 1 -> Synth Lead', 'Burning Saws', NULL, 'There''s Trouble!',
   'main', 'newer_vgm', 207),

  -- Native Instruments Maschine Drum Selection (row 2156)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Maschine Drum Selection' COLLATE NOCASE),
   'Production Kits', 'Dubstep Kit', 'Groove', 'Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 208),

  -- Native Instruments Rise & Hit (rows 2157-2164)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '01 - Orchestral', 'Bowed to Burst', NULL, 'Showdown! (Lusamine)',
   'main', 'newer_vgm', 209),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '01 - Orchestral', 'Chaos Stairs', NULL, 'Battle! (Aether Foundation)',
   'main', 'newer_vgm', 210),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '03 - Hybrid Sounds', 'Primeval Breath', NULL, 'Lusamine''s Revenge',
   'main', 'newer_vgm', 211),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '04 - Hybrid Instruments', 'Bell Piano', NULL, 'Haina Desert',
   'main', 'newer_vgm', 212),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '05 - Percussion', 'Big Drums 1', NULL, 'The Path to the League',
   'main', 'newer_vgm', 213),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '08 - Smooth', 'Blurred Lament', NULL, 'The Secret Side of Aether Paradise',
   'main', 'newer_vgm', 214),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Sweepy Metal', NULL, 'Aether Paradise, Victory! (Totem Pokémon), Lusamine''s Theme, Battle! (Lusamine), Lusamine''s Madness, Battle! (Team Skull), Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 215),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Trash Storm', NULL, 'Guzma''s Theme',
   'main', 'newer_vgm', 216),

  -- Native Instruments Spotlight Collection: Balinese Gamelan (row 2165)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Balinese Gamelan' COLLATE NOCASE),
   'Concert Pitch', 'CP Core Instruments', NULL, 'Battle! (Tapu)',
   'main', 'newer_vgm', 217),

  -- Native Instruments Spotlight Collection: Cuba (rows 2166-2172)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '1 - Percussion Ensembles', 'Cajon Ensemble', 'C3, C#3 (clave present)', 'Vast Poni Canyon',
   'main', 'newer_vgm', 218),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '1 - Percussion Ensembles', 'Rumba Ensemble', NULL, 'Heahea City (Night)',
   'main', 'newer_vgm', 219),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '1 - Percussion Ensembles', 'Salsa Ensemble', 'C#1 for Masalada Shop, D1 for Wild Battle', 'Battle! (Wild Pokémon), Malasada Shop',
   'main', 'newer_vgm', 220),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '2 - Single Percussion', 'Timbales', NULL, 'Malasada Shop',
   'main', 'newer_vgm', 221),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '4 - Melodic Instruments', 'Bass', NULL, 'Festival Plaza Mission Results, Lively Lillie!, Malasada Shop',
   'main', 'newer_vgm', 222),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '4 - Melodic Instruments', 'Tres', NULL, 'Konikoni City (Night), Malasada Shop',
   'main', 'newer_vgm', 223),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   '4 - Melodic Instruments', 'Trumpet', NULL, 'Malasada Shop, Hau''s Theme, Battle! (Hau)',
   'main', 'newer_vgm', 224),

  -- Native Instruments Spotlight Collection: India (row 2173)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: India' COLLATE NOCASE),
   '2 - Percussion', 'Tabla', NULL, 'Haina Desert',
   'main', 'newer_vgm', 225),

  -- Native Instruments Spotlight Collection: West Africa (rows 2174-2178)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: West Africa' COLLATE NOCASE),
   '1 - Percussion Ensemble (12)', 'Woima', NULL, 'Festival in Iki Town',
   'main', 'newer_vgm', 226),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: West Africa' COLLATE NOCASE),
   '2 - Percussion Ensemble (16)', 'Baga Gine', 'F#1', 'Haina Desert',
   'main', 'newer_vgm', 227),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: West Africa' COLLATE NOCASE),
   '2 - Percussion Ensemble (16)', 'Balakulandian', 'C1', 'Hurry Along!',
   'main', 'newer_vgm', 228),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: West Africa' COLLATE NOCASE),
   '4 - Single Percussion (16)', 'Djembe 1', 'custom loop', 'Battle! (Tapu)',
   'main', 'newer_vgm', 229),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: West Africa' COLLATE NOCASE),
   '4 - Single Percussion (16)', 'Djembe 7', NULL, 'Battle! (Island Kahuna), Trainers'' Eyes Meet (Aether Foundation), Battle! (Aether Foundation), Evolution (Alola), Seafolk Village (Day), The Battle at the Summit!',
   'main', 'newer_vgm', 230),

  -- Native Instruments Studio Drummer (rows 2179-2180)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Studio Drummer' COLLATE NOCASE),
   '-', 'Garage Kit - Full', NULL, 'Battle Royal Dome',
   'main', 'newer_vgm', 231),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Studio Drummer' COLLATE NOCASE),
   '-', 'Session Kit - Full', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 232),

  -- Native Instruments Vintage Organs (row 2181)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Vintage Organs' COLLATE NOCASE),
   '3 - Classic Rock', 'Child In Time', 'Preset 10', 'Heahea City (Day)',
   'main', 'newer_vgm', 233),

  -- Scarbee A-200 (row 2182)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'A-200' COLLATE NOCASE),
   '-', 'Dreamatizer', NULL, 'Nanu''s Theme',
   'main', 'newer_vgm', 234),

  -- Scarbee Jay-Bass (row 2183)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Jay-Bass' COLLATE NOCASE),
   '-', 'Scarbee Jay-Bass - Slap - Both', NULL, 'Burnet''s Lab, Battle Royal Dome, Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 235),

  -- Scarbee Pre-Bass (row 2184)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Pre-Bass' COLLATE NOCASE),
   '-', 'Scarbee Pre-Bass', NULL, 'Route 1 on Melemele Island, Malie City (Day)',
   'main', 'newer_vgm', 236),

  -- Scarbee Pre-Bass Amped (row 2185)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Pre-Bass Amped' COLLATE NOCASE),
   '-', 'Scarbee Pre-Bass - Amped - Deep', NULL, 'Seafolk Village (Day)',
   'main', 'newer_vgm', 237),

  -- Scarbee Rickenbacker Bass (rows 2186-2187)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Rickenbacker Bass' COLLATE NOCASE),
   'Scarbee Rickenbacker Bass', 'Flame', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 238),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Rickenbacker Bass' COLLATE NOCASE),
   'Scarbee Rickenbacker Bass', 'The Raven', NULL, 'Ride Pokémon (Aquatic)',
   'main', 'newer_vgm', 239),

  -- Sound Ideas The General Series 6000 (row 2188)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'LARGE CROWD: STADIUM, GENERAL AMBIENCE', 'CROWD,OUTDOOR', '#6014-39-01', 'Battle! (Battle Royal)',
   'main', 'newer_vgm', 240),

  -- Spectrasonics Heart of Asia (row 2189)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   'Disc 2 -> Track 13', 'Chinese Percussion-Various Drums & Gongs', 'Timestamp 1:15 and 1:32 for the Day version', 'Konikoni City (Day), Konikoni City (Night)',
   'main', 'newer_vgm', 241),

  -- Spectrasonics Omnisphere (rows 2190-2237)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Eighties Bells', NULL, 'The Path to the League',
   'main', 'newer_vgm', 242),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Plucked Airbell', NULL, 'Seafolk Village (both variants)',
   'main', 'newer_vgm', 243),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Percussive Organic', 'Hollow Stones', NULL, 'Konikoni City (Day)',
   'main', 'newer_vgm', 244),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Cross Beat Overdriver', NULL, 'Battle! (Team Skull Admin), Battle! (Aether Foundation)',
   'main', 'newer_vgm', 245),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Floating Aloft Groove', NULL, 'Lusamine''s Theme',
   'main', 'newer_vgm', 246),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Sidechain Gain', NULL, 'Guzma''s Theme, Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 247),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Sky Runner', NULL, 'Malie City (both versions)',
   'main', 'newer_vgm', 248),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Wiggling Bowl Arp', 'alternatively, Vox Bowls', 'Aether Paradise',
   'main', 'newer_vgm', 249),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Astral Visions Musicbox', NULL, 'Battle! (Lusamine)',
   'main', 'newer_vgm', 250),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Celes Bells', NULL, 'Trainers'' School',
   'main', 'newer_vgm', 251),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Glass Vibraphone', NULL, 'Mahalo Trail',
   'main', 'newer_vgm', 252),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Glockenspiel Natural Ambience', NULL, 'Lusamine''s Theme',
   'main', 'newer_vgm', 253),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Distortion', 'Frippy', NULL, 'Team Skull Appears!',
   'main', 'newer_vgm', 254),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Distortion', 'Lovely Guitar Feedback', 'Add Stereo Delay', 'Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 255),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Guitars', 'PRS Lead Guitar a', 'Steinberg Stereo Delay (See Sound Roster)', 'Battle! (Trainer)',
   'main', 'newer_vgm', 256),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Hits and Bits', 'Minora Hit', NULL, 'Guzma''s Theme, Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 257),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Crush Tone Keys', NULL, 'Team Skull Appears!, Battle! (Team Skull Admin), Battle! (Team Skull Boss), Poké Finder Fully Updated!',
   'main', 'newer_vgm', 258),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Dream Glockpiano', NULL, 'Hau''oli City (Day)',
   'main', 'newer_vgm', 259),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Dream Pianoceleste', NULL, 'Iki Town (Day)',
   'main', 'newer_vgm', 260),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Just The Simple Dreamy Piano Again', NULL, 'Po Town',
   'main', 'newer_vgm', 261),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Organic Rhodes Ampy (vib)', NULL, 'Battle! (Team Skull)',
   'main', 'newer_vgm', 262),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Retrophased Organic Rhodes', NULL, 'Trainers'' Eyes Meet (Aether Foundation)',
   'main', 'newer_vgm', 263),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Tack Piano Harpsichord', NULL, 'Aether Paradise',
   'main', 'newer_vgm', 264),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Adagio Expressivo', NULL, 'Aether Paradise',
   'main', 'newer_vgm', 265),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Platinum Sky', NULL, 'Aether Paradise',
   'main', 'newer_vgm', 266),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Cryogenic Freeze', NULL, 'Po Town, Seaward Cave',
   'main', 'newer_vgm', 267),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Wobble Top Pad', NULL, 'Mahalo Trail',
   'main', 'newer_vgm', 268),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Retro Land', 'Stone Mill Tuned Noise', NULL, 'The Protector of the Island',
   'main', 'newer_vgm', 269),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Bleachbro Bass 1', 'velocities ~100', 'Trainer''s Eyes Meet (Trainer)',
   'main', 'newer_vgm', 270),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Burned Wasp Bass 1', NULL, 'Battle! (Team Skull)',
   'main', 'newer_vgm', 271),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Fat Cat Bass', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 272),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Dipthong 1', NULL, 'Team Skull Appears!',
   'main', 'newer_vgm', 273),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Grinder Lead', NULL, 'Battle! (Team Skull), Battle! (Team Skull Boss), Guzma''s Theme',
   'main', 'newer_vgm', 274),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Soaring Edge Lead', NULL, 'Showdown! (Lusamine)',
   'main', 'newer_vgm', 275),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Soaring Triangle Lead Unison', NULL, 'Aether Paradise',
   'main', 'newer_vgm', 276),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Square Blippies', NULL, 'Seaward Cave',
   'main', 'newer_vgm', 277),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Maverick Reso Sine', NULL, 'Victory! (Trainer)',
   'main', 'newer_vgm', 278),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Analog Octaphonix', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 279),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Apocalypse Electrodrone', NULL, 'Battle! (Lusamine)',
   'main', 'newer_vgm', 280),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Brainsalad Modular', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 281),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Compressed Supersawz', NULL, 'Battle! (Team Skull), Battle! (Team Skull Admin), Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 282),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Epic Trance Comber 2', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 283),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Flashback Eighties Poly', 'Layered with Cross Beat Overdrive, phaser added', 'Battle! (Aether Foundation)',
   'main', 'newer_vgm', 284),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Progressive Attitude', NULL, 'Showdown! (Lusamine)',
   'main', 'newer_vgm', 285),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Skinny Crush Anthem', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 286),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Short', 'Little Square Particles', NULL, 'Trainers'' School',
   'main', 'newer_vgm', 287),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Textures Playable', 'Reversed Music Box', NULL, 'Aether Paradise Labs',
   'main', 'newer_vgm', 288),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Textures Soundscape', 'Evaporating Crystals Drifting', NULL, 'Seaward Cave',
   'main', 'newer_vgm', 289),

  -- Spectrasonics Stylus RMX (rows 2238-2268)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 55-Phew and Phar', '55-Phew & Phar d', NULL, 'Ten Carat Hill',
   'main', 'newer_vgm', 290),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 67-Crenshaw', '67-Crenshaw a', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 291),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 68-Candygram', '68-Candygram', NULL, 'Gladion''s Theme',
   'main', 'newer_vgm', 292),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 75-Plate', '75-Plate tamb 2', NULL, 'Steely Lillie',
   'main', 'newer_vgm', 293),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 160-DrumNbeat', '160-DrumNbeat a', 'Pitch +1', 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 294),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Tambourines', '92-Tambourine', NULL, 'On the Ship',
   'main', 'newer_vgm', 295),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 68-Small Blocks', '68-Small Blocks Bending Bass', NULL, 'Trade',
   'main', 'newer_vgm', 296),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 70-Datalife', '70-Datalife BoomSnr', NULL, 'Ferry Terminal',
   'main', 'newer_vgm', 297),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 70-Datalife', '70-Datalife Rimbo', NULL, 'Ferry Terminal',
   'main', 'newer_vgm', 298),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Bossa Love', '79-BossaLuv Combo a', NULL, 'Iki Town (Day)',
   'main', 'newer_vgm', 299),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Bossa Love', '79-BossaLuv Kick', NULL, 'Poké Pelago (Day)',
   'main', 'newer_vgm', 300),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Bossa Love', '79-BossaLuv Vinyl Mix', NULL, 'Poké Pelago (Day)',
   'main', 'newer_vgm', 301),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 80-Space Ranger', '80-Space Ranger S+H', NULL, 'Pokemon League',
   'main', 'newer_vgm', 302),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 86-Hoops', '86-Hoops Beat', NULL, 'Nanu''s Theme',
   'main', 'newer_vgm', 303),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Beat Bastard', '90-Beat Bastard Bash Drms', NULL, 'Battle! (Team Skull)',
   'main', 'newer_vgm', 304),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 94-Banzai', '94-Banzai Scratches', NULL, 'Team Skull Appears!',
   'main', 'newer_vgm', 305),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 94-Sentry Alert', '94-Sentry Alert Anvil', NULL, 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 306),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 94-Space Train', '94-Space Train Engine', NULL, 'Trainers'' Eyes Meet (Aether Foundation)',
   'main', 'newer_vgm', 307),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 94-Space Train', '94-Space Train Tracks', NULL, 'Aether Paradise',
   'main', 'newer_vgm', 308),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 100-Boney', '100-Boney c', 'Loop is manually edited', 'Aether House',
   'main', 'newer_vgm', 309),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 101-Poison', '101-Poison Combo c', NULL, 'Malie City (Day)',
   'main', 'newer_vgm', 310),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 120-Notre Dame', '120-Notre Dame Silver', NULL, 'Lusamine''s Theme',
   'main', 'newer_vgm', 311),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Pink Panther', '125-Pink Panther Kick', 'loop has an extra kick added in at one point', 'Welcome to the Hall of Fame!',
   'main', 'newer_vgm', 312),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Pink Panther', '125-Pink Panther No Kick b', NULL, 'Welcome to the Hall of Fame!',
   'main', 'newer_vgm', 313),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 133-Fritz', '133-Fritz Combo', NULL, 'On the Ship',
   'main', 'newer_vgm', 314),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 134-Matrix', '134-Matrix Beat 2', NULL, 'Battle! (Battle Royal)',
   'main', 'newer_vgm', 315),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 134-Matrix', '134-Matrix Power Lines', NULL, 'Battle! (Battle Royal)',
   'main', 'newer_vgm', 316),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Centrifuge', '135-Centrifuge HiHatShake', NULL, 'Escape!',
   'main', 'newer_vgm', 317),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Squashed', '135-Squashed Tonal Slices', NULL, 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 318),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 151-Growl', '151-Growl No Kick', NULL, 'Trainers'' Eyes Meet (Trainer)',
   'main', 'newer_vgm', 319),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 160-Find The Exit', '160-Find The Exit Combo', 'Edit loop and also use for percussive hits', 'An Adventure Is Beginning, Alola Region Theme',
   'main', 'newer_vgm', 320),

  -- Spectrasonics Trilian (rows 2269-2270)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'ARP + BPM', 'Chewing Plastic 2', NULL, 'The Secret Side of Aether Paradise',
   'main', 'newer_vgm', 321),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'ARP + BPM', 'Patch Me an Intelligent Robot 1', NULL, 'Battle! (Aether Foundation), Aether Paradise Labs, Secret Side of Aether Paradise',
   'main', 'newer_vgm', 322),

  -- Steinberg HALion 4 (row 2271)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Trance Synth', 'reverb + EQ required', 'Battle! (Elite Four)',
   'main', 'newer_vgm', 323),

  -- Steinberg HALion Sonic (rows 2272-2283)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '5th Avenue', 'High modulation, turn down Delay Mix', 'A Captain''s Trial Begins!',
   'main', 'newer_vgm', 324),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '60s Groove', NULL, 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 325),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '80s Seq Bass', 'requires internal amp from HALion', 'Battle! (Elite Four)',
   'main', 'newer_vgm', 326),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Ac Piano+DX', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 327),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bass Pedals', NULL, 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 328),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Distorted Kit', NULL, 'Battle! (Trainer), Battle! (Tapu)',
   'main', 'newer_vgm', 329),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'SimpleDrawbars', 'add compressor', 'Trainers'' School',
   'main', 'newer_vgm', 330),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Tango Accordion 1', NULL, 'Acerola''s Trial',
   'main', 'newer_vgm', 331),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'The Knife', 'Each layer is separate instead of polyphonic', 'Battle! (Tapu)',
   'main', 'newer_vgm', 332),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'TM 809', NULL, 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 333),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Wave Stack Piano', NULL, 'Battle! (Tapu)',
   'main', 'newer_vgm', 334),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'Voltage Set', 'Vintage Tacky', NULL, 'Showdown! (Lusamine)',
   'main', 'newer_vgm', 335),

  -- Steinberg HALion Sonic 2 (row 2284)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'B-Box Set', 'D&B Fever 03 - 170', 'Cymbals and Drums used, use as kit', 'Battle! (Elite Four)',
   'main', 'newer_vgm', 336),

  -- Steinberg HALion Sonic SE (rows 2285-2321)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'All Kick Drums', 'Elite Four: D#3', 'Battle! (Elite Four), Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 337),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Balinese Gamelan', 'velocities 30 and below. add autopan', 'Have a Break At The Café',
   'main', 'newer_vgm', 338),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Dyno E-Piano', NULL, 'Ride Pokémon (Aquatic)',
   'main', 'newer_vgm', 339),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Finest Lead', NULL, 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 340),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'House Kit 1', 'Crash cymbals, analog snares and kick', 'Battle! (Trainer)',
   'main', 'newer_vgm', 341),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Orchestral Hits', NULL, 'Battle Royal Dome',
   'main', 'newer_vgm', 342),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Sub Boom Bass', 'Pitch bend used', 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 343),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'T9 Analog Kit', NULL, 'Battle! (Trainer), Battle! (Elite Four), Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 344),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Tutti Concert Organ', 'Uses HALion''s internal distortion effect', 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 345),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 010] Glockenspiel', NULL, 'Hau''s Theme',
   'main', 'newer_vgm', 346),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 011] Music Box', NULL, 'Lillie''s Theme, Staff Credits',
   'main', 'newer_vgm', 347),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 013] Marimba', NULL, 'Poké Pelago (Day), Poké Pelago (Night)',
   'main', 'newer_vgm', 348),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 022] Accordion', NULL, 'Lillie''s Theme',
   'main', 'newer_vgm', 349),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 036] Fretless Bass', 'Pitchbend range 12', 'Konikoni City (Day)',
   'main', 'newer_vgm', 350),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 038] Slap Bass 2', NULL, 'Battle! (Battle Royal), Battle Royal Results',
   'main', 'newer_vgm', 351),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', NULL, 'Battle! (Wild Pokémon), Battle! (Tapu)',
   'main', 'newer_vgm', 352),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Battle! (Totem Pokémon), Battle! (Wild Pokémon), Professor Kukui''s Theme, The Pokémon Center, Recovery',
   'main', 'newer_vgm', 353),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 050] String Ensemble 2', NULL, 'Heahea City (Night), Poké Pelago (Day), Poké Pelago (Night)',
   'main', 'newer_vgm', 354),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 056] Orchestra Hit', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 355),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 062] Brass Section', NULL, 'Battle! (Tapu)',
   'main', 'newer_vgm', 356),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 063] Synth Brass 1', NULL, 'Ride Pokémon (Aquatic)',
   'main', 'newer_vgm', 357),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 074] Flute', NULL, 'Poké Pelago (Day)',
   'main', 'newer_vgm', 358),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 075] Recorder', NULL, 'Route 1 on Melemele Island, Battle! (Hau), Hau''s Theme, Poké Pelago (Night)',
   'main', 'newer_vgm', 359),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 081] Lead 1 (Square)', NULL, 'Poké Pelago (Day), Thrifty Megamart, Ride Pokémon (Aquatic)',
   'main', 'newer_vgm', 360),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 105] Sitar', NULL, 'Malie City (Day)',
   'main', 'newer_vgm', 361),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 113] Tinkle Bell', NULL, 'Lillie''s Theme, Staff Credits',
   'main', 'newer_vgm', 362),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 120] Reverse Cymbal', NULL, 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 363),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 133] R&B Kit', NULL, 'Battle! (Hau), Battle! (Wild Pokémon), Battle! (Totem Pokémon)',
   'main', 'newer_vgm', 364),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 135] Tekno Kit', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 365),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Hybrid Set', 'Abyssal Girls Choir', NULL, 'Poké Pelago (Day)',
   'main', 'newer_vgm', 366),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Arctic Piano', NULL, 'Poké Pelago (Night)',
   'main', 'newer_vgm', 367),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Dance Kicks', 'A3', 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 368),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Distortion Guitar VX', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 369),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Trancer Dancer', NULL, 'Battle! (Trainer), Battle! (Elite Four)',
   'main', 'newer_vgm', 370),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Piano And Pad', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 371),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Vintage Mk I', 'plays the intro arp. add distortion', 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 372),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Trip Set', 'Digiride', NULL, 'Battle! (Solgaleo/Lunala)',
   'main', 'newer_vgm', 373),

  -- Steinberg Retrologue (row 2322)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Retrologue' COLLATE NOCASE),
   'Factory -> Synth Lead', 'Become Lucky', 'modulation for resonance. increase glide', 'Ultra Space',
   'main', 'newer_vgm', 374),

  -- Synthogy Ivory II (row 2323)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Synthogy' COLLATE NOCASE AND p.name = 'Ivory II' COLLATE NOCASE),
   'German D', 'German Concert D II', NULL, 'Escape!',
   'main', 'newer_vgm', 375),

  -- Toontrack EZdrummer (row 2324)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer' COLLATE NOCASE),
   'Pop/Rock EZX', 'Default Kit', NULL, 'Blue''s Theme, An Encounter',
   'main', 'newer_vgm', 376),

  -- Ueberschall Jam Box (row 2325)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Jam Box' COLLATE NOCASE),
   'Partition A -> D HOUSE LOOP', 'FULLHOUSE120', '16HOUSE120, 19HOUSE120', 'Guzma''s Theme',
   'main', 'newer_vgm', 377),

  -- UVI PlugSound Pro (01-Keyboards) (rows 2326-2338)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Acoustic Grand Piano', NULL, 'Battle! (Wild Pokémon), Heahea City (Night), Lively Lillie!, Ride Pokémon (Aquatic), Royal Avenue, Ten Carat Hill, Route 10 on Ula''ula Island, Lonely Lillie',
   'main', 'newer_vgm', 378),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Rock Piano', NULL, 'Battle! (Island Kahuna)',
   'main', 'newer_vgm', 379),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 02-Jazz Piano', 'Acoustic Jazz Piano', NULL, 'Konikoni City (Night), Battle! (Hau)',
   'main', 'newer_vgm', 380),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '02-Electric Pianos -> 01-Classic EP', 'A Suitcase Tremolo', NULL, 'Royal Avenue',
   'main', 'newer_vgm', 381),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '02-Electric Pianos -> 02-Wurlis area', 'Wibratzer', NULL, 'Konikoni City (Day)',
   'main', 'newer_vgm', 382),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '02-Electric Pianos -> 03-Electric CP', '70''s CP Very Old', 'With a telephone filter and high eq boost', 'The Pokémon Center',
   'main', 'newer_vgm', 383),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '03-Harpsichords & co', 'Harpsichord 16+8', NULL, 'Registered a Ride Pokémon!',
   'main', 'newer_vgm', 384),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 01-High End Organs', 'Full Organ slow', NULL, 'Battle! (Battle Royal), Battle Royal Results',
   'main', 'newer_vgm', 385),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 01-High End Organs', 'The H 1', NULL, 'Battle! (Gladion)',
   'main', 'newer_vgm', 386),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 02-Medium Organs', 'M hundred', 'Main melody, played in octaves', 'The Pokémon Center',
   'main', 'newer_vgm', 387),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 02-Medium Organs', 'M hundred rock', 'background melody + chords', 'The Pokémon Center',
   'main', 'newer_vgm', 388),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08-Mallets & co', 'Celesta', NULL, 'Battle! (Wild Pokémon), Battle! (Gladion), A Captain''s Trial Begins!, The Pokémon Center',
   'main', 'newer_vgm', 389),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '09-Synth Keyboards -> 04-Wurli''s', 'EP Wurly 5', NULL, 'Konikoni City (Night)',
   'main', 'newer_vgm', 390),

  -- UVI PlugSound Pro (02-Fretted) (rows 2339-2340)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '03-Acoustic Bass -> 01-Jazzistic Bass', 'Jazz Double Bass', NULL, 'Festival Plaza (Night)',
   'main', 'newer_vgm', 391),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '03-Acoustic Bass -> 02-Double Bass', 'AcousticBass', NULL, 'Heahea City (Night)',
   'main', 'newer_vgm', 392),

  -- UVI PlugSound Pro (03-Drums and Percs) (rows 2341-2345)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '03-Stylistic Kits -> 01-Dance Kits', 'Dance Kit 01', NULL, 'Battle! (Hau)',
   'main', 'newer_vgm', 393),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '05-Percussions -> Percs Kits A-L', 'Belltree', 'B5', 'The Battle Tree',
   'main', 'newer_vgm', 394),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '06-Complete GM kits', '1-GM Standard', 'Triangle + Bell', 'Heahea City (Night)',
   'main', 'newer_vgm', 395),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '06-Complete GM kits', '3-GM Power', NULL, 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 396),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '06-Complete GM kits', '5-GM Analog', NULL, 'Battle! (Tapu)',
   'main', 'newer_vgm', 397),

  -- UVI PlugSound Pro (04-Synths and co) (rows 2346-2367)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '01-Composite', 'Rockin''', NULL, 'Ten Carat Hill, Hall of Fame, The Zygarde Cube',
   'main', 'newer_vgm', 398),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '01-Composite', 'Zephyra', NULL, 'Hall of Fame',
   'main', 'newer_vgm', 399),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '02-Voices-Flutes -> Flutes', 'Bottle Hit', NULL, 'Ten Carat Hill',
   'main', 'newer_vgm', 400),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '02-Voices-Flutes -> Flutes', 'Mallet', NULL, 'Vast Poni Canyon',
   'main', 'newer_vgm', 401),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '02-Voices-Flutes -> Voices', 'Tambo Vox', NULL, 'Ten Carat Hill',
   'main', 'newer_vgm', 402),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> Acid', 'Pills', 'octaved during sequence before loop', 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 403),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> R''n B - Funk', 'Elastik', NULL, 'Ferry Terminal',
   'main', 'newer_vgm', 404),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '06-Filter Sweeps', 'Morphing Wave', NULL, 'Royal Avenue',
   'main', 'newer_vgm', 405),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '07-Analog Brass', 'Analog Brass 3', NULL, 'Battle! (Gladion), Battle! (Battle Royal)',
   'main', 'newer_vgm', 406),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '07-Analog Brass', 'Brass Lead', NULL, 'Royal Avenue',
   'main', 'newer_vgm', 407),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '07-Analog Brass', 'Brassy', NULL, 'Konikoni City (Night)',
   'main', 'newer_vgm', 408),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '07-Analog Brass', 'Forty Brass', NULL, 'Battle! (Gladion)',
   'main', 'newer_vgm', 409),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '08-Synth Lead -> Analog', 'Trianon', NULL, 'A New Shop Is Open at Festival Plaza!, Level Up at Festival Plaza',
   'main', 'newer_vgm', 410),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Organs', 'B Like', NULL, 'Hall of Fame',
   'main', 'newer_vgm', 411),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Organs', 'Circle Organ', NULL, 'On the Ship',
   'main', 'newer_vgm', 412),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Brezily', NULL, 'On the Ship',
   'main', 'newer_vgm', 413),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Grunge one', NULL, 'Trade',
   'main', 'newer_vgm', 414),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '09-Keys -> Piano Like', 'Island Piano', NULL, 'Ferry Terminal, Heahea City (Night), Have a Break At The Café',
   'main', 'newer_vgm', 415),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '10-Texture-FX', 'Bendoid', NULL, 'Burnet''s Lab, Registered a Ride Pokémon!',
   'main', 'newer_vgm', 416),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '10-Texture-FX', 'Fly High', NULL, 'Trade',
   'main', 'newer_vgm', 417),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '10-Texture-FX', 'Resobab', NULL, 'Ten Carat Hill',
   'main', 'newer_vgm', 418),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '11-Short-Rezo -> Rezo ', 'Hair Pes', 'velocities = 100 ', 'Ferry Terminal',
   'main', 'newer_vgm', 419),

  -- UVI PlugSound Pro (05-General MIDI) (rows 2368-2381)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '01-Piano', '05-Electric Piano 1', NULL, 'Have a Break At The Café',
   'main', 'newer_vgm', 420),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '01-Piano', '06-Electric Piano 2', NULL, 'Have a Break At The Café',
   'main', 'newer_vgm', 421),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '10-Glockenspiel', NULL, 'Battle! (Hau)',
   'main', 'newer_vgm', 422),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '12-Vibraphone', NULL, 'Lively Lillie!, Thrifty Megamart',
   'main', 'newer_vgm', 423),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '15-Tubular Bells', NULL, 'Battle! (Totem Pokémon), Festival Plaza (Day), Ride Pokémon (Land), The Battle Tree',
   'main', 'newer_vgm', 424),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '34-Electric Bass 1', NULL, 'On the Ship, Nanu''s Theme',
   'main', 'newer_vgm', 425),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '35-Electric Bass 2', NULL, 'Hau''s Theme, Battle! (Hau)',
   'main', 'newer_vgm', 426),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '39-Synth Bass 1', NULL, 'Battle! (Totem Pokémon), Registered a Ride Pokémon!, Royal Avenue, Ten Carat Hill, Trade, A Mission at Festival Plaza!',
   'main', 'newer_vgm', 427),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '40-Synth Bass 2', NULL, 'Battle! (Battle Royal), Have a Break At The Café, Evolution',
   'main', 'newer_vgm', 428),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '07-Ensemble', '49-Strings Ensemble 1', 'Higher velocity = staccato', 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 429),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '07-Ensemble', '56-Orchestra Hit', NULL, 'Thrifty Megamart, Sophocles'' Trial',
   'main', 'newer_vgm', 430),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '08-Brass', '63-Synth Brass 1', NULL, 'Lively Lillie!',
   'main', 'newer_vgm', 431),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '15-Percussive', '120-Reverse Cymbal', NULL, 'Poké Pelago (Day)',
   'main', 'newer_vgm', 432),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '16-Sound Effects', '125-Telephone Ring', NULL, 'Konikoni City (Night)',
   'main', 'newer_vgm', 433),

  -- UVI PlugSound Pro (06-Orchestral) (rows 2382-2384)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Strings Ensemble', 'All Strings sus', NULL, 'Vast Poni Canyon',
   'main', 'newer_vgm', 434),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Voices', 'Childrens Ahs sus', NULL, 'The Battle at the Summit!',
   'main', 'newer_vgm', 435),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Voices', 'Childrens Ihs sus', NULL, 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 436),

  -- UVI PlugSound Pro (Loops) (rows 2385-2386)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Hiphop & RnB -> Funky Mood', '092-F.Mood Beat 4', NULL, 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 437),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Vocals -> Natural Words', 'A-My Darling', 'play notes on piano roll', 'Festival Plaza Mission Results',
   'main', 'newer_vgm', 438),

  -- Vienna Symphonic Library Special Edition Vol. 1 (rows 2387-2400)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 01 Solo strings', '01S Solo violin', NULL, 'Ancient Poni Path, The Battle Tree, Paniola Town (Day)',
   'main', 'newer_vgm', 439),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '23S Strings cellos', NULL, 'Battle! (Island Kahuna)',
   'main', 'newer_vgm', 440),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '24S Strings basses', NULL, 'Battle! (Island Kahuna)',
   'main', 'newer_vgm', 441),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '21S Strings violins', 'Melody @ 01:08', 'The Battle at the Summit!',
   'main', 'newer_vgm', 442),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 05 Harp', '041S Harp', NULL, 'Ancient Poni Path, Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 443),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 12 Oboes', '11S Oboe french', NULL, 'The Battle at the Summit!',
   'main', 'newer_vgm', 444),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 12 Oboes', '14S English Horn', NULL, 'Route 10 on Ula''ula Island',
   'main', 'newer_vgm', 445),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 13 Clarinets', '22S Clarinet Bb', NULL, 'Battle! (Island Kahuna)',
   'main', 'newer_vgm', 446),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 21 Horns', '03S Horn ensemble - a4', NULL, 'Battle! (Island Kahuna), Battle! (Totem Pokémon), Konikoni City (Day), Route 10 on Ula''ula Island',
   'main', 'newer_vgm', 447),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '12S Trumpet C', NULL, 'Heahea City (both versions), Paniola Town (Day)',
   'main', 'newer_vgm', 448),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '08S Marimbaphone', NULL, 'Battle! (Wild Pokémon), The Pokémon Research Lab',
   'main', 'newer_vgm', 449),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '06S Xylophone', NULL, 'Battle! (Island Kahuna), Battle! (Wild Pokémon), Konikoni City (Day), Route 10 on Ula''ula Island',
   'main', 'newer_vgm', 450),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '11S Timpani', NULL, 'Battle! (Totem Pokémon), Title Screen, The Battle at the Summit!',
   'main', 'newer_vgm', 451),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '14S Percussion', 'Chimes', 'Special Demo Version Movie, Battle! (Island Kahuna)',
   'main', 'newer_vgm', 452),

  -- Vienna Symphonic Library Special Edition Vol. 2 (row 2401)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 02 Chamber strings', '15S Chm violins+violins-8va', 'worth checking again', 'Route 10 on Ula''ula Island',
   'main', 'newer_vgm', 453),

  -- Vienna Symphonic Library Vienna Imperial (rows 2402-2403)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Vienna Imperial' COLLATE NOCASE),
   'Factory Presets', '02 Player Position Default', NULL, 'Battle! (Aether Foundation), Trainers'' Eyes Meet! (Aether Foundation), Battle! (Lusamine), Lusamine''s Theme, Lonely Lillie',
   'main', 'newer_vgm', 454),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Vienna Imperial' COLLATE NOCASE),
   'Factory Presets', '03 Distant Position Default', NULL, 'Aether Paradise, Showdown! (Lusamine)',
   'main', 'newer_vgm', 455),

  -- Vir2 Electri6ity (rows 2404-2405)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Stratocaster Amped', NULL, 'Professor Kukui''s Theme',
   'main', 'newer_vgm', 456),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Les Paul Amped', 'See note', 'Blue''s Theme, A Captain''s Trial Begins!, Battle! (Gladion), Gladion''s Theme, Battle! (Ultra Beast)',
   'main', 'newer_vgm', 457),

  -- XLN Audio Addictive Drums (rows 2406-2428)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Bread''n''Butter Beat 01', '8th HH Sidestick', 'Occasional slight variations on hats etc.', 'Festival Plaza Mission Results',
   'main', 'newer_vgm', 458),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Bread''n''Butter Beat 07', '8th HH Sidestick', 'Occasional slight variations on hats etc.', 'Festival Plaza Mission Results',
   'main', 'newer_vgm', 459),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Bundle - Funk Groove', 'Funk Groove 002', NULL, 'Have a Break At The Café',
   'main', 'newer_vgm', 460),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Bundle - Funk Groove', 'Funk Groove 003', NULL, 'Royal Avenue',
   'main', 'newer_vgm', 461),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Bundle - Funk Groove', 'Funk Groove 011', NULL, 'Royal Avenue',
   'main', 'newer_vgm', 462),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Bundle - Jazz Beat', 'Jazz Beat 002', NULL, 'Festival Plaza (Night)',
   'main', 'newer_vgm', 463),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Bundle - Reggae Groove', 'Reggae Groove 006', NULL, 'The Pokémon Research Lab',
   'main', 'newer_vgm', 464),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Funk Fill L-2', 'Funk Fill L-2 08', NULL, 'Royal Avenue',
   'main', 'newer_vgm', 465),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Funk Fill L-4', 'Funk Fill L-4 04', NULL, 'Ten Carat Hill',
   'main', 'newer_vgm', 466),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Funk Straight Beat 01', '16 HH Only', NULL, 'Ten Carat Hill',
   'main', 'newer_vgm', 467),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Hard Rock Fill L-3', 'Hard Rock Fill L-3 14', NULL, 'Battle Royal Results',
   'main', 'newer_vgm', 468),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 001 -  Rock', 'Song 001 -  Rock (All)', NULL, 'Battle! (Battle Royale)',
   'main', 'newer_vgm', 469),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 008 - Funky Groove', 'Song 008 - Funky Groove (All)', NULL, 'Burnet''s Lab',
   'main', 'newer_vgm', 470),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 021 - Jazz Beat', 'Song 021 - Jazz Beat (Chorus)', NULL, 'Festival Plaza (Night)',
   'main', 'newer_vgm', 471),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 024 - Progressive Rock', 'Song 024 - Progressive Rock (Bridge)', NULL, 'Thrifty Megamart, Ten Carat Hill',
   'main', 'newer_vgm', 472),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 025 - Pop Rock', 'Song 025 - Pop Rock (All)', NULL, 'Evolution',
   'main', 'newer_vgm', 473),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Straight Beat 03', '16th HH Closed (Clean)', 'Occasional slight variations on hats etc.', 'Vast Poni Canyon',
   'main', 'newer_vgm', 474),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Straight Beat 13', '16th Ride (Clean)', 'Occasional slight variations on hats etc.', 'Vast Poni Canyon',
   'main', 'newer_vgm', 475),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Clean', 'DW Kit', NULL, 'Vast Poni Canyon, Pokémon Ride (Land), Poké Pelago (Night), Thrifty Megamart',
   'main', 'newer_vgm', 476),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Dry)', '70''s Kit', 'additional room reverb', 'Heahea City (Day)',
   'main', 'newer_vgm', 477),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', 'mix/EQ drum elements separately if ichinose', 'Battle! (Wild Pokémon), Battle! (Totem Pokémon), Battle! (Hau), Battle Royale, Battle! (Island Kahuna), Ride Pokémon (Aquatic), Festival Plaza, Staff Credits, Victory! (Totem Pokémon), etc.',
   'main', 'newer_vgm', 478),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Vintage', 'Funky Drummer RD', NULL, 'Burnet''s Lab',
   'main', 'newer_vgm', 479),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Vintage', 'Funky-Pants', NULL, 'Have a Break At The Café',
   'main', 'newer_vgm', 480),

  -- Zero-G Chemical Beats (row 2429)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Chemical Beats' COLLATE NOCASE),
   'FX Loops-096', '096-FX Loop 05', NULL, 'Battle! (Ultra Beast)',
   'main', 'newer_vgm', 481),

  -- Zero-G Creative Essentials Vol. 30 Orchestral Flavours (rows 2430-2432)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_01', 'Orchestra hit (minor)', 'A Totem Pokémon Appears!, Battle! (Totem Pokémon)',
   'main', 'newer_vgm', 482),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 04', '30_04_07', 'Orchestra hit (diminished, ff)', 'A Totem Pokémon Appears!',
   'main', 'newer_vgm', 483),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 04', '30_04_08', 'Orchestra hit (diminished, pp)', 'A Totem Pokémon Appears!',
   'main', 'newer_vgm', 484),

  -- Zero-G Escape from the Planet of the Breaks (rows 2433-2446)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Iron Mann 084', 'IM-Full-1-C#', NULL, 'Team Skull Appears!',
   'main', 'newer_vgm', 485),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Iron Mann 084', 'IM-Full End-C#', NULL, 'Team Skull Appears!',
   'main', 'newer_vgm', 486),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Sex Rodeo 075', 'SR-Drums 1', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 487),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Sex Rodeo 075', 'SR-Drums 3', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 488),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Sex Rodeo 075', 'SR-Drums 5', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 489),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Sex Rodeo 075', 'SR-Drums 6', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 490),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Sex Rodeo 075', 'SR-Full 3-A#', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 491),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Sex Rodeo 075', 'SR-Harmonic 1-A#', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 492),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Screaming Fonk Demon 101', 'SFD - Drums 1', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 493),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Screaming Fonk Demon 101', 'SFD - Drums 2', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 494),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Screaming Fonk Demon 101', 'SFD-Harmonic 2-D', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 495),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Screaming Fonk Demon 101', 'SFD-Harmonic 6-D', NULL, 'Battle! (Team Skull Admin)',
   'main', 'newer_vgm', 496),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Sticky Nutz 105', 'SN-Full 1-G', NULL, 'Team Skull Appears!',
   'main', 'newer_vgm', 497),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Spoon Fed Shortie', 'SFS-Full 5-C', NULL, 'Battle! (Team Skull), Trainers'' Eyes Meet (Team Skull)',
   'main', 'newer_vgm', 498),

  -- Zero-G N.Y. CUTZ vol. 2 - Off Da Hook (rows 2447-2449)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'N.Y. CUTZ vol. 2 - Off Da Hook' COLLATE NOCASE),
   'Instruments > Bits n Pieces', 'Yeah Lo', NULL, 'Trainers'' Eyes Meet (Team Skull), Battle! (Team Skull)',
   'main', 'newer_vgm', 499),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'N.Y. CUTZ vol. 2 - Off Da Hook' COLLATE NOCASE),
   'Groove Loops > Background Loops', '089-Snapcracklepop', 'Should be sped up with flex editing', 'Battle! (Team Skull Boss)',
   'main', 'newer_vgm', 500),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'N.Y. CUTZ vol. 2 - Off Da Hook' COLLATE NOCASE),
   '2fers > 088 - Steel Hop', 'Steel Hop Guitar - A', NULL, 'Follow Me!',
   'main', 'newer_vgm', 501),

  -- Zero-G Phantom Horns (rows 2450-2451)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Phantom Horns' COLLATE NOCASE),
   'SOLOS > TRUMPET SOLO', 'T16', NULL, 'The Secret Side of Aether Paradise',
   'main', 'newer_vgm', 502),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Phantom Horns' COLLATE NOCASE),
   'SOLOS > TRUMPET SOLO', 'T17', NULL, 'The Secret Side of Aether Paradise',
   'main', 'newer_vgm', 503),

  -- Zero-G Planet of the Breaks (rows 2452-2454)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Planet of the Breaks' COLLATE NOCASE),
   '-', '60 SWEET SIXTEEN-84 bpm a', NULL, 'The Secret Side of Aether Paradise',
   'main', 'newer_vgm', 504),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Planet of the Breaks' COLLATE NOCASE),
   '-', '60 SWEET SIXTEEN-84 bpm e', NULL, 'The Secret Side of Aether Paradise',
   'main', 'newer_vgm', 505),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Planet of the Breaks' COLLATE NOCASE),
   '-', '60 SWEET SIXTEEN-84 bpm f', NULL, 'The Secret Side of Aether Paradise',
   'main', 'newer_vgm', 506),

  -- Zero-G Total Funk (rows 2455-2456)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   'Flutes -> Flute FX And Riffs', 'Fluttery Echo G2', NULL, 'The Secret Side of Aether Paradise',
   'main', 'newer_vgm', 507),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   'Flutes -> Flute FX And Riffs', 'Fluster Echo D2', NULL, 'The Secret Side of Aether Paradise',
   'main', 'newer_vgm', 508),

  -- Zero-G World Pack (row 2457)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'World Pack' COLLATE NOCASE),
   'Bonus Loops from ProPack -> Spices of India -> Balti Vox', 'Balti Vox 120 01', NULL, 'Kiawe''s Trial',
   'main', 'newer_vgm', 509),

  -- Stuff to Find (rows 2459-2517) -> stuff_to_find
  -- Row 2459: Arturia,? — uncertain product, use KORG/Unknown style: manufacturer Arturia + product Unknown
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'could be used for Masuda''s songs (raw source: Arturia / ?)', 'Battle! (Solgaleo/Lunala), Battle! (Elite Four)',
   'stuff_to_find', 'newer_vgm', 510),

  -- Row 2460: Best Service, ProSamples Vol. 55 - Retro Sampler
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'Partition B -> DRUMCOMPUTER -> YAMAHA R5+RX7', '55p-drm19-f#2', NULL, 'Konikoni City (Night)',
   'stuff_to_find', 'newer_vgm', 511),

  -- Row 2461: Cinematic Studio Series, Cinematic Strings 2
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinematic Studio Series' COLLATE NOCASE AND p.name = 'Cinematic Strings 2' COLLATE NOCASE),
   NULL, NULL, 'i think?', 'Battle! (Battle Tree Boss)',
   'stuff_to_find', 'newer_vgm', 512),

  -- Row 2462: EastWest Goliath, Stormdrone MOD -> 4 way high morphs, Hellrunner (Hi)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Stormdrone MOD -> 4 way high morphs', 'Hellrunner (Hi)', NULL, 'Lusamine''s Madness',
   'stuff_to_find', 'newer_vgm', 513),

  -- Row 2463: EastWest Symphonic Orchestra, Perc -> Metals, Celesta
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Celesta', 'maybe', 'Iki Town',
   'stuff_to_find', 'newer_vgm', 514),

  -- Row 2464: EastWest Symphonic Orchestra, Brass -> 4 Trombones (no preset)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones', NULL, NULL, 'Battle! (Elite Four)',
   'stuff_to_find', 'newer_vgm', 515),

  -- Row 2465: EastWest Symphonic Orchestra, Woodwinds (no preset)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds', NULL, 'flute arp (with flanger+autopan)', 'Battle! (Elite Four)',
   'stuff_to_find', 'newer_vgm', 516),

  -- Row 2466: e-instruments Session Horns Pro, Brass Section - Keyswitch
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'e-instruments' COLLATE NOCASE AND p.name = 'Session Horns Pro' COLLATE NOCASE),
   'Brass Section - Keyswitch', NULL, 'please find the presets', 'Battle! (Battle Royal), Hau''s Theme, Lively Lillie!, Hall of Fame',
   'stuff_to_find', 'newer_vgm', 517),

  -- Row 2467: Impact Soundworks, Shreddage
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Impact Soundworks' COLLATE NOCASE AND p.name = 'Shreddage' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (Aether Foundation)',
   'stuff_to_find', 'newer_vgm', 518),

  -- Row 2468: Kaeru Cafe, Treasure in Japan Vol. 3
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   NULL, NULL, 'Additional elements', 'Malie City',
   'stuff_to_find', 'newer_vgm', 519),

  -- Row 2469: KORG MS-20 Legacy Collection, Euphoric Stab
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'MS-20 Legacy Collection' COLLATE NOCASE),
   '-', 'Euphoric Stab', NULL, 'Battle! (Gladion), Gladion''s Theme',
   'stuff_to_find', 'newer_vgm', 520),

  -- Row 2470: KORG,? — manufacturer KORG + product Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'definitely more is used', 'Battle! (Hau), Battle! (Gladion), Gladion''s Theme, etc',
   'stuff_to_find', 'newer_vgm', 521),

  -- Row 2471: MAGiX / Yellow Tools, Independence Pro (acoustic piano)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   NULL, NULL, 'acoustic piano', 'Gladion''s Theme',
   'stuff_to_find', 'newer_vgm', 522),

  -- Row 2472: MAGiX / Yellow Tools, Independence Pro, 04 Electric Basses, Fng M-Bass Combi
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses', 'Fng M-Bass Combi', 'check scarbee', 'Heahea City (Day), Paniola Town (Day)',
   'stuff_to_find', 'newer_vgm', 523),

  -- Row 2473: MOTU, MachFive 3
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'MachFive 3' COLLATE NOCASE),
   NULL, 'not yet documented', 'one pic shows Oga using this', '?',
   'stuff_to_find', 'newer_vgm', 524),

  -- Row 2474: MusicLab RealGuitar, Acoustic::Steel Fingered
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Fingered', 'awaiting more research', 'Heahea City (Night), Ride Pokémon (Aquatic), Poké Pelago (Day), Paniola Town (Day)',
   'stuff_to_find', 'newer_vgm', 525),

  -- Row 2475: MusicLab RealGuitar, Acoustic::Steel Stereo
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Acoustic::Steel Stereo (290MB)', NULL, 'The Festival at Iki Town, Route 2 on Melemele Island',
   'stuff_to_find', 'newer_vgm', 526),

  -- Row 2476: MusicLab RealLPC
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealLPC' COLLATE NOCASE),
   '-', 'RealLPC', NULL, 'any track by Adachi',
   'stuff_to_find', 'newer_vgm', 527),

  -- Row 2477: Native Instruments Absynth 5, Disoriented
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth 5' COLLATE NOCASE),
   'Absynth Legacy', 'Disoriented', 'short note played?', 'Burnet''s Lab',
   'stuff_to_find', 'newer_vgm', 528),

  -- Row 2478: Native Instruments B4 II
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'B4 II' COLLATE NOCASE),
   NULL, NULL, 'high playable range organ', 'Vast Poni Canyon',
   'stuff_to_find', 'newer_vgm', 529),

  -- Row 2479: Native Instruments Kontakt Factory Library, Band -> 4 - Organ, Preston
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 4 - Organ', 'Preston', NULL, 'Heahea City (Day)',
   'stuff_to_find', 'newer_vgm', 530),

  -- Row 2480: Native Instruments Massive, Bass, 3 Octave Sub
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Bass', '3 Octave Sub', 'doesnt really match, could be smth in Trilian', 'Unsettling Atmosphere',
   'stuff_to_find', 'newer_vgm', 531),

  -- Row 2481: Native Instruments Spotlight Collection: Cuba (Additional percussion)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Cuba' COLLATE NOCASE),
   NULL, NULL, 'Additional percussion', 'Hau''s Theme',
   'stuff_to_find', 'newer_vgm', 532),

  -- Row 2482: Native Instruments Vintage Organs, Gimme Some Lovin
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Vintage Organs' COLLATE NOCASE),
   '3 - Classic Rock', 'Gimme Some Lovin', NULL, 'The Pokémon Research Lab',
   'stuff_to_find', 'newer_vgm', 533),

  -- Row 2483: Native Instruments Vintage Organs, Cissy
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Vintage Organs' COLLATE NOCASE),
   '6 - Funk & Reggae', 'Cissy', 'likely smth else', 'Heahea City (Night)',
   'stuff_to_find', 'newer_vgm', 534),

  -- Row 2484: Scarbee Rickenbacker Bass
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Rickenbacker Bass' COLLATE NOCASE),
   'Scarbee Rickenbacker Bass', NULL, 'find which preset', 'The Pokémon Research Lab',
   'stuff_to_find', 'newer_vgm', 535),

  -- Row 2485: Sound Ideas, The General Series 6000
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   NULL, NULL, 'Could be ', 'Battle Royal Results',
   'stuff_to_find', 'newer_vgm', 536),

  -- Row 2486: Spectrasonics Omnisphere, Synth Bass
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', NULL, 'check expansions released at that time', 'Aether House',
   'stuff_to_find', 'newer_vgm', 537),

  -- Row 2487: Steinberg HALion Sonic SE, Hybrid Set, Mellow Soloist
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Hybrid Set', 'Mellow Soloist', NULL, 'Battle! (Trainer)',
   'stuff_to_find', 'newer_vgm', 538),

  -- Row 2488: Steinberg HALion Sonic SE, Trium Set, Dirty House
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Trium Set', 'Dirty House', NULL, 'Battle! (Elite Four)',
   'stuff_to_find', 'newer_vgm', 539),

  -- Row 2489: Steinberg HALion Sonic SE (manually panned saw chords)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   NULL, NULL, 'manually panned saw chords', 'Battle! (Island Kahuna)',
   'stuff_to_find', 'newer_vgm', 540),

  -- Row 2490: Steinberg HALion Sonic (resonant arp)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   NULL, NULL, 'resonant arp', 'Battle! (Elite Four)',
   'stuff_to_find', 'newer_vgm', 541),

  -- Row 2491: Synthogy Ivory
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Synthogy' COLLATE NOCASE AND p.name = 'Ivory' COLLATE NOCASE),
   NULL, NULL, 'one pic shows Oga using this', '?',
   'stuff_to_find', 'newer_vgm', 542),

  -- Row 2492: XLN Audio Addictive Drums, Xperimental, AirTight
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Xperimental', 'AirTight', 'maybe', 'Konikoni City (Night)',
   'stuff_to_find', 'newer_vgm', 543),

  -- Row 2493: UVI PlugSound Pro (01-Keyboards), Amp. EP 2
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '02-Electric Pianos -> 04-Bonus EP', 'Amp. EP 2', 'double check this', 'A Captain''s Trial Begins!',
   'stuff_to_find', 'newer_vgm', 544),

  -- Row 2494: UVI,? — manufacturer UVI + product Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'organs', 'Battle! (Gladion), Gladion''s Theme, The Pokémon Center',
   'stuff_to_find', 'newer_vgm', 545),

  -- Row 2495: Vienna Symphonic Library, Vienna Imperial (piano)
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Vienna Imperial' COLLATE NOCASE),
   NULL, NULL, 'piano', 'Adachi songs',
   'stuff_to_find', 'newer_vgm', 546),

  -- Row 2496: Vir2 Electri6ity
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   NULL, NULL, NULL, 'please check for Sato and Adachi tracks',
   'stuff_to_find', 'newer_vgm', 547),

  -- Rows 2497-2517: ?,? rows -> Unknown / Unknown
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'deep tuned timpani w lots of reverb', 'regularly used since here', 'Title Screen',
   'stuff_to_find', 'newer_vgm', 548),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'fast organ, clavinet, various keyboards/pianos', 'Gladion''s Theme, Battle! (Gladion), Battle! (Totem Pokémon)',
   'stuff_to_find', 'newer_vgm', 549),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth bass', 'Battle! (Hau), The Pokémon Center',
   'stuff_to_find', 'newer_vgm', 550),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'not Independence', 'brass sections', 'A Captain''s Trial Begins!, Battle! (Island Kahuna), Battle! (Wild Pokémon), Battle! (Totem Pokémon), Konikoni City (Night), Professor Kukui''s Theme',
   'stuff_to_find', 'newer_vgm', 551),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'weirdly NOT Chris hein horns', '"powerbrass" + "bone"', 'Battle! (Trainer), Trainers'' Eyes Meet! (Trainer), Battle! (Trainer) ~ Draft by Go Ichinose',
   'stuff_to_find', 'newer_vgm', 552),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'sfx', 'Burnet''s Lab',
   'stuff_to_find', 'newer_vgm', 553),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'sync lead', 'Festival Plaza (Day), Festival Plaza (Night)',
   'stuff_to_find', 'newer_vgm', 554),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'background melodic ambience', 'Have a Break At The Café',
   'stuff_to_find', 'newer_vgm', 555),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'high melodic synth pad/voice', 'Lively Lillie!',
   'stuff_to_find', 'newer_vgm', 556),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth arps', 'Konikoni City (Night)',
   'stuff_to_find', 'newer_vgm', 557),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'acoustic guitar', 'The Pokémon Center',
   'stuff_to_find', 'newer_vgm', 558),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth arp', 'Konikoni City (Day)',
   'stuff_to_find', 'newer_vgm', 559),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'loop at B section, subtle but it''s there', 'Konikoni City (Day)',
   'stuff_to_find', 'newer_vgm', 560),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'double bass pizz / acoustic bass', 'Route 10 on Ula''ula Island, Title Screen',
   'stuff_to_find', 'newer_vgm', 561),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'anything', 'Aether Paradise Labs',
   'stuff_to_find', 'newer_vgm', 562),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'amped woodwind / string lead', 'Secret Side of Aether Paradise',
   'stuff_to_find', 'newer_vgm', 563),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Glitchy/distorted rhodes', 'Aether House',
   'stuff_to_find', 'newer_vgm', 564),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'strings, percussion', 'Battle! (Battle Tree Boss)',
   'stuff_to_find', 'newer_vgm', 565),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'sustain synth c notes with phaser', 'Battle! (Solgaleo/Lunala)',
   'stuff_to_find', 'newer_vgm', 566),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'the heartbeat', 'Ultra Space',
   'stuff_to_find', 'newer_vgm', 567),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'drum loop with ride bell panned right', 'Battle! (Team Skull Boss)',
   'stuff_to_find', 'newer_vgm', 568),

  -- Beta / Unreleased Tracks (Steinberg Sound Roster & Japan Expo) (rows 2519-2534) -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Polysix Legacy Collection' COLLATE NOCASE),
   '-', '003:Unison Bass', NULL, 'Battle! (Tapu) ~ Early Mix by Go Ichinose',
   'unused', 'newer_vgm', 569),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Bass', 'Brutal Electro', NULL, 'Scrapped Battle Theme (Masuda''s Japan Expo Masterclass)',
   'unused', 'newer_vgm', 570),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion 4' COLLATE NOCASE),
   'HAL Factory Set', '4.0 Trance Synth', 'reverb + EQ required', 'Scrapped Battle Theme (Masuda''s Japan Expo Masterclass)',
   'unused', 'newer_vgm', 571),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', '80s Hard', NULL, 'Battle! (Trainer) ~ Draft by Junichi Masuda, Battle! (Trainer) ~ Draft by Go Ichinose',
   'unused', 'newer_vgm', 572),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', '80s Seq Bass', 'requires internal amp from HALion', 'Scrapped Battle Theme (Masuda''s Japan Expo Masterclass)',
   'unused', 'newer_vgm', 573),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', 'Distorted Kit', NULL, 'Battle! (Tapu) ~ Draft by Junichi Masuda, Battle! (Trainer) ~ Draft by Go Ichinose',
   'unused', 'newer_vgm', 574),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', 'Groove Bass', NULL, 'Battle! (Trainer) ~ Draft by Junichi Masuda, Battle! (Trainer) ~ Draft by Go Ichinose',
   'unused', 'newer_vgm', 575),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', 'Piano and Strings', NULL, 'Battle! (Trainer) ~ Draft by Junichi Masuda, Battle! (Trainer) ~ Draft by Go Ichinose',
   'unused', 'newer_vgm', 576),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', 'String Machine', NULL, 'Battle! (Trainer) ~ Draft by Junichi Masuda, Battle! (Wild Pokémon) ~ Draft by Junichi Masuda',
   'unused', 'newer_vgm', 577),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', 'The Knife', NULL, 'Battle! (Tapu) ~ Draft by Junichi Masuda',
   'unused', 'newer_vgm', 578),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', 'Wave Stack Piano', NULL, 'Battle! (Tapu) ~ Draft by Junichi Masuda',
   'unused', 'newer_vgm', 579),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic 2' COLLATE NOCASE),
   'B-Box Set', 'D&B Fever 03', 'Cymbals and loop both used', 'Scrapped Battle Theme (Masuda''s Japan Expo Masterclass)',
   'unused', 'newer_vgm', 580),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Distortion Guitar VX', NULL, 'Scrapped Battle Theme (Masuda''s Japan Expo Masterclass)',
   'unused', 'newer_vgm', 581),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 062] Brass Section', NULL, 'Battle! (Tapu) ~ Draft by Junichi Masuda',
   'unused', 'newer_vgm', 582),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', NULL, 'Battle! (Tapu) ~ Draft by Junichi Masuda, Battle! (Trainer) ~ Draft by Junichi Masuda',
   'unused', 'newer_vgm', 583),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Hybrid Set', 'Mellow Soloist', 'all note velocities are ~90', 'Battle! (Trainer) ~ Draft by Junichi Masuda, Battle! (Trainer) ~ Draft by Go Ichinose',
   'unused', 'newer_vgm', 584),

  -- Early Music (Teraleak / Freakleak - XY Part 1) (rows 2536-2549) -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Pettinhouse' COLLATE NOCASE AND p.name = 'UkuleleGuitar' COLLATE NOCASE),
   NULL, NULL, NULL, 'Iki Town (Night) Draft, Hau''oli City (Day) Draft',
   'unused', 'newer_vgm', 585),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Distortion', 'Frippy Colorization', NULL, 'Battle! (Team Skull) Draft',
   'unused', 'newer_vgm', 586),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Guitars', 'Fingerstyle Acoustic 6-string a', NULL, 'Iki Town (Night) Draft',
   'unused', 'newer_vgm', 587),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Cedar Plucked Piano', NULL, 'Battle! (Team Skull) Draft',
   'unused', 'newer_vgm', 588),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Crush Tone Keys', NULL, 'Team Skull Appears! Draft',
   'unused', 'newer_vgm', 589),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Dream Glockpiano', NULL, 'Hau''oli City (Day) Draft',
   'unused', 'newer_vgm', 590),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Happy Gaga Lead', NULL, 'Team Skull Appears! Draft',
   'unused', 'newer_vgm', 591),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Flaming Supersaws', NULL, 'Battle! (Team Skull) Draft',
   'unused', 'newer_vgm', 592),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'ProSamples Vol. 37 - Dance Synths' COLLATE NOCASE),
   'Hardcore Loops -> Acid Loops', '37a02gro160', NULL, 'Battle! (Team Skull) Draft',
   'unused', 'newer_vgm', 593),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   'Instruments -> Vocals', 'Lets Go', NULL, 'Team Skull Appears! Draft',
   'unused', 'newer_vgm', 594),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   'Instruments -> Vocals JB Style', 'A Champ', NULL, 'Team Skull Appears! Draft',
   'unused', 'newer_vgm', 595),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'World Pack' COLLATE NOCASE),
   'Bonus Loops from ProPack -> Voices of Africa', 'Africa Voice 092', NULL, 'Alola Region Theme Drafts',
   'unused', 'newer_vgm', 596),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'World Pack' COLLATE NOCASE),
   'Bonus Loops from ProPack -> Voices of Africa', 'Africa Voice 094', 'pitched up', 'Alola Region Theme Drafts',
   'unused', 'newer_vgm', 597),

  ((SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'World Pack' COLLATE NOCASE),
   'Bonus Loops from ProPack -> Voices of Africa', 'Africa Voice 107', NULL, 'Alola Region Theme Drafts',
   'unused', 'newer_vgm', 598);

-- Patch raw_source for the non-commercial Live Recording / Sample rows (positions 1-12).
-- These rows were inserted with product_id NULL; we stash the original col A/B descriptors here.
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Furch D23-CR'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 1;
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Hohner Meisterklasse MS'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 2;
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Modulus Q6 Sweet Spot'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 3;
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Scandalli Accordion'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 4;
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Suhr Classic'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 5;
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Whistling'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 6;
UPDATE usages SET raw_source = 'Live Recording: Hironobu Yoshida — Tapu Vocals'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 7;
UPDATE usages SET raw_source = 'Live Recording: Kanoko Matsukawa — Percussion'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 8;
UPDATE usages SET raw_source = 'Live Recording: KYOtaro — Team Skull Vocal Adlibs'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 9;
UPDATE usages SET raw_source = 'Live Recording: Masaya Watanabe — Vocals'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 10;
UPDATE usages SET raw_source = 'Live Recording: Takahiro Morimoto — Guitar & Ukulele'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 11;
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Sun and Moon'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Sun and Pokémon Moon')
    AND position = 12;
