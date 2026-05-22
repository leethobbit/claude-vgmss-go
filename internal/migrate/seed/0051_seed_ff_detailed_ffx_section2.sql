-- FF Detailed: Final Fantasy X — Section 2 (X/X-2 HD Remaster Soundtrack)
--
-- Source: reference/Final Fantasy Sound Sources (Detailed) - Final Fantasy X.csv
-- CSV lines 2517-2729. Most track headers in this section are populated with
-- empty rows (contributor stub); only seven tracks have actionable data.
--
-- All rows here are category='bonus' to distinguish HD Remaster re-recordings
-- from the PS2 OST already ingested under category='main' in parts 1-7. Track
-- names preserved verbatim from the CSV (no "HD Remaster" suffix).
--
-- Position numbers continue from part 7 (last position was 2313). Section 2
-- occupies positions 2314-2357.
--
-- Tracks with content (44 rows total):
--   T4  Tidus's Theme            6 rows (positions 2314-2319)
--   T9  Battle Theme            13 rows (positions 2320-2332)
--   T11 Game Over                1 row  (position  2333)
--   T27 Yuna's Theme             6 rows (positions 2334-2339, instrument-only stubs)
--   T66 Via Purifico             1 row  (position  2340)
--   T81 Beyond The Darkness      5 rows (positions 2341-2345, Live Recording attribution)
--   T87 A Contest of Aeons      12 rows (positions 2346-2357)
--
-- No new manufacturers or products. All sources resolve to existing rows:
--   EastWest / Symphonic Orchestra, EastWest / Ra,
--   Native Instruments / Kontakt Factory Library,
--   Roland / SOUND Canvas SC-8820 (line 2719 "Sound Canvas" drift normalizes via NOCASE).

INSERT INTO usages
  (game_id, product_id, sample_label, sample_ref, path_bank, preset, notes, raw_source, examples, category, source_family, position)
VALUES
  -- T4: Tidus's Theme — 6 rows. 5 EastWest Symphonic Orchestra + 1 Live Recording (Toru Tabei acoustic guitar).
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Violin Ensemble', NULL, 'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', 'Stage mics', NULL, '4. Tidus''s Theme', 'bonus', 'ff_detailed', 2314),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Viola Ensemble', NULL, 'Strings -> 10 Violas -> 5 Keysw', 'VAS KS Master', 'Stage mics', NULL, '4. Tidus''s Theme', 'bonus', 'ff_detailed', 2315),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Cello Ensemble', NULL, 'Strings -> 10 Cellos -> 5 Keysw', 'VCS KS Master', 'Stage mics', NULL, '4. Tidus''s Theme', 'bonus', 'ff_detailed', 2316),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'French Horn', NULL, 'Brass -> Solo French Horn -> 5 Keysw', 'SFH KS Master', 'Stage mics', NULL, '4. Tidus''s Theme', 'bonus', 'ff_detailed', 2317),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Trumpet Ensemble', NULL, 'Brass -> 4 Trumpets -> 5 Keysw', '4TP KS Master', 'Stage mics', NULL, '4. Tidus''s Theme', 'bonus', 'ff_detailed', 2318),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL,
   'Acoustic Guitar', NULL, NULL, NULL, NULL, 'Live Recording (Toru Tabei)', '4. Tidus''s Theme', 'bonus', 'ff_detailed', 2319),

  -- T9: Battle Theme — 13 rows. 5 EastWest Symphonic Orchestra + 8 UNKNOWN.
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Trumpet Ensemble', NULL, NULL, NULL, NULL, NULL, '9. Battle Theme', 'bonus', 'ff_detailed', 2320),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'French Horn Ensemble', NULL, NULL, NULL, NULL, NULL, '9. Battle Theme', 'bonus', 'ff_detailed', 2321),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Orch Chimes', NULL, NULL, NULL, NULL, NULL, '9. Battle Theme', 'bonus', 'ff_detailed', 2322),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Violin Ensemble', NULL, NULL, NULL, NULL, NULL, '9. Battle Theme', 'bonus', 'ff_detailed', 2323),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Flute Ensemble', NULL, NULL, NULL, NULL, NULL, '9. Battle Theme', 'bonus', 'ff_detailed', 2324),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Electric Guitar',  NULL, NULL, NULL, NULL, 'UNKNOWN', '9. Battle Theme', 'bonus', 'ff_detailed', 2325),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Poly Saw Synth',   NULL, NULL, NULL, NULL, 'UNKNOWN', '9. Battle Theme', 'bonus', 'ff_detailed', 2326),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Bright Synth',     NULL, NULL, NULL, NULL, 'UNKNOWN', '9. Battle Theme', 'bonus', 'ff_detailed', 2327),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Hi-Hats',          NULL, NULL, NULL, NULL, 'UNKNOWN', '9. Battle Theme', 'bonus', 'ff_detailed', 2328),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Snares',            NULL, NULL, NULL, NULL, 'UNKNOWN', '9. Battle Theme', 'bonus', 'ff_detailed', 2329),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Toms',              NULL, NULL, NULL, NULL, 'UNKNOWN', '9. Battle Theme', 'bonus', 'ff_detailed', 2330),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Crymbal',           NULL, NULL, NULL, NULL, 'UNKNOWN', '9. Battle Theme', 'bonus', 'ff_detailed', 2331),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Bass Guitar',       NULL, NULL, NULL, NULL, 'UNKNOWN', '9. Battle Theme', 'bonus', 'ff_detailed', 2332),

  -- T11: Game Over — 1 row.
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Harpsichord', NULL, 'Orchestral -> 6 - Keyboard Instruments', 'Harpsichord', NULL, NULL, '11. Game Over', 'bonus', 'ff_detailed', 2333),

  -- T27: Yuna's Theme — 6 instrument-only stubs (no source info from contributor).
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Flute',          NULL, NULL, NULL, NULL, NULL, '27. Yuna''s Theme', 'bonus', 'ff_detailed', 2334),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Electric Piano', NULL, NULL, NULL, NULL, NULL, '27. Yuna''s Theme', 'bonus', 'ff_detailed', 2335),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Glockenspiel',   NULL, NULL, NULL, NULL, NULL, '27. Yuna''s Theme', 'bonus', 'ff_detailed', 2336),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Harmonica',      NULL, NULL, NULL, NULL, NULL, '27. Yuna''s Theme', 'bonus', 'ff_detailed', 2337),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Triangle',       NULL, NULL, NULL, NULL, NULL, '27. Yuna''s Theme', 'bonus', 'ff_detailed', 2338),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Synth Bass',     NULL, NULL, NULL, NULL, NULL, '27. Yuna''s Theme', 'bonus', 'ff_detailed', 2339),

  -- T66: Via Purifico — 1 row, Live Recording from the Piano Collections album.
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Piano', NULL, NULL, NULL, 'Taken from Piano Collections: Final Fantasy X', 'Live Recording (Aki Kuroda)', '66. Via Purifico', 'bonus', 'ff_detailed', 2340),

  -- T81: Beyond The Darkness — 5 rows, all Live Recordings from "Vielen Dank" album (note trailing space verbatim).
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Piano',            NULL, NULL, NULL, 'Taken from Vielen Dank ', 'Live Recording (Naoko Endo)',              '81. Beyond The Darkness', 'bonus', 'ff_detailed', 2341),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Solo 1st Violin',  NULL, NULL, NULL, 'Taken from Vielen Dank ', 'Live Recording (Kaoru Yamamoto)',          '81. Beyond The Darkness', 'bonus', 'ff_detailed', 2342),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Solo 2nd Violin',  NULL, NULL, NULL, 'Taken from Vielen Dank ', 'Live Recording (Markus Kern)',             '81. Beyond The Darkness', 'bonus', 'ff_detailed', 2343),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Solo Viola',       NULL, NULL, NULL, 'Taken from Vielen Dank ', 'Live Recording (Tilo Widenmeyer)',         '81. Beyond The Darkness', 'bonus', 'ff_detailed', 2344),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Solo Cello',       NULL, NULL, NULL, 'Taken from Vielen Dank ', 'Live Recording (Dietrich von Kaltenborn)', '81. Beyond The Darkness', 'bonus', 'ff_detailed', 2345),

  -- T87: A Contest of Aeons — 12 rows. UNKNOWN-heavy with two identified sources
  -- (Sound Canvas SC-8820 normalizes via NOCASE to existing SOUND Canvas SC-8820;
  -- EastWest Ra).
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Choir',           NULL, NULL, NULL, NULL, 'UNKNOWN', '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2346),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Timpani',         NULL, NULL, NULL, NULL, 'UNKNOWN', '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2347),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'Sound Canvas SC-8820' COLLATE NOCASE),
   'Sound Canvas French Horns', NULL, 'SC-8820 Map', '061 000 French Horns', 'Slim chance it might actually be a direct sample from the PS2 song', NULL, '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2348),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Percussion Loop', NULL, NULL, NULL, NULL, 'UNKNOWN', '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2349),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Dulcimer', NULL, 'Mid East -> Plucked -> Santoor', 'Santoor KS C0-G0', NULL, NULL, '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2350),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Snare',            NULL, NULL, NULL, NULL, 'UNKNOWN', '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2351),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Tom Hits',         NULL, NULL, NULL, NULL, 'UNKNOWN', '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2352),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'String Staccato',  NULL, NULL, NULL, NULL, 'UNKNOWN', '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2353),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'String Ensemble',  NULL, NULL, NULL, NULL, 'UNKNOWN', '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2354),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Cymbal Crash',     NULL, NULL, NULL, NULL, 'UNKNOWN', '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2355),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Breath Rise',      NULL, NULL, NULL, NULL, 'UNKNOWN', '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2356),
  ((SELECT id FROM games WHERE title = 'Final Fantasy X'),
   NULL, 'Organ',            NULL, NULL, NULL, NULL, 'UNKNOWN', '87. A Contest of Aeons', 'bonus', 'ff_detailed', 2357);
