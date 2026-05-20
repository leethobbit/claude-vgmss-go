-- Source: reference/SoundTeMP Sound Sources & Information Compendium (WIP) - Sound Sources.csv rows 9-117
-- Two games covered: 4LEAF (2000) rows 9-26 and Ragnarok Online (2002) rows 27-117.
-- SoundTeMP CSV has 6 columns (no Demo column); demo_url is always NULL.
-- 4LEAF subsection at row 25: Stuff to find/Confirm or Deconfirm/Potential leads -> category 'stuff_to_find'.
-- Ragnarok Online has no subsections (all rows -> category 'main').

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Access'),
  ('Hollywood Edge'),
  ('InVision'),
  ('E-MU Systems'),
  ('Ensoniq'),
  ('Future Music'),
  ('Masterbits'),
  ('eLAB'),
  ('Sonic Foundry'),
  ('Ueberschall'),
  ('Discovery Firm'),
  ('Best Service'),
  ('EastWest'),
  ('KORG'),
  ('Roland'),
  ('Spectrasonics'),
  ('Yamaha'),
  ('Zero-G'),
  ('XLN Audio');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  -- 4LEAF products
  ((SELECT id FROM manufacturers WHERE name = 'Access'         COLLATE NOCASE), 'Virus Indigo',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'Funky Ass Loops',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Hollywood Edge' COLLATE NOCASE), 'Premiere Edition Vol. 1',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'           COLLATE NOCASE), 'TRITON-RACK',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'         COLLATE NOCASE), 'JV-2080',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'         COLLATE NOCASE), 'SR-JV80-06 Dance',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'         COLLATE NOCASE), 'XV-5080',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'  COLLATE NOCASE), 'Bass Legends',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'  COLLATE NOCASE), 'Metamorphosis',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'         COLLATE NOCASE), 'MOTIF 6',                                      'Synth'),

  -- Ragnarok Online products
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'Advanced Mega Effects',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'Black Box',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'Orchestral Colors',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'Vocal Elements - Diamond Vocals',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'Voice Spectral',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm' COLLATE NOCASE), 'Sound Effects CD Series - 6 - Nature',         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'BT Breakz from the Nu Skool',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'Percussive Adventures',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'Steve Stevens Guitar',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'Symphonic Orchestra',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'Quantum Leap Brass',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'E-MU Systems'   COLLATE NOCASE), 'Proteus 2000',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'        COLLATE NOCASE), 'EXP-3 Urban Dance Project',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'eLAB'           COLLATE NOCASE), 'X-Static Goldmine 3',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'        COLLATE NOCASE), 'MR-Rack',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Future Music'   COLLATE NOCASE), 'FM62 - The Future Loops Collection',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'InVision'       COLLATE NOCASE), 'Lightware - Stratus Sound Sampler',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'           COLLATE NOCASE), 'TR-Rack',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'           COLLATE NOCASE), 'EXB-PCM06 Orchestral Collection',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Masterbits'     COLLATE NOCASE), 'Peter Siedlaczek''s Orchestra',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonic Foundry'  COLLATE NOCASE), 'Voices of Native America',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'         COLLATE NOCASE), 'SR-JV80-04 Vintage Synth',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'  COLLATE NOCASE), 'Distorted Reality II',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'  COLLATE NOCASE), 'Heart of Africa',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'  COLLATE NOCASE), 'Heart of Asia',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'  COLLATE NOCASE), 'Liquid Grooves',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'  COLLATE NOCASE), 'Stylus RMX',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'    COLLATE NOCASE), '2 Step Garage',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'    COLLATE NOCASE), 'Brazil Electro',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'    COLLATE NOCASE), 'Disco Deluxe',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'         COLLATE NOCASE), 'MOTIF-RACK',                                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'         COLLATE NOCASE), 'PLG150-VL',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'         COLLATE NOCASE), 'Chemical Beats',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'         COLLATE NOCASE), 'Cuckooland UNHINGED',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'         COLLATE NOCASE), 'Datafile 3',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'         COLLATE NOCASE), 'Interface Dance',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'      COLLATE NOCASE), 'Addictive Drums',                              'Instrument');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('4LEAF',
   NULL,
   '2000',
   'Jinbae Park, Goomin Nam, Sungwoon Jang',
   'jinbae park, goomin nam, sungwoon jang',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Ragnarok Online',
   NULL,
   '2002',
   'SoundTeMP, Jinbae Park, Sungwoon Jang, Goo-Hee Kwon, Seock-Jin Lee, Soo-Il Park, Goomin Nam',
   'soundtemp, jinbae park, sungwoon jang, goo-hee kwon, seock-jin lee, soo-il park, goomin nam',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- 4LEAF (rows 10-26)
  -- Rows 10-24 -> main (15 rows)
  -- =========================================================================

  -- Row 10: Access,Virus Indigo,,C49 HongKongBC,,Seaside Sunset
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Access' COLLATE NOCASE AND p.name = 'Virus Indigo' COLLATE NOCASE),
   NULL, 'C49 HongKongBC', NULL, 'Seaside Sunset',
   'main', 'soundtemp', 1),

  -- Row 11: EastWest,Funky Ass Loops,Partition D -> VOLUME 01 7M,32 Mannequin Party 110 A,Might be ProSamples 35,Readymade Funk
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Funky Ass Loops' COLLATE NOCASE),
   'Partition D -> VOLUME 01 7M', '32 Mannequin Party 110 A', 'Might be ProSamples 35', 'Readymade Funk',
   'main', 'soundtemp', 2),

  -- Row 12: Hollywood Edge,Premiere Edition Vol. 1,PE-01 Nature Ambiences,ForestAmbienceBird PE010101,,Green Grass
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-01 Nature Ambiences', 'ForestAmbienceBird PE010101', NULL, 'Green Grass',
   'main', 'soundtemp', 3),

  -- Row 13: KORG,TRITON-RACK,Programs -> INT-A,065 90's Piano,"Disable OSC2, disable MFX 1 (chorus)",Modern Cat Walk
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-A', '065 90''s Piano', 'Disable OSC2, disable MFX 1 (chorus)', 'Modern Cat Walk',
   'main', 'soundtemp', 4),

  -- Row 14: Roland,JV-2080,,,,Break Time
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, NULL, 'Break Time',
   'main', 'soundtemp', 5),

  -- Row 15: Roland,SR-JV80-06 Dance,,140 Slide Fx x2,,Fortune Message
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '140 Slide Fx x2', NULL, 'Fortune Message',
   'main', 'soundtemp', 6),

  -- Row 16: Roland,SR-JV80-06 Dance,,141 Spooky,,Nihao Carden
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '141 Spooky', NULL, 'Nihao Carden',
   'main', 'soundtemp', 7),

  -- Row 17: Spectrasonics,Bass Legends,Disc 2 -> PARTITION B -> ALL SLIDES,JP AC.UP-DWN,Regular bass should be the same one,Keltica Street R2
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Bass Legends' COLLATE NOCASE),
   'Disc 2 -> PARTITION B -> ALL SLIDES', 'JP AC.UP-DWN', 'Regular bass should be the same one', 'Keltica Street R2',
   'main', 'soundtemp', 8),

  -- Row 18: Spectrasonics,Metamorphosis,Disc 2 -> PARTITION A -> 99-105 LPS,HAMSTRING,,Modern Cat Walk
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 2 -> PARTITION A -> 99-105 LPS', 'HAMSTRING', NULL, 'Modern Cat Walk',
   'main', 'soundtemp', 9),

  -- Row 19: Spectrasonics,Metamorphosis,Disc 3 -> PARTITION B -> 125-135 LPS,MOVE ME C,Filter applied,Around This Place
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 3 -> PARTITION B -> 125-135 LPS', 'MOVE ME C', 'Filter applied', 'Around This Place',
   'main', 'soundtemp', 10),

  -- Row 20: Yamaha,MOTIF 6,PRE1,F10 JazzGTmelo,,Seaside Sunset
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', 'F10 JazzGTmelo', NULL, 'Seaside Sunset',
   'main', 'soundtemp', 11),

  -- Row 21: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,,"Silky Feelin', Readymade Funk, Happy New Year"
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Silky Feelin'', Readymade Funk, Happy New Year',
   'main', 'soundtemp', 12),

  -- Row 22: Yamaha,MOTIF 6,PRE2,G01 SAKURA,,"Nihao Carden, Happy New Year"
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'G01 SAKURA', NULL, 'Nihao Carden, Happy New Year',
   'main', 'soundtemp', 13),

  -- Row 23: Yamaha,MOTIF 6,PRE2,G14 EthncFlute,,Nihao Carden
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'G14 EthncFlute', NULL, 'Nihao Carden',
   'main', 'soundtemp', 14),

  -- Row 24: Yamaha,MOTIF 6,USER,G08 Sine Lead,,Modern Cat Walk
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'USER', 'G08 Sine Lead', NULL, 'Modern Cat Walk',
   'main', 'soundtemp', 15),

  -- Row 25: subsection header "Stuff to find/Confirm or Deconfirm/Potential leads" -> stuff_to_find for rows below
  -- Row 26: Roland,XV-5080,,,Piano & Strings according to ESTi,Fortune Message
  ((SELECT id FROM games WHERE title = '4LEAF'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'XV-5080' COLLATE NOCASE),
   NULL, NULL, 'Piano & Strings according to ESTi', 'Fortune Message',
   'stuff_to_find', 'soundtemp', 16),

  -- =========================================================================
  -- Ragnarok Online (rows 28-117) -> all main (90 rows)
  -- =========================================================================

  -- Row 28: Best Service,Advanced Mega Effects,Partition A -> VOLUME 006,DANGEROUS,Sample: TRIN#03.1,Backattack!!
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Advanced Mega Effects' COLLATE NOCASE),
   'Partition A -> VOLUME 006', 'DANGEROUS', 'Sample: TRIN#03.1', 'Backattack!!',
   'main', 'soundtemp', 1),

  -- Row 29: Best Service,Black Box,Vol.1 welcome fantasy,the_rack,,"Good Night, Dancing Christmas in the 13th Month"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Black Box' COLLATE NOCASE),
   'Vol.1 welcome fantasy', 'the_rack', NULL, 'Good Night, Dancing Christmas in the 13th Month',
   'main', 'soundtemp', 2),

  -- Row 30: Best Service,Orchestral Colors,,WSG_D#,"If in EXB-PCM06, it's that instead",Curse'n Pain
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Orchestral Colors' COLLATE NOCASE),
   NULL, 'WSG_D#', 'If in EXB-PCM06, it''s that instead', 'Curse''n Pain',
   'main', 'soundtemp', 3),

  -- Row 31: Best Service,Orchestral Colors,,WSG_F#,"If in EXB-PCM06, it's that instead",Curse'n Pain
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Orchestral Colors' COLLATE NOCASE),
   NULL, 'WSG_F#', 'If in EXB-PCM06, it''s that instead', 'Curse''n Pain',
   'main', 'soundtemp', 4),

  -- Row 32: Best Service,Vocal Elements - Diamond Vocals,,Dv_trk15,Timestamp: 0:09.2,"Through The Tower, Dreamer's Dream"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Vocal Elements - Diamond Vocals' COLLATE NOCASE),
   NULL, 'Dv_trk15', 'Timestamp: 0:09.2', 'Through The Tower, Dreamer''s Dream',
   'main', 'soundtemp', 5),

  -- Row 33: Best Service,Vocal Elements - Diamond Vocals,,Dv_trk54,Timestamp: 0:03.7,Dreamer's Dream
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Vocal Elements - Diamond Vocals' COLLATE NOCASE),
   NULL, 'Dv_trk54', 'Timestamp: 0:03.7', 'Dreamer''s Dream',
   'main', 'soundtemp', 6),

  -- Row 34: Best Service,Vocal Elements - Diamond Vocals,,Dv_trk56,Timestamp: 0:51.8,Dreamer's Dream
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Vocal Elements - Diamond Vocals' COLLATE NOCASE),
   NULL, 'Dv_trk56', 'Timestamp: 0:51.8', 'Dreamer''s Dream',
   'main', 'soundtemp', 7),

  -- Row 35: Best Service,Vocal Elements - Diamond Vocals,,Dv_trk75,Timestamp: 0:05.6,Dreamer's Dream
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Vocal Elements - Diamond Vocals' COLLATE NOCASE),
   NULL, 'Dv_trk75', 'Timestamp: 0:05.6', 'Dreamer''s Dream',
   'main', 'soundtemp', 8),

  -- Row 36: Best Service,Vocal Elements - Diamond Vocals,,Dv_trk82,Timestamp: 0:15.3,Dreamer's Dream
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Vocal Elements - Diamond Vocals' COLLATE NOCASE),
   NULL, 'Dv_trk82', 'Timestamp: 0:15.3', 'Dreamer''s Dream',
   'main', 'soundtemp', 9),

  -- Row 37: Best Service,Voice Spectral,,Track 24,Timestamp 0:00,Dreamer's Dream
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Voice Spectral' COLLATE NOCASE),
   NULL, 'Track 24', 'Timestamp 0:00', 'Dreamer''s Dream',
   'main', 'soundtemp', 10),

  -- Row 38: Best Service,Voice Spectral,,Track 86,Timestamp: 0:15.3,One Step Closer
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Voice Spectral' COLLATE NOCASE),
   NULL, 'Track 86', 'Timestamp: 0:15.3', 'One Step Closer',
   'main', 'soundtemp', 11),

  -- Row 39: Discovery Firm,Sound Effects CD Series - 6 - Nature,,Wind-1,Timestamp: 0:00.0,Outer Breath
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series - 6 - Nature' COLLATE NOCASE),
   NULL, 'Wind-1', 'Timestamp: 0:00.0', 'Outer Breath',
   'main', 'soundtemp', 12),

  -- Row 40: Discovery Firm,Sound Effects CD Series - 6 - Nature,,Wind-2,Timestamp: 0:00.0,Outer Breath
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series - 6 - Nature' COLLATE NOCASE),
   NULL, 'Wind-2', 'Timestamp: 0:00.0', 'Outer Breath',
   'main', 'soundtemp', 13),

  -- Row 41: EastWest,BT Breakz from the Nu Skool ,,073 Coat Hanger Live,,TeMP it Up
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'BT Breakz from the Nu Skool' COLLATE NOCASE),
   NULL, '073 Coat Hanger Live', NULL, 'TeMP it Up',
   'main', 'soundtemp', 14),

  -- Row 42: EastWest,BT Breakz from the Nu Skool ,,090 Graveyard Shift,,TeMPoison
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'BT Breakz from the Nu Skool' COLLATE NOCASE),
   NULL, '090 Graveyard Shift', NULL, 'TeMPoison',
   'main', 'soundtemp', 15),

  -- Row 43: EastWest,Percussive Adventures,,,Hihats (PA1 Coll. -> LoopPulses > 068),Peaceful Forest
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Percussive Adventures' COLLATE NOCASE),
   NULL, NULL, 'Hihats (PA1 Coll. -> LoopPulses > 068)', 'Peaceful Forest',
   'main', 'soundtemp', 16),

  -- Row 44: EastWest,Percussive Adventures,,,Trail (PA1 Coll. > Hits/Holds > TRAILS),Risk Your Life
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Percussive Adventures' COLLATE NOCASE),
   NULL, NULL, 'Trail (PA1 Coll. > Hits/Holds > TRAILS)', 'Risk Your Life',
   'main', 'soundtemp', 17),

  -- Row 45: EastWest,Steve Stevens Guitar,Partition A -> SPECIAL EFX,EFX #1 3,,Time UP!
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Steve Stevens Guitar' COLLATE NOCASE),
   'Partition A -> SPECIAL EFX', 'EFX #1 3', NULL, 'Time UP!',
   'main', 'soundtemp', 18),

  -- Row 46: EastWest,Symphonic Orchestra,,,,"Steel Me, Noblesse Oblige, CheongChoon"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, 'Steel Me, Noblesse Oblige, CheongChoon',
   'main', 'soundtemp', 19),

  -- Row 47: EastWest,Quantum Leap Brass,Alto Sax -> AS Long,AS Sustain,,Out of Curiosity
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Quantum Leap Brass' COLLATE NOCASE),
   'Alto Sax -> AS Long', 'AS Sustain', NULL, 'Out of Curiosity',
   'main', 'soundtemp', 20),

  -- Row 48: E-MU Systems,Proteus 2000,Bank 2,044 hit: Brass Hits 3,Could be ROM version?,CheongChoon
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Proteus 2000' COLLATE NOCASE),
   'Bank 2', '044 hit: Brass Hits 3', 'Could be ROM version?', 'CheongChoon',
   'main', 'soundtemp', 21),

  -- Row 49: Ensoniq,EXP-3 Urban Dance Project,EXP030,066 Inharmonica,,Purity of your smile
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'EXP-3 Urban Dance Project' COLLATE NOCASE),
   'EXP030', '066 Inharmonica', NULL, 'Purity of your smile',
   'main', 'soundtemp', 22),

  -- Row 50: eLAB,X-Static Goldmine 3,,Trance Sweeps 1,Timestamp: 0:50.1,Dreamer's Dream
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'eLAB' COLLATE NOCASE AND p.name = 'X-Static Goldmine 3' COLLATE NOCASE),
   NULL, 'Trance Sweeps 1', 'Timestamp: 0:50.1', 'Dreamer''s Dream',
   'main', 'soundtemp', 23),

  -- Row 51: Ensoniq,MR-Rack,RAM001,001 AmazonRiver,,"Theme of Geffen, Plateau"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'RAM001', '001 AmazonRiver', NULL, 'Theme of Geffen, Plateau',
   'main', 'soundtemp', 24),

  -- Row 52: Ensoniq,MR-Rack,ROM005,076 Harmonica,,Plateau
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '076 Harmonica', NULL, 'Plateau',
   'main', 'soundtemp', 25),

  -- Row 53: Ensoniq,MR-Rack,ROM005,091 Shamisen,,Theme of Payon
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '091 Shamisen', NULL, 'Theme of Payon',
   'main', 'soundtemp', 26),

  -- Row 54: Ensoniq,MR-Rack,ROM005,004 Dbl 6-Strng,See notes about Ethical Aspiration,"Streamside, Ethical Aspiration"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '004 Dbl 6-Strng', 'See notes about Ethical Aspiration', 'Streamside, Ethical Aspiration',
   'main', 'soundtemp', 27),

  -- Row 55: Future Music,FM62 - The Future Loops Collection,,Track 33,,Travel
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Future Music' COLLATE NOCASE AND p.name = 'FM62 - The Future Loops Collection' COLLATE NOCASE),
   NULL, 'Track 33', NULL, 'Travel',
   'main', 'soundtemp', 28),

  -- Row 56: InVision,Lightware - Stratus Sound Sampler,Partition A -> KYOTO GARDEN,KYOTO GARDEN,Possibly another library entirely,Risk Your Life
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'InVision' COLLATE NOCASE AND p.name = 'Lightware - Stratus Sound Sampler' COLLATE NOCASE),
   'Partition A -> KYOTO GARDEN', 'KYOTO GARDEN', 'Possibly another library entirely', 'Risk Your Life',
   'main', 'soundtemp', 29),

  -- Row 57: KORG,TR-Rack,Prog > A,A101 Finger Cymbal,,Nano East
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Prog > A', 'A101 Finger Cymbal', NULL, 'Nano East',
   'main', 'soundtemp', 30),

  -- Row 58: KORG,TR-Rack,Prog > C,C01 Clear Mallet,,Yuna Song
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Prog > C', 'C01 Clear Mallet', NULL, 'Yuna Song',
   'main', 'soundtemp', 31),

  -- Row 59: KORG,TR-Rack,Combi > C,C79 Serengeti,,"Jingle Bell on Ragnarok, Theme of Lutie / Snow In My Heart"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Combi > C', 'C79 Serengeti', NULL, 'Jingle Bell on Ragnarok, Theme of Lutie / Snow In My Heart',
   'main', 'soundtemp', 32),

  -- Row 60: KORG,TR-Rack,Combi > C,C82 Relaxation,,Watery Grave
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Combi > C', 'C82 Relaxation', NULL, 'Watery Grave',
   'main', 'soundtemp', 33),

  -- Row 61: KORG,TRITON-RACK,,,"Bell tree, look into this",Streamside
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   NULL, NULL, 'Bell tree, look into this', 'Streamside',
   'main', 'soundtemp', 34),

  -- Row 62: KORG,TRITON-RACK,Combis -> INT-A,014 Leading Lady,,Yuna Song
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Combis -> INT-A', '014 Leading Lady', NULL, 'Yuna Song',
   'main', 'soundtemp', 35),

  -- Row 63: KORG,TRITON-RACK,Programs -> INT-A,031 VS Bell Boy,,Theme of Geffen
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-A', '031 VS Bell Boy', NULL, 'Theme of Geffen',
   'main', 'soundtemp', 36),

  -- Row 64: KORG,TRITON-RACK,Programs -> INT-A,114 Jungle Melody,,Watery Grave
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-A', '114 Jungle Melody', NULL, 'Watery Grave',
   'main', 'soundtemp', 37),

  -- Row 65: KORG,TRITON-RACK,Programs -> INT-B,045 Gliding Squares,Turn off portamento,You're in Ruins
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-B', '045 Gliding Squares', 'Turn off portamento', 'You''re in Ruins',
   'main', 'soundtemp', 38),

  -- Row 66: KORG,TRITON-RACK,Programs -> INT-C,028 A Leadlead,,Everlasting Wanderers
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-C', '028 A Leadlead', NULL, 'Everlasting Wanderers',
   'main', 'soundtemp', 39),

  -- Row 67: KORG,EXB-PCM06 Orchestral Collection,,001 Maestro Strings,,"I miss you, Ready"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'EXB-PCM06 Orchestral Collection' COLLATE NOCASE),
   NULL, '001 Maestro Strings', NULL, 'I miss you, Ready',
   'main', 'soundtemp', 40),

  -- Row 68: Masterbits,Peter Siedlaczek's Orchestra,Partition D -> STRING SPIC,SPIC C1-A#3,,Stranger Aeons
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Peter Siedlaczek''s Orchestra' COLLATE NOCASE),
   'Partition D -> STRING SPIC', 'SPIC C1-A#3', NULL, 'Stranger Aeons',
   'main', 'soundtemp', 41),

  -- Row 69: Sonic Foundry,Voices of Native America,Single Shot Loops & Hits -> Flutes,Echo Flute 9.1,,Through The Tower
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   'Single Shot Loops & Hits -> Flutes', 'Echo Flute 9.1', NULL, 'Through The Tower',
   'main', 'soundtemp', 42),

  -- Row 70: Roland,JV-2080,,,,"Title, Brassy Road"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, NULL, 'Title, Brassy Road',
   'main', 'soundtemp', 43),

  -- Row 71: Roland,JV-2080,,,"Music box, look into this",Streamside
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Music box, look into this', 'Streamside',
   'main', 'soundtemp', 44),

  -- Row 72: Roland,JV-2080,PR-A,023 PsychoRhodes,,"Ancient Groover, Brassy Road"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-A', '023 PsychoRhodes', NULL, 'Ancient Groover, Brassy Road',
   'main', 'soundtemp', 45),

  -- Row 73: Roland,JV-2080,PR-A,105 Dulcimer,,"Theme of Payon, Through The Tower, Nano East, Into the Abyss, Muay Thai King"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-A', '105 Dulcimer', NULL, 'Theme of Payon, Through The Tower, Nano East, Into the Abyss, Muay Thai King',
   'main', 'soundtemp', 46),

  -- Row 74: Roland,JV-2080,PR-A,114 Jungle Melody,,Watery Grave
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-A', '114 Jungle Melody', NULL, 'Watery Grave',
   'main', 'soundtemp', 47),

  -- Row 75: Roland,JV-2080,PR-B,098 Air Lead,,Streamside
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-B', '098 Air Lead', NULL, 'Streamside',
   'main', 'soundtemp', 48),

  -- Row 76: Roland,JV-2080,PR-C,099 Flying Waltz,,One Fine Day
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-C', '099 Flying Waltz', NULL, 'One Fine Day',
   'main', 'soundtemp', 49),

  -- Row 77: Roland,JV-2080,PR-D (GM Bank),065 Civilization,,Plateau
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-D (GM Bank)', '065 Civilization', NULL, 'Plateau',
   'main', 'soundtemp', 50),

  -- Row 78: Roland,JV-2080,PR-D (GM Bank),078 Shakuhachi,,"Theme of Payon, Ancient Groover, Through The Tower"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-D (GM Bank)', '078 Shakuhachi', NULL, 'Theme of Payon, Ancient Groover, Through The Tower',
   'main', 'soundtemp', 51),

  -- Row 79: Roland,SR-JV80-04 Vintage Synth,,128 Mini Lead,Not sure about this in retrospect,"Theme of Prontera, Plateau, Morning Gloomy, Don't cry, baby"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-04 Vintage Synth' COLLATE NOCASE),
   NULL, '128 Mini Lead', 'Not sure about this in retrospect', 'Theme of Prontera, Plateau, Morning Gloomy, Don''t cry, baby',
   'main', 'soundtemp', 52),

  -- Row 80: Roland,SR-JV80-06 Dance,,0117 Aaaah!,Waveform,CheongChoon
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '0117 Aaaah!', 'Waveform', 'CheongChoon',
   'main', 'soundtemp', 53),

  -- Row 81: Roland,SR-JV80-06 Dance,,0216 Rewind,Waveform,Hamatan
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '0216 Rewind', 'Waveform', 'Hamatan',
   'main', 'soundtemp', 54),

  -- Row 82: Spectrasonics,Bass Legends,Partition A -> ALL THUMBS,EM SLP POP A,Additional bass is layered,TeMPoison
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Bass Legends' COLLATE NOCASE),
   'Partition A -> ALL THUMBS', 'EM SLP POP A', 'Additional bass is layered', 'TeMPoison',
   'main', 'soundtemp', 55),

  -- Row 83: Spectrasonics,Distorted Reality II,Partition A -> 02 70-79 BPM,BLASTCAPS 73,,Treasure Hunter
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Distorted Reality II' COLLATE NOCASE),
   'Partition A -> 02 70-79 BPM', 'BLASTCAPS 73', NULL, 'Treasure Hunter',
   'main', 'soundtemp', 56),

  -- Row 84: Spectrasonics,Heart of Africa,Partition B -> 10 GRP CHANT,AF.CHANTMENU,,Top Hoppy
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Africa' COLLATE NOCASE),
   'Partition B -> 10 GRP CHANT', 'AF.CHANTMENU', NULL, 'Top Hoppy',
   'main', 'soundtemp', 57),

  -- Row 85: Spectrasonics,Heart of Asia,Disc 1 -> Partition B -> BAN-DI FLUTE,BAN-DI -V,"this is chinaflt most likely, check that","Welcome Mr. Hwang, Dream of a Whale"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   'Disc 1 -> Partition B -> BAN-DI FLUTE', 'BAN-DI -V', 'this is chinaflt most likely, check that', 'Welcome Mr. Hwang, Dream of a Whale',
   'main', 'soundtemp', 58),

  -- Row 86: Spectrasonics,Liquid Grooves,Disc 1 -> Partition D -> 78 ICE BRUSH,ICE BRUSHES,Original track from 2000 (See notes),Ethical Aspiration
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Liquid Grooves' COLLATE NOCASE),
   'Disc 1 -> Partition D -> 78 ICE BRUSH', 'ICE BRUSHES', 'Original track from 2000 (See notes)', 'Ethical Aspiration',
   'main', 'soundtemp', 59),

  -- Row 87: Spectrasonics,Liquid Grooves,,095-Aboriginal Wavedrum wet 1,Temporary Stylus name,Treasure Hunter
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Liquid Grooves' COLLATE NOCASE),
   NULL, '095-Aboriginal Wavedrum wet 1', 'Temporary Stylus name', 'Treasure Hunter',
   'main', 'soundtemp', 60),

  -- Row 88: Spectrasonics,Metamorphosis,Disc 1 -> Partition A -> 53-70 LOOPS,MOHAVE C,,Theme of Al de Baran
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 53-70 LOOPS', 'MOHAVE C', NULL, 'Theme of Al de Baran',
   'main', 'soundtemp', 61),

  -- Row 89: Spectrasonics,Metamorphosis,,,,Good Morning
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   NULL, NULL, NULL, 'Good Morning',
   'main', 'soundtemp', 62),

  -- Row 90: Spectrasonics,Stylus RMX,Sound Menus,Cinematic Ambient Metals,C3,Fissure Eruption
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus', 'Cinematic Ambient Metals', 'C3', 'Fissure Eruption',
   'main', 'soundtemp', 63),

  -- Row 91: Spectrasonics,Stylus RMX,,52-Alice's Dream Combo,,Twilight Heaven
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '52-Alice''s Dream Combo', NULL, 'Twilight Heaven',
   'main', 'soundtemp', 64),

  -- Row 92: Spectrasonics,Stylus RMX,,143-MindBender Half Metal,,Stranger Aeons
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '143-MindBender Half Metal', NULL, 'Stranger Aeons',
   'main', 'soundtemp', 65),

  -- Row 93: Spectrasonics,Stylus RMX,,143-MindBender Shakers,,Stranger Aeons
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '143-MindBender Shakers', NULL, 'Stranger Aeons',
   'main', 'soundtemp', 66),

  -- Row 94: Spectrasonics,Stylus RMX,,145-Electric Flower AM Radio,,Stranger Aeons
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '145-Electric Flower AM Radio', NULL, 'Stranger Aeons',
   'main', 'soundtemp', 67),

  -- Row 95: Spectrasonics,Stylus RMX,,160-Spheres DnB,,Away from Home
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Spheres DnB', NULL, 'Away from Home',
   'main', 'soundtemp', 68),

  -- Row 96: Ueberschall,2 Step Garage,Disc 1,Track 19,"Timestamps: 0:59.3, 1:03.8, 1:08.2",Sleepless
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '2 Step Garage' COLLATE NOCASE),
   'Disc 1', 'Track 19', 'Timestamps: 0:59.3, 1:03.8, 1:08.2', 'Sleepless',
   'main', 'soundtemp', 69),

  -- Row 97: Ueberschall,2 Step Garage,Disc 1,Track 27,Timestamp: 0:00,Purity of your smile
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '2 Step Garage' COLLATE NOCASE),
   'Disc 1', 'Track 27', 'Timestamp: 0:00', 'Purity of your smile',
   'main', 'soundtemp', 70),

  -- Row 98: Ueberschall,2 Step Garage,Disc 1,Track 30,Timestamp: 0:00,Purity of your smile
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '2 Step Garage' COLLATE NOCASE),
   'Disc 1', 'Track 30', 'Timestamp: 0:00', 'Purity of your smile',
   'main', 'soundtemp', 71),

  -- Row 99: Ueberschall,2 Step Garage,Disc 1,Track 44,Timestamp: 1:10.6,Sleepless
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '2 Step Garage' COLLATE NOCASE),
   'Disc 1', 'Track 44', 'Timestamp: 1:10.6', 'Sleepless',
   'main', 'soundtemp', 72),

  -- Row 100: Ueberschall,2 Step Garage,Disc 1,Track 54,Timestamp: 0:45.7,Jazzy Funky Sweety
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '2 Step Garage' COLLATE NOCASE),
   'Disc 1', 'Track 54', 'Timestamp: 0:45.7', 'Jazzy Funky Sweety',
   'main', 'soundtemp', 73),

  -- Row 101: Ueberschall,Brazil Electro,,Fx-#448,,"Can't go home again, baby"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Brazil Electro' COLLATE NOCASE),
   NULL, 'Fx-#448', NULL, 'Can''t go home again, baby',
   'main', 'soundtemp', 74),

  -- Row 102: Ueberschall,Disco Deluxe,85-86 VOCALS -> 85 vocals I,voc-hirollers3_em,,High Roller Coaster
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Disco Deluxe' COLLATE NOCASE),
   '85-86 VOCALS -> 85 vocals I', 'voc-hirollers3_em', NULL, 'High Roller Coaster',
   'main', 'soundtemp', 75),

  -- Row 103: Yamaha,MOTIF 6,PRE1,A01 PowerGrand,,Not so far away
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', 'A01 PowerGrand', NULL, 'Not so far away',
   'main', 'soundtemp', 76),

  -- Row 104: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,,"Come in Peace, Lastman Dancing, Alpen Rose"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Come in Peace, Lastman Dancing, Alpen Rose',
   'main', 'soundtemp', 77),

  -- Row 105: Yamaha,MOTIF 6,PRE2,G01 SAKURA,,"Purity of your smile, Sleepless"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'G01 SAKURA', NULL, 'Purity of your smile, Sleepless',
   'main', 'soundtemp', 78),

  -- Row 106: Yamaha,MOTIF 6,GM,G12 Koto,,"Can't go home again, baby"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'GM', 'G12 Koto', NULL, 'Can''t go home again, baby',
   'main', 'soundtemp', 79),

  -- Row 107: Yamaha,MOTIF-RACK,PRE4,031 ScaryNight,,Wanna Be Free!!
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF-RACK' COLLATE NOCASE),
   'PRE4', '031 ScaryNight', NULL, 'Wanna Be Free!!',
   'main', 'soundtemp', 80),

  -- Row 108: Yamaha,PLG150-VL,PLG1PRE1,001 Trumpet 1,,Jazzy Funkey Sweety
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'PLG150-VL' COLLATE NOCASE),
   'PLG1PRE1', '001 Trumpet 1', NULL, 'Jazzy Funkey Sweety',
   'main', 'soundtemp', 81),

  -- Row 109: Yamaha,PLG150-VL,PLG1PRE1,002 Trombone,Needs pitchbends that Trumpet 1 has,"Jingle Bell on Ragnarok, Theme of Lutie / Snow In My Heart"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'PLG150-VL' COLLATE NOCASE),
   'PLG1PRE1', '002 Trombone', 'Needs pitchbends that Trumpet 1 has', 'Jingle Bell on Ragnarok, Theme of Lutie / Snow In My Heart',
   'main', 'soundtemp', 82),

  -- Row 110: Yamaha,PLG150-VL,PLG1PRE1,032 Jazz Flute,,"Theme of Lutie / Snow In My Heart, Top Hoppy"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'PLG150-VL' COLLATE NOCASE),
   'PLG1PRE1', '032 Jazz Flute', NULL, 'Theme of Lutie / Snow In My Heart, Top Hoppy',
   'main', 'soundtemp', 83),

  -- Row 111: Yamaha,PLG150-VL,PLG1PRE1,024 TenorSax 2,,"Welcome, my lord, Mucho Gusto, TeMPotato, Jazzy Funkey Sweety, Macaroni Express"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'PLG150-VL' COLLATE NOCASE),
   'PLG1PRE1', '024 TenorSax 2', NULL, 'Welcome, my lord, Mucho Gusto, TeMPotato, Jazzy Funkey Sweety, Macaroni Express',
   'main', 'soundtemp', 84),

  -- Row 112: Zero-G,Chemical Beats,Guitar Loops-120,120-Guitar Loop 02,Used ver. could be AKAI,Time UP!
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Chemical Beats' COLLATE NOCASE),
   'Guitar Loops-120', '120-Guitar Loop 02', 'Used ver. could be AKAI', 'Time UP!',
   'main', 'soundtemp', 85),

  -- Row 113: Zero-G,Cuckooland UNHINGED,Disc 2 -> Partition A -> FX SET 2,FX SET 2,Sample: RIP SHRIEK,TeMPoison
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Cuckooland UNHINGED' COLLATE NOCASE),
   'Disc 2 -> Partition A -> FX SET 2', 'FX SET 2', 'Sample: RIP SHRIEK', 'TeMPoison',
   'main', 'soundtemp', 86),

  -- Row 114: Zero-G,Cuckooland UNHINGED,Disc 2 -> Partition C -> 096-BPM,096-BPM,Sample: CHIRPINESS,Watery Grave
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Cuckooland UNHINGED' COLLATE NOCASE),
   'Disc 2 -> Partition C -> 096-BPM', '096-BPM', 'Sample: CHIRPINESS', 'Watery Grave',
   'main', 'soundtemp', 87),

  -- Row 115: Zero-G,Datafile 3,,Track 72,Timestamp: 0:17.7,"Can't go home again, baby"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 3' COLLATE NOCASE),
   NULL, 'Track 72', 'Timestamp: 0:17.7', 'Can''t go home again, baby',
   'main', 'soundtemp', 88),

  -- Row 116: Zero-G,Interface Dance,,SYNTHTRANS_OS_HER5_F_MA,Could be Total House instead,Through The Tower
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Interface Dance' COLLATE NOCASE),
   NULL, 'SYNTHTRANS_OS_HER5_F_MA', 'Could be Total House instead', 'Through The Tower',
   'main', 'soundtemp', 89),

  -- Row 117: XLN Audio,Addictive Drums,,Startup,,"Arrival, Melt Down!"
  ((SELECT id FROM games WHERE title = 'Ragnarok Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   NULL, 'Startup', NULL, 'Arrival, Melt Down!',
   'main', 'soundtemp', 90);
