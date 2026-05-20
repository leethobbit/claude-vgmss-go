-- Source: reference/SoundTeMP Sound Sources & Information Compendium (WIP) - Sound Sources.csv rows 564-602
-- Section 2 - Package Games opener; eight games covered (28 usage rows):
--   Genocide 2: Master of the Dark Communion          (1995) rows 567-568  (1 data row)
--   Astrocounter of Crescents                         (1996) rows 569-571  (2 data rows)
--   The Rhapsody of Zephyr                            (1998) rows 572-577  (5 data rows)
--   Princess Maker 3: Fairy Tales Come True           (1998) rows 578-589  (11 data rows)
--   Ant Man 2                                         (1998) rows 590-592  (2 data rows)
--   Tempest                                           (1998) rows 593-595  (2 data rows)
--   Merturl Wizard                                    (1998) rows 596-600  (4 data rows)
--   Leithian: In the Abyss                            (1999) rows 601-602  (1 data row)
-- Row 564 ("Section 2 - Package Games") + 565-566 (section blurb) are skipped (not usage rows).
-- SoundTeMP CSV has 6 columns (no Demo column); demo_url is always NULL.
-- source_family = 'soundtemp'. Platform = NULL for all. No "Stuff to find" subsections in this range;
-- every usage row is category='main'.
--
-- One row uses the Unknown/Unknown sentinel:
--   Row 568 (Genocide 2): "Roland,,,," -> brand known but product blank.
--   It stashes the raw col A / col B descriptor via an UPDATE at the bottom (raw_source patch).
--
-- Row 577 preserves the source spelling "SC-88Pro" verbatim per the preserve-text-verbatim rule.
-- (Note: pre-existing Pokémon seeds use the full name "SOUND Canvas SC-88 Pro" for the same hardware;
-- not consolidated here because the source CSV string differs.)

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Roland'),
  ('Ensoniq'),
  ('Unknown');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Roland'  COLLATE NOCASE), 'JV-2080',                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'  COLLATE NOCASE), 'SR-JV80-04 Vintage Synth',  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'  COLLATE NOCASE), 'SR-JV80-05 World',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'  COLLATE NOCASE), 'SR-JV80-06 Dance',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'  COLLATE NOCASE), 'SC-88Pro',                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq' COLLATE NOCASE), 'MR-Rack',                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq' COLLATE NOCASE), 'EXP-1 The Real World',      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown' COLLATE NOCASE), 'Unknown',                   NULL);

-- ============================================================================
-- Game 1: Genocide 2: Master of the Dark Communion (1995) - row 567 header
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Genocide 2: Master of the Dark Communion',
   NULL,
   '1995',
   'Goo-Hee Kwon, Dong-Il Kwak, Seock-Jin Lee',
   'goo-hee kwon, dong-il kwak, seock-jin lee',
   NULL);

-- ============================================================================
-- Game 2: Astrocounter of Crescents (1996) - row 569 header
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Astrocounter of Crescents',
   NULL,
   '1996',
   'Goo-Hee Kwon, Dong-Il Kwak',
   'goo-hee kwon, dong-il kwak',
   NULL);

-- ============================================================================
-- Game 3: The Rhapsody of Zephyr (1998) - row 572 header
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('The Rhapsody of Zephyr',
   NULL,
   '1998',
   '4TUNE',
   '4tune',
   NULL);

-- ============================================================================
-- Game 4: Princess Maker 3: Fairy Tales Come True (1998) - row 578 header
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Princess Maker 3: Fairy Tales Come True',
   NULL,
   '1998',
   'Goo-Hee Kwon, Dong-Il Kwak',
   'goo-hee kwon, dong-il kwak',
   NULL);

-- ============================================================================
-- Game 5: Ant Man 2 (1998) - row 590 header
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Ant Man 2',
   NULL,
   '1998',
   'SoundTeMP',
   'soundtemp',
   NULL);

-- ============================================================================
-- Game 6: Tempest (1998) - row 593 header
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Tempest',
   NULL,
   '1998',
   'SoundTeMP',
   'soundtemp',
   NULL);

-- ============================================================================
-- Game 7: Merturl Wizard (1998) - row 596 header
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Merturl Wizard',
   NULL,
   '1998',
   'SoundTeMP',
   'soundtemp',
   NULL);

-- ============================================================================
-- Game 8: Leithian: In the Abyss (1999) - row 601 header
-- ============================================================================
INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Leithian: In the Abyss',
   NULL,
   '1999',
   'SoundTeMP, A.Dam',
   'soundtemp, a.dam',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Genocide 2: Master of the Dark Communion (row 568) -> 1 row, all main
  -- =========================================================================

  -- Row 568: Roland,,,,"Everything, everywhere", -> brand known, product blank. Unknown/Unknown sentinel; raw_source patched below (position 1).
  ((SELECT id FROM games WHERE title = 'Genocide 2: Master of the Dark Communion'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Everything, everywhere', NULL,
   'main', 'soundtemp', 1),

  -- =========================================================================
  -- Astrocounter of Crescents (rows 570-571) -> 2 rows, all main
  -- =========================================================================

  -- Row 570: Roland,JV-2080,,,"Everything, everywhere",
  ((SELECT id FROM games WHERE title = 'Astrocounter of Crescents'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Everything, everywhere', NULL,
   'main', 'soundtemp', 1),

  -- Row 571: Roland,JV-2080,PR-B,070 4 Hits 4 You,,KAIST Special Stage
  ((SELECT id FROM games WHERE title = 'Astrocounter of Crescents'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-B', '070 4 Hits 4 You', NULL, 'KAIST Special Stage',
   'main', 'soundtemp', 2),

  -- =========================================================================
  -- The Rhapsody of Zephyr (rows 573-577) -> 5 rows, all main
  -- =========================================================================

  -- Row 573: Ensoniq,MR-Rack,ROM004,097 Atomic Lead,Could be RAM001:022 Chat Lead,Astray
  ((SELECT id FROM games WHERE title = 'The Rhapsody of Zephyr'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM004', '097 Atomic Lead', 'Could be RAM001:022 Chat Lead', 'Astray',
   'main', 'soundtemp', 1),

  -- Row 574: Ensoniq,MR-Rack,ROM005,004 Dbl 6-Strng,Possibly ROM005:001 Spruce Top?,"Town Part1, Town Part2, Force Field, PEACE"
  ((SELECT id FROM games WHERE title = 'The Rhapsody of Zephyr'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '004 Dbl 6-Strng', 'Possibly ROM005:001 Spruce Top?', 'Town Part1, Town Part2, Force Field, PEACE',
   'main', 'soundtemp', 2),

  -- Row 575: Ensoniq,EXP-1 The Real World,,,,Jungle 2 Jungle
  ((SELECT id FROM games WHERE title = 'The Rhapsody of Zephyr'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'EXP-1 The Real World' COLLATE NOCASE),
   NULL, NULL, NULL, 'Jungle 2 Jungle',
   'main', 'soundtemp', 3),

  -- Row 576: Roland,JV-2080,,,"Everything, everywhere",Precious Memories
  ((SELECT id FROM games WHERE title = 'The Rhapsody of Zephyr'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Everything, everywhere', 'Precious Memories',
   'main', 'soundtemp', 4),

  -- Row 577: Roland,SC-88Pro,,,As per ESTi's statement,Precious Memories
  ((SELECT id FROM games WHERE title = 'The Rhapsody of Zephyr'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SC-88Pro' COLLATE NOCASE),
   NULL, NULL, 'As per ESTi''s statement', 'Precious Memories',
   'main', 'soundtemp', 5),

  -- =========================================================================
  -- Princess Maker 3: Fairy Tales Come True (rows 579-589) -> 11 rows, all main
  -- =========================================================================

  -- Row 579: Ensoniq,MR-Rack,RAM001,049 MR Coffee,,Test
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'RAM001', '049 MR Coffee', NULL, 'Test',
   'main', 'soundtemp', 1),

  -- Row 580: Roland,JV-2080,,,"Everything, everywhere",
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Everything, everywhere', NULL,
   'main', 'soundtemp', 2),

  -- Row 581: Roland,SR-JV80-06 Dance,,0125 Here We Go,Waveform/menu,Arbeit I
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '0125 Here We Go', 'Waveform/menu', 'Arbeit I',
   'main', 'soundtemp', 3),

  -- Row 582: Roland,SR-JV80-06 Dance,,0144 Giggle,Waveform/menu,Arbeit I
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '0144 Giggle', 'Waveform/menu', 'Arbeit I',
   'main', 'soundtemp', 4),

  -- Row 583: Roland,SR-JV80-06 Dance,,0205 Mg Slide Dwn,Waveform/menu,Arbeit I
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '0205 Mg Slide Dwn', 'Waveform/menu', 'Arbeit I',
   'main', 'soundtemp', 5),

  -- Row 584: Roland,SR-JV80-06 Dance,,0206 Mg Slide U/D,Waveform/menu,Arbeit I
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '0206 Mg Slide U/D', 'Waveform/menu', 'Arbeit I',
   'main', 'soundtemp', 6),

  -- Row 585: Roland,SR-JV80-06 Dance,,028 Swingin' 110,,A Fairy Seen in a Dream (Final)
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '028 Swingin'' 110', NULL, 'A Fairy Seen in a Dream (Final)',
   'main', 'soundtemp', 7),

  -- Row 586: Roland,SR-JV80-06 Dance,,42 Cruisin' 124,,Free Action
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '42 Cruisin'' 124', NULL, 'Free Action',
   'main', 'soundtemp', 8),

  -- Row 587: Roland,SR-JV80-06 Dance,,141 Spooky,,Arbeit I
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '141 Spooky', NULL, 'Arbeit I',
   'main', 'soundtemp', 9),

  -- Row 588: Roland,SR-JV80-06 Dance,,160 Tape Spin,,Arbeit I
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '160 Tape Spin', NULL, 'Arbeit I',
   'main', 'soundtemp', 10),

  -- Row 589: Roland,SR-JV80-06 Dance,,,Reverse tape spin,A Fairy Seen in a Dream (Final)
  ((SELECT id FROM games WHERE title = 'Princess Maker 3: Fairy Tales Come True'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, NULL, 'Reverse tape spin', 'A Fairy Seen in a Dream (Final)',
   'main', 'soundtemp', 11),

  -- =========================================================================
  -- Ant Man 2 (rows 591-592) -> 2 rows, all main
  -- =========================================================================

  -- Row 591: Roland,JV-2080,,,"Everything, everywhere",
  ((SELECT id FROM games WHERE title = 'Ant Man 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Everything, everywhere', NULL,
   'main', 'soundtemp', 1),

  -- Row 592: Roland,SR-JV80-05 World,,,,Track 20
  ((SELECT id FROM games WHERE title = 'Ant Man 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-05 World' COLLATE NOCASE),
   NULL, NULL, NULL, 'Track 20',
   'main', 'soundtemp', 2),

  -- =========================================================================
  -- Tempest (rows 594-595) -> 2 rows, all main
  -- =========================================================================

  -- Row 594: Ensoniq,MR-Rack,ROM005,004 Dbl 6-Strng,,"안타리아의 평화, 암운"
  ((SELECT id FROM games WHERE title = 'Tempest'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM005', '004 Dbl 6-Strng', NULL, '안타리아의 평화, 암운',
   'main', 'soundtemp', 1),

  -- Row 595: Roland,JV-2080,,,"Everything, everywhere",
  ((SELECT id FROM games WHERE title = 'Tempest'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Everything, everywhere', NULL,
   'main', 'soundtemp', 2),

  -- =========================================================================
  -- Merturl Wizard (rows 597-600) -> 4 rows, all main
  -- =========================================================================

  -- Row 597: Roland,JV-2080,,,"Everything, everywhere",
  ((SELECT id FROM games WHERE title = 'Merturl Wizard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   NULL, NULL, 'Everything, everywhere', NULL,
   'main', 'soundtemp', 1),

  -- Row 598: Roland,SR-JV80-04 Vintage Synth,,146 P5 Sync Lead,,최후의 결전
  ((SELECT id FROM games WHERE title = 'Merturl Wizard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-04 Vintage Synth' COLLATE NOCASE),
   NULL, '146 P5 Sync Lead', NULL, '최후의 결전',
   'main', 'soundtemp', 2),

  -- Row 599: Roland,SR-JV80-06 Dance,,015 Nite'Hood 94,,최후의 결전
  ((SELECT id FROM games WHERE title = 'Merturl Wizard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '015 Nite''Hood 94', NULL, '최후의 결전',
   'main', 'soundtemp', 3),

  -- Row 600: Roland,SR-JV80-06 Dance,,141 Spooky,,최후의 결전
  ((SELECT id FROM games WHERE title = 'Merturl Wizard'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '141 Spooky', NULL, '최후의 결전',
   'main', 'soundtemp', 4),

  -- =========================================================================
  -- Leithian: In the Abyss (row 602) -> 1 row, all main
  -- =========================================================================

  -- Row 602: Roland,JV-2080,PR-C,099 Flying Waltz,,Mattilene
  ((SELECT id FROM games WHERE title = 'Leithian: In the Abyss'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-C', '099 Flying Waltz', NULL, 'Mattilene',
   'main', 'soundtemp', 1);

-- Patch raw_source for the row whose brand was known but product was missing.
-- Stashes the original col A / col B descriptor so the source row is recoverable.
UPDATE usages SET raw_source = 'Roland — product unspecified in source CSV (col A=Roland, col B empty)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Genocide 2: Master of the Dark Communion')
    AND position = 1;
