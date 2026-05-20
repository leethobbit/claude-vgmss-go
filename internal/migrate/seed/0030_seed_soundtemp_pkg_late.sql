-- Source: reference/SoundTeMP Sound Sources & Information Compendium (WIP) - Sound Sources.csv rows 703-790
-- Ten games covered (closes out SoundTeMP Section 2 Package Games):
--   Magna Carta: The Phantom of Avalanche (2001) rows 703-712
--   Narsillion - Leithian Another Story (2002) rows 713-728
--   Crazy Arcade BnB Adventure (2002) rows 729-734
--   AceSaga: The Lament of a Raven (2002) rows 735-742
--   War of Chunrang (2003) rows 743-757
--   Magna Carta: Crimson Stigmata / Tears of Blood (2004) rows 758-763
--   Magna Carta II (2009) rows 764-773
--   MapleStory Cave Crawlers (2011) rows 774-780
--   RUNE the First Wanderer (2020) rows 781-783
--   Stellar Blade (2024) rows 784-790
-- SoundTeMP CSV has 6 columns (no Demo column); demo_url is always NULL.
-- One row uses the Unknown/Unknown sentinel:
--   Row 712: Spectrasonics, blank product (Magna Carta Phantom). raw_source patched at end.
-- No subsections in this range; all rows -> category 'main'.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Access'),
  ('Best Service'),
  ('EastWest'),
  ('eLAB'),
  ('Ensoniq'),
  ('Hollywood Edge'),
  ('InVision'),
  ('KORG'),
  ('Masterbits'),
  ('Native Instruments'),
  ('Roland'),
  ('Sonic Foundry'),
  ('Spectrasonics'),
  ('Ueberschall'),
  ('XLN Audio'),
  ('Yamaha'),
  ('Zero-G'),
  ('Unknown');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Access'             COLLATE NOCASE), 'Virus',                                        'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Voice Spectral',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Ethno World',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Steve Stevens Guitar',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Stormdrum',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Symphonic Orchestra',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'eLAB'               COLLATE NOCASE), 'X-Static Goldmine 3',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'            COLLATE NOCASE), 'MR-Rack',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'            COLLATE NOCASE), 'EXP-1 The Real World',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Hollywood Edge'     COLLATE NOCASE), 'Premiere Edition',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'InVision'           COLLATE NOCASE), 'Lightware - Stratus Sound Sampler',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), 'TRITON-RACK',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), '01/W',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), 'TR-Rack',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Masterbits'         COLLATE NOCASE), 'Climax Vol. 9 - RAPsody (Vocals II)',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'FM7',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'FM8',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'JV-2080',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SR-JV80-06 Dance',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonic Foundry'      COLLATE NOCASE), 'Voices of Native America',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Distorted Reality 2',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Symphony of Voices',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Metamorphosis',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Vocal Planet',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Stylus RMX',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'        COLLATE NOCASE), '2 Step Garage',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'          COLLATE NOCASE), 'Addictive Drums',                              'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'          COLLATE NOCASE), 'Addictive Drums 2',                            'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'MOTIF 6',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'             COLLATE NOCASE), 'Orchestral Flavours',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'            COLLATE NOCASE), 'Unknown',                                      NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Magna Carta: The Phantom of Avalanche',
   NULL,
   '2001',
   'Sungwoon Jang, Roh Hyoung Woo, Sang-Ho Lee, Jinbae Park',
   'sungwoon jang, roh hyoung woo, sang-ho lee, jinbae park',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Narsillion - Leithian Another Story',
   NULL,
   '2002',
   'SoundTeMP, Seock-Jin Lee, Dong-Il Kwak, Goo-Hee Kwon',
   'soundtemp, seock-jin lee, dong-il kwak, goo-hee kwon',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Crazy Arcade BnB Adventure',
   NULL,
   '2002',
   'Jinbae Park, Goomin Nam, Sungwoon Jang',
   'jinbae park, goomin nam, sungwoon jang',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('AceSaga: The Lament of a Raven',
   NULL,
   '2002',
   'SoundTeMP, Dong-Il Kwak',
   'soundtemp, dong-il kwak',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('War of Chunrang',
   NULL,
   '2003',
   'SoundTeMP, Seock-Jin Lee',
   'soundtemp, seock-jin lee',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Magna Carta: Crimson Stigmata / Tears of Blood',
   NULL,
   '2004',
   'Sungwoon Jang',
   'sungwoon jang',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Magna Carta II',
   NULL,
   '2009',
   'Sungwoon Jang, Roh Hyoung Woo (See note for live performers)',
   'sungwoon jang, roh hyoung woo (see note for live performers)',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('MapleStory Cave Crawlers',
   NULL,
   '2011',
   'Jinbae Park',
   'jinbae park',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('RUNE the First Wanderer',
   NULL,
   '2020',
   'Goomin Nam, ''SPIKE'', ''E.Q.P'', ''DoubleTO'' (See note for live performers)',
   'goomin nam, ''spike'', ''e.q.p'', ''doubleto'' (see note for live performers)',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Stellar Blade',
   NULL,
   '2024',
   'ESTIMATE, Jinbae Park, ''seibin'', ''Benicx'', Youngji Lee, Oliver Good',
   'estimate, jinbae park, ''seibin'', ''benicx'', youngji lee, oliver good',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Magna Carta: The Phantom of Avalanche (rows 704-712) -> all main (9 rows)
  -- =========================================================================

  -- Row 704: Access,Virus,,A4 Impact MS,Program name based on Virus C,Time passes By - CLUB MIX -
  ((SELECT id FROM games WHERE title = 'Magna Carta: The Phantom of Avalanche'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Access' COLLATE NOCASE AND p.name = 'Virus' COLLATE NOCASE),
   NULL, 'A4 Impact MS', 'Program name based on Virus C', 'Time passes By - CLUB MIX -',
   'main', 'soundtemp', 1),

  -- Row 705: Best Service,Voice Spectral,,Track 95,Timestamp: 0:25.5,Hell Bouncer
  ((SELECT id FROM games WHERE title = 'Magna Carta: The Phantom of Avalanche'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Voice Spectral' COLLATE NOCASE),
   NULL, 'Track 95', 'Timestamp: 0:25.5', 'Hell Bouncer',
   'main', 'soundtemp', 2),

  -- Row 706: Ensoniq,MR-Rack,ROM004,050 Pipe Organ,Not 100% match? Possibly exp patch?,Ancient Way
  ((SELECT id FROM games WHERE title = 'Magna Carta: The Phantom of Avalanche'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM004', '050 Pipe Organ', 'Not 100% match? Possibly exp patch?', 'Ancient Way',
   'main', 'soundtemp', 3),

  -- Row 707: KORG,TRITON-Rack,Programs -> INT-A,A001 Acoustic Piano,,Lovely Moon
  ((SELECT id FROM games WHERE title = 'Magna Carta: The Phantom of Avalanche'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-A', 'A001 Acoustic Piano', NULL, 'Lovely Moon',
   'main', 'soundtemp', 4),

  -- Row 708: KORG,TRITON-RACK,Programs -> INT-A,065 90's Piano,,Time passes By - CLUB MIX -
  ((SELECT id FROM games WHERE title = 'Magna Carta: The Phantom of Avalanche'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-A', '065 90''s Piano', NULL, 'Time passes By - CLUB MIX -',
   'main', 'soundtemp', 5),

  -- Row 709: KORG,TRITON-Rack,,,Bell,In my Dream
  ((SELECT id FROM games WHERE title = 'Magna Carta: The Phantom of Avalanche'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   NULL, NULL, 'Bell', 'In my Dream',
   'main', 'soundtemp', 6),

  -- Row 710: Roland,SR-JV80-06 Dance,,140 Slide Fx x2,,Time passes By - CLUB MIX -
  ((SELECT id FROM games WHERE title = 'Magna Carta: The Phantom of Avalanche'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '140 Slide Fx x2', NULL, 'Time passes By - CLUB MIX -',
   'main', 'soundtemp', 7),

  -- Row 711: Roland,SR-JV80-06 Dance,,186 Vocamatic,,Time passes By - CLUB MIX -
  ((SELECT id FROM games WHERE title = 'Magna Carta: The Phantom of Avalanche'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '186 Vocamatic', NULL, 'Time passes By - CLUB MIX -',
   'main', 'soundtemp', 8),

  -- Row 712: Spectrasonics,,,,Percussion loop,Mysterious Woods -> brand known, product blank. Unknown/Unknown sentinel; raw_source patched below (position 9).
  ((SELECT id FROM games WHERE title = 'Magna Carta: The Phantom of Avalanche'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Percussion loop', 'Mysterious Woods',
   'main', 'soundtemp', 9),

  -- =========================================================================
  -- Narsillion - Leithian Another Story (rows 714-728) -> all main (15 rows)
  -- =========================================================================

  -- Row 714: eLAB,X-Static Goldmine 3,,"LEFT, RIGHT",Track 1 of the CDDA. Timestamp: 0:00,Shadow
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'eLAB' COLLATE NOCASE AND p.name = 'X-Static Goldmine 3' COLLATE NOCASE),
   NULL, 'LEFT, RIGHT', 'Track 1 of the CDDA. Timestamp: 0:00', 'Shadow',
   'main', 'soundtemp', 1),

  -- Row 715: Ensoniq,MR-Rack,,,"Surdos, possibly other kit pieces",니 마음의 풍차
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   NULL, NULL, 'Surdos, possibly other kit pieces', '니 마음의 풍차',
   'main', 'soundtemp', 2),

  -- Row 716: Ensoniq,MR-Rack,RAM001,049 MR Coffee,,"To Be Without You, Shadow"
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'RAM001', '049 MR Coffee', NULL, 'To Be Without You, Shadow',
   'main', 'soundtemp', 3),

  -- Row 717: Ensoniq,MR-Rack,ROM005,094 Harpsichord,,21.mp3
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '094 Harpsichord', NULL, '21.mp3',
   'main', 'soundtemp', 4),

  -- Row 718: KORG,01/W,PROG,A63 Tin Flute,,A Legendary Fever
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = '01/W' COLLATE NOCASE),
   'PROG', 'A63 Tin Flute', NULL, 'A Legendary Fever',
   'main', 'soundtemp', 5),

  -- Row 719: KORG,TR-Rack,Combi > C,C79 Serengeti,,Love Is Not 4 Sale
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Combi > C', 'C79 Serengeti', NULL, 'Love Is Not 4 Sale',
   'main', 'soundtemp', 6),

  -- Row 720: KORG,TRITON-Rack,Programs -> INT-A,A079 Ensemble Bell,,To Be Without You
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-A', 'A079 Ensemble Bell', NULL, 'To Be Without You',
   'main', 'soundtemp', 7),

  -- Row 721: KORG,TRITON-Rack,Programs -> INT-C,C127 Bottle-Bell,Turn off MFX1 (Multitap Cho/Delay),"The Road Not Taken, 니 마음의 풍차"
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-C', 'C127 Bottle-Bell', 'Turn off MFX1 (Multitap Cho/Delay)', 'The Road Not Taken, 니 마음의 풍차',
   'main', 'soundtemp', 8),

  -- Row 722: Roland,JV-2080,,,Slap bass,Forest Pump
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Slap bass', 'Forest Pump',
   'main', 'soundtemp', 9),

  -- Row 723: Roland,JV-2080,PR-A,023 PsychoRhodes,,To Be Without You
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-A', '023 PsychoRhodes', NULL, 'To Be Without You',
   'main', 'soundtemp', 10),

  -- Row 724: Roland,JV-2080,PR-C,047 Bass Pizz,,Waltz Me Sweet
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-C', '047 Bass Pizz', NULL, 'Waltz Me Sweet',
   'main', 'soundtemp', 11),

  -- Row 725: Roland,SR-JV80-06 Dance,,0216 Rewind,Uses some kind of effect,Shadow
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '0216 Rewind', 'Uses some kind of effect', 'Shadow',
   'main', 'soundtemp', 12),

  -- Row 726: Spectrasonics,Distorted Reality 2,Disc 1 -> Partition A -> 02 70-79 BPM,TRANSFORM 78,,Frozen Beat
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Distorted Reality 2' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 02 70-79 BPM', 'TRANSFORM 78', NULL, 'Frozen Beat',
   'main', 'soundtemp', 13),

  -- Row 727: Spectrasonics,Symphony of Voices,,,,"To Be Without You, 영원한 생명"
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   NULL, NULL, NULL, 'To Be Without You, 영원한 생명',
   'main', 'soundtemp', 14),

  -- Row 728: Spectrasonics,Symphony of Voices,Disc 2 -> Partition G -> 02 SOP-EH-OH,SOP EH-OH AS,,To Be Without You
  ((SELECT id FROM games WHERE title = 'Narsillion - Leithian Another Story'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 2 -> Partition G -> 02 SOP-EH-OH', 'SOP EH-OH AS', NULL, 'To Be Without You',
   'main', 'soundtemp', 15),

  -- =========================================================================
  -- Crazy Arcade BnB Adventure (rows 730-734) -> all main (5 rows)
  -- =========================================================================

  -- Row 730: Ensoniq,EXP-1 The Real World,EXP025,082 Vox Phrases,,Floopy Forest
  ((SELECT id FROM games WHERE title = 'Crazy Arcade BnB Adventure'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'EXP-1 The Real World' COLLATE NOCASE),
   'EXP025', '082 Vox Phrases', NULL, 'Floopy Forest',
   'main', 'soundtemp', 1),

  -- Row 731: KORG,TRITON-Rack,Programs -> INT-C,C127 Bottle-Bell,,Bomb Factory
  ((SELECT id FROM games WHERE title = 'Crazy Arcade BnB Adventure'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-C', 'C127 Bottle-Bell', NULL, 'Bomb Factory',
   'main', 'soundtemp', 2),

  -- Row 732: Ueberschall,2 Step Garage,Disc 1,Track 07,Timestamp: 0:00,Factorial 2Steps
  ((SELECT id FROM games WHERE title = 'Crazy Arcade BnB Adventure'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '2 Step Garage' COLLATE NOCASE),
   'Disc 1', 'Track 07', 'Timestamp: 0:00', 'Factorial 2Steps',
   'main', 'soundtemp', 3),

  -- Row 733: Ueberschall,2 Step Garage,Disc 1,Track 10,Timestamp: 0:00,Factorial 2Steps
  ((SELECT id FROM games WHERE title = 'Crazy Arcade BnB Adventure'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '2 Step Garage' COLLATE NOCASE),
   'Disc 1', 'Track 10', 'Timestamp: 0:00', 'Factorial 2Steps',
   'main', 'soundtemp', 4),

  -- Row 734: Yamaha,MOTIF 6,PRE2,G14 EthncFlute,,Beguy Desert
  ((SELECT id FROM games WHERE title = 'Crazy Arcade BnB Adventure'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'G14 EthncFlute', NULL, 'Beguy Desert',
   'main', 'soundtemp', 5),

  -- =========================================================================
  -- AceSaga: The Lament of a Raven (rows 736-742) -> all main (7 rows)
  -- =========================================================================

  -- Row 736: Access,Virus,,A4 Impact MS,Program name based on Virus C,Quid Novi
  ((SELECT id FROM games WHERE title = 'AceSaga: The Lament of a Raven'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Access' COLLATE NOCASE AND p.name = 'Virus' COLLATE NOCASE),
   NULL, 'A4 Impact MS', 'Program name based on Virus C', 'Quid Novi',
   'main', 'soundtemp', 1),

  -- Row 737: Hollywood Edge,Premiere Edition,,,Check later,Quid Novi
  ((SELECT id FROM games WHERE title = 'AceSaga: The Lament of a Raven'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition' COLLATE NOCASE),
   NULL, NULL, 'Check later', 'Quid Novi',
   'main', 'soundtemp', 2),

  -- Row 738: Native Instruments,FM7,,,"Far East patch, path coming soon",Amigo
  ((SELECT id FROM games WHERE title = 'AceSaga: The Lament of a Raven'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM7' COLLATE NOCASE),
   NULL, NULL, 'Far East patch, path coming soon', 'Amigo',
   'main', 'soundtemp', 3),

  -- Row 739: Spectrasonics,Symphony of Voices,Disc 2 -> Partition G -> 01 SOP OHS,SOP OHS AS,,Cul de sac
  ((SELECT id FROM games WHERE title = 'AceSaga: The Lament of a Raven'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 2 -> Partition G -> 01 SOP OHS', 'SOP OHS AS', NULL, 'Cul de sac',
   'main', 'soundtemp', 4),

  -- Row 740: Spectrasonics,Symphony of Voices,Disc 2 -> Partition G -> 02 SOP-EH-OH,SOP EH-OH AS,,Quid Novi
  ((SELECT id FROM games WHERE title = 'AceSaga: The Lament of a Raven'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 2 -> Partition G -> 02 SOP-EH-OH', 'SOP EH-OH AS', NULL, 'Quid Novi',
   'main', 'soundtemp', 5),

  -- Row 741: Spectrasonics,Symphony of Voices,Boys Choir & Gregorian Men -> BOY PHRAS,ALLELUBOY,,Retrospect
  ((SELECT id FROM games WHERE title = 'AceSaga: The Lament of a Raven'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Boys Choir & Gregorian Men -> BOY PHRAS', 'ALLELUBOY', NULL, 'Retrospect',
   'main', 'soundtemp', 6),

  -- Row 742: Spectrasonics,Symphony of Voices,Boys Choir & Gregorian Men -> BOY PHRAS,LULU BOY,,Retrospect
  ((SELECT id FROM games WHERE title = 'AceSaga: The Lament of a Raven'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Boys Choir & Gregorian Men -> BOY PHRAS', 'LULU BOY', NULL, 'Retrospect',
   'main', 'soundtemp', 7),

  -- =========================================================================
  -- War of Chunrang (rows 744-757) -> all main (14 rows)
  -- =========================================================================

  -- Row 744: Ensoniq,MR-Rack,,,"Surdos, possibly other kit pieces",당나라 킹카
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   NULL, NULL, 'Surdos, possibly other kit pieces', '당나라 킹카',
   'main', 'soundtemp', 1),

  -- Row 745: InVision,Lightware - Stratus Sound Sampler,Partition A -> KYOTO GARDEN,KYOTO GARDEN,Possibly another library entirely,Bamboo Da Groove
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'InVision' COLLATE NOCASE AND p.name = 'Lightware - Stratus Sound Sampler' COLLATE NOCASE),
   'Partition A -> KYOTO GARDEN', 'KYOTO GARDEN', 'Possibly another library entirely', 'Bamboo Da Groove',
   'main', 'soundtemp', 2),

  -- Row 746: Masterbits,Climax Vol. 9 - RAPsody (Vocals II),,Track 04,Timestamp: 0:12.6,Love is
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Climax Vol. 9 - RAPsody (Vocals II)' COLLATE NOCASE),
   NULL, 'Track 04', 'Timestamp: 0:12.6', 'Love is',
   'main', 'soundtemp', 3),

  -- Row 747: Roland,JV-2080,PR-D (GM Bank),078 Shakuhachi,,쾌도난마
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-D (GM Bank)', '078 Shakuhachi', NULL, '쾌도난마',
   'main', 'soundtemp', 4),

  -- Row 748: Spectrasonics,Metamorphosis,Disc 1 -> Partition A -> 53-70 LOOPS,MOHAVE C,,월하연서
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 53-70 LOOPS', 'MOHAVE C', NULL, '월하연서',
   'main', 'soundtemp', 5),

  -- Row 749: Spectrasonics,Metamorphosis,Disc 2 -> PARTITION A -> 99-105 LPS,HAMSTRING,,For the Rest of My Life
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 2 -> PARTITION A -> 99-105 LPS', 'HAMSTRING', NULL, 'For the Rest of My Life',
   'main', 'soundtemp', 6),

  -- Row 750: Sonic Foundry,Voices of Native America,Single Shot Loops & Hits -> Flutes,Echo Flute 9.2,,Moon Doon
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   'Single Shot Loops & Hits -> Flutes', 'Echo Flute 9.2', NULL, 'Moon Doon',
   'main', 'soundtemp', 7),

  -- Row 751: Yamaha,MOTIF 6,PRE1,,piano,월하연서
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', NULL, 'piano', '월하연서',
   'main', 'soundtemp', 8),

  -- Row 752: Yamaha,MOTIF 6,,,strings,배신하면 칼맞는다
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   NULL, NULL, 'strings', '배신하면 칼맞는다',
   'main', 'soundtemp', 9),

  -- Row 753: Yamaha,MOTIF 6,,,guitar slide,선자불래 내자불선
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   NULL, NULL, 'guitar slide', '선자불래 내자불선',
   'main', 'soundtemp', 10),

  -- Row 754: Yamaha,MOTIF 6,PRE1,F10 JazzGTmelo,,남가일몽  (trailing whitespace stripped from examples)
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', 'F10 JazzGTmelo', NULL, '남가일몽',
   'main', 'soundtemp', 11),

  -- Row 755: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,,"Mirage 4 you, 당나라 킹카"
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Mirage 4 you, 당나라 킹카',
   'main', 'soundtemp', 12),

  -- Row 756: Yamaha,MOTIF 6,GM,G12 Koto,,남경반점
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'GM', 'G12 Koto', NULL, '남경반점',
   'main', 'soundtemp', 13),

  -- Row 757: Zero-G,Orchestral Flavours,,Orch stab,Could be from JV80-02/PS's,배신하면 칼맞는다
  ((SELECT id FROM games WHERE title = 'War of Chunrang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Orchestral Flavours' COLLATE NOCASE),
   NULL, 'Orch stab', 'Could be from JV80-02/PS''s', '배신하면 칼맞는다',
   'main', 'soundtemp', 14),

  -- =========================================================================
  -- Magna Carta: Crimson Stigmata / Tears of Blood (rows 759-763) -> all main (5 rows)
  -- =========================================================================

  -- Row 759: EastWest,Steve Stevens Guitar,Partition A -> SPECIAL EFX,EFX #1 3,,Four Guardian Kings
  ((SELECT id FROM games WHERE title = 'Magna Carta: Crimson Stigmata / Tears of Blood'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Steve Stevens Guitar' COLLATE NOCASE),
   'Partition A -> SPECIAL EFX', 'EFX #1 3', NULL, 'Four Guardian Kings',
   'main', 'soundtemp', 1),

  -- Row 760: Ensoniq,MR-Rack,ROM004,050 Pipe Organ,Not 100% match? Possibly exp patch?,Cave Theme III
  ((SELECT id FROM games WHERE title = 'Magna Carta: Crimson Stigmata / Tears of Blood'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM004', '050 Pipe Organ', 'Not 100% match? Possibly exp patch?', 'Cave Theme III',
   'main', 'soundtemp', 2),

  -- Row 761: Spectrasonics,Symphony of Voices,,,, (examples empty)
  ((SELECT id FROM games WHERE title = 'Magna Carta: Crimson Stigmata / Tears of Blood'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 3),

  -- Row 762: Spectrasonics,Vocal Planet,Disc 3 -> Partition H -> 2 VOCAL WIND,A TO O SWEEP,,Moment of Fear
  ((SELECT id FROM games WHERE title = 'Magna Carta: Crimson Stigmata / Tears of Blood'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Vocal Planet' COLLATE NOCASE),
   'Disc 3 -> Partition H -> 2 VOCAL WIND', 'A TO O SWEEP', NULL, 'Moment of Fear',
   'main', 'soundtemp', 4),

  -- Row 763: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,,The Town of Notia
  ((SELECT id FROM games WHERE title = 'Magna Carta: Crimson Stigmata / Tears of Blood'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'The Town of Notia',
   'main', 'soundtemp', 5),

  -- =========================================================================
  -- Magna Carta II (rows 765-773) -> all main (9 rows)
  -- =========================================================================

  -- Row 765: Best Service,Ethno World,Woodwind and Brass -> Various Flute FX,Various Flute FX,,Phong
  ((SELECT id FROM games WHERE title = 'Magna Carta II'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World' COLLATE NOCASE),
   'Woodwind and Brass -> Various Flute FX', 'Various Flute FX', NULL, 'Phong',
   'main', 'soundtemp', 1),

  -- Row 766: EastWest,Stormdrum,Large Percussion,Big Hits,A5,"Danger, Sentiel, Last Scene"
  ((SELECT id FROM games WHERE title = 'Magna Carta II'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Stormdrum' COLLATE NOCASE),
   'Large Percussion', 'Big Hits', 'A5', 'Danger, Sentiel, Last Scene',
   'main', 'soundtemp', 2),

  -- Row 767: EastWest,Symphonic Orchestra,,,, (examples empty)
  ((SELECT id FROM games WHERE title = 'Magna Carta II'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 3),

  -- Row 768: EastWest,Symphonic Orchestra,,,String FX,Dreadful Sight
  ((SELECT id FROM games WHERE title = 'Magna Carta II'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'String FX', 'Dreadful Sight',
   'main', 'soundtemp', 4),

  -- Row 769: EastWest,Symphonic Orchestra,Perc -> Drums,Timp Hits LR,,The Rival
  ((SELECT id FROM games WHERE title = 'Magna Carta II'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', NULL, 'The Rival',
   'main', 'soundtemp', 5),

  -- Row 770: EastWest,Symphonic Orchestra,,,Snares,"The Rival, The Team"
  ((SELECT id FROM games WHERE title = 'Magna Carta II'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'Snares', 'The Rival, The Team',
   'main', 'soundtemp', 6),

  -- Row 771: Spectrasonics,Stylus RMX,,,Custom loops?,The Rival
  ((SELECT id FROM games WHERE title = 'Magna Carta II'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, 'Custom loops?', 'The Rival',
   'main', 'soundtemp', 7),

  -- Row 772: Spectrasonics,Stylus RMX,,160-World Hunt Combo,,Escape
  ((SELECT id FROM games WHERE title = 'Magna Carta II'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-World Hunt Combo', NULL, 'Escape',
   'main', 'soundtemp', 8),

  -- Row 773: Spectrasonics,Stylus RMX,Sound Menus,Cinematic Ambient Metals,C3,"The Rival, Oldfox Canyon, Escape"
  ((SELECT id FROM games WHERE title = 'Magna Carta II'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus', 'Cinematic Ambient Metals', 'C3', 'The Rival, Oldfox Canyon, Escape',
   'main', 'soundtemp', 9),

  -- =========================================================================
  -- MapleStory Cave Crawlers (rows 775-780) -> all main (6 rows)
  -- =========================================================================

  -- Row 775: Native Instruments,FM8,,Far East,Could be Airpad from FM8 Factory,Frozen Mountain
  ((SELECT id FROM games WHERE title = 'MapleStory Cave Crawlers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   NULL, 'Far East', 'Could be Airpad from FM8 Factory', 'Frozen Mountain',
   'main', 'soundtemp', 1),

  -- Row 776: Roland,SR-JV80-06 Dance,,015 Nite'Hood 94,,Town
  ((SELECT id FROM games WHERE title = 'MapleStory Cave Crawlers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '015 Nite''Hood 94', NULL, 'Town',
   'main', 'soundtemp', 2),

  -- Row 777: Spectrasonics,Stylus RMX,,160-Spheres Iced,,Frozen Mountain
  ((SELECT id FROM games WHERE title = 'MapleStory Cave Crawlers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Spheres Iced', NULL, 'Frozen Mountain',
   'main', 'soundtemp', 3),

  -- Row 778: Spectrasonics,Stylus RMX,,,,Howling Mine (ver.2)
  ((SELECT id FROM games WHERE title = 'MapleStory Cave Crawlers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, NULL, 'Howling Mine (ver.2)',
   'main', 'soundtemp', 4),

  -- Row 779: Spectrasonics,Stylus RMX,,,,Last Boss
  ((SELECT id FROM games WHERE title = 'MapleStory Cave Crawlers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, NULL, 'Last Boss',
   'main', 'soundtemp', 5),

  -- Row 780: XLN Audio,Addictive Drums,,Startup,,Battle
  ((SELECT id FROM games WHERE title = 'MapleStory Cave Crawlers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   NULL, 'Startup', NULL, 'Battle',
   'main', 'soundtemp', 6),

  -- =========================================================================
  -- RUNE the First Wanderer (rows 782-783) -> all main (2 rows)
  -- =========================================================================

  -- Row 782: EastWest,Symphonic Orchestra,,,a lot of it in a lot of tracks, (examples empty)
  ((SELECT id FROM games WHERE title = 'RUNE the First Wanderer'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'a lot of it in a lot of tracks', NULL,
   'main', 'soundtemp', 1),

  -- Row 783: Native Instruments,FM8,,Far East,Could be Airpad from FM8 Factory,"Mark, The Tree"
  ((SELECT id FROM games WHERE title = 'RUNE the First Wanderer'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   NULL, 'Far East', 'Could be Airpad from FM8 Factory', 'Mark, The Tree',
   'main', 'soundtemp', 2),

  -- =========================================================================
  -- Stellar Blade (row 785) -> all main (1 row)
  -- =========================================================================

  -- Row 785: XLN Audio,Addictive Drums 2,,AD Classic Startup,Could possibly be AD1 Startup,First Trailer
  ((SELECT id FROM games WHERE title = 'Stellar Blade'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   NULL, 'AD Classic Startup', 'Could possibly be AD1 Startup', 'First Trailer',
   'main', 'soundtemp', 1);

-- Patch raw_source for the row whose brand was known but product was blank.
-- Stashes the original col A / col B descriptor so the source row is recoverable.
UPDATE usages SET raw_source = 'Spectrasonics — product unspecified in source CSV (col A=Spectrasonics, col B empty)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Magna Carta: The Phantom of Avalanche')
    AND position = 9;
