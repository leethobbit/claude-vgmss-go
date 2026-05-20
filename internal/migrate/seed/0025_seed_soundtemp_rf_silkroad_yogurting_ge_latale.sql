-- Source: reference/SoundTeMP Sound Sources & Information Compendium (WIP) - Sound Sources.csv rows 313-430
-- Five games covered:
--   RF Online        (2004) rows 313-314: header row 313 + 1 data row (314)
--   Silkroad Online  (2005) rows 315-321: header row 315 + 6 data rows (316-321)
--   Yogurting        (2005) rows 322-341: header row 322 + 19 data rows (323-341)
--   Granado Espada  (2006) rows 342-371: header row 342 + 29 data rows (343-371)
--   La Tale          (2006) rows 372-430: header row 372 + 58 data rows (373-430)
-- source_family = 'soundtemp'. Platform = NULL for all. demo_url = NULL for every usage row (CSV has no Demo column).
-- No subsection headers in this range; all rows are category='main'.
-- Four rows use the Unknown/Unknown sentinel because the brand and/or product is missing or '?':
--   Row 317 (Silkroad Online): ",,,,Goliath music box,event_festival"   -> brand and product both blank.
--   Row 323 (Yogurting):       ",,,,Check this sfx, is it JV80 SFX?,Visions" -> brand and product both blank.
--   Row 327 (Yogurting):       "Roland,,,,SC Shakuhachi,The Memory of that Day" -> brand known, product blank.
--   Row 429 (La Tale):         "Yamaha,?,,,Mondo Lead,Prologue Part 2"  -> brand known, product = '?'.
-- All four stash the raw col A / col B descriptor via an UPDATE at the bottom (raw_source patch).

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Access'),
  ('AudioNerdz'),
  ('Best Service'),
  ('Big Fish Audio'),
  ('EastWest'),
  ('EDIROL'),
  ('E-MU Systems'),
  ('Ensoniq'),
  ('Heavyocity'),
  ('Hollywood Edge'),
  ('ILIO'),
  ('KORG'),
  ('Native Instruments'),
  ('Roland'),
  ('Sonic Foundry'),
  ('Spectrasonics'),
  ('Ueberschall'),
  ('Vengeance'),
  ('XLN Audio'),
  ('Yamaha'),
  ('Yellow Tools'),
  ('Unknown');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Access'             COLLATE NOCASE), 'Virus',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'AudioNerdz'         COLLATE NOCASE), 'Delay Lama',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Voice Spectral',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'World Colours',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Big Fish Audio'     COLLATE NOCASE), 'Funk City',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Ministry of Rock',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Ra',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Stormdrum',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Symphonic Orchestra',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EDIROL'             COLLATE NOCASE), 'Orchestral',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'E-MU Systems'       COLLATE NOCASE), 'Proteus 2000',                                'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'            COLLATE NOCASE), 'MR-Rack',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'         COLLATE NOCASE), 'Damage',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Hollywood Edge'     COLLATE NOCASE), 'Premiere Edition Vol. 1',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'ILIO'               COLLATE NOCASE), 'Stark Raving Beats',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), 'TRITON-Rack',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'FM7',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'JV-2080',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SR-JV80-04 Vintage Synth',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SR-JV80-06 Dance',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonic Foundry'      COLLATE NOCASE), 'Voices of Native America',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Liquid Grooves',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Metamorphosis',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Stylus RMX',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Symphony of Voices',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'        COLLATE NOCASE), '2 Step Garage',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vengeance'          COLLATE NOCASE), 'Essential Club Sounds Vol. 1',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'          COLLATE NOCASE), 'Addictive Drums 2',                           'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'MOTIF 6',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'MOTIF Rack',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Yellow Tools'       COLLATE NOCASE), 'Pure Drums',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'            COLLATE NOCASE), 'Unknown',                                     NULL);

-- ============================================================================
-- Game 1: RF Online (2004)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('RF Online',
   NULL,
   '2004',
   'SoundTeMP',
   'soundtemp',
   NULL);

-- ============================================================================
-- Game 2: Silkroad Online (2005)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Silkroad Online',
   NULL,
   '2005',
   'SoundTeMP, Park Jung-Ah',
   'soundtemp, park jung-ah',
   NULL);

-- ============================================================================
-- Game 3: Yogurting (2005)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Yogurting',
   NULL,
   '2005',
   'Sungwoon Jang, Goomin Nam, Kazuo Sato',
   'sungwoon jang, goomin nam, kazuo sato',
   NULL);

-- ============================================================================
-- Game 4: Granado Espada (2006)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Granado Espada',
   NULL,
   '2006',
   'SoundTeMP, Dong-Il Kwak, Osamu Kubota, Junsung Kim',
   'soundtemp, dong-il kwak, osamu kubota, junsung kim',
   NULL);

-- ============================================================================
-- Game 5: La Tale (2006)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('La Tale',
   NULL,
   '2006',
   'Jinbae Park, Hyuntaek Yun, Hwang Joo-eun, Goohyun Jung, Shin Dong Hwi',
   'jinbae park, hyuntaek yun, hwang joo-eun, goohyun jung, shin dong hwi',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- RF Online (row 314) -> 1 main row
  -- =========================================================================

  -- Row 314: EastWest,Symphonic Orchestra,,,Soundtrack is mostly EWQL,"Accretia Base, Cora Base, Cauldron Field"
  ((SELECT id FROM games WHERE title = 'RF Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'Soundtrack is mostly EWQL', 'Accretia Base, Cora Base, Cauldron Field',
   'main', 'soundtemp', 1),

  -- =========================================================================
  -- Silkroad Online (rows 316-321) -> 6 main rows
  -- =========================================================================

  -- Row 316: AudioNerdz,Delay Lama,,,,Donwhang Dungeon
  ((SELECT id FROM games WHERE title = 'Silkroad Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AudioNerdz' COLLATE NOCASE AND p.name = 'Delay Lama' COLLATE NOCASE),
   NULL, NULL, NULL, 'Donwhang Dungeon',
   'main', 'soundtemp', 1),

  -- Row 317: ,,,,Goliath music box,event_festival -> brand and product blank. Unknown/Unknown sentinel; raw_source patched below (position 2).
  ((SELECT id FROM games WHERE title = 'Silkroad Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Goliath music box', 'event_festival',
   'main', 'soundtemp', 2),

  -- Row 318: EastWest,Symphonic Orchestra,,,Soundtrack is mostly EWQL,Eastern Europe Field
  ((SELECT id FROM games WHERE title = 'Silkroad Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'Soundtrack is mostly EWQL', 'Eastern Europe Field',
   'main', 'soundtemp', 3),

  -- Row 319: Spectrasonics,Metamorphosis,Disc 1 -> Partition A -> 53-70 LOOPS,ABCESS B,,event_ghost
  ((SELECT id FROM games WHERE title = 'Silkroad Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 53-70 LOOPS', 'ABCESS B', NULL, 'event_ghost',
   'main', 'soundtemp', 4),

  -- Row 320: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,,"Feliz Navidad, Hotan Field"
  ((SELECT id FROM games WHERE title = 'Silkroad Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Feliz Navidad, Hotan Field',
   'main', 'soundtemp', 5),

  -- Row 321: Yellow Tools,Pure Drums,,Funk Kit,Might be ProSamples 43,Feliz Navidad
  ((SELECT id FROM games WHERE title = 'Silkroad Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yellow Tools' COLLATE NOCASE AND p.name = 'Pure Drums' COLLATE NOCASE),
   NULL, 'Funk Kit', 'Might be ProSamples 43', 'Feliz Navidad',
   'main', 'soundtemp', 6),

  -- =========================================================================
  -- Yogurting (rows 323-341) -> 19 main rows
  -- =========================================================================

  -- Row 323: ,,,,"Check this sfx, is it JV80 SFX?",Visions -> brand and product blank. Unknown/Unknown sentinel; raw_source patched below (position 1).
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Check this sfx, is it JV80 SFX?', 'Visions',
   'main', 'soundtemp', 1),

  -- Row 324: ILIO,Stark Raving Beats,EXP Libraries > Stark Raving Beats,150-All That Perc Loop,,The Night Before the Fierce Contest
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ILIO' COLLATE NOCASE AND p.name = 'Stark Raving Beats' COLLATE NOCASE),
   'EXP Libraries > Stark Raving Beats', '150-All That Perc Loop', NULL, 'The Night Before the Fierce Contest',
   'main', 'soundtemp', 2),

  -- Row 325: KORG,TRITON-Rack,Programs -> INT-A,079 Ensemble Bell,,A New Encounter
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-Rack' COLLATE NOCASE),
   'Programs -> INT-A', '079 Ensemble Bell', NULL, 'A New Encounter',
   'main', 'soundtemp', 3),

  -- Row 326: KORG,TRITON-Rack,Programs -> INT-A,127 Krystal Bells,"Disable reverb. Not matching, recheck",Homeroom
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-Rack' COLLATE NOCASE),
   'Programs -> INT-A', '127 Krystal Bells', 'Disable reverb. Not matching, recheck', 'Homeroom',
   'main', 'soundtemp', 4),

  -- Row 327: Roland,,,,SC Shakuhachi,The Memory of that Day -> brand known, product blank. Unknown/Unknown sentinel; raw_source patched below (position 5).
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'SC Shakuhachi', 'The Memory of that Day',
   'main', 'soundtemp', 5),

  -- Row 328: Roland,JV-2080,PR-B,098 Air Lead,,A New Encounter
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-B', '098 Air Lead', NULL, 'A New Encounter',
   'main', 'soundtemp', 6),

  -- Row 329: Spectrasonics,Liquid Grooves,Disc 1 -> Partition C -> 73 MYSTERIOUS,MYS TRIPPY 1,,Silence
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Liquid Grooves' COLLATE NOCASE),
   'Disc 1 -> Partition C -> 73 MYSTERIOUS', 'MYS TRIPPY 1', NULL, 'Silence',
   'main', 'soundtemp', 7),

  -- Row 330: Spectrasonics,Liquid Grooves,Disc 1 -> Partition D -> 78 ICE BRUSH,ICE BRUSHES,,Visions
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Liquid Grooves' COLLATE NOCASE),
   'Disc 1 -> Partition D -> 78 ICE BRUSH', 'ICE BRUSHES', NULL, 'Visions',
   'main', 'soundtemp', 8),

  -- Row 331: Spectrasonics,Stylus RMX,,52-Alice's Dream Combo,,Beyond the Mist
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '52-Alice''s Dream Combo', NULL, 'Beyond the Mist',
   'main', 'soundtemp', 9),

  -- Row 332: Spectrasonics,Stylus RMX,,60-Volcano Kabuki Wood,,Beyond the Mist
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '60-Volcano Kabuki Wood', NULL, 'Beyond the Mist',
   'main', 'soundtemp', 10),

  -- Row 333: Spectrasonics,Stylus RMX,,68-Tower Zero Groove,,Forgotten Scenery
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '68-Tower Zero Groove', NULL, 'Forgotten Scenery',
   'main', 'soundtemp', 11),

  -- Row 334: Spectrasonics,Stylus RMX,,,,Let's Make Some Memories!
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, NULL, 'Let''s Make Some Memories!',
   'main', 'soundtemp', 12),

  -- Row 335: Spectrasonics,Stylus RMX,,,,Let's Make Some Memories!
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, NULL, 'Let''s Make Some Memories!',
   'main', 'soundtemp', 13),

  -- Row 336: Spectrasonics,Stylus RMX,,84-Small Blocks Beat,,Bygone Days
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '84-Small Blocks Beat', NULL, 'Bygone Days',
   'main', 'soundtemp', 14),

  -- Row 337: Spectrasonics,Stylus RMX,,84-Small Blocks Combo,,Bygone Days
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '84-Small Blocks Combo', NULL, 'Bygone Days',
   'main', 'soundtemp', 15),

  -- Row 338: Spectrasonics,Stylus RMX,,135-Iron Boy,,Let's Make Some Memories!
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '135-Iron Boy', NULL, 'Let''s Make Some Memories!',
   'main', 'soundtemp', 16),

  -- Row 339: Spectrasonics,Stylus RMX,,160-Find The Exit Combo,,The Thousand Year Lament
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Find The Exit Combo', NULL, 'The Thousand Year Lament',
   'main', 'soundtemp', 17),

  -- Row 340: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,,"Memories of Yggdrasil, Let's Make Some Memories!, Welcome to Yoitsuki Institute"
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Memories of Yggdrasil, Let''s Make Some Memories!, Welcome to Yoitsuki Institute',
   'main', 'soundtemp', 18),

  -- Row 341: Yamaha,MOTIF 6,GM,E12 Panflute,,Beyond the Mist
  ((SELECT id FROM games WHERE title = 'Yogurting'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'GM', 'E12 Panflute', NULL, 'Beyond the Mist',
   'main', 'soundtemp', 19),

  -- =========================================================================
  -- Granado Espada (rows 343-371) -> 29 main rows
  -- =========================================================================

  -- Row 343: Access,Virus,,A4 Impact MS,Program name based on Virus C,Toccata and Fugue in D-
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Access' COLLATE NOCASE AND p.name = 'Virus' COLLATE NOCASE),
   NULL, 'A4 Impact MS', 'Program name based on Virus C', 'Toccata and Fugue in D-',
   'main', 'soundtemp', 1),

  -- Row 344: Best Service,World Colours,,,One other sample as well,Dark Temple
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'World Colours' COLLATE NOCASE),
   NULL, NULL, 'One other sample as well', 'Dark Temple',
   'main', 'soundtemp', 2),

  -- Row 345: Best Service,World Colours,Partition F -> FLUTE GROOVE,FLUTE GROOVE,FLUTEGRV06 ,Dark Temple
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'World Colours' COLLATE NOCASE),
   'Partition F -> FLUTE GROOVE', 'FLUTE GROOVE', 'FLUTEGRV06', 'Dark Temple',
   'main', 'soundtemp', 3),

  -- Row 346: Best Service,World Colours,Partition F -> FLUTE+VOCAL,FLUTE+VOCAL,FLU.+VOC01,Dark Temple
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'World Colours' COLLATE NOCASE),
   'Partition F -> FLUTE+VOCAL', 'FLUTE+VOCAL', 'FLU.+VOC01', 'Dark Temple',
   'main', 'soundtemp', 4),

  -- Row 347: EastWest,Symphonic Orchestra,,,Most orchestral tracks,Fatal
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'Most orchestral tracks', 'Fatal',
   'main', 'soundtemp', 5),

  -- Row 348: E-MU Systems,Proteus 2000,Instruments,0203 gtr:Sad Guitar,Could be ROM version?,Tempician
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Proteus 2000' COLLATE NOCASE),
   'Instruments', '0203 gtr:Sad Guitar', 'Could be ROM version?', 'Tempician',
   'main', 'soundtemp', 6),

  -- Row 349: KORG,TRITON-Rack,Programs -> INT-A,A001 Acoustic Piano,,"Dancing the Moon, Honor Winds, Sol de la Centro"
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-Rack' COLLATE NOCASE),
   'Programs -> INT-A', 'A001 Acoustic Piano', NULL, 'Dancing the Moon, Honor Winds, Sol de la Centro',
   'main', 'soundtemp', 7),

  -- Row 350: KORG,TRITON-Rack,Programs -> INT-D,D042 Vanishing Planet,,Dark Temple
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-Rack' COLLATE NOCASE),
   'Programs -> INT-D', 'D042 Vanishing Planet', NULL, 'Dark Temple',
   'main', 'soundtemp', 8),

  -- Row 351: Roland,JV-2080,PR-C,048 Real Pizz,,"Dark Temple, Paradiso"
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-C', '048 Real Pizz', NULL, 'Dark Temple, Paradiso',
   'main', 'soundtemp', 9),

  -- Row 352: Roland,SR-JV80-04 Vintage Synth,,255 RSS Spinner,,Red Shores
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-04 Vintage Synth' COLLATE NOCASE),
   NULL, '255 RSS Spinner', NULL, 'Red Shores',
   'main', 'soundtemp', 10),

  -- Row 353: Sonic Foundry,Voices of Native America,,,,Noche de la Selva
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   NULL, NULL, NULL, 'Noche de la Selva',
   'main', 'soundtemp', 11),

  -- Row 354: Sonic Foundry,Voices of Native America,,,,Paradiso
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'Voices of Native America' COLLATE NOCASE),
   NULL, NULL, NULL, 'Paradiso',
   'main', 'soundtemp', 12),

  -- Row 355: Spectrasonics,Metamorphosis,Disc 1 -> Partition A -> 53-70 LOOPS,MOHAVE C,,Ghetto Amoretto
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 53-70 LOOPS', 'MOHAVE C', NULL, 'Ghetto Amoretto',
   'main', 'soundtemp', 13),

  -- Row 356: Spectrasonics,Metamorphosis,Disc 2 -> PARTITION A -> 99-105 LPS,HAMSTRING,,The Last of Chaos
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 2 -> PARTITION A -> 99-105 LPS', 'HAMSTRING', NULL, 'The Last of Chaos',
   'main', 'soundtemp', 14),

  -- Row 357: Spectrasonics,Stylus RMX,Bonus Spectrasonics -> Distorted Reality 130-171,137-Cat Woman,,Khi-Fi
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Bonus Spectrasonics -> Distorted Reality 130-171', '137-Cat Woman', NULL, 'Khi-Fi',
   'main', 'soundtemp', 15),

  -- Row 358: Spectrasonics,Stylus RMX,RMX Grooves,52-Alice's Dream Wood Hits,Pitched down,Succubus
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '52-Alice''s Dream Wood Hits', 'Pitched down', 'Succubus',
   'main', 'soundtemp', 16),

  -- Row 359: Spectrasonics,Stylus RMX,RMX Grooves,73-Caravan Perc,,Nino Zorro Vio
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '73-Caravan Perc', NULL, 'Nino Zorro Vio',
   'main', 'soundtemp', 17),

  -- Row 360: Spectrasonics,Stylus RMX,RMX Grooves,125-Evil Echo Evilness,,"Deatholic, Matar Fiesta"
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '125-Evil Echo Evilness', NULL, 'Deatholic, Matar Fiesta',
   'main', 'soundtemp', 18),

  -- Row 361: Spectrasonics,Stylus RMX,RMX Grooves,143-MindBender Half Metal,,Whispering
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '143-MindBender Half Metal', NULL, 'Whispering',
   'main', 'soundtemp', 19),

  -- Row 362: Spectrasonics,Stylus RMX,RMX Grooves,160-Spheres DnB,Custom loop,Tempestuous
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '160-Spheres DnB', 'Custom loop', 'Tempestuous',
   'main', 'soundtemp', 20),

  -- Row 363: Spectrasonics,Stylus RMX,RMX Grooves,174-World Hunt,,"Espada Nigero, Agujero inmundo"
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '174-World Hunt', NULL, 'Espada Nigero, Agujero inmundo',
   'main', 'soundtemp', 21),

  -- Row 364: Spectrasonics,Stylus RMX,RMX Grooves,174-World Hunt Snares 1,One-shot with reverb,Dark Temple
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '174-World Hunt Snares 1', 'One-shot with reverb', 'Dark Temple',
   'main', 'soundtemp', 22),

  -- Row 365: Spectrasonics,Stylus RMX,RMX Grooves,174-World Hunt Snares 2,One-shot with reverb,Dark Temple
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '174-World Hunt Snares 2', 'One-shot with reverb', 'Dark Temple',
   'main', 'soundtemp', 23),

  -- Row 366: Spectrasonics,Symphony of Voices,Disc 2 -> Partition G -> 01 SOP OHS,SOP OHS AS,,Illusion
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   'Disc 2 -> Partition G -> 01 SOP OHS', 'SOP OHS AS', NULL, 'Illusion',
   'main', 'soundtemp', 24),

  -- Row 367: Ueberschall,2 Step Garage,Disc 1,Track 07,Timestamp: 0:00,2step blue
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '2 Step Garage' COLLATE NOCASE),
   'Disc 1', 'Track 07', 'Timestamp: 0:00', '2step blue',
   'main', 'soundtemp', 25),

  -- Row 368: Ueberschall,2 Step Garage,Disc 1,Track 09,Timestamp: 1:44.8,2step blue
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '2 Step Garage' COLLATE NOCASE),
   'Disc 1', 'Track 09', 'Timestamp: 1:44.8', '2step blue',
   'main', 'soundtemp', 26),

  -- Row 369: Ueberschall,2 Step Garage,Disc 1,Track 10,Timestamp: 0:00,2step blue
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = '2 Step Garage' COLLATE NOCASE),
   'Disc 1', 'Track 10', 'Timestamp: 0:00', '2step blue',
   'main', 'soundtemp', 27),

  -- Row 370: XLN Audio,Addictive Drums 2,,,Custom or metal ADpak preset,Initium Rush Hour
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   NULL, NULL, 'Custom or metal ADpak preset', 'Initium Rush Hour',
   'main', 'soundtemp', 28),

  -- Row 371: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,,"Sunnyside, Cancion Amor, Watersky"
  ((SELECT id FROM games WHERE title = 'Granado Espada'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Sunnyside, Cancion Amor, Watersky',
   'main', 'soundtemp', 29),

  -- =========================================================================
  -- La Tale (rows 373-430) -> 58 main rows
  -- =========================================================================

  -- Row 373: Best Service,Voice Spectral,Track 8,Timestamp 0:00,,Saurus Field
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Voice Spectral' COLLATE NOCASE),
   'Track 8', 'Timestamp 0:00', NULL, 'Saurus Field',
   'main', 'soundtemp', 1),

  -- Row 374: Big Fish Audio,Funk City,14 090 E,scratch fx,,"Coal Mine, Van Giwoo"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Big Fish Audio' COLLATE NOCASE AND p.name = 'Funk City' COLLATE NOCASE),
   '14 090 E', 'scratch fx', NULL, 'Coal Mine, Van Giwoo',
   'main', 'soundtemp', 2),

  -- Row 375: EastWest,Ministry of Rock,,,,colosseum
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ministry of Rock' COLLATE NOCASE),
   NULL, NULL, NULL, 'colosseum',
   'main', 'soundtemp', 3),

  -- Row 376: EastWest,Ra,Mid East -> Plucked -> Santoor,Santoor KS C0-G0,,"Iris's Theme, Save The Saboten Princess"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Mid East -> Plucked -> Santoor', 'Santoor KS C0-G0', NULL, 'Iris''s Theme, Save The Saboten Princess',
   'main', 'soundtemp', 4),

  -- Row 377: EastWest,Symphonic Orchestra,Woodwinds -> Solo Oboe -> 5 Keysw,SOB KS Master,,Iris's Theme
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Oboe -> 5 Keysw', 'SOB KS Master', NULL, 'Iris''s Theme',
   'main', 'soundtemp', 5),

  -- Row 378: EastWest,Symphonic Orchestra,,Harp,,Fragrance of Forest
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, 'Harp', NULL, 'Fragrance of Forest',
   'main', 'soundtemp', 6),

  -- Row 379: EastWest,Symphonic Orchestra,,3 Snares,D.Z rocks this,"Ackee City, Hammer of Dwarf, Evening Sun, Abracadabra"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, '3 Snares', 'D.Z rocks this', 'Ackee City, Hammer of Dwarf, Evening Sun, Abracadabra',
   'main', 'soundtemp', 7),

  -- Row 380: EastWest,Symphonic Orchestra,,Large Snare Ensemble,,Dragon Castle
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, 'Large Snare Ensemble', NULL, 'Dragon Castle',
   'main', 'soundtemp', 8),

  -- Row 381: EastWest,Stormdrum,Large Percussion,Big Hits,E5,Smile of Sunshine
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Stormdrum' COLLATE NOCASE),
   'Large Percussion', 'Big Hits', 'E5', 'Smile of Sunshine',
   'main', 'soundtemp', 9),

  -- Row 382: EDIROL,Orchestral,String Sections -> Full Strings,P-0 033 FullStrings Spicatto,,Prologue Part 2
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Orchestral' COLLATE NOCASE),
   'String Sections -> Full Strings', 'P-0 033 FullStrings Spicatto', NULL, 'Prologue Part 2',
   'main', 'soundtemp', 10),

  -- Row 383: EDIROL,Orchestral,Woodwinds -> Clarinet,P-4 017 Clarinet 2,,"OX QUIZ, Snowfield"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'Orchestral' COLLATE NOCASE),
   'Woodwinds -> Clarinet', 'P-4 017 Clarinet 2', NULL, 'OX QUIZ, Snowfield',
   'main', 'soundtemp', 11),

  -- Row 384: Ensoniq,MR-Rack,RAM001,000 Steel Pad,Disable effects,Earth Unlimited
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'RAM001', '000 Steel Pad', 'Disable effects', 'Earth Unlimited',
   'main', 'soundtemp', 12),

  -- Row 385: Ensoniq,MR-Rack,RAM001,049 MR Coffee,,용기있는 한걸음
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'RAM001', '049 MR Coffee', NULL, '용기있는 한걸음',
   'main', 'soundtemp', 13),

  -- Row 386: Heavyocity,Damage,,,,
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'main', 'soundtemp', 14),

  -- Row 387: Hollywood Edge,Premiere Edition Vol. 1,"PE-20 Electronic, Sci-Fi",MultipitchedHighFr PE208201,,"Genepe Orgel, Siam"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-20 Electronic, Sci-Fi', 'MultipitchedHighFr PE208201', NULL, 'Genepe Orgel, Siam',
   'main', 'soundtemp', 15),

  -- Row 388: Native Instruments,FM7,,Far East,,akai ito
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM7' COLLATE NOCASE),
   NULL, 'Far East', NULL, 'akai ito',
   'main', 'soundtemp', 16),

  -- Row 389: Roland,JV-2080,,,,"Dear. HyeJin, Toad island #1/#2/#4, " -> trailing ", " stripped
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, NULL, 'Dear. HyeJin, Toad island #1/#2/#4',
   'main', 'soundtemp', 17),

  -- Row 390: Roland,SR-JV80-06 Dance,,157 ScratchMenu2,"0215 Spooky, 0181 Scratch Hit",Gambling without Luck
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '157 ScratchMenu2', '0215 Spooky, 0181 Scratch Hit', 'Gambling without Luck',
   'main', 'soundtemp', 18),

  -- Row 391: Spectrasonics,Metamorphosis,Disc 1 -> Partition A -> 53-70 LOOPS,MOHAVE B,,dance away
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 53-70 LOOPS', 'MOHAVE B', NULL, 'dance away',
   'main', 'soundtemp', 19),

  -- Row 392: Spectrasonics,Metamorphosis,Disc 1 -> Partition A -> 53-70 LOOPS,SONAR,Custom loop,"Elfa, 돌고래의 꿈"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 53-70 LOOPS', 'SONAR', 'Custom loop', 'Elfa, 돌고래의 꿈',
   'main', 'soundtemp', 20),

  -- Row 393: Spectrasonics,Stylus RMX,Classic Stylus -> 74-Crossroads,74-Crossroads,,Theme of Chunsik
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 74-Crossroads', '74-Crossroads', NULL, 'Theme of Chunsik',
   'main', 'soundtemp', 21),

  -- Row 394: Spectrasonics,Stylus RMX,Classic Stylus -> 79-Shifted Jazz,79-Shifted Jazz,,Toad island #3
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 79-Shifted Jazz', '79-Shifted Jazz', NULL, 'Toad island #3',
   'main', 'soundtemp', 22),

  -- Row 395: Spectrasonics,Stylus RMX,Classic Stylus -> 78-Perturbed,78-Perturbed,,Mystic
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 78-Perturbed', '78-Perturbed', NULL, 'Mystic',
   'main', 'soundtemp', 23),

  -- Row 396: Spectrasonics,Stylus RMX,Classic Stylus -> 133-Step out,133-Step out a,,Pyramid
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 133-Step out', '133-Step out a', NULL, 'Pyramid',
   'main', 'soundtemp', 24),

  -- Row 397: Spectrasonics,Stylus RMX,Classic Stylus -> Bongos,131-Bongos,,Pyramid
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> Bongos', '131-Bongos', NULL, 'Pyramid',
   'main', 'soundtemp', 25),

  -- Row 398: Spectrasonics,Stylus RMX,Classic Stylus -> Congas,100-Congas Bend,,Welcome to the Jungle
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> Congas', '100-Congas Bend', NULL, 'Welcome to the Jungle',
   'main', 'soundtemp', 26),

  -- Row 399: Spectrasonics,Stylus RMX,RMX Grooves -> 54-Eclipse,54-Eclipse Atoms,,Cookie Garden
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 54-Eclipse', '54-Eclipse Atoms', NULL, 'Cookie Garden',
   'main', 'soundtemp', 27),

  -- Row 400: Spectrasonics,Stylus RMX,RMX Grooves -> 60-Volcano,60-Volcano  Combo,,"Dark Forest, Mysteries of the Forest, The Cradle of Stars"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 60-Volcano', '60-Volcano  Combo', NULL, 'Dark Forest, Mysteries of the Forest, The Cradle of Stars',
   'main', 'soundtemp', 28),

  -- Row 401: Spectrasonics,Stylus RMX,RMX Grooves -> 70-Eden,70-Eden  Combo,Custom Loop,Night Wish
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 70-Eden', '70-Eden  Combo', 'Custom Loop', 'Night Wish',
   'main', 'soundtemp', 29),

  -- Row 402: Spectrasonics,Stylus RMX,RMX Grooves -> 72-Liquid Frame,72-Liquid Frame  Combo,,"Lightning Strikes, Echoes, Dark Forest, Lost Temple (Xenadia), Chaotic Guild"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 72-Liquid Frame', '72-Liquid Frame  Combo', NULL, 'Lightning Strikes, Echoes, Dark Forest, Lost Temple (Xenadia), Chaotic Guild',
   'main', 'soundtemp', 30),

  -- Row 403: Spectrasonics,Stylus RMX,RMX Grooves -> 73-Caravan,73-Caravan  Combo,,Sunshine Bar
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 73-Caravan', '73-Caravan  Combo', NULL, 'Sunshine Bar',
   'main', 'soundtemp', 31),

  -- Row 404: Spectrasonics,Stylus RMX,RMX Grooves -> 79-Bossa Love,79-BossaLuv  Combo a,,Vivo Reprise
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Bossa Love', '79-BossaLuv  Combo a', NULL, 'Vivo Reprise',
   'main', 'soundtemp', 32),

  -- Row 405: Spectrasonics,Stylus RMX,RMX Grooves -> 80-Space Ranger,80-Space Ranger S+H,,Don't Freeze
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 80-Space Ranger', '80-Space Ranger S+H', NULL, 'Don''t Freeze',
   'main', 'soundtemp', 33),

  -- Row 406: Spectrasonics,Stylus RMX,RMX Grooves -> 84-Particles,84-Particles  Combo,,"Be Ruined, Mystery School, Night Flower"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 84-Particles', '84-Particles  Combo', NULL, 'Be Ruined, Mystery School, Night Flower',
   'main', 'soundtemp', 34),

  -- Row 407: Spectrasonics,Stylus RMX,RMX Grooves -> 92-Lollipop,92-Lollipop Vinyl Piano,,"Mystery School, DB"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 92-Lollipop', '92-Lollipop Vinyl Piano', NULL, 'Mystery School, DB',
   'main', 'soundtemp', 35),

  -- Row 408: Spectrasonics,Stylus RMX,RMX Grooves -> 125-Emperor,125-Emperor Top Dry,,Crossroad
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Emperor', '125-Emperor Top Dry', NULL, 'Crossroad',
   'main', 'soundtemp', 36),

  -- Row 409: Spectrasonics,Stylus RMX,RMX Grooves -> 126-Transonica,126-Transonica  Combo,Spammed throughout soundtrack,"Blue Emotion, Western GunRun, Never Die, Dance Away, Chon Pam, Hangar, Genepe, Di Labo, El Anoir Jungle, Hot Blood, PvP Perfect Man, Analog Emotion, The Ocean"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 126-Transonica', '126-Transonica  Combo', 'Spammed throughout soundtrack', 'Blue Emotion, Western GunRun, Never Die, Dance Away, Chon Pam, Hangar, Genepe, Di Labo, El Anoir Jungle, Hot Blood, PvP Perfect Man, Analog Emotion, The Ocean',
   'main', 'soundtemp', 37),

  -- Row 410: Spectrasonics,Stylus RMX,RMX Grooves -> 128-Mardy Mark,128-Mardy Mark Combo,,"Pyramid Treasure, Ghost House, White Chapel"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 128-Mardy Mark', '128-Mardy Mark Combo', NULL, 'Pyramid Treasure, Ghost House, White Chapel',
   'main', 'soundtemp', 38),

  -- Row 411: Spectrasonics,Stylus RMX,RMX Grooves -> 135-Hysteria,135-Hysteria  Combo a,,Ringing Bells in December
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Hysteria', '135-Hysteria  Combo a', NULL, 'Ringing Bells in December',
   'main', 'soundtemp', 39),

  -- Row 412: Spectrasonics,Stylus RMX,RMX Grooves -> 135-Hysteria,135-Hysteria Chemical a,,"Blue Emotion, Crystal Cave"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Hysteria', '135-Hysteria Chemical a', NULL, 'Blue Emotion, Crystal Cave',
   'main', 'soundtemp', 40),

  -- Row 413: Spectrasonics,Stylus RMX,RMX Grooves -> 140-Drill,140-Drill Basic Beat,,"Lightning Strikes, Sunshine Bar"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 140-Drill', '140-Drill Basic Beat', NULL, 'Lightning Strikes, Sunshine Bar',
   'main', 'soundtemp', 41),

  -- Row 414: Spectrasonics,Stylus RMX,RMX Grooves -> 140-Drill,140-Drill The Drill,,Freestyle Rush
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 140-Drill', '140-Drill The Drill', NULL, 'Freestyle Rush',
   'main', 'soundtemp', 42),

  -- Row 415: Spectrasonics,Stylus RMX,RMX Grooves -> 160-The Call,160-The Call Combo,,"Prologue Part 2, Bifrost, Volcano, Fragments of Memory"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 160-The Call', '160-The Call Combo', NULL, 'Prologue Part 2, Bifrost, Volcano, Fragments of Memory',
   'main', 'soundtemp', 43),

  -- Row 416: Spectrasonics,Stylus RMX,RMX Grooves -> 174-World Hunt,174-World Hunt ,Various elements,Spooky Village -> col D trailing space stripped
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 174-World Hunt', '174-World Hunt', 'Various elements', 'Spooky Village',
   'main', 'soundtemp', 44),

  -- Row 417: Spectrasonics,Stylus RMX,RMX Grooves -> 174-World Hunt,174-World Hunt,Custom Loop,Singing Fairy
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 174-World Hunt', '174-World Hunt', 'Custom Loop', 'Singing Fairy',
   'main', 'soundtemp', 45),

  -- Row 418: Spectrasonics,Stylus RMX,RMX Grooves,,,Chaos! Break! Manga!
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', NULL, NULL, 'Chaos! Break! Manga!',
   'main', 'soundtemp', 46),

  -- Row 419: Spectrasonics,Stylus RMX,Sound Menus -> Guitar Bits,MENU - Guitar Drive Bits 1,,ban gioo
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus -> Guitar Bits', 'MENU - Guitar Drive Bits 1', NULL, 'ban gioo',
   'main', 'soundtemp', 47),

  -- Row 420: Spectrasonics,Stylus RMX,Sound Menus -> Retro Hits,MENU - Big Band Electro Hits,"A#6, G#6",ban gioo
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus -> Retro Hits', 'MENU - Big Band Electro Hits', 'A#6, G#6', 'ban gioo',
   'main', 'soundtemp', 48),

  -- Row 421: Vengeance,Essential Club Sounds Vol. 1,VEC1 FX,VEC1 FX 004,,Don't Freeze!
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance' COLLATE NOCASE AND p.name = 'Essential Club Sounds Vol. 1' COLLATE NOCASE),
   'VEC1 FX', 'VEC1 FX 004', NULL, 'Don''t Freeze!',
   'main', 'soundtemp', 49),

  -- Row 422: XLN Audio,Addictive Drums 2,,AD Classic Startup,,Abyss gate
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   NULL, 'AD Classic Startup', NULL, 'Abyss gate',
   'main', 'soundtemp', 50),

  -- Row 423: Yamaha,MOTIF Rack,PRE1,001 PowerGrand,,MAY be happy
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF Rack' COLLATE NOCASE),
   'PRE1', '001 PowerGrand', NULL, 'MAY be happy',
   'main', 'soundtemp', 51),

  -- Row 424: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,Spammed throughout soundtrack,"Where am i? (arranged ver), Dear. HyeJin, Dark Forest, Welcome to the jungle, Owl Castle, Lonely Sailing, 少女心, Lilliput, My heart is 123 bpm, Toad island #5, Steel City, Genepe, Elias palace, Netural Guild Room, fish"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', 'Spammed throughout soundtrack', 'Where am i? (arranged ver), Dear. HyeJin, Dark Forest, Welcome to the jungle, Owl Castle, Lonely Sailing, 少女心, Lilliput, My heart is 123 bpm, Toad island #5, Steel City, Genepe, Elias palace, Netural Guild Room, fish',
   'main', 'soundtemp', 52),

  -- Row 425: Yamaha,MOTIF 6,PRE2,G01 SAKURA,,akai ito
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'G01 SAKURA', NULL, 'akai ito',
   'main', 'soundtemp', 53),

  -- Row 426: Yamaha,MOTIF 6,GM,G12 Koto,,"Owl Castle, black mooon princess, may be happy (winter ver), toad island #1"
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'GM', 'G12 Koto', NULL, 'Owl Castle, black mooon princess, may be happy (winter ver), toad island #1',
   'main', 'soundtemp', 54),

  -- Row 427: Yamaha,MOTIF 6,,,Acoustic bass,Thursday Is Chicken Mayo
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   NULL, NULL, 'Acoustic bass', 'Thursday Is Chicken Mayo',
   'main', 'soundtemp', 55),

  -- Row 428: Yamaha,MOTIF 6,,,Vibraphone,Magical July
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   NULL, NULL, 'Vibraphone', 'Magical July',
   'main', 'soundtemp', 56),

  -- Row 429: Yamaha,?,,,Mondo Lead,Prologue Part 2 -> brand known, product = '?'. Unknown/Unknown sentinel; raw_source patched below (position 57).
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Mondo Lead', 'Prologue Part 2',
   'main', 'soundtemp', 57),

  -- Row 430: Yellow Tools,Pure Drums,,Funk Kit,Might be ProSamples 43,Don't Freeze!
  ((SELECT id FROM games WHERE title = 'La Tale'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yellow Tools' COLLATE NOCASE AND p.name = 'Pure Drums' COLLATE NOCASE),
   NULL, 'Funk Kit', 'Might be ProSamples 43', 'Don''t Freeze!',
   'main', 'soundtemp', 58);

-- Patch raw_source for rows whose brand and/or product was missing/unknown.
-- Stash the original col A / col B descriptor so the source row is recoverable.
UPDATE usages SET raw_source = 'unspecified — both brand and product blank in source CSV (col A empty, col B empty)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Silkroad Online')
    AND position = 2;

UPDATE usages SET raw_source = 'unspecified — both brand and product blank in source CSV (col A empty, col B empty)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Yogurting')
    AND position = 1;

UPDATE usages SET raw_source = 'Roland — product unspecified in source CSV (col A=Roland, col B empty)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Yogurting')
    AND position = 5;

UPDATE usages SET raw_source = 'Yamaha — product marked "?" in source CSV (col A=Yamaha, col B=?)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'La Tale')
    AND position = 57;
