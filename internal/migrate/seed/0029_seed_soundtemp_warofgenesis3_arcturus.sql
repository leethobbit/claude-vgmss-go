-- Source: reference/SoundTeMP Sound Sources & Information Compendium (WIP) - Sound Sources.csv rows 603-702
-- Two games covered: The War of Genesis III (1999) rows 603-621 and Arcturus: The Curse and Loss of Divinity (2000) rows 622-702.
-- SoundTeMP CSV has 6 columns (no Demo column); demo_url is always NULL.
-- All rows -> category 'main' (no subsection headers in this range).
-- Every row has a real brand and product — no Unknown/Unknown sentinel, no Live Recording, no Sample-only rows.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Best Service'),
  ('Big Fish Audio'),
  ('Discovery Firm'),
  ('EastWest'),
  ('Ensoniq'),
  ('KORG'),
  ('Masterbits'),
  ('Roland'),
  ('Sampleheads'),
  ('Spectrasonics'),
  ('Ueberschall'),
  ('Zero-G');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  -- The War of Genesis III products
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'Voice Spectral',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'           COLLATE NOCASE), 'EXB-PCM06 Orchestral Collection',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'        COLLATE NOCASE), 'MR-Rack',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'         COLLATE NOCASE), 'JV-2080',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'         COLLATE NOCASE), 'SR-JV80-02 Orchestral',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'         COLLATE NOCASE), 'SR-JV80-04 Vintage Synth',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'         COLLATE NOCASE), 'SR-JV80-06 Dance',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'  COLLATE NOCASE), 'Symphony of Voices',                            'Sample Library'),

  -- Arcturus products (new ones not already listed above)
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'Orchestral Colours',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'Peter Siedlaczek''s Advanced Orchestra',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'XX-Large 1500 Classic Drumloops',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Big Fish Audio' COLLATE NOCASE), 'Kitch 70''s',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm' COLLATE NOCASE), 'Sound Effects CD Series - 6 - Nature',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'Dance/Industrial II',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'           COLLATE NOCASE), 'EXB-PCM04 Dance Extreme',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'           COLLATE NOCASE), 'TRITON',                                        'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'           COLLATE NOCASE), 'TR-Rack',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Masterbits'     COLLATE NOCASE), 'Climax Vol. 9 - RAPsody (Vocals II)',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Masterbits'     COLLATE NOCASE), 'Tekkno T.R.A.X.',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'         COLLATE NOCASE), 'SR-JV80-16 Orchestral II',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sampleheads'    COLLATE NOCASE), 'New York City Drumworks',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'  COLLATE NOCASE), 'Liquid Grooves',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'    COLLATE NOCASE), 'F.A.S.T. Animation',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'         COLLATE NOCASE), 'Datafile 2',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'         COLLATE NOCASE), 'Datafile 3',                                    'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('The War of Genesis III',
   NULL,
   '1999',
   'Sungwoon Jang, Jinbae Park',
   'sungwoon jang, jinbae park',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Arcturus: The Curse and Loss of Divinity',
   NULL,
   '2000',
   'SoundTeMP, Kyeong Hwan No, Seong Gyu Yang, Wonsul Lee, Yeojin Jeong',
   'soundtemp, kyeong hwan no, seong gyu yang, wonsul lee, yeojin jeong',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- The War of Genesis III (rows 604-621) -> all main (18 rows)
  -- =========================================================================

  -- Row 604: Best Service,Voice Spectral,,Track 05,Timestamp: 0:00,Alone in the Battle
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Voice Spectral' COLLATE NOCASE),
   NULL, 'Track 05', 'Timestamp: 0:00', 'Alone in the Battle',
   'main', 'soundtemp', 1),

  -- Row 605: Best Service,Voice Spectral,,Track 15,Timestamp: 0:17.1,Alone in the Battle
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Voice Spectral' COLLATE NOCASE),
   NULL, 'Track 15', 'Timestamp: 0:17.1', 'Alone in the Battle',
   'main', 'soundtemp', 2),

  -- Row 606: Best Service,Voice Spectral,,Track 76,Timestamp: 0:00,Silent Space
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Voice Spectral' COLLATE NOCASE),
   NULL, 'Track 76', 'Timestamp: 0:00', 'Silent Space',
   'main', 'soundtemp', 3),

  -- Row 607: KORG,EXB-PCM06 Orchestral Collection,,001 Maestro Strings,,"Let's Sweep, Epilogue"
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'EXB-PCM06 Orchestral Collection' COLLATE NOCASE),
   NULL, '001 Maestro Strings', NULL, 'Let''s Sweep, Epilogue',
   'main', 'soundtemp', 4),

  -- Row 608: Ensoniq,MR-Rack,,,"Surdos, possibly other kit pieces",Rage of Lion
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   NULL, NULL, 'Surdos, possibly other kit pieces', 'Rage of Lion',
   'main', 'soundtemp', 5),

  -- Row 609: Ensoniq,MR-Rack,ROM004,097 Atomic Lead,Could be RAM001:022 Chat Lead,End and
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM004', '097 Atomic Lead', 'Could be RAM001:022 Chat Lead', 'End and',
   'main', 'soundtemp', 6),

  -- Row 610: Ensoniq,MR-Rack,ROM005,004 Dbl 6-Strng,Bypass effects,Lonely Wanderer
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '004 Dbl 6-Strng', 'Bypass effects', 'Lonely Wanderer',
   'main', 'soundtemp', 7),

  -- Row 611: Roland,JV-2080,PR-A,023 PsychoRhodes,,"Bards, Heart to Heart"
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-A', '023 PsychoRhodes', NULL, 'Bards, Heart to Heart',
   'main', 'soundtemp', 8),

  -- Row 612: Roland,JV-2080,INT-B (Internal B),052 Feedbackwave,,Far and away
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'INT-B (Internal B)', '052 Feedbackwave', NULL, 'Far and away',
   'main', 'soundtemp', 9),

  -- Row 613: Roland,JV-2080,PR-D,043 Pilgrimage,,"To the Past, Theme of Demian, Far and away"
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-D', '043 Pilgrimage', NULL, 'To the Past, Theme of Demian, Far and away',
   'main', 'soundtemp', 10),

  -- Row 614: Roland,JV-2080,,,Bottle blow,Pirates
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Bottle blow', 'Pirates',
   'main', 'soundtemp', 11),

  -- Row 615: Roland,JV-2080,,,Guitar fret noise,"Break Through!, Shivan Scimitar, Heart to Heart, Bards, Theme of Sherazard"
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Guitar fret noise', 'Break Through!, Shivan Scimitar, Heart to Heart, Bards, Theme of Sherazard',
   'main', 'soundtemp', 12),

  -- Row 616: Roland,SR-JV80-02 Orchestral,,107 Trumpet 2,,The One
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-02 Orchestral' COLLATE NOCASE),
   NULL, '107 Trumpet 2', NULL, 'The One',
   'main', 'soundtemp', 13),

  -- Row 617: Roland,SR-JV80-04 Vintage Synth,,253 H20 Asylum,,Far and away
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-04 Vintage Synth' COLLATE NOCASE),
   NULL, '253 H20 Asylum', NULL, 'Far and away',
   'main', 'soundtemp', 14),

  -- Row 618: Roland,SR-JV80-06 Dance,,141 Spooky,Pitched down,End and Never End (CLUB-MIX)
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '141 Spooky', 'Pitched down', 'End and Never End (CLUB-MIX)',
   'main', 'soundtemp', 15),

  -- Row 619: Spectrasonics,Symphony of Voices,,,Boys choir,Choir for the Faith
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   NULL, NULL, 'Boys choir', 'Choir for the Faith',
   'main', 'soundtemp', 16),

  -- Row 620: Spectrasonics,Symphony of Voices,Disc 2 -> Partition G -> 02 SOP-EH-OH,SOP EH-OH AS,,Choir for the Faith
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 2 -> Partition G -> 02 SOP-EH-OH', 'SOP EH-OH AS', NULL, 'Choir for the Faith',
   'main', 'soundtemp', 17),

  -- Row 621: Spectrasonics,Symphony of Voices,Disc 5 -> Partition C -> 02 SERENE,SERENE MENU,,"The Prophecy of Light, Infinity"
  ((SELECT id FROM games WHERE title = 'The War of Genesis III'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 5 -> Partition C -> 02 SERENE', 'SERENE MENU', NULL, 'The Prophecy of Light, Infinity',
   'main', 'soundtemp', 18),

  -- =========================================================================
  -- Arcturus: The Curse and Loss of Divinity (rows 623-702) -> all main (80 rows)
  -- =========================================================================

  -- Row 623: Best Service,Orchestral Colours,Partition C -> EXPR. STRING,EXP. STRNGS,,Tension
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Orchestral Colours' COLLATE NOCASE),
   'Partition C -> EXPR. STRING', 'EXP. STRNGS', NULL, 'Tension',
   'main', 'soundtemp', 1),

  -- Row 624: Best Service,Orchestral Colours,Partition C -> MAGIC LIGHT,MAGIC LIGHT,,던전夜
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Orchestral Colours' COLLATE NOCASE),
   'Partition C -> MAGIC LIGHT', 'MAGIC LIGHT', NULL, '던전夜',
   'main', 'soundtemp', 2),

  -- Row 625: Best Service,Orchestral Colours,Partition D -> BEETLE ESCAP,BEETLE ESC.,,Tension
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Orchestral Colours' COLLATE NOCASE),
   'Partition D -> BEETLE ESCAP', 'BEETLE ESC.', NULL, 'Tension',
   'main', 'soundtemp', 3),

  -- Row 626: Best Service,Peter Siedlaczek's Advanced Orchestra,,,Violin. Could be alternate product,시련
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Peter Siedlaczek''s Advanced Orchestra' COLLATE NOCASE),
   NULL, NULL, 'Violin. Could be alternate product', '시련',
   'main', 'soundtemp', 4),

  -- Row 627: Best Service,XX-Large 1500 Classic Drumloops,Partition D -> 4,LOOP 105-2,Sample: L 105 031,Astennu Tjodalv
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'XX-Large 1500 Classic Drumloops' COLLATE NOCASE),
   'Partition D -> 4', 'LOOP 105-2', 'Sample: L 105 031', 'Astennu Tjodalv',
   'main', 'soundtemp', 5),

  -- Row 628: Best Service,XX-Large 1500 Classic Drumloops,Partition I -> 3,LOOP 125-3,Sample: L 125 062,Astennu Tjodalv
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'XX-Large 1500 Classic Drumloops' COLLATE NOCASE),
   'Partition I -> 3', 'LOOP 125-3', 'Sample: L 125 062', 'Astennu Tjodalv',
   'main', 'soundtemp', 6),

  -- Row 629: Big Fish Audio,Kitch 70's,Partition E -> 15112LOOP#3,112-03 LOOPS,Waveform: BEASTIE GIRL,Doom of dome
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Big Fish Audio' COLLATE NOCASE AND p.name = 'Kitch 70''s' COLLATE NOCASE),
   'Partition E -> 15112LOOP#3', '112-03 LOOPS', 'Waveform: BEASTIE GIRL', 'Doom of dome',
   'main', 'soundtemp', 7),

  -- Row 630: Discovery Firm,Sound Effects CD Series - 6 - Nature,,Wind-1,Timestamp: 0:00.0,The abandoned mine
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series - 6 - Nature' COLLATE NOCASE),
   NULL, 'Wind-1', 'Timestamp: 0:00.0', 'The abandoned mine',
   'main', 'soundtemp', 8),

  -- Row 631: EastWest,Dance/Industrial II,Partition A -> VOLUME 004,SAMPLES 004,,Machine head
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Dance/Industrial II' COLLATE NOCASE),
   'Partition A -> VOLUME 004', 'SAMPLES 004', NULL, 'Machine head',
   'main', 'soundtemp', 9),

  -- Row 632: EastWest,Dance/Industrial II,Partition A -> VOLUME 010,LOOP 010,,Elhive hill
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Dance/Industrial II' COLLATE NOCASE),
   'Partition A -> VOLUME 010', 'LOOP 010', NULL, 'Elhive hill',
   'main', 'soundtemp', 10),

  -- Row 633: EastWest,Dance/Industrial II,Partition D -> VOLUME 005,LOOP 057,,Machine head
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Dance/Industrial II' COLLATE NOCASE),
   'Partition D -> VOLUME 005', 'LOOP 057', NULL, 'Machine head',
   'main', 'soundtemp', 11),

  -- Row 634: Ensoniq,MR-Rack,,,"Surdos, possibly other kit pieces","Venturer's world, Crisis, Glorious pain"
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   NULL, NULL, 'Surdos, possibly other kit pieces', 'Venturer''s world, Crisis, Glorious pain',
   'main', 'soundtemp', 12),

  -- Row 635: Ensoniq,MR-Rack,,,GM Tubular at low pitch layered?,Theatre of tragedy
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   NULL, NULL, 'GM Tubular at low pitch layered?', 'Theatre of tragedy',
   'main', 'soundtemp', 13),

  -- Row 636: Ensoniq,MR-Rack,,,"Some ""Tympani"" patch",The absolute ruins
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   NULL, NULL, 'Some "Tympani" patch', 'The absolute ruins',
   'main', 'soundtemp', 14),

  -- Row 637: Ensoniq,MR-Rack,GM008,075 PanFlute-GM,,The Northern pure
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'GM008', '075 PanFlute-GM', NULL, 'The Northern pure',
   'main', 'soundtemp', 15),

  -- Row 638: Ensoniq,MR-Rack,GM008,078 Whistle-GM,,Romance of the Seacoast
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'GM008', '078 Whistle-GM', NULL, 'Romance of the Seacoast',
   'main', 'soundtemp', 16),

  -- Row 639: Ensoniq,MR-Rack,GM008,079 Ocarina-GM,Modulation applied,The song of dethroned emperor
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'GM008', '079 Ocarina-GM', 'Modulation applied', 'The song of dethroned emperor',
   'main', 'soundtemp', 17),

  -- Row 640: Ensoniq,MR-Rack,RAM001,049 MR Coffee,,"밤을 잊은 그대에게…, Farewell to Sadness, Atomic Dance, Farewell to sadness [Club MIX]"
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'RAM001', '049 MR Coffee', NULL, '밤을 잊은 그대에게…, Farewell to Sadness, Atomic Dance, Farewell to sadness [Club MIX]',
   'main', 'soundtemp', 18),

  -- Row 641: Ensoniq,MR-Rack,ROM004,018 Tine-2-Love,Maybe something else. Apply reverb.,RX-7
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM004', '018 Tine-2-Love', 'Maybe something else. Apply reverb.', 'RX-7',
   'main', 'soundtemp', 19),

  -- Row 642: Ensoniq,MR-Rack,ROM004,097 Atomic Lead,Could be RAM001:022 Chat Lead,The Iron fortress
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM004', '097 Atomic Lead', 'Could be RAM001:022 Chat Lead', 'The Iron fortress',
   'main', 'soundtemp', 20),

  -- Row 643: Ensoniq,MR-Rack,ROM005,004 Dbl 6-Strng,,The Northern pure
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '004 Dbl 6-Strng', NULL, 'The Northern pure',
   'main', 'soundtemp', 21),

  -- Row 644: Ensoniq,MR-Rack,ROM005,066 Recorder,,Memories
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '066 Recorder', NULL, 'Memories',
   'main', 'soundtemp', 22),

  -- Row 645: Ensoniq,MR-Rack,ROM005,076 Harmonica,,Memories
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '076 Harmonica', NULL, 'Memories',
   'main', 'soundtemp', 23),

  -- Row 646: Ensoniq,MR-Rack,ROM005,080 BreathyAlto,Chorus applied? External?,그녀의 아침
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '080 BreathyAlto', 'Chorus applied? External?', '그녀의 아침',
   'main', 'soundtemp', 24),

  -- Row 647: Ensoniq,MR-Rack,ROM005,094 Harpsichord,,"The waltz, Theatre of tragedy, Emperor Karl Petrarca, The Constellarium"
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '094 Harpsichord', NULL, 'The waltz, Theatre of tragedy, Emperor Karl Petrarca, The Constellarium',
   'main', 'soundtemp', 25),

  -- Row 648: Ensoniq,MR-Rack,ROM005,109 Vibraphone,,그녀의 아침
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '109 Vibraphone', NULL, '그녀의 아침',
   'main', 'soundtemp', 26),

  -- Row 649: KORG,EXB-PCM04 Dance Extreme,,107 Rap Voice Set,Turn off OSC 2 and center OSC 1,아르바이트맨
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'EXB-PCM04 Dance Extreme' COLLATE NOCASE),
   NULL, '107 Rap Voice Set', 'Turn off OSC 2 and center OSC 1', '아르바이트맨',
   'main', 'soundtemp', 27),

  -- Row 650: KORG,TRITON,Programs -> INT-B,B045 Gliding Squares,Decrease/turn off glide,Drug Freak
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON' COLLATE NOCASE),
   'Programs -> INT-B', 'B045 Gliding Squares', 'Decrease/turn off glide', 'Drug Freak',
   'main', 'soundtemp', 28),

  -- Row 651: KORG,TR-Rack,Prog > A,A11 *Tingly* E.Piano,,The Northern pure
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Prog > A', 'A11 *Tingly* E.Piano', NULL, 'The Northern pure',
   'main', 'soundtemp', 29),

  -- Row 652: KORG,TR-Rack,Prog > B,B04 Steel String Gtr,,Dream of You
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Prog > B', 'B04 Steel String Gtr', NULL, 'Dream of You',
   'main', 'soundtemp', 30),

  -- Row 653: KORG,TR-Rack,Prog > B,B31 Mandolin Trem,,시련
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Prog > B', 'B31 Mandolin Trem', NULL, '시련',
   'main', 'soundtemp', 31),

  -- Row 654: KORG,TR-Rack,Prog > D,D86 Radio Piano(SW1),,Valley rally
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Prog > D', 'D86 Radio Piano(SW1)', NULL, 'Valley rally',
   'main', 'soundtemp', 32),

  -- Row 655: KORG,TR-Rack,Combi > A,A05 Maximum Impact,,Doom of dome
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Combi > A', 'A05 Maximum Impact', NULL, 'Doom of dome',
   'main', 'soundtemp', 33),

  -- Row 656: KORG,TR-Rack,Combi > C,C08 Liquid Strings,,RX-7
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Combi > C', 'C08 Liquid Strings', NULL, 'RX-7',
   'main', 'soundtemp', 34),

  -- Row 657: KORG,TR-Rack,Combi > C,C37 Tsunami Strikes!,,Magic is basics
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Combi > C', 'C37 Tsunami Strikes!', NULL, 'Magic is basics',
   'main', 'soundtemp', 35),

  -- Row 658: KORG,TR-Rack,Combi > C,C127 Chorus Bell,,Inn
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Combi > C', 'C127 Chorus Bell', NULL, 'Inn',
   'main', 'soundtemp', 36),

  -- Row 659: Masterbits,Climax Vol. 9 - RAPsody (Vocals II),,Track 35,Timestamp: 0:30.1,아르바이트맨
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Climax Vol. 9 - RAPsody (Vocals II)' COLLATE NOCASE),
   NULL, 'Track 35', 'Timestamp: 0:30.1', '아르바이트맨',
   'main', 'soundtemp', 37),

  -- Row 660: Masterbits,Tekkno T.R.A.X.,Partition A -> 160TEKDRMLOP,160.2ZERO GR,,R.A.V.E.N.
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Tekkno T.R.A.X.' COLLATE NOCASE),
   'Partition A -> 160TEKDRMLOP', '160.2ZERO GR', NULL, 'R.A.V.E.N.',
   'main', 'soundtemp', 38),

  -- Row 661: Masterbits,Tekkno T.R.A.X.,Partition A -> 160TEKDRMLOP,160 EYE HEAR,,R.A.V.E.N.
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Tekkno T.R.A.X.' COLLATE NOCASE),
   'Partition A -> 160TEKDRMLOP', '160 EYE HEAR', NULL, 'R.A.V.E.N.',
   'main', 'soundtemp', 39),

  -- Row 662: Masterbits,Tekkno T.R.A.X.,Partition A -> 160TEKDRMLOP,160.4S PONJO,,R.A.V.E.N.
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Tekkno T.R.A.X.' COLLATE NOCASE),
   'Partition A -> 160TEKDRMLOP', '160.4S PONJO', NULL, 'R.A.V.E.N.',
   'main', 'soundtemp', 40),

  -- Row 663: Masterbits,Tekkno T.R.A.X.,Partition B -> 150TEKDRMLO3,150 MAY DAY,,Hit me
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Tekkno T.R.A.X.' COLLATE NOCASE),
   'Partition B -> 150TEKDRMLO3', '150 MAY DAY', NULL, 'Hit me',
   'main', 'soundtemp', 41),

  -- Row 664: Masterbits,Tekkno T.R.A.X.,Partition B -> 150TEKDRMLO5,150 LED ZEP,,Hit me
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Tekkno T.R.A.X.' COLLATE NOCASE),
   'Partition B -> 150TEKDRMLO5', '150 LED ZEP', NULL, 'Hit me',
   'main', 'soundtemp', 42),

  -- Row 665: Masterbits,Tekkno T.R.A.X.,Partition C -> 150TEKSQLOP1,150 FAKE LAB,,Hit me
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Tekkno T.R.A.X.' COLLATE NOCASE),
   'Partition C -> 150TEKSQLOP1', '150 FAKE LAB', NULL, 'Hit me',
   'main', 'soundtemp', 43),

  -- Row 666: Masterbits,Tekkno T.R.A.X.,Partition D -> 150TEKSQLOP4,150 HI ANA,,Hit me
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Tekkno T.R.A.X.' COLLATE NOCASE),
   'Partition D -> 150TEKSQLOP4', '150 HI ANA', NULL, 'Hit me',
   'main', 'soundtemp', 44),

  -- Row 667: Masterbits,Tekkno T.R.A.X.,Partition D -> 150TEKARP1,150 FUNKART,,Hit me
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Tekkno T.R.A.X.' COLLATE NOCASE),
   'Partition D -> 150TEKARP1', '150 FUNKART', NULL, 'Hit me',
   'main', 'soundtemp', 45),

  -- Row 668: Masterbits,Tekkno T.R.A.X.,Partition H -> TEKKNOTALK,DONKY KONGV2,"TT89VOX1, TT89VOX6 respectively","Astennu Tjodalv, Hit me"
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Tekkno T.R.A.X.' COLLATE NOCASE),
   'Partition H -> TEKKNOTALK', 'DONKY KONGV2', 'TT89VOX1, TT89VOX6 respectively', 'Astennu Tjodalv, Hit me',
   'main', 'soundtemp', 46),

  -- Row 669: Roland,JV-2080,PR-A,023 PsychoRhodes,,"Strained heart, Drug Freak"
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-A', '023 PsychoRhodes', NULL, 'Strained heart, Drug Freak',
   'main', 'soundtemp', 47),

  -- Row 670: Roland,JV-2080,PR-B,018 Slap Bass 1,Panning disabled,Curious
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-B', '018 Slap Bass 1', 'Panning disabled', 'Curious',
   'main', 'soundtemp', 48),

  -- Row 671: Roland,JV-2080,PR-B,098 Air Lead,,Hopeless hamlet
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-B', '098 Air Lead', NULL, 'Hopeless hamlet',
   'main', 'soundtemp', 49),

  -- Row 672: Roland,JV-2080,PR-B,120 Harmo Blues,,그녀의 아침
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-B', '120 Harmo Blues', NULL, '그녀의 아침',
   'main', 'soundtemp', 50),

  -- Row 673: Roland,JV-2080,PR-B,124 Majestic Tpt,Delay disabled,Curious
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-B', '124 Majestic Tpt', 'Delay disabled', 'Curious',
   'main', 'soundtemp', 51),

  -- Row 674: Roland,JV-2080,PR-C,005 Trombone,,"그녀의 아침, Déjà vu"
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-C', '005 Trombone', NULL, '그녀의 아침, Déjà vu',
   'main', 'soundtemp', 52),

  -- Row 675: Roland,JV-2080,PR-C,047 Bass Pizz,,"Angel's walk, Hallway to Heaven, Farewell to sadness [Club MIX]"
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-C', '047 Bass Pizz', NULL, 'Angel''s walk, Hallway to Heaven, Farewell to sadness [Club MIX]',
   'main', 'soundtemp', 53),

  -- Row 676: Roland,JV-2080,PR-D,031 DesertCrystl,,Amnesia
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-D', '031 DesertCrystl', NULL, 'Amnesia',
   'main', 'soundtemp', 54),

  -- Row 677: Roland,JV-2080,PR-D,043 Pilgrimage,,Flee by night
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-D', '043 Pilgrimage', NULL, 'Flee by night',
   'main', 'soundtemp', 55),

  -- Row 678: Roland,JV-2080,PR-D,120 Unearthly,Disable parts? Some other preset?,Paradise lost
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-D', '120 Unearthly', 'Disable parts? Some other preset?', 'Paradise lost',
   'main', 'soundtemp', 56),

  -- Row 679: Roland,SR-JV80-04 Vintage Synth,,253 H20 Asylum,,Tranquility - Night arranged
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-04 Vintage Synth' COLLATE NOCASE),
   NULL, '253 H20 Asylum', NULL, 'Tranquility - Night arranged',
   'main', 'soundtemp', 57),

  -- Row 680: Roland,SR-JV80-06 Dance,XP-X,022 Breakdwn 100,, (examples empty)
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   'XP-X', '022 Breakdwn 100', NULL, NULL,
   'main', 'soundtemp', 58),

  -- Row 681: Roland,SR-JV80-06 Dance,XP-X,044 Human Bt 124,, (examples empty)
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   'XP-X', '044 Human Bt 124', NULL, NULL,
   'main', 'soundtemp', 59),

  -- Row 682: Roland,SR-JV80-06 Dance,XP-X,141 Spooky,,Machine head
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   'XP-X', '141 Spooky', NULL, 'Machine head',
   'main', 'soundtemp', 60),

  -- Row 683: Roland,SR-JV80-06 Dance,XP-X,143 Gtr Fx x4,,Farewell to sadness [Club MIX]
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   'XP-X', '143 Gtr Fx x4', NULL, 'Farewell to sadness [Club MIX]',
   'main', 'soundtemp', 61),

  -- Row 684: Roland,SR-JV80-06 Dance,XP-X,195 Terminator,,"What's Going on here, Paradise lost"
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   'XP-X', '195 Terminator', NULL, 'What''s Going on here, Paradise lost',
   'main', 'soundtemp', 62),

  -- Row 685: Roland,SR-JV80-16 Orchestral II,,225 Titan,Waveform '578 Rattles' only?,Elhive hill
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-16 Orchestral II' COLLATE NOCASE),
   NULL, '225 Titan', 'Waveform ''578 Rattles'' only?', 'Elhive hill',
   'main', 'soundtemp', 63),

  -- Row 686: Sampleheads,New York City Drumworks,Disc 2 -> Frank Duncan -> Loops & Fills,46 FD Tom Rock,Timestamp: 0:00,What's Going on here
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sampleheads' COLLATE NOCASE AND p.name = 'New York City Drumworks' COLLATE NOCASE),
   'Disc 2 -> Frank Duncan -> Loops & Fills', '46 FD Tom Rock', 'Timestamp: 0:00', 'What''s Going on here',
   'main', 'soundtemp', 64),

  -- Row 687: Sampleheads,New York City Drumworks,Disc 2 -> Frank Duncan -> Loops & Fills,46 FD Tom Rock,Timestamp: 0:10.9,What's Going on here
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sampleheads' COLLATE NOCASE AND p.name = 'New York City Drumworks' COLLATE NOCASE),
   'Disc 2 -> Frank Duncan -> Loops & Fills', '46 FD Tom Rock', 'Timestamp: 0:10.9', 'What''s Going on here',
   'main', 'soundtemp', 65),

  -- Row 688: Sampleheads,New York City Drumworks,Disc 2 -> Frank Duncan -> Loops & Fills,51 FD Fills 108bpm,Timestamp: 0:11.7,What's Going on here
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sampleheads' COLLATE NOCASE AND p.name = 'New York City Drumworks' COLLATE NOCASE),
   'Disc 2 -> Frank Duncan -> Loops & Fills', '51 FD Fills 108bpm', 'Timestamp: 0:11.7', 'What''s Going on here',
   'main', 'soundtemp', 66),

  -- Row 689: Sampleheads,New York City Drumworks,Disc 2 -> Frank Duncan -> Loops & Fills,51 FD Fills 108bpm,Timestamp: 0:34.7,What's Going on here
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sampleheads' COLLATE NOCASE AND p.name = 'New York City Drumworks' COLLATE NOCASE),
   'Disc 2 -> Frank Duncan -> Loops & Fills', '51 FD Fills 108bpm', 'Timestamp: 0:34.7', 'What''s Going on here',
   'main', 'soundtemp', 67),

  -- Row 690: Sampleheads,New York City Drumworks,Disc 2 -> Frank Duncan -> Sounds,,Custom fills seem to have been made,What's Going on here
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sampleheads' COLLATE NOCASE AND p.name = 'New York City Drumworks' COLLATE NOCASE),
   'Disc 2 -> Frank Duncan -> Sounds', NULL, 'Custom fills seem to have been made', 'What''s Going on here',
   'main', 'soundtemp', 68),

  -- Row 691: Spectrasonics,Liquid Grooves,Disc 1 -> Partition A -> 55 SANDCASTL,SND MIX 1,,Age of the suffering
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Liquid Grooves' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 55 SANDCASTL', 'SND MIX 1', NULL, 'Age of the suffering',
   'main', 'soundtemp', 69),

  -- Row 692: Spectrasonics,Liquid Grooves,Disc 1 -> Partition A -> 55 SANDCASTL,SND PERC MIX,,Age of the suffering
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Liquid Grooves' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 55 SANDCASTL', 'SND PERC MIX', NULL, 'Age of the suffering',
   'main', 'soundtemp', 70),

  -- Row 693: Spectrasonics,Liquid Grooves,Disc 1 -> Partition C -> 73 MYSTERIOUS,MYS TRIPPY 1,,The abandoned mine
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Liquid Grooves' COLLATE NOCASE),
   'Disc 1 -> Partition C -> 73 MYSTERIOUS', 'MYS TRIPPY 1', NULL, 'The abandoned mine',
   'main', 'soundtemp', 71),

  -- Row 694: Spectrasonics,Symphony of Voices,Disc 2 -> Partition G -> 02 SOP-EH-OH,SOP EH-OH AS,,Hopeless hamlet
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 2 -> Partition G -> 02 SOP-EH-OH', 'SOP EH-OH AS', NULL, 'Hopeless hamlet',
   'main', 'soundtemp', 72),

  -- Row 695: Spectrasonics,Symphony of Voices,Disc 3 -> Partition A -> 03 BOYS EES,BC EES-V A,,The Innocents
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 3 -> Partition A -> 03 BOYS EES', 'BC EES-V A', NULL, 'The Innocents',
   'main', 'soundtemp', 73),

  -- Row 696: Ueberschall,F.A.S.T. Animation,Partition A -> FLYOBJECTS 1,BOOMERANG 1,,"Strained heart, N.O.A.H. - Name of Apocalyptic Hour"
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'F.A.S.T. Animation' COLLATE NOCASE),
   'Partition A -> FLYOBJECTS 1', 'BOOMERANG 1', NULL, 'Strained heart, N.O.A.H. - Name of Apocalyptic Hour',
   'main', 'soundtemp', 74),

  -- Row 697: Ueberschall,F.A.S.T. Animation,Partition B -> FLYOBJECTS 6,AM SATELLITE,,N.O.A.H. - Name of Apocalyptic Hour
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'F.A.S.T. Animation' COLLATE NOCASE),
   'Partition B -> FLYOBJECTS 6', 'AM SATELLITE', NULL, 'N.O.A.H. - Name of Apocalyptic Hour',
   'main', 'soundtemp', 75),

  -- Row 698: Ueberschall,F.A.S.T. Animation,Partition E -> NATURE 3,J E T,,N.O.A.H. - Name of Apocalyptic Hour
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'F.A.S.T. Animation' COLLATE NOCASE),
   'Partition E -> NATURE 3', 'J E T', NULL, 'N.O.A.H. - Name of Apocalyptic Hour',
   'main', 'soundtemp', 76),

  -- Row 699: Ueberschall,F.A.S.T. Animation,Partition H -> C O M I C 1,PHONETIC C,"Samples: YO, CHAT FLY","Strained heart, N.O.A.H. - Name of Apocalyptic Hour"
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'F.A.S.T. Animation' COLLATE NOCASE),
   'Partition H -> C O M I C 1', 'PHONETIC C', 'Samples: YO, CHAT FLY', 'Strained heart, N.O.A.H. - Name of Apocalyptic Hour',
   'main', 'soundtemp', 77),

  -- Row 700: Zero-G,Datafile 2,,Track 02,Timestamp: 0:42,Farewell to sadness
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 2' COLLATE NOCASE),
   NULL, 'Track 02', 'Timestamp: 0:42', 'Farewell to sadness',
   'main', 'soundtemp', 78),

  -- Row 701: Zero-G,Datafile 2,,Track 23,Timestamp: 0:00,Ignite me
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 2' COLLATE NOCASE),
   NULL, 'Track 23', 'Timestamp: 0:00', 'Ignite me',
   'main', 'soundtemp', 79),

  -- Row 702: Zero-G,Datafile 3,,Track 83,Timestamp: 0:26.5,Serenade in the rain
  ((SELECT id FROM games WHERE title = 'Arcturus: The Curse and Loss of Divinity'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 3' COLLATE NOCASE),
   NULL, 'Track 83', 'Timestamp: 0:26.5', 'Serenade in the rain',
   'main', 'soundtemp', 80);
