-- Source: reference/SoundTeMP Sound Sources & Information Compendium (WIP) - Sound Sources.csv rows 431-485
-- Eight games covered:
--   Xenepic Online                       (2007) rows 431-451 (header + 20 data rows)
--   Street Gears                         (2008) rows 452-458 (header + 6 data rows)
--   G2 Guns Gunner                       (2009) rows 459-463 (header + 4 data rows)
--   Neo Steam: The Shattered Continent   (2009) rows 464-468 (header + 4 data rows)
--   Deep Deep Dungeon                    (2010) rows 469-472 (header + 3 data rows)
--   Monarch: Heroes of a New Age         (2013) rows 473-477 (header + 4 data rows)
--   Qurare: Magic Library                (2014) rows 478-483 (header + 5 data rows)
--   Mabinogi Duel                        (2015) rows 484-485 (header + 1 data row)
-- source_family = 'soundtemp'. Platform = NULL for all. demo_url = NULL (CSV has no Demo column).
-- No "Stuff to find" subsections in this range; every usage row is category='main'.
-- One row uses the Unknown/Unknown sentinel:
--   Row 467 (Neo Steam): "Spectrasonics,,,," -> brand known but product blank.
-- It stashes the raw col A / col B descriptor via an UPDATE at the bottom (raw_source patch).

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Best Service'),
  ('EastWest'),
  ('Hollywood Edge'),
  ('KORG'),
  ('Roland'),
  ('Spectrasonics'),
  ('Yamaha'),
  ('XLN Audio'),
  ('Native Instruments'),
  ('Ueberschall'),
  ('Unknown');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'        COLLATE NOCASE), 'Ethno World',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'            COLLATE NOCASE), 'Symphonic Orchestra',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'            COLLATE NOCASE), 'BT Breakz from the Nu Skool',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Hollywood Edge'      COLLATE NOCASE), 'Premiere Edition Vol. 1',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                COLLATE NOCASE), 'TRITON-Rack',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'              COLLATE NOCASE), 'SR-JV80-15 Special FX Collection',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'       COLLATE NOCASE), 'Distorted Reality',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'       COLLATE NOCASE), 'Stylus',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'       COLLATE NOCASE), 'Stylus RMX',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'       COLLATE NOCASE), 'Symphony of Voices',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'       COLLATE NOCASE), 'Vocal Planet',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'       COLLATE NOCASE), 'Metamorphosis S.A.G.E. Xpander',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'       COLLATE NOCASE), 'Liquid Grooves S.A.G.E. Xpander',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'              COLLATE NOCASE), 'MOTIF 6',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'              COLLATE NOCASE), 'PLG150-VL',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'           COLLATE NOCASE), 'Addictive Drums',                              'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'  COLLATE NOCASE), 'FM8',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'         COLLATE NOCASE), 'Caribbean Flavors Vol. 1',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'             COLLATE NOCASE), 'Unknown',                                      NULL);

-- ============================================================================
-- Game 1: Xenepic Online (2007)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Xenepic Online',
   NULL,
   '2007',
   'SoundTeMP, Dong-Il Kwak',
   'soundtemp, dong-il kwak',
   NULL);

-- ============================================================================
-- Game 2: Street Gears (2008)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Street Gears',
   NULL,
   '2008',
   'Jinbae Park, Seung Yeol Kim',
   'jinbae park, seung yeol kim',
   NULL);

-- ============================================================================
-- Game 3: G2 Guns Gunner (2009)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('G2 Guns Gunner',
   NULL,
   '2009',
   'Jinbae Park, ''NieN'', ''Electronic Boutique'', ''makou''',
   'jinbae park, ''nien'', ''electronic boutique'', ''makou''',
   NULL);

-- ============================================================================
-- Game 4: Neo Steam: The Shattered Continent (2009)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Neo Steam: The Shattered Continent',
   NULL,
   '2009',
   'SoundTeMP',
   'soundtemp',
   NULL);

-- ============================================================================
-- Game 5: Deep Deep Dungeon (2010)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Deep Deep Dungeon',
   NULL,
   '2010',
   'Jinbae Park',
   'jinbae park',
   NULL);

-- ============================================================================
-- Game 6: Monarch: Heroes of a New Age (2013)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Monarch: Heroes of a New Age',
   NULL,
   '2013',
   'Goomin Nam',
   'goomin nam',
   NULL);

-- ============================================================================
-- Game 7: Qurare: Magic Library (2014)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Qurare: Magic Library',
   NULL,
   '2014',
   'Jinbae Park, Goomin Nam, ''TAK''',
   'jinbae park, goomin nam, ''tak''',
   NULL);

-- ============================================================================
-- Game 8: Mabinogi Duel (2015)
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Mabinogi Duel',
   NULL,
   '2015',
   'ESTIMATE, Jinbae Park, Goomin Nam',
   'estimate, jinbae park, goomin nam',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Xenepic Online (rows 432-451) -> all main (20 rows)
  -- =========================================================================

  -- Row 432: Best Service,Ethno World,Woodwind and Brass -> Various Flute FX,Various Flute FX,,Desert 02
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World' COLLATE NOCASE),
   'Woodwind and Brass -> Various Flute FX', 'Various Flute FX', NULL, 'Desert 02',
   'main', 'soundtemp', 1),

  -- Row 433: EastWest,Symphonic Orchestra,,,,"BGM 47-55, BGM 57"
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, 'BGM 47-55, BGM 57',
   'main', 'soundtemp', 2),

  -- Row 434: Hollywood Edge,Premiere Edition Vol. 1,PE-04 Water,,"Various, will detail later",Senondorf
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-04 Water', NULL, 'Various, will detail later', 'Senondorf',
   'main', 'soundtemp', 3),

  -- Row 435: KORG,TRITON-Rack,Programs -> INT-A,A001 Acoustic Piano,,Skull Hex
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-Rack' COLLATE NOCASE),
   'Programs -> INT-A', 'A001 Acoustic Piano', NULL, 'Skull Hex',
   'main', 'soundtemp', 4),

  -- Row 436: Roland,SR-JV80-15 Special FX Collection,,006 Illusion,Turn off part 3,Walmer Empire 2
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-15 Special FX Collection' COLLATE NOCASE),
   NULL, '006 Illusion', 'Turn off part 3', 'Walmer Empire 2',
   'main', 'soundtemp', 5),

  -- Row 437: Roland,SR-JV80-15 Special FX Collection,,026 Bad Dreamer,,Walmer Empire 2
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-15 Special FX Collection' COLLATE NOCASE),
   NULL, '026 Bad Dreamer', NULL, 'Walmer Empire 2',
   'main', 'soundtemp', 6),

  -- Row 438: Spectrasonics,Distorted Reality,Partition C -> DISTORTORAMA,BAD DREAMS,,Walmer Empire 2
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Distorted Reality' COLLATE NOCASE),
   'Partition C -> DISTORTORAMA', 'BAD DREAMS', NULL, 'Walmer Empire 2',
   'main', 'soundtemp', 7),

  -- Row 439: Spectrasonics,Distorted Reality,Partition E -> BOWED METALS,RUSTY SPOKE,,Walmer Empire 2
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Distorted Reality' COLLATE NOCASE),
   'Partition E -> BOWED METALS', 'RUSTY SPOKE', NULL, 'Walmer Empire 2',
   'main', 'soundtemp', 8),

  -- Row 440: Spectrasonics,Stylus,,55-Phew and Phar ,"Might be custom loop, c based",Intro
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus' COLLATE NOCASE),
   NULL, '55-Phew and Phar ', 'Might be custom loop, c based', 'Intro',
   'main', 'soundtemp', 9),

  -- Row 441: Spectrasonics,Stylus RMX,,68-Small Blocks Combo,,Swamp
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '68-Small Blocks Combo', NULL, 'Swamp',
   'main', 'soundtemp', 10),

  -- Row 442: Spectrasonics,Stylus RMX,,68-Tower Zero Simple Drums,,Swamp
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '68-Tower Zero Simple Drums', NULL, 'Swamp',
   'main', 'soundtemp', 11),

  -- Row 443: Spectrasonics,Stylus RMX,,,Check later,Wasteland
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, 'Check later', 'Wasteland',
   'main', 'soundtemp', 12),

  -- Row 444: Spectrasonics,Stylus RMX,,135-Squashed Basic Break,,A Deadly Fountain Of Vitality
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '135-Squashed Basic Break', NULL, 'A Deadly Fountain Of Vitality',
   'main', 'soundtemp', 13),

  -- Row 445: Spectrasonics,Stylus RMX,,160-Find the Exit Combo,Custom loop?,Road of Rock Formation
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Find the Exit Combo', 'Custom loop?', 'Road of Rock Formation',
   'main', 'soundtemp', 14),

  -- Row 446: Spectrasonics,Stylus RMX,,160-Spheres,Trashed and Iced,Road of Rock Formation
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Spheres', 'Trashed and Iced', 'Road of Rock Formation',
   'main', 'soundtemp', 15),

  -- Row 447: Spectrasonics,Stylus RMX,Sound Menus -> Cinematic,MENU - Ambient Metals,,Swamp
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus -> Cinematic', 'MENU - Ambient Metals', NULL, 'Swamp',
   'main', 'soundtemp', 16),

  -- Row 448: Spectrasonics,Symphony of Voices,,,,Dragon's Heart
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   NULL, NULL, NULL, 'Dragon''s Heart',
   'main', 'soundtemp', 17),

  -- Row 449: Yamaha,MOTIF 6,PRE1,F10 JazzGTmelo,,Theme of Eir
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', 'F10 JazzGTmelo', NULL, 'Theme of Eir',
   'main', 'soundtemp', 18),

  -- Row 450: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,,"Jotunnheim Forest, Lively Town, Esune"
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Jotunnheim Forest, Lively Town, Esune',
   'main', 'soundtemp', 19),

  -- Row 451: Yamaha,PLG150-VL,,,,Toyosu Village
  ((SELECT id FROM games WHERE title = 'Xenepic Online'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'PLG150-VL' COLLATE NOCASE),
   NULL, NULL, NULL, 'Toyosu Village',
   'main', 'soundtemp', 20),

  -- =========================================================================
  -- Street Gears (rows 453-458) -> all main (6 rows)
  -- =========================================================================

  -- Row 453: KORG,TRITON-Rack,Programs -> INT-C,C028 A Leadlead,,Event 4
  ((SELECT id FROM games WHERE title = 'Street Gears'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-Rack' COLLATE NOCASE),
   'Programs -> INT-C', 'C028 A Leadlead', NULL, 'Event 4',
   'main', 'soundtemp', 1),

  -- Row 454: Spectrasonics,Stylus RMX,,,Wax Wash,Event 5
  ((SELECT id FROM games WHERE title = 'Street Gears'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, 'Wax Wash', 'Event 5',
   'main', 'soundtemp', 2),

  -- Row 455: Spectrasonics,Vocal Planet,,,Assuming the beatboxing is this,"Title, Ranking"
  ((SELECT id FROM games WHERE title = 'Street Gears'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Vocal Planet' COLLATE NOCASE),
   NULL, NULL, 'Assuming the beatboxing is this', 'Title, Ranking',
   'main', 'soundtemp', 3),

  -- Row 456: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,,Event 4
  ((SELECT id FROM games WHERE title = 'Street Gears'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'Event 4',
   'main', 'soundtemp', 4),

  -- Row 457: XLN Audio,Addictive Drums,,,Custom kit?,Lobby 5
  ((SELECT id FROM games WHERE title = 'Street Gears'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   NULL, NULL, 'Custom kit?', 'Lobby 5',
   'main', 'soundtemp', 5),

  -- Row 458: XLN Audio,Addictive Drums,,Startup,,Episode 1
  ((SELECT id FROM games WHERE title = 'Street Gears'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   NULL, 'Startup', NULL, 'Episode 1',
   'main', 'soundtemp', 6),

  -- =========================================================================
  -- G2 Guns Gunner (rows 460-463) -> all main (4 rows)
  -- =========================================================================

  -- Row 460: EastWest,Symphonic Orchestra,,,,Feathers in the Cage
  ((SELECT id FROM games WHERE title = 'G2 Guns Gunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, 'Feathers in the Cage',
   'main', 'soundtemp', 1),

  -- Row 461: Native Instruments,FM8,FM7 Legacy,Far East,Could be Airpad from FM8 Factory,Polar Excursion Train
  ((SELECT id FROM games WHERE title = 'G2 Guns Gunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM7 Legacy', 'Far East', 'Could be Airpad from FM8 Factory', 'Polar Excursion Train',
   'main', 'soundtemp', 2),

  -- Row 462: Spectrasonics,Stylus RMX,,143-Mind Bender Big Drums,,Narak
  ((SELECT id FROM games WHERE title = 'G2 Guns Gunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '143-Mind Bender Big Drums', NULL, 'Narak',
   'main', 'soundtemp', 3),

  -- Row 463: Spectrasonics,Stylus RMX,,160-Spheres Iced,,Polar Excursion Train
  ((SELECT id FROM games WHERE title = 'G2 Guns Gunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '160-Spheres Iced', NULL, 'Polar Excursion Train',
   'main', 'soundtemp', 4),

  -- =========================================================================
  -- Neo Steam: The Shattered Continent (rows 465-468) -> all main (4 rows)
  -- =========================================================================

  -- Row 465: EastWest,Symphonic Orchestra,,,,"Being After, Mazy, Deeper than Blue, Forgotten Saga"
  ((SELECT id FROM games WHERE title = 'Neo Steam: The Shattered Continent'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, NULL, 'Being After, Mazy, Deeper than Blue, Forgotten Saga',
   'main', 'soundtemp', 1),

  -- Row 466: Spectrasonics,Symphony of Voices,,,Check later,Lost Elf
  ((SELECT id FROM games WHERE title = 'Neo Steam: The Shattered Continent'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Symphony of Voices' COLLATE NOCASE),
   NULL, NULL, 'Check later', 'Lost Elf',
   'main', 'soundtemp', 2),

  -- Row 467: Spectrasonics,,,,"Loop, Pristine Age got Mohave?",Dream Down -> brand known, product blank. Unknown/Unknown sentinel; raw_source patched below (position 3).
  ((SELECT id FROM games WHERE title = 'Neo Steam: The Shattered Continent'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Loop, Pristine Age got Mohave?', 'Dream Down',
   'main', 'soundtemp', 3),

  -- Row 468: Yamaha,MOTIF 6,PRE2,D06 SweetFlute,,"New Age, Voyageurs"
  ((SELECT id FROM games WHERE title = 'Neo Steam: The Shattered Continent'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'New Age, Voyageurs',
   'main', 'soundtemp', 4),

  -- =========================================================================
  -- Deep Deep Dungeon (rows 470-472) -> all main (3 rows)
  -- =========================================================================

  -- Row 470: EastWest,BT Breakz from the Nu Skool ,,090 Graveyard Shift,,Last Dungeon
  ((SELECT id FROM games WHERE title = 'Deep Deep Dungeon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'BT Breakz from the Nu Skool' COLLATE NOCASE),
   NULL, '090 Graveyard Shift', NULL, 'Last Dungeon',
   'main', 'soundtemp', 1),

  -- Row 471: Spectrasonics,Stylus RMX,RMX Grooves,160-Spheres Iced,,Last Dungeon
  ((SELECT id FROM games WHERE title = 'Deep Deep Dungeon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '160-Spheres Iced', NULL, 'Last Dungeon',
   'main', 'soundtemp', 2),

  -- Row 472: XLN Audio,Addictive Drums,,Startup,,vs Common
  ((SELECT id FROM games WHERE title = 'Deep Deep Dungeon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   NULL, 'Startup', NULL, 'vs Common',
   'main', 'soundtemp', 3),

  -- =========================================================================
  -- Monarch: Heroes of a New Age (rows 474-477) -> all main (4 rows)
  -- =========================================================================

  -- Row 474: EastWest,Symphonic Orchestra,,,Everything in almost every track,
  ((SELECT id FROM games WHERE title = 'Monarch: Heroes of a New Age'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'Everything in almost every track', NULL,
   'main', 'soundtemp', 1),

  -- Row 475: Spectrasonics,Metamorphosis S.A.G.E. Xpander,050-059,055-Mohave c,,Wandering Woods
  ((SELECT id FROM games WHERE title = 'Monarch: Heroes of a New Age'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis S.A.G.E. Xpander' COLLATE NOCASE),
   '050-059', '055-Mohave c', NULL, 'Wandering Woods',
   'main', 'soundtemp', 2),

  -- Row 476: Spectrasonics,Stylus RMX,,174-World Hunt Metalmix 1a,,Dawn of Cablas
  ((SELECT id FROM games WHERE title = 'Monarch: Heroes of a New Age'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, '174-World Hunt Metalmix 1a', NULL, 'Dawn of Cablas',
   'main', 'soundtemp', 3),

  -- Row 477: Spectrasonics,Stylus RMX,Sound Menus,Cinematic Ambient Metals,C3,"A Land Without a King, Red Gate, Bloodlust, Dawn of Cablas"
  ((SELECT id FROM games WHERE title = 'Monarch: Heroes of a New Age'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus', 'Cinematic Ambient Metals', 'C3', 'A Land Without a King, Red Gate, Bloodlust, Dawn of Cablas',
   'main', 'soundtemp', 4),

  -- =========================================================================
  -- Qurare: Magic Library (rows 479-483) -> all main (5 rows)
  -- =========================================================================

  -- Row 479: EastWest,Symphonic Orchestra,,,snares,Crisis of Collapse
  ((SELECT id FROM games WHERE title = 'Qurare: Magic Library'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   NULL, NULL, 'snares', 'Crisis of Collapse',
   'main', 'soundtemp', 1),

  -- Row 480: Native Instruments,FM8,,Far East,Could be Airpad from FM8 Factory,"Homework, Hark the Herald Angels Sing (Remix)"
  ((SELECT id FROM games WHERE title = 'Qurare: Magic Library'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   NULL, 'Far East', 'Could be Airpad from FM8 Factory', 'Homework, Hark the Herald Angels Sing (Remix)',
   'main', 'soundtemp', 2),

  -- Row 481: Spectrasonics,Stylus RMX,RMX Grooves,160-Spheres Glass,"Custom loop, sounds more like Iced",Vanishing Dimension
  ((SELECT id FROM games WHERE title = 'Qurare: Magic Library'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '160-Spheres Glass', 'Custom loop, sounds more like Iced', 'Vanishing Dimension',
   'main', 'soundtemp', 3),

  -- Row 482: Ueberschall,Caribbean Flavors Vol. 1,,10acc080_CF col cum uno_G_1,,Homework
  ((SELECT id FROM games WHERE title = 'Qurare: Magic Library'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Caribbean Flavors Vol. 1' COLLATE NOCASE),
   NULL, '10acc080_CF col cum uno_G_1', NULL, 'Homework',
   'main', 'soundtemp', 4),

  -- Row 483: Ueberschall,Caribbean Flavors Vol. 1,,05shk080_CF col cum uno_2,,Homework
  ((SELECT id FROM games WHERE title = 'Qurare: Magic Library'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Caribbean Flavors Vol. 1' COLLATE NOCASE),
   NULL, '05shk080_CF col cum uno_2', NULL, 'Homework',
   'main', 'soundtemp', 5),

  -- =========================================================================
  -- Mabinogi Duel (row 485) -> all main (1 row)
  -- =========================================================================

  -- Row 485: Spectrasonics,Liquid Grooves S.A.G.E. Xpander,050-059,055-Sand Castles Perc Mix,,Burnt
  ((SELECT id FROM games WHERE title = 'Mabinogi Duel'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Liquid Grooves S.A.G.E. Xpander' COLLATE NOCASE),
   '050-059', '055-Sand Castles Perc Mix', NULL, 'Burnt',
   'main', 'soundtemp', 1);

-- Patch raw_source for the row whose brand was known but product was missing.
-- Stashes the original col A / col B descriptor so the source row is recoverable.
UPDATE usages SET raw_source = 'Spectrasonics — product unspecified in source CSV (col A=Spectrasonics, col B empty)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Neo Steam: The Shattered Continent')
    AND position = 3;
