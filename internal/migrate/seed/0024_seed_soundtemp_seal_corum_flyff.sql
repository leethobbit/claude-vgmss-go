-- Source: reference/SoundTeMP Sound Sources & Information Compendium (WIP) - Sound Sources.csv rows 230-312
-- Three games:
--   Seal Online   (rows 230-256): header row 230 + 26 data rows (231-256)
--   Corum Online  (rows 257-262): header row 257 + 5 data rows (258-262)
--   Flyff         (rows 263-312): header row 263 + 49 data rows (264-312)
-- source_family = 'soundtemp'. Platform = NULL for all. demo_url = NULL for every usage row (CSV has no Demo column).
-- No subsection headers in this range; all rows are category='main'.
-- Two rows use the Unknown/Unknown sentinel because the product is missing or '?':
--   Row 244 (Seal Online): "Roland,,,,,Sakara"      -> brand known but product blank.
--   Row 301 (Flyff):       "Spectrasonics,?,,,,"    -> brand known but product = '?'.
-- Both stash the raw col A / col B descriptor via an UPDATE at the bottom (raw_source patch).

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Access'),
  ('Best Service'),
  ('EastWest'),
  ('Ensoniq'),
  ('E-MU Systems'),
  ('Hollywood Edge'),
  ('KORG'),
  ('Native Instruments'),
  ('reFX'),
  ('Roland'),
  ('Sonic Foundry'),
  ('Spectrasonics'),
  ('UVI'),
  ('Ueberschall'),
  ('Yamaha'),
  ('Zero-G'),
  ('Unknown');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Access'             COLLATE NOCASE), 'Virus',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Total Piano',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'BT Breakz from the Nu Skool',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'BT Twisted Textures',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Ra',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Stormdrum',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Symphonic Orchestra',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'            COLLATE NOCASE), 'EXP-1 The Real World',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'            COLLATE NOCASE), 'MR-Rack',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'E-MU Systems'       COLLATE NOCASE), 'Mo'' Phatt',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'E-MU Systems'       COLLATE NOCASE), 'Proteus 2000',                                'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Hollywood Edge'     COLLATE NOCASE), 'Premiere Edition',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), '01/W',                                        'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), 'EXB-PCM06 Orchestral Collection',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), 'TRITON-RACK',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'FM8',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'reFX'               COLLATE NOCASE), 'Nexus 2',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'JV-2080',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SR-JV80-06 Dance',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SR-JV80-12 Hip Hop Collection',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SR-JV80-16 Orchestral II',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'XV-3080',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonic Foundry'      COLLATE NOCASE), 'Voices of Native America',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Bass Legends',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Metamorphosis',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Omnisphere',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Stylus',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Stylus RMX',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Symphony of Voices',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Vocal Planet',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                COLLATE NOCASE), 'Plugsound Volume 2 (Fretted Instruments)',    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'        COLLATE NOCASE), 'House Musique Disco and French House',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'        COLLATE NOCASE), 'Techno Trance Essentials',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'MOTIF 6',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'PLG100-VL',                                   'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'             COLLATE NOCASE), 'Cuckooland UNHINGED',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'            COLLATE NOCASE), 'Unknown',                                     NULL);

-- ============================================================================
-- Game 1: Seal Online (2003)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Seal Online',
   NULL,
   '2003',
   'SoundTeMP, Jinbae Park, Seock-Jin Lee, Goomin Nam, ''Chihiro''',
   'soundtemp, jinbae park, seock-jin lee, goomin nam, ''chihiro''',
   NULL);

-- ============================================================================
-- Game 2: Corum Online (2003)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Corum Online',
   NULL,
   '2003',
   'SoundTeMP',
   'soundtemp',
   NULL);

-- ============================================================================
-- Game 3: Flyff (2004)
-- Source col A trailing comma stripped: "SoundTeMP, Jinbae Park, Dong-Il Kwak, Seung Yeol Kim,"
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Flyff',
   NULL,
   '2004',
   'SoundTeMP, Jinbae Park, Dong-Il Kwak, Seung Yeol Kim',
   'soundtemp, jinbae park, dong-il kwak, seung yeol kim',
   NULL);

-- ============================================================================
-- Usages: positions restart at 1 within each game.
-- ============================================================================
INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Seal Online (rows 231-256) -> main, positions 1-26
  -- =========================================================================
  -- Row 231
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Proteus 2000' COLLATE NOCASE),
   'Instruments', '0203 gtr:Sad Guitar', 'Could be ROM version?', '낭만상인(浪漫商人)',
   'main', 'soundtemp', 1),

  -- Row 232
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, 'Hunter',
   'main', 'soundtemp', 2),

  -- Row 233
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'EXP-1 The Real World' COLLATE NOCASE),
   'EXP024', '033 Sikus PT', NULL, 'Sakara',
   'main', 'soundtemp', 3),

  -- Row 234
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   NULL, NULL, 'Surdos, possibly other kit pieces', 'Elim Maturi',
   'main', 'soundtemp', 4),

  -- Row 235
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '055 Pop Brass', NULL, 'Elim Maturi',
   'main', 'soundtemp', 5),

  -- Row 236
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition' COLLATE NOCASE),
   NULL, NULL, NULL, 'Across the Misty Forest',
   'main', 'soundtemp', 6),

  -- Row 237
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = '01/W' COLLATE NOCASE),
   'PROG', 'A63 Tin Flute', 'Song originally from Narsillion', '15.mp3',
   'main', 'soundtemp', 7),

  -- Row 238
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Combis -> INT-A', '014 Leading Lady', NULL, 'By your Side, Island Dream',
   'main', 'soundtemp', 8),

  -- Row 239
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Combis -> INT-A', '062 DreamingForMiles', 'Enable SW1. Might be Trinity?', 'Streamy Saga',
   'main', 'soundtemp', 9),

  -- Row 240
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'EXB-PCM06 Orchestral Collection' COLLATE NOCASE),
   NULL, '001 Maestro Strings', NULL, 'Macho Bravo',
   'main', 'soundtemp', 10),

  -- Row 241
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus 2' COLLATE NOCASE),
   'Fantasy And Dream', 'SY Decadebell', NULL, '01.mp3',
   'main', 'soundtemp', 11),

  -- Row 242
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '141 Spooky', NULL, 'Island Dream',
   'main', 'soundtemp', 12),

  -- Row 243
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'XV-3080' COLLATE NOCASE),
   'PR-F', '075 Andreas Cave', 'Disable tone 3', 'Lakeside Mystery',
   'main', 'soundtemp', 13),

  -- Row 244: "Roland,,,,,Sakara" -> brand known, product blank. Unknown/Unknown sentinel; raw_source patched below (position 14).
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, NULL, 'Sakara',
   'main', 'soundtemp', 14),

  -- Row 245
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   'Single Shot Loops & Hits -> Flutes', NULL, 'Some other flute samples maybe this?', 'Sakara',
   'main', 'soundtemp', 15),

  -- Row 246
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   'Single Shot Loops & Hits -> Flutes', 'Echo Flute 9.6', NULL, 'Sakara',
   'main', 'soundtemp', 16),

  -- Row 247
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   'Single Shot Loops & Hits -> Flutes', 'Echo Flute 10.8', NULL, 'Sakara',
   'main', 'soundtemp', 17),

  -- Row 248
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Bass Legends' COLLATE NOCASE),
   'Disc 2 -> PARTITION B -> ALL SLIDES', 'JP AC.UP-DWN', 'Regular bass should be the same one', 'La Vie en Rose',
   'main', 'soundtemp', 18),

  -- Row 249
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 3 -> PARTITION B -> 125-135 LPS', 'MOVE ME C', NULL, 'Dilly Hilly Valley',
   'main', 'soundtemp', 19),

  -- Row 250
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus' COLLATE NOCASE),
   NULL, NULL, 'Phew and Phar', '48.mp3',
   'main', 'soundtemp', 20),

  -- Row 251
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Spheres', 'Trashed? Custom loop?', '58.mp3',
   'main', 'soundtemp', 21),

  -- Row 252: notes column contains "28.mp3" (col E), examples (col F) empty.
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   NULL, NULL, '28.mp3', NULL,
   'main', 'soundtemp', 22),

  -- Row 253
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'Plugsound Volume 2 (Fretted Instruments)' COLLATE NOCASE),
   NULL, '018 Spanish Guitar -Full', NULL, 'This is My Story',
   'main', 'soundtemp', 23),

  -- Row 254
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'House Musique Disco and French House' COLLATE NOCASE),
   '21-25 frenchbrass 130 e -> 24 licks+samples', 'pne130chords01_frenchbrass', NULL, 'Dilly Hilly Valley',
   'main', 'soundtemp', 24),

  -- Row 255
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Discoholic, July Delight',
   'main', 'soundtemp', 25),

  -- Row 256: col F was just a single space in source; stripped -> NULL.
  ((SELECT id FROM games WHERE title = 'Seal Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'PLG100-VL' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 26),

  -- =========================================================================
  -- Corum Online (rows 258-262) -> main, positions 1-5
  -- =========================================================================
  -- Row 258
  ((SELECT id FROM games WHERE title = 'Corum Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Wind -> Pan Flute', 'Pan Flute KS C0-D#0', NULL, 'Almansia',
   'main', 'soundtemp', 1),

  -- Row 259
  ((SELECT id FROM games WHERE title = 'Corum Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, 'Intro, Lamonta Ruins, Irnote, Day in Ludiros, Event Dungeon, Lighthouse, Tower/Guild Battle',
   'main', 'soundtemp', 2),

  -- Row 260
  ((SELECT id FROM games WHERE title = 'Corum Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Timpani', 'Ending',
   'main', 'soundtemp', 3),

  -- Row 261
  ((SELECT id FROM games WHERE title = 'Corum Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Vocal Planet' COLLATE NOCASE),
   'Disc 5 -> Partition E -> 3 WELSH FEM.', 'WELSH FEM.1', NULL, 'Lamonta',
   'main', 'soundtemp', 4),

  -- Row 262
  ((SELECT id FROM games WHERE title = 'Corum Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Santa Claus Is Coming to Town, NPC 1',
   'main', 'soundtemp', 5),

  -- =========================================================================
  -- Flyff (rows 264-312) -> main, positions 1-49
  -- =========================================================================
  -- Row 264
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Access' COLLATE NOCASE AND p.name = 'Virus' COLLATE NOCASE),
   NULL, 'A4 Impact MS', 'Program name based on Virus C', 'Crisis Battle, Darkon 1',
   'main', 'soundtemp', 1),

  -- Row 265
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Access' COLLATE NOCASE AND p.name = 'Virus' COLLATE NOCASE),
   NULL, 'C99 Sawz 2 SV', 'Program name based on Virus C', 'Flaris Battle',
   'main', 'soundtemp', 2),

  -- Row 266
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Total Piano' COLLATE NOCASE),
   NULL, '30 Piano FX Menue', 'AKAI used, program name is from CCC', 'Darkon 1',
   'main', 'soundtemp', 3),

  -- Row 267 (trailing space in col B stripped: "BT Breakz from the Nu Skool")
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'BT Breakz from the Nu Skool' COLLATE NOCASE),
   NULL, '090 Filth and Funk', NULL, 'Darkon 3',
   'main', 'soundtemp', 4),

  -- Row 268
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'BT Breakz from the Nu Skool' COLLATE NOCASE),
   NULL, '090 Graveyard Shift', NULL, 'Darkon 3',
   'main', 'soundtemp', 5),

  -- Row 269
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'BT Breakz from the Nu Skool' COLLATE NOCASE),
   NULL, '117 Fruitalicious Break', NULL, 'Crisis Battle',
   'main', 'soundtemp', 6),

  -- Row 270
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'BT Twisted Textures' COLLATE NOCASE),
   NULL, 'Can it be true', NULL, 'Darkon 1',
   'main', 'soundtemp', 7),

  -- Row 271
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Stormdrum' COLLATE NOCASE),
   'Large Percussion', 'Big Hits', 'Original track from 2005 (See notes)', 'Kalgas Cave',
   'main', 'soundtemp', 8),

  -- Row 272
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, 'Flyff World Championship',
   'main', 'soundtemp', 9),

  -- Row 273
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'Snare, glock, etc.', 'Flyff World Championship',
   'main', 'soundtemp', 10),

  -- Row 274
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'RAM001', '049 MR Coffee', NULL, 'Lachrymose',
   'main', 'soundtemp', 11),

  -- Row 275
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM004', '050 Pipe Organ', 'Parameters seem edited', 'Lachrymose',
   'main', 'soundtemp', 12),

  -- Row 276 (preset contains U+2019 right single quote, not ASCII apostrophe)
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Mo'' Phatt' COLLATE NOCASE),
   'Bank 0', '018 key:SOOTCaSE’000', 'Could be ROM version?', 'Sain City',
   'main', 'soundtemp', 13),

  -- Row 277
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Proteus 2000' COLLATE NOCASE),
   'Instruments', '0203 gtr:Sad Guitar', 'Could be ROM version?', 'Playground',
   'main', 'soundtemp', 14),

  -- Row 278 (source col B = "TRITON-Rack" — same product as Seal Online's "TRITON-RACK" via COLLATE NOCASE)
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-C', 'C127 Bottle-Bell', 'Turn off OSC2', 'Traseia',
   'main', 'soundtemp', 15),

  -- Row 279
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-D', 'D031 Finger Cymbal', NULL, 'Soaring Broom, Frostbelt',
   'main', 'soundtemp', 16),

  -- Row 280
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-D', 'D042 Vanishing Planet', 'Patch seems random, look into this', 'Mars Mine Dungeon',
   'main', 'soundtemp', 17),

  -- Row 281
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM7 Legacy', 'Far East', NULL, 'Flyff World Championship',
   'main', 'soundtemp', 18),

  -- Row 282
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-12 Hip Hop Collection' COLLATE NOCASE),
   NULL, '245 EarlyEvening', 'Maybe not this? Patch doesn''t pitch', 'Darkon 3',
   'main', 'soundtemp', 19),

  -- Row 283
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-16 Orchestral II' COLLATE NOCASE),
   NULL, '113 Dyno Celt', NULL, 'Darkon 2',
   'main', 'soundtemp', 20),

  -- Row 284
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Bass Legends' COLLATE NOCASE),
   'Partition A -> ALL THUMBS', 'EM SLP POP A', 'Additional bass is layered(?)', 'Darkon 1',
   'main', 'soundtemp', 21),

  -- Row 285
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   NULL, NULL, NULL, 'Good Morning',
   'main', 'soundtemp', 22),

  -- Row 286
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> PARTITION A -> 53-70 LOOPS', 'SONAR', 'AKAI/WAV/Stylus tossup', 'Flarine',
   'main', 'soundtemp', 23),

  -- Row 287
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 2 -> PARTITION A -> 99-105 LPS', 'ASTERIODS', 'AKAI/WAV/Stylus tossup', 'Flarine',
   'main', 'soundtemp', 24),

  -- Row 288
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 2 -> PARTITION A -> 99-105 LPS', 'HAMSTRING', 'AKAI/WAV/Stylus tossup', 'Frostbelt',
   'main', 'soundtemp', 25),

  -- Row 289
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 2 -> PARTITION A -> 99-105 LPS', 'SID KID', 'AKAI/WAV/Stylus tossup', 'Flarine',
   'main', 'soundtemp', 26),

  -- Row 290
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'ARP + BPM', 'Dynamic Crystal Gamelan Arp', 'Different preset w/same source?', 'Traseia',
   'main', 'soundtemp', 27),

  -- Row 291
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus' COLLATE NOCASE),
   NULL, '55-Phew and Phar d', NULL, 'Sain City',
   'main', 'soundtemp', 28),

  -- Row 292
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus' COLLATE NOCASE),
   'Congas', '118-Congas', NULL, 'Sain City',
   'main', 'soundtemp', 29),

  -- Row 293
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus' COLLATE NOCASE),
   'Shakers', '83-Shaker', 'Absolutely could be something else', 'Saint Morning Field',
   'main', 'soundtemp', 30),

  -- Row 294
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '99-Congas', 'Layered with something else', 'Kaillun Grassland',
   'main', 'soundtemp', 31),

  -- Row 295
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 2 -> Partition G -> 01 SOP OHS', 'SOP OHS AS', NULL, 'Frostbelt, Guardiane',
   'main', 'soundtemp', 32),

  -- Row 296
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 2 -> Partition G -> 02 SOP-EH-OH', 'SOP EH-OH AS', NULL, 'Darkon 2, Guardiane',
   'main', 'soundtemp', 33),

  -- Row 297
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 3 -> Partition D -> 02 SOLO BOY', 'ONE BOY AH', 'A, B or C. Sample used is   BC 1-AH 08', 'Invisible',
   'main', 'soundtemp', 34),

  -- Row 298
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 3 -> Partition D -> 03 BOY PHRAS', 'BOY PHR MONO', NULL, 'Invisible, Darkon Battle, Solemn 2',
   'main', 'soundtemp', 35),

  -- Row 299
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 5 -> Partition C -> 01 OPERATIC', 'OPERATIC', NULL, 'Sad',
   'main', 'soundtemp', 36),

  -- Row 300
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 5 -> Partition C -> 02 SERENE', 'SERENE 18', 'Second instance cuts the Ooo intro', 'Flaris Field',
   'main', 'soundtemp', 37),

  -- Row 301: "Spectrasonics,?,,,," -> product unknown. Unknown/Unknown sentinel; raw_source patched below (position 38).
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 38),

  -- Row 302
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   'Single Shot Loops & Hits -> Flutes', 'Echo Flute 9.2', NULL, 'Saint Morning Battle, Sad',
   'main', 'soundtemp', 39),

  -- Row 303
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   'Single Shot Loops & Hits -> Flutes', 'Echo Flute 9.3', NULL, 'Saint Morning Battle',
   'main', 'soundtemp', 40),

  -- Row 304
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   'Single Shot Loops & Hits -> Flutes', 'Echo Flute 10.8', NULL, 'Saint Morning Battle, Sad',
   'main', 'soundtemp', 41),

  -- Row 305
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   'Single Shot Loops & Hits -> Flutes', 'Echo Flute 11.4', NULL, 'Saint Morning Battle',
   'main', 'soundtemp', 42),

  -- Row 306
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   'Single Shot Loops & Hits -> Flutes', 'Echo Flute 11.5', NULL, 'Saint Morning Battle',
   'main', 'soundtemp', 43),

  -- Row 307
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Techno Trance Essentials' COLLATE NOCASE),
   '72-96 VOX -> TE72.VOXa-SPECIAL', 'voxTTE72010special-A', 'Pitch up 400 cents', 'Flying',
   'main', 'soundtemp', 44),

  -- Row 308
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'DRUM', NULL, 'First two kits? Some elements only?', 'Lachrymose',
   'main', 'soundtemp', 45),

  -- Row 309
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   NULL, NULL, 'Accordion', 'Sain City',
   'main', 'soundtemp', 46),

  -- Row 310
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Flaris Field, Saint Morning Field, New Flarine, Euphresia, Eillun, Kaillun Grassland',
   'main', 'soundtemp', 47),

  -- Row 311
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'G14 EthncFlute', 'Mute 2nd voicing', 'Flarine',
   'main', 'soundtemp', 48),

  -- Row 312
  ((SELECT id FROM games WHERE title = 'Flyff'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Cuckooland UNHINGED' COLLATE NOCASE),
   'Disc 2 -> Partition A -> FX SET 2', 'SNAKE LICK', 'Used ver. could be CDDA/WAV', 'Darkon 1',
   'main', 'soundtemp', 49);

-- Patch raw_source for rows whose brand was known but product was missing/unknown.
-- Stash the original col A / col B descriptor so the source row is recoverable.
UPDATE usages SET raw_source = 'Roland — product unspecified in source CSV (col A=Roland, col B empty)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Seal Online')
    AND position = 14;

UPDATE usages SET raw_source = 'Spectrasonics — product marked "?" in source CSV (col A=Spectrasonics, col B=?)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Flyff')
    AND position = 38;
