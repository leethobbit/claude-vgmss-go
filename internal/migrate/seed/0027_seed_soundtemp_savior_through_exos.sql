-- Source: reference/SoundTeMP Sound Sources & Information Compendium (WIP) - Sound Sources.csv rows 486-563
-- Six games covered, closing out Section 1:
--   Tree of Savior (2016)            rows 486-511   25 usage rows
--   Destiny Child (2016)             rows 512-533   21 usage rows
--   Ragnarok M: Eternal Love (2017)  rows 534-539    5 usage rows
--   The Roll of Genesis (2018)       rows 540-544    4 usage rows
--   Spiritwish (2019)                rows 545-552    7 usage rows
--   Exos Heroes (2019)               rows 553-563    6 usage rows
-- SoundTeMP CSV has 6 columns (no Demo column); demo_url is always NULL.
-- source_family = 'soundtemp'. Platform = NULL for all.
-- No subsection headers in this range; all rows are category='main'.
-- One row uses the Unknown/Unknown sentinel:
--   Row 535 (Ragnarok M): ",,,,check this track out later got stuff,odin_tem"
--     -> brand and product both blank. raw_source patched below via UPDATE.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Best Service'),
  ('EastWest'),
  ('Ensoniq'),
  ('Heavyocity'),
  ('Hollywood Edge'),
  ('KORG'),
  ('Native Instruments'),
  ('Roland'),
  ('Spectrasonics'),
  ('Steinberg'),
  ('Vengeance Sound'),
  ('Xfer Records'),
  ('XLN Audio'),
  ('Yamaha'),
  ('Unknown');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Ethno World',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Symphonic Orchestra',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'            COLLATE NOCASE), 'EXP-3 Urban Dance Project',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'         COLLATE NOCASE), 'Damage',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Hollywood Edge'     COLLATE NOCASE), 'Premiere Edition Vol. 1',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), 'Minilogue',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'FM8',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'Massive',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'JV-2080',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SR-JV80-06 Dance',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'XV-5080',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SOUND Canvas SC-88 Pro',                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Metamorphosis S.A.G.E. Xpander',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Stylus RMX',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Omnisphere 2',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Omnisphere 3',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Symphony of Voices',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Vocal Planet',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Trilian',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'          COLLATE NOCASE), 'HALion',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'          COLLATE NOCASE), 'Retrologue 2',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Vengeance Sound'    COLLATE NOCASE), '8 Bit Era',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vengeance Sound'    COLLATE NOCASE), 'VPS Avenger',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Xfer Records'       COLLATE NOCASE), 'Serum',                                        'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'          COLLATE NOCASE), 'Addictive Drums 2',                            'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'MOTIF 6',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'MONTAGE 8',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'            COLLATE NOCASE), 'Unknown',                                      NULL);

-- ============================================================================
-- Game 1: Tree of Savior (2016)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Tree of Savior',
   NULL,
   '2016',
   'SoundTeMP, Jinbae Park, Dong-Il Kwak, Sungwoon Jang, Sungjae Lee, ''Chronos'', ''Cinenote'', ''7Clouds'', ''Drogo'', ''Gaudium'', ''Initium'', ''Symphonix''',
   'soundtemp, jinbae park, dong-il kwak, sungwoon jang, sungjae lee, ''chronos'', ''cinenote'', ''7clouds'', ''drogo'', ''gaudium'', ''initium'', ''symphonix''',
   NULL);

-- ============================================================================
-- Game 2: Destiny Child (2016)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Destiny Child',
   NULL,
   '2016',
   'Jinbae Park, ''seibin'', ''Benicx'', ''Muwen'', ''ko.yo''',
   'jinbae park, ''seibin'', ''benicx'', ''muwen'', ''ko.yo''',
   NULL);

-- ============================================================================
-- Game 3: Ragnarok M: Eternal Love (2017)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Ragnarok M: Eternal Love',
   NULL,
   '2017',
   'SoundTeMP, ESTIMATE, Goomin Nam',
   'soundtemp, estimate, goomin nam',
   NULL);

-- ============================================================================
-- Game 4: The Roll of Genesis (2018)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('The Roll of Genesis',
   NULL,
   '2018',
   'Goomin Nam',
   'goomin nam',
   NULL);

-- ============================================================================
-- Game 5: Spiritwish (2019)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Spiritwish',
   NULL,
   '2019',
   'SoundTeMP, Corners Groove, QUESTRO SOUND, Goo-Hee Kwon, Goomin Nam, Sungwoon Jang',
   'soundtemp, corners groove, questro sound, goo-hee kwon, goomin nam, sungwoon jang',
   NULL);

-- ============================================================================
-- Game 6: Exos Heroes (2019)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Exos Heroes',
   NULL,
   '2019',
   'ESTIMATE, Jinbae Park, Goomin Nam',
   'estimate, jinbae park, goomin nam',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Tree of Savior (rows 487-511) -> all main (25 rows)
  -- =========================================================================

  -- Row 487: Best Service,Ethno World,Woodwind and Brass -> Various Flute FX,Various Flute FX,,etnica
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World' COLLATE NOCASE),
   'Woodwind and Brass -> Various Flute FX', 'Various Flute FX', NULL, 'etnica',
   'main', 'soundtemp', 1),

  -- Row 488: EastWest,Symphonic Orchestra,,,,
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 2),

  -- Row 489: Hollywood Edge,Premiere Edition Vol. 1,"PE-20 Electronic, Sci-Fi",MultipitchedHighFr PE208201,,Heavenly Hell
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-20 Electronic, Sci-Fi', 'MultipitchedHighFr PE208201', NULL, 'Heavenly Hell',
   'main', 'soundtemp', 3),

  -- Row 490: Roland,JV-2080,PR-A (Preset A Bank),081 Childlike,,Boy's Anthem
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-A (Preset A Bank)', '081 Childlike', NULL, 'Boy''s Anthem',
   'main', 'soundtemp', 4),

  -- Row 491: Steinberg,HALion,,Whistle Lead,"""Could be from Yamaha""",Cerulean Wind
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion' COLLATE NOCASE),
   NULL, 'Whistle Lead', '"Could be from Yamaha"', 'Cerulean Wind',
   'main', 'soundtemp', 5),

  -- Row 492: Spectrasonics,Metamorphosis S.A.G.E. Xpander,100-104,100-Hamstring,,"Constituency, Pas le Leste, Virtue and Vice"
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis S.A.G.E. Xpander' COLLATE NOCASE),
   '100-104', '100-Hamstring', NULL, 'Constituency, Pas le Leste, Virtue and Vice',
   'main', 'soundtemp', 6),

  -- Row 493: Spectrasonics,Stylus RMX,,,"0:48 ""slushie"" sounding one",Armageddon
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, '0:48 "slushie" sounding one', 'Armageddon',
   'main', 'soundtemp', 7),

  -- Row 494: Spectrasonics,Stylus RMX,,52-Alice's Dream Combo,,Armageddon
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '52-Alice''s Dream Combo', NULL, 'Armageddon',
   'main', 'soundtemp', 8),

  -- Row 495: Spectrasonics,Stylus RMX,,52-Alice's Dream Illusion 2,,"Armageddon, Bodacious definition"
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '52-Alice''s Dream Illusion 2', NULL, 'Armageddon, Bodacious definition',
   'main', 'soundtemp', 9),

  -- Row 496: Spectrasonics,Stylus RMX,,52-Alice's Dream Illusion 3,,Armageddon
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '52-Alice''s Dream Illusion 3', NULL, 'Armageddon',
   'main', 'soundtemp', 10),

  -- Row 497: Spectrasonics,Stylus RMX,,68-Tower Zero,,Bodacious definition
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '68-Tower Zero', NULL, 'Bodacious definition',
   'main', 'soundtemp', 11),

  -- Row 498: Spectrasonics,Stylus RMX,,72-Liquid Frame,,Armageddon
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '72-Liquid Frame', NULL, 'Armageddon',
   'main', 'soundtemp', 12),

  -- Row 499: Spectrasonics,Stylus RMX,,72-Liquid Frame Orbital,,"Bodacious definition, Eclipsed Road"
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '72-Liquid Frame Orbital', NULL, 'Bodacious definition, Eclipsed Road',
   'main', 'soundtemp', 13),

  -- Row 500: Spectrasonics,Stylus RMX,,135-Squashed No Kick 3,,Tram is running
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '135-Squashed No Kick 3', NULL, 'Tram is running',
   'main', 'soundtemp', 14),

  -- Row 501: Spectrasonics,Stylus RMX,,143-MindBender Big Drums,,"Dream of Gold, End of the Day"
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '143-MindBender Big Drums', NULL, 'Dream of Gold, End of the Day',
   'main', 'soundtemp', 15),

  -- Row 502: Spectrasonics,Stylus RMX,,143-MindBender Half Metal,,"Snowy Bloody, Carol of the Bells"
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '143-MindBender Half Metal', NULL, 'Snowy Bloody, Carol of the Bells',
   'main', 'soundtemp', 16),

  -- Row 503: Spectrasonics,Stylus RMX,,143-MindBender Shakers,,Snowy Bloody
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '143-MindBender Shakers', NULL, 'Snowy Bloody',
   'main', 'soundtemp', 17),

  -- Row 504: Spectrasonics,Stylus RMX,,160-Find The Exit,Combo + custom combo in Regla,"Battle will Begin, Renaissance, Regla, Renaissance"
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Find The Exit', 'Combo + custom combo in Regla', 'Battle will Begin, Renaissance, Regla, Renaissance',
   'main', 'soundtemp', 18),

  -- Row 505: Spectrasonics,Stylus RMX,,160-Find The Exit No Thunder,,Synphonia
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Find The Exit No Thunder', NULL, 'Synphonia',
   'main', 'soundtemp', 19),

  -- Row 506: Spectrasonics,Stylus RMX,,174-World Hunt,,Battle will Begin
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '174-World Hunt', NULL, 'Battle will Begin',
   'main', 'soundtemp', 20),

  -- Row 507: Spectrasonics,Stylus RMX,,174-World Hunt Metalmix 1b,,"Repetitive, Signs of Penance, Victor Quest"
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '174-World Hunt Metalmix 1b', NULL, 'Repetitive, Signs of Penance, Victor Quest',
   'main', 'soundtemp', 21),

  -- Row 508: Spectrasonics,Symphony of Voices,Disc 2 -> Partition G -> 02 SOP-EH-OH,SOP EH-OH AS,,Armageddon
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 2 -> Partition G -> 02 SOP-EH-OH', 'SOP EH-OH AS', NULL, 'Armageddon',
   'main', 'soundtemp', 22),

  -- Row 509: Yamaha,MOTIF 6,PRE1,A01 PowerGrand,,Fearless Love
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', 'A01 PowerGrand', NULL, 'Fearless Love',
   'main', 'soundtemp', 23),

  -- Row 510: Xfer Records,Serum,Seq,SQ Blade [LT],Arpeggiator changed + filter,Wrong Theory
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Blade [LT]', 'Arpeggiator changed + filter', 'Wrong Theory',
   'main', 'soundtemp', 24),

  -- Row 511: XLN Audio,Addictive Drums 2,,,Custom kitpieces,"Heaven on Earth, Man on Fire, Brilliant Rozee"
  ((SELECT id FROM games WHERE title = 'Tree of Savior'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   NULL, NULL, 'Custom kitpieces', 'Heaven on Earth, Man on Fire, Brilliant Rozee',
   'main', 'soundtemp', 25),

  -- =========================================================================
  -- Destiny Child (rows 513-533) -> all main (21 rows)
  -- =========================================================================

  -- Row 513: EastWest,Symphonic Orchestra,,,,
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 1),

  -- Row 514: Ensoniq,EXP-3 Urban Dance Project,EXP030,066 Inharmonica,,PLASTIC CITY (RAID Version)
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'EXP-3 Urban Dance Project' COLLATE NOCASE),
   'EXP030', '066 Inharmonica', NULL, 'PLASTIC CITY (RAID Version)',
   'main', 'soundtemp', 2),

  -- Row 515: Native Instruments,FM8,FM7 Legacy,Far East,Could be Airpad from FM8 Factory,情念之心
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM7 Legacy', 'Far East', 'Could be Airpad from FM8 Factory', '情念之心',
   'main', 'soundtemp', 3),

  -- Row 516: Native Instruments,Massive,,,Seen in a making-of video thumbnail ,Nostalgia
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   NULL, NULL, 'Seen in a making-of video thumbnail ', 'Nostalgia',
   'main', 'soundtemp', 4),

  -- Row 517: Roland,SR-JV80-06 Dance,,141 Spooky,,She Loves Lump Sum
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '141 Spooky', NULL, 'She Loves Lump Sum',
   'main', 'soundtemp', 5),

  -- Row 518: Roland,SR-JV80-06 Dance,,0206 Mg Slide U/D,Waveform/menu,Pathos
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '0206 Mg Slide U/D', 'Waveform/menu', 'Pathos',
   'main', 'soundtemp', 6),

  -- Row 519: Roland,XV-5080,PR-C,099 Flying Waltz,,Lil Carta Soul pt.1
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'XV-5080' COLLATE NOCASE),
   'PR-C', '099 Flying Waltz', NULL, 'Lil Carta Soul pt.1',
   'main', 'soundtemp', 7),

  -- Row 520: Spectrasonics,Metamorphosis S.A.G.E. Xpander,090-094,090-Hop Trip,,bloom ~ Nothing's Gonna Change
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis S.A.G.E. Xpander' COLLATE NOCASE),
   '090-094', '090-Hop Trip', NULL, 'bloom ~ Nothing''s Gonna Change',
   'main', 'soundtemp', 8),

  -- Row 521: Spectrasonics,Omnisphere 2,Human Voices,Classical Soprano Eh-Oh,Could be Symphony of Voices,"A Flower of Revive, Fugue BWV 578 (Remix Version)"
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Human Voices', 'Classical Soprano Eh-Oh', 'Could be Symphony of Voices', 'A Flower of Revive, Fugue BWV 578 (Remix Version)',
   'main', 'soundtemp', 9),

  -- Row 522: Spectrasonics,Omnisphere 3,Human Voices,Classical Soprano Ohs,Could be Symphony of Voices,Pathos:Replicant
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 3' COLLATE NOCASE),
   'Human Voices', 'Classical Soprano Ohs', 'Could be Symphony of Voices', 'Pathos:Replicant',
   'main', 'soundtemp', 10),

  -- Row 523: Spectrasonics,Omnisphere 2,Human Voices,Jazz Stacks Dah-Dat,Could be Vocal Planet,"Hello, Master!"
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Human Voices', 'Jazz Stacks Dah-Dat', 'Could be Vocal Planet', 'Hello, Master!',
   'main', 'soundtemp', 11),

  -- Row 524: Spectrasonics,Stylus RMX,,60-Volcano Combo,,Wounded Winner
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '60-Volcano Combo', NULL, 'Wounded Winner',
   'main', 'soundtemp', 12),

  -- Row 525: Spectrasonics,Stylus RMX,,62-Artificial Blue,,Le misérable pathos
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '62-Artificial Blue', NULL, 'Le misérable pathos',
   'main', 'soundtemp', 13),

  -- Row 526: Spectrasonics,Stylus RMX,,68-Tower Zero Repeater,,Velocity of Light
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '68-Tower Zero Repeater', NULL, 'Velocity of Light',
   'main', 'soundtemp', 14),

  -- Row 527: Spectrasonics,Stylus RMX,,125-EvilEcho Evilness,,Key of Moongate
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '125-EvilEcho Evilness', NULL, 'Key of Moongate',
   'main', 'soundtemp', 15),

  -- Row 528: Spectrasonics,Stylus RMX,,160-Spheres Glass,,Descendants de Seth
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Spheres Glass', NULL, 'Descendants de Seth',
   'main', 'soundtemp', 16),

  -- Row 529: Spectrasonics,Stylus RMX,,175-World Hunt Metalmix 1a,Could be 1b. Set time to 3/4,Pathos:Replicant
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '175-World Hunt Metalmix 1a', 'Could be 1b. Set time to 3/4', 'Pathos:Replicant',
   'main', 'soundtemp', 17),

  -- Row 530: Spectrasonics,Vocal Planet,Disc 3 -> Partition H -> 2 VOCAL WIND,A TO O SWEEP,,Pathos Finally Vanished
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Vocal Planet' COLLATE NOCASE),
   'Disc 3 -> Partition H -> 2 VOCAL WIND', 'A TO O SWEEP', NULL, 'Pathos Finally Vanished',
   'main', 'soundtemp', 18),

  -- Row 531: Spectrasonics,Vocal Planet,Disc 3 -> Partition H -> 2 VOCAL WIND,O-NOISE BED,,Pathos Finally Vanished
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Vocal Planet' COLLATE NOCASE),
   'Disc 3 -> Partition H -> 2 VOCAL WIND', 'O-NOISE BED', NULL, 'Pathos Finally Vanished',
   'main', 'soundtemp', 19),

  -- Row 532: Yamaha,MONTAGE 8,,,Piano,Pathos Refrain
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MONTAGE 8' COLLATE NOCASE),
   NULL, NULL, 'Piano', 'Pathos Refrain',
   'main', 'soundtemp', 20),

  -- Row 533: Yamaha,MONTAGE 8,,,Motif GM Koto/Sakura equivalent,"bloom ~ Nothing's Gonna Change, bloom (Remix), 月宮姮娥 (Instrumental Ver.), 一蘭姮娥"
  ((SELECT id FROM games WHERE title = 'Destiny Child'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MONTAGE 8' COLLATE NOCASE),
   NULL, NULL, 'Motif GM Koto/Sakura equivalent', 'bloom ~ Nothing''s Gonna Change, bloom (Remix), 月宮姮娥 (Instrumental Ver.), 一蘭姮娥',
   'main', 'soundtemp', 21),

  -- =========================================================================
  -- Ragnarok M: Eternal Love (rows 535-539) -> all main (5 rows)
  -- =========================================================================

  -- Row 535: ,,,,"check this track out later, got stuff",odin_tem -> brand AND product blank. Unknown/Unknown sentinel; raw_source patched below (position 1).
  ((SELECT id FROM games WHERE title = 'Ragnarok M: Eternal Love'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'check this track out later, got stuff', 'odin_tem',
   'main', 'soundtemp', 1),

  -- Row 536: EastWest,Symphonic Orchestra,,,,"Adventure Prelude, Eternal Honor"
  ((SELECT id FROM games WHERE title = 'Ragnarok M: Eternal Love'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, 'Adventure Prelude, Eternal Honor',
   'main', 'soundtemp', 2),

  -- Row 537: Native Instruments,FM8,FM7 Legacy,Far East,Could be Airpad from FM8 Factory,"First Light of Day, Title"
  ((SELECT id FROM games WHERE title = 'Ragnarok M: Eternal Love'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM7 Legacy', 'Far East', 'Could be Airpad from FM8 Factory', 'First Light of Day, Title',
   'main', 'soundtemp', 3),

  -- Row 538: Native Instruments,FM8,FM7 Legacy,Stringbells,,"A promise of light and the future, Title, Rollercoaster Marriage, Theme of Prontera"
  ((SELECT id FROM games WHERE title = 'Ragnarok M: Eternal Love'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM7 Legacy', 'Stringbells', NULL, 'A promise of light and the future, Title, Rollercoaster Marriage, Theme of Prontera',
   'main', 'soundtemp', 4),

  -- Row 539: Spectrasonics,Metamorphosis S.A.G.E. Xpander,050-059,55-Mohave c,,Soul Garden
  ((SELECT id FROM games WHERE title = 'Ragnarok M: Eternal Love'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis S.A.G.E. Xpander' COLLATE NOCASE),
   '050-059', '55-Mohave c', NULL, 'Soul Garden',
   'main', 'soundtemp', 5),

  -- =========================================================================
  -- The Roll of Genesis (rows 541-544) -> all main (4 rows)
  -- =========================================================================

  -- Row 541: EastWest,Symphonic Orchestra,,,"Everything, scattered everywhere",
  ((SELECT id FROM games WHERE title = 'The Roll of Genesis'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'Everything, scattered everywhere', NULL,
   'main', 'soundtemp', 1),

  -- Row 542: EastWest,Symphonic Orchestra,Perc -> Drums,Snare Ens Large,,Ball
  ((SELECT id FROM games WHERE title = 'The Roll of Genesis'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Snare Ens Large', NULL, 'Ball',
   'main', 'soundtemp', 2),

  -- Row 543: Native Instruments,FM8,FM7 Legacy,Far East,Could be Airpad from FM8 Factory,Title
  ((SELECT id FROM games WHERE title = 'The Roll of Genesis'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM7 Legacy', 'Far East', 'Could be Airpad from FM8 Factory', 'Title',
   'main', 'soundtemp', 3),

  -- Row 544: Spectrasonics,Stylus RMX,RMX Gooves -> 70-Datalife,70-Datalife Vibro,,Defeat
  ((SELECT id FROM games WHERE title = 'The Roll of Genesis'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Gooves -> 70-Datalife', '70-Datalife Vibro', NULL, 'Defeat',
   'main', 'soundtemp', 4),

  -- =========================================================================
  -- Spiritwish (rows 546-552) -> all main (7 rows)
  -- =========================================================================

  -- Row 546: EastWest,Symphonic Orchestra,,,,
  ((SELECT id FROM games WHERE title = 'Spiritwish'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 1),

  -- Row 547: KORG,Minilogue,,,,
  ((SELECT id FROM games WHERE title = 'Spiritwish'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Minilogue' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 2),

  -- Row 548: Roland,SOUND Canvas SC-88 Pro,,,,
  ((SELECT id FROM games WHERE title = 'Spiritwish'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 3),

  -- Row 549: Spectrasonics,Trilian,Bass - Electric Fingered,Clean Fender - Full Range,,Light
  ((SELECT id FROM games WHERE title = 'Spiritwish'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass - Electric Fingered', 'Clean Fender - Full Range', NULL, 'Light',
   'main', 'soundtemp', 4),

  -- Row 550: Steinberg,Retrologue 2,,Saw Morph Arp,,Newtrolly
  ((SELECT id FROM games WHERE title = 'Spiritwish'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Retrologue 2' COLLATE NOCASE),
   NULL, 'Saw Morph Arp', NULL, 'Newtrolly',
   'main', 'soundtemp', 5),

  -- Row 551: Vengeance Sound,8 Bit Era,Sequences,SQ Filterfunk,Avenger's Bitcrusher added,Newtrolly
  ((SELECT id FROM games WHERE title = 'Spiritwish'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = '8 Bit Era' COLLATE NOCASE),
   'Sequences', 'SQ Filterfunk', 'Avenger''s Bitcrusher added', 'Newtrolly',
   'main', 'soundtemp', 6),

  -- Row 552: Vengeance Sound,VPS Avenger,,,,
  ((SELECT id FROM games WHERE title = 'Spiritwish'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 7),

  -- =========================================================================
  -- Exos Heroes (rows 554-559) -> all main (6 rows)
  -- =========================================================================

  -- Row 554: EastWest,Symphonic Orchestra,,,,
  ((SELECT id FROM games WHERE title = 'Exos Heroes'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 1),

  -- Row 555: EastWest,Symphonic Orchestra,,,snares and string fx,Battle Special 04
  ((SELECT id FROM games WHERE title = 'Exos Heroes'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'snares and string fx', 'Battle Special 04',
   'main', 'soundtemp', 2),

  -- Row 556: Heavyocity,Damage,,,,
  ((SELECT id FROM games WHERE title = 'Exos Heroes'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 3),

  -- Row 557: Hollywood Edge,Premiere Edition Vol. 1,PE-04 Water,DripSingleFallsLiq PE041401,"Might not be exact one, big reverb",Synergy
  ((SELECT id FROM games WHERE title = 'Exos Heroes'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-04 Water', 'DripSingleFallsLiq PE041401', 'Might not be exact one, big reverb', 'Synergy',
   'main', 'soundtemp', 4),

  -- Row 558: Hollywood Edge,Premiere Edition Vol. 1,"PE-17 Telephones, Cameras, Clocks",DeskTopClockTicks PE179501,,Estoris Field
  ((SELECT id FROM games WHERE title = 'Exos Heroes'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-17 Telephones, Cameras, Clocks', 'DeskTopClockTicks PE179501', NULL, 'Estoris Field',
   'main', 'soundtemp', 5),

  -- Row 559: Spectrasonics,Stylus RMX,,160-Find The Exit Combo,,Battle Special 06
  ((SELECT id FROM games WHERE title = 'Exos Heroes'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Find The Exit Combo', NULL, 'Battle Special 06',
   'main', 'soundtemp', 6);

-- Patch raw_source for the row whose brand was blank in source (col A and col B both empty).
-- Stash a descriptor so the original source row is recoverable.
UPDATE usages SET raw_source = 'Unknown — brand and product both blank in source CSV (cols A and B empty); notes indicate this is a research lead'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Ragnarok M: Eternal Love')
    AND position = 1;
