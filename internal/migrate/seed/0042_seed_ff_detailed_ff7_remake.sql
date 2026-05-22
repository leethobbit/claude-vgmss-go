-- Source: reference/Final Fantasy Sound Sources (Detailed) - Final Fantasy VII Remake Trilog.csv
-- Section 1: Final Fantasy VII Remake (CSV rows 9-810).
-- CSV uses per-instrument shape (no Sample #), so sample_ref stays NULL on
-- every row; sample_label holds the Instrument value. examples carries the
-- parent track name. Track headers and empty tracks are dropped.
--
-- Three category bands in Section 1:
--   Main tracks 1-156         → 'main'
--   "Bonus Tracks" 157-180     → 'bonus'  (Jukebox versions)
--   "Original Soundtrack PLUS" → 'bonus'  (arrangement-only disc tracks)
-- "Tracks introduced in Intergrade" header at row 808 carries no data and is
-- ignored. "Unreleased tracks" header at row 806 same.
--
-- "Stems: Square Enix - Final Fantasy VII Remake" is treated as raw_source
-- per the updated batch plan (data provenance, not a vendor lookup).
-- "Live Recording (...)" rows preserve performer attribution verbatim.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Orchestral Tools'),
  ('Cinematic Studio Series'),
  ('Spitfire Audio'),
  ('Fracture Sounds'),
  ('Apple'),
  ('Sonokinetic'),
  ('AudioBro'),
  ('Cinesamples'),
  ('Steinberg'),
  ('PreSonus');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Orchestral Tools'        COLLATE NOCASE), 'Metropolis Ark 1',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Kontakt Factory Library',     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinematic Studio Series' COLLATE NOCASE), 'Cinematic Studio Strings',    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinematic Studio Series' COLLATE NOCASE), 'Cinematic Studio Woodwinds',  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'          COLLATE NOCASE), 'Albion ONE',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Fracture Sounds'         COLLATE NOCASE), 'Woodchester Piano',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Fracture Sounds'         COLLATE NOCASE), 'Midnight Grand',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Apple'                   COLLATE NOCASE), 'EXS24',                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonokinetic'             COLLATE NOCASE), 'Carnival',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'ProjectSAM'              COLLATE NOCASE), 'SAM Trombones',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'AudioBro'                COLLATE NOCASE), 'LA Scoring Strings',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'             COLLATE NOCASE), 'Cinebrass Core',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'             COLLATE NOCASE), 'Cinebrass Pro',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'           COLLATE NOCASE), 'Omnisphere',                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                  COLLATE NOCASE), 'Integra-7',                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'               COLLATE NOCASE), 'Groove Agent 4',              'Instrument');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Final Fantasy VII Remake',
   'PlayStation 4, PlayStation 5, PC',
   '2020-04-10',
   'Nobuo Uematsu, Masashi Hamauzu, Mitsuto Suzuki, Yoshitaka Suzuki, Shotaro Shima, Tsutomu Narita, Yoshinori Nakamura, Tsuyoshi Sekito, Ayumu Murai, Kengo Tokusashi, Yasunori Nishiki',
   'nobuo uematsu, masashi hamauzu, mitsuto suzuki, yoshitaka suzuki, shotaro shima, tsutomu narita, yoshinori nakamura, tsuyoshi sekito, ayumu murai, kengo tokusashi, yasunori nishiki',
   'Source: Final Fantasy Sound Sources (Detailed) - Final Fantasy VII Remake Trilog.csv (Section 1). CSV is per-instrument (no Sample # column); tracks with no documented samples (most of the 156 main + 24 jukebox + 107 OST PLUS) are skipped during ingestion. Composer field lists primary + arrangers as credited inline in the CSV.');

INSERT INTO usages
  (game_id, product_id, sample_label, sample_ref, path_bank, preset, notes, raw_source, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Track 5: Mako Reactor 1
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Orchestral Tools' COLLATE NOCASE AND p.name = 'Metropolis Ark 1' COLLATE NOCASE),
   'High String Ensemble (Spiccato)', NULL, 'District I - Orchestra', '01 Finckenstein High Strings', NULL, NULL, '5. Mako Reactor 1', 'main', 'ff_detailed', 1),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Orchestral Tools' COLLATE NOCASE AND p.name = 'Metropolis Ark 1' COLLATE NOCASE),
   'Low String Ensemble (Spiccato)', NULL, 'District I - Orchestra', '02 Wolfenstein Low Strings', NULL, NULL, '5. Mako Reactor 1', 'main', 'ff_detailed', 2),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Piano', NULL, NULL, NULL, NULL, NULL, '5. Mako Reactor 1', 'main', 'ff_detailed', 3),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Church Bell', NULL, NULL, NULL, NULL, NULL, '5. Mako Reactor 1', 'main', 'ff_detailed', 4),
  -- =========================================================================
  -- Track 7: Scorpion Sentinel
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Orchestral Tools' COLLATE NOCASE AND p.name = 'Metropolis Ark 1' COLLATE NOCASE),
   'Trombone Ensemble', NULL, 'District I - Orchestra', '08 Friedrich Bass Trombones a3', NULL, NULL, '7. Scorpion Sentinel', 'main', 'ff_detailed', 5),
  -- =========================================================================
  -- Track 15: Shinra Creed
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   'Drum Kit', NULL, 'Main Percussion', 'PERC Studio Drum Kit', NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 6),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Triangle', NULL, 'Orchestral -> 4 - VSL Percussion', 'Triangle 1', NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 7),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Claves', NULL, 'Orchestral -> 5 - Orchestral Percussion', 'All Percussion', NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 8),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Piano', NULL, NULL, NULL, 'Piano w/ tight delay', 'UNKNOWN', '15. Shinra Creed', 'main', 'ff_detailed', 9),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Xylophone', NULL, 'Orchestral -> 4 - VSL Percussion', 'Xylophone', NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 10),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Glockenspiel', NULL, 'Orchestral -> 4 - VSL Percussion', 'Glockenspiel', NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 11),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Bassoon', NULL, 'Woodwinds -> Solo Bassoon -> 5 Keysw', 'BSN KS Master', NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 12),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Clarinet', NULL, 'Woodwinds -> Solo Clarinet -> 5 Keysw', 'SCL KS Master', NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 13),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Flute', NULL, 'Woodwinds -> Solo Flute -> 5 Keysw', 'SFL KS Master', NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 14),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Piccolo', NULL, 'Woodwinds -> Solo Piccolo -> 5 Keysw', 'PFL KS Master', NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 15),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinematic Studio Series' COLLATE NOCASE AND p.name = 'Cinematic Studio Strings' COLLATE NOCASE),
   'Violin Ensemble', NULL, '-', '1st Violin', NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 16),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinematic Studio Series' COLLATE NOCASE AND p.name = 'Cinematic Studio Strings' COLLATE NOCASE),
   'String Ensemble', NULL, '-', NULL, NULL, NULL, '15. Shinra Creed', 'main', 'ff_detailed', 17),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'French Horn Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '15. Shinra Creed', 'main', 'ff_detailed', 18),
  -- =========================================================================
  -- Track 16: Shining Beacon of Civilization
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Steel Guitar', NULL, 'Guitars', 'Glorious Steel', NULL, NULL, '16. Shining Beacon of Civilization', 'main', 'ff_detailed', 19),
  -- =========================================================================
  -- Track 21: Avalanche's Theme
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Castanets, Ratchet, Slapsticks, Tamb., etc.', NULL, 'Perc -> Wood', 'Various Percussion', NULL, NULL, '21. Avalanche''s Theme', 'main', 'ff_detailed', 20),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Cymbals', NULL, 'Perc -> CymGong', 'All Cymbals', NULL, NULL, '21. Avalanche''s Theme', 'main', 'ff_detailed', 21),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Snare ff', NULL, 'Perc -> Drums', NULL, NULL, NULL, '21. Avalanche''s Theme', 'main', 'ff_detailed', 22),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Snare', NULL, 'Orchestral -> 4 - VSL Percussion', 'Snare', 'Possibly VSL SE Vol. 1 too', NULL, '21. Avalanche''s Theme', 'main', 'ff_detailed', 23),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Triangle', NULL, 'Orchestral -> 4 - VSL Percussion', 'Triangle 1', 'Possibly VSL SE Vol. 1 too', NULL, '21. Avalanche''s Theme', 'main', 'ff_detailed', 24),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Xylophone', NULL, 'Orchestral -> 4 - VSL Percussion', 'Xylophone', 'Possibly VSL SE Vol. 1 too', NULL, '21. Avalanche''s Theme', 'main', 'ff_detailed', 25),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trombone Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '21. Avalanche''s Theme', 'main', 'ff_detailed', 26),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trumpet Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '21. Avalanche''s Theme', 'main', 'ff_detailed', 27),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'French Horn Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '21. Avalanche''s Theme', 'main', 'ff_detailed', 28),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Bass Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '21. Avalanche''s Theme', 'main', 'ff_detailed', 29),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Cello Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '21. Avalanche''s Theme', 'main', 'ff_detailed', 30),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Viola Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '21. Avalanche''s Theme', 'main', 'ff_detailed', 31),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Violin Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '21. Avalanche''s Theme', 'main', 'ff_detailed', 32),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Finger Cymbal', NULL, NULL, NULL, NULL, 'UNKNOWN', '21. Avalanche''s Theme', 'main', 'ff_detailed', 33),
  -- =========================================================================
  -- Track 22: Scrap Boulevard Cleanup Crew
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Castanets, Tambourine', NULL, 'Perc -> Wood', 'Various Percussion', NULL, NULL, '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 34),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'French Horn Ensemble', NULL, 'Orchestral -> 3 - VSL Brass', 'French Horn Ensemble ', 'Possibly VSL SE Vol. 1 too', NULL, '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 35),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Glockenspiel', NULL, 'Orchestral -> 4 - VSL Percussion', 'Glockenspiel', 'Possibly VSL SE Vol. 1 too', NULL, '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 36),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Snare', NULL, 'Orchestral -> 4 - VSL Percussion', 'Snare', 'Possibly VSL SE Vol. 1 too', NULL, '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 37),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Triangle', NULL, 'Orchestral -> 4 - VSL Percussion', 'Triangle 1', 'Possibly VSL SE Vol. 1 too', NULL, '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 38),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Xylophone', NULL, 'Orchestral -> 4 - VSL Percussion', 'Xylophone', 'Possibly VSL SE Vol. 1 too', NULL, '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 39),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Tuba', NULL, NULL, NULL, NULL, 'UNKNOWN', '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 40),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trombone Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 41),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trumpet Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 42),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Horn Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 43),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Bass Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 44),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Cello Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 45),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Viola Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 46),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Violin Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 47),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Percussion Loop(?)', NULL, NULL, NULL, NULL, NULL, '22. Scrap Boulevard Cleanup Crew', 'main', 'ff_detailed', 48),
  -- =========================================================================
  -- Track 35: Moonlight Thievery  (instrument list, all empty sources)
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Synth Plucks', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 49),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Synth Pad', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 50),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Synth Lead', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 51),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Pizzicato Strings', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 52),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Violin Ensemble', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 53),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Strings', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 54),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Flute', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 55),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Oboe', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 56),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Clarinet', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 57),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Acoustic Guitar', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 58),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Shaker', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 59),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Bongos', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 60),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Upright Bass', NULL, NULL, NULL, NULL, NULL, '35. Moonlight Thievery', 'main', 'ff_detailed', 61),
  -- =========================================================================
  -- Track 37: S7-6 Annex Diversion
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Harsh Synth Lead', NULL, 'Leads', 'LD Booty', NULL, NULL, '37. S7-6 Annex Diversion', 'main', 'ff_detailed', 62),
  -- =========================================================================
  -- Track 39: Under Cover of Smoke
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Albion ONE' COLLATE NOCASE),
   'String Ensemble', NULL, NULL, NULL, NULL, NULL, '39. Under Cover of Smoke', 'main', 'ff_detailed', 63),
  -- =========================================================================
  -- Track 41: Whispers' Theme  (all empty sources)
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Timpani', NULL, NULL, NULL, NULL, NULL, '41. Whispers'' Theme', 'main', 'ff_detailed', 64),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'French Horn Ensemble', NULL, NULL, NULL, NULL, NULL, '41. Whispers'' Theme', 'main', 'ff_detailed', 65),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Glockenspiel', NULL, NULL, NULL, NULL, NULL, '41. Whispers'' Theme', 'main', 'ff_detailed', 66),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Snare', NULL, NULL, NULL, NULL, NULL, '41. Whispers'' Theme', 'main', 'ff_detailed', 67),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Tubular Bells', NULL, NULL, NULL, NULL, NULL, '41. Whispers'' Theme', 'main', 'ff_detailed', 68),
  -- =========================================================================
  -- Track 57: Who Am I?
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Orchestral Tools' COLLATE NOCASE AND p.name = 'Metropolis Ark 1' COLLATE NOCASE),
   'Choir', NULL, 'District II - Choir', '01 Viktoria Female Choir', NULL, NULL, '57. Who Am I?', 'main', 'ff_detailed', 69),
  -- =========================================================================
  -- Track 60: Flowers Blooming in the Church
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Fracture Sounds' COLLATE NOCASE AND p.name = 'Woodchester Piano' COLLATE NOCASE),
   'Piano Pad', NULL, '-', 'Woodchester Piano', 'Set Dream Pad to solo', NULL, '60. Flowers Blooming in the Church', 'main', 'ff_detailed', 70),
  -- =========================================================================
  -- Track 61: Under The Rotting Pizza  (empty source)
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Percussion Loop', NULL, NULL, NULL, NULL, NULL, '61. Under The Rotting Pizza', 'main', 'ff_detailed', 71),
  -- =========================================================================
  -- Track 63: Aerith's Theme - Home Again
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Fracture Sounds' COLLATE NOCASE AND p.name = 'Midnight Grand' COLLATE NOCASE),
   'Piano Pad Layer', NULL, '-', 'Midnight Grand (Alt)', 'See Note:', NULL, '63. Aerith''s Theme - Home Again', 'main', 'ff_detailed', 72),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Piano', NULL, 'Keyscape Library -> Keyboards', 'LA Custom C7 - Classical', NULL, NULL, '63. Aerith''s Theme - Home Again', 'main', 'ff_detailed', 73),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Flute', NULL, NULL, NULL, NULL, NULL, '63. Aerith''s Theme - Home Again', 'main', 'ff_detailed', 74),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'English Horn', NULL, NULL, NULL, NULL, NULL, '63. Aerith''s Theme - Home Again', 'main', 'ff_detailed', 75),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Clarinet', NULL, NULL, NULL, NULL, NULL, '63. Aerith''s Theme - Home Again', 'main', 'ff_detailed', 76),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinematic Studio Series' COLLATE NOCASE AND p.name = 'Cinematic Studio Woodwinds' COLLATE NOCASE),
   'Oboe', NULL, '-', 'Solo Oboe', NULL, NULL, '63. Aerith''s Theme - Home Again', 'main', 'ff_detailed', 77),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinematic Studio Series' COLLATE NOCASE AND p.name = 'Cinematic Studio Woodwinds' COLLATE NOCASE),
   'Bassoon', NULL, '-', 'Solo Bassoon', NULL, NULL, '63. Aerith''s Theme - Home Again', 'main', 'ff_detailed', 78),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinematic Studio Series' COLLATE NOCASE AND p.name = 'Cinematic Studio Strings' COLLATE NOCASE),
   'Violin Ensemble', NULL, '-', '1st Violin', 'Sustained', NULL, '63. Aerith''s Theme - Home Again', 'main', 'ff_detailed', 79),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Secondary Violin Ensemble', NULL, NULL, NULL, NULL, NULL, '63. Aerith''s Theme - Home Again', 'main', 'ff_detailed', 80),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Reverse Piano', NULL, NULL, NULL, NULL, NULL, '63. Aerith''s Theme - Home Again', 'main', 'ff_detailed', 81),
  -- =========================================================================
  -- Track 65: Let the Battles Begin! - The Hideout
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinematic Studio Series' COLLATE NOCASE AND p.name = 'Cinematic Studio Strings' COLLATE NOCASE),
   'String Ensemble', NULL, '-', 'CSS Full Ensemble', NULL, NULL, '65. Let the Battles Begin! - The Hideout', 'main', 'ff_detailed', 82),
  -- =========================================================================
  -- Track 69: High Five
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, '"Funky Bopin" sample', NULL, NULL, NULL, NULL, 'UNKNOWN', '69. High Five', 'main', 'ff_detailed', 83),
  -- =========================================================================
  -- Track 74: Wall Market - Madam M
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Sitar', NULL, 'Ethnic World', 'Electric Sitar a', NULL, NULL, '74. Wall Market - Madam M', 'main', 'ff_detailed', 84),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Steel Guitar', NULL, NULL, NULL, NULL, NULL, '74. Wall Market - Madam M', 'main', 'ff_detailed', 85),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Reed Instrument', NULL, NULL, NULL, NULL, NULL, '74. Wall Market - Madam M', 'main', 'ff_detailed', 86),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Tablas', NULL, NULL, NULL, NULL, NULL, '74. Wall Market - Madam M', 'main', 'ff_detailed', 87),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Udu Pot', NULL, NULL, NULL, NULL, NULL, '74. Wall Market - Madam M', 'main', 'ff_detailed', 88),
  -- =========================================================================
  -- Track 77: The Sweetest Honey
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Recorder', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 89),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Pizzicato Strings', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 90),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'String Ensemble', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 91),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Cymbals', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 92),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Tambourine', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 93),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Glockenspiel', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 94),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Timpani', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 95),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'French Horn Ensemble', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 96),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trombone Ensemble', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 97),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trumpet Ensemble', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 98),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonokinetic' COLLATE NOCASE AND p.name = 'Carnival' COLLATE NOCASE),
   'Calliope', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 99),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonokinetic' COLLATE NOCASE AND p.name = 'Carnival' COLLATE NOCASE),
   'Snare', NULL, NULL, NULL, NULL, NULL, '77. The Sweetest Honey', 'main', 'ff_detailed', 100),
  -- =========================================================================
  -- Track 78: Luxury Massage  (all empty sources)
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Finger Cymbal', NULL, NULL, NULL, NULL, NULL, '78. Luxury Massage', 'main', 'ff_detailed', 101),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Solo Trumpet', NULL, NULL, NULL, NULL, NULL, '78. Luxury Massage', 'main', 'ff_detailed', 102),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Choir', NULL, NULL, NULL, NULL, NULL, '78. Luxury Massage', 'main', 'ff_detailed', 103),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Piano', NULL, NULL, NULL, NULL, NULL, '78. Luxury Massage', 'main', 'ff_detailed', 104),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Upright Bass', NULL, NULL, NULL, NULL, NULL, '78. Luxury Massage', 'main', 'ff_detailed', 105),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Vibraphone', NULL, NULL, NULL, NULL, NULL, '78. Luxury Massage', 'main', 'ff_detailed', 106),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Drumkit', NULL, NULL, NULL, NULL, NULL, '78. Luxury Massage', 'main', 'ff_detailed', 107),
  -- =========================================================================
  -- Track 82: Just Desserts
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'Integra-7' COLLATE NOCASE),
   'Orchestra Hit', NULL, 'PCMS -> GM2', '0117 OrchestraHit', NULL, NULL, '82. Just Desserts', 'main', 'ff_detailed', 108),
  -- =========================================================================
  -- Track 83: Electric Executioners
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Electric Guitar', NULL, NULL, NULL, NULL, 'Live Recording (Tsuyoshi Sekito)', '83. Electric Executioners', 'main', 'ff_detailed', 109),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Drums', NULL, NULL, NULL, NULL, NULL, '83. Electric Executioners', 'main', 'ff_detailed', 110),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'DS Soundware' COLLATE NOCASE AND p.name = 'Ultimate Orchestral Percussion' COLLATE NOCASE),
   'Cymbals', NULL, 'Orchestral Cymbals', 'Orchestral Cymbals', NULL, NULL, '83. Electric Executioners', 'main', 'ff_detailed', 111),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AudioBro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Violin Ensemble', NULL, 'CHECK', 'CHECK', NULL, NULL, '83. Electric Executioners', 'main', 'ff_detailed', 112),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AudioBro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Viola Ensemble', NULL, 'CHECK', 'CHECK', NULL, NULL, '83. Electric Executioners', 'main', 'ff_detailed', 113),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AudioBro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Cello Ensemble', NULL, 'CHECK', 'CHECK', NULL, NULL, '83. Electric Executioners', 'main', 'ff_detailed', 114),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AudioBro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Bass Ensemble', NULL, 'CHECK', 'CHECK', NULL, NULL, '83. Electric Executioners', 'main', 'ff_detailed', 115),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Tubular Bells', NULL, NULL, NULL, 'Might also be from DS Soundware or Logic', NULL, '83. Electric Executioners', 'main', 'ff_detailed', 116),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Timpani', NULL, NULL, NULL, NULL, NULL, '83. Electric Executioners', 'main', 'ff_detailed', 117),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'SAM Horns' COLLATE NOCASE),
   'French Horn Ensemble', NULL, 'Sam H Key - Basic A (c)', 'Sam H Key - Basic A (c)', NULL, NULL, '83. Electric Executioners', 'main', 'ff_detailed', 118),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'SAM Trombones' COLLATE NOCASE),
   'Trombone Ensemble', NULL, 'CHECK', 'CHECK', NULL, NULL, '83. Electric Executioners', 'main', 'ff_detailed', 119),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trumpet Ensemble', NULL, NULL, NULL, NULL, 'UNKNOWN', '83. Electric Executioners', 'main', 'ff_detailed', 120),
  -- =========================================================================
  -- Track 84: Hell House
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'Cinebrass Pro' COLLATE NOCASE),
   'French Horn Rips', NULL, '-', '13 French Horn Ensemble Rips', NULL, NULL, '84. Hell House', 'main', 'ff_detailed', 121),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'Cinebrass Core' COLLATE NOCASE),
   'French Horns Ensemble', NULL, 'Instruments', NULL, NULL, NULL, '84. Hell House', 'main', 'ff_detailed', 122),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'Cinebrass Core' COLLATE NOCASE),
   'Trombone Ensemble', NULL, 'Instruments', NULL, NULL, NULL, '84. Hell House', 'main', 'ff_detailed', 123),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'Cinebrass Core' COLLATE NOCASE),
   'Trumpet Ensemble', NULL, 'Instruments', '01 Trumpet Ensemble Articulations', NULL, NULL, '84. Hell House', 'main', 'ff_detailed', 124),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Distorted Gamleon/Bell', NULL, 'Bells and Vibes', 'Church Bells', NULL, NULL, '84. Hell House', 'main', 'ff_detailed', 125),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Snares', NULL, NULL, NULL, NULL, NULL, '84. Hell House', 'main', 'ff_detailed', 126),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Timpani', NULL, NULL, NULL, NULL, NULL, '84. Hell House', 'main', 'ff_detailed', 127),
  -- =========================================================================
  -- Track 86: A Certain Gaudiness
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Tubular Bell', NULL, NULL, NULL, NULL, NULL, '86. A Certain Gaudiness', 'main', 'ff_detailed', 128),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'EXS24' COLLATE NOCASE),
   'Grand Piano', NULL, 'Keyboards -> CHECK', NULL, NULL, NULL, '86. A Certain Gaudiness', 'main', 'ff_detailed', 129),
  -- =========================================================================
  -- Track 102: Haunted  /  Track 103: Come On, This Way  /  Track 108: Eligor
  -- (All use EastWest Solo Violin from the same patch)
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Solo Violin', NULL, 'Strings -> Solo Violin -> 5 Keysw', 'SVL KS Master', NULL, NULL, '102. Haunted', 'main', 'ff_detailed', 130),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Solo Violin', NULL, 'Strings -> Solo Violin -> 5 Keysw', 'SVL KS Master', NULL, NULL, '103. Come On, This Way', 'main', 'ff_detailed', 131),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Solo Violin', NULL, 'Strings -> Solo Violin -> 5 Keysw', 'SVL KS Master', NULL, NULL, '108. Eligor', 'main', 'ff_detailed', 132),
  -- =========================================================================
  -- Track 112: Those in Need
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Crotales', NULL, 'Perc -> Metals', 'Crotales', NULL, NULL, '112. Those in Need', 'main', 'ff_detailed', 133),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Glockenspiel', NULL, 'Perc -> Metals', 'Glock', NULL, NULL, '112. Those in Need', 'main', 'ff_detailed', 134),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Tubular Bells', NULL, 'Perc -> Metals', 'Orch Chimes', NULL, NULL, '112. Those in Need', 'main', 'ff_detailed', 135),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Violin Ensemble', NULL, 'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, NULL, '112. Those in Need', 'main', 'ff_detailed', 136),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Other Percussion', NULL, 'Orchestral -> 4 - VSL Percussion', 'Full Percussion', NULL, NULL, '112. Those in Need', 'main', 'ff_detailed', 137),
  -- =========================================================================
  -- Track 122: Infinity's End
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent 4' COLLATE NOCASE),
   'Drum Machine', NULL, '-', 'Elementic', NULL, NULL, '122. Infinity''s End', 'main', 'ff_detailed', 138),
  -- =========================================================================
  -- Track 151: Arbiter of Fate - Singularity
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Wind SFX', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 139),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Gong', NULL, 'Percussion -> CymGong', 'All Gongs', NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 140),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Tamtam', NULL, 'Orchestral -> 4 - VSL Percussion', 'Tamtam', 'Possibly VSL SE Vol. 1 too', NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 141),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Tubular Bells', NULL, 'Perc -> Metals', 'Orch Chimes', NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 142),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Solo Violin', NULL, 'Strings -> Solo Violin -> 5 Keysw', 'SVL KS Master', NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 143),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'French Horn Ensemble', NULL, 'Orchestral -> 3 - VSL Brass', 'French Horn Ensemble ', 'Possibly VSL SE Vol. 1 too', NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 144),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'French Horn Ensemble Layer', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 145),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trombone Ensemble', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 146),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trumpet Ensemble', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 147),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Triangle', NULL, 'Orchestral -> 4 - VSL Percussion', 'Triangle 1', 'Possibly VSL SE Vol. 1 too', NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 148),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Tambourine', NULL, 'Orchestral -> 5 - Orchestral Percussion', 'Tambourine', 'Possibly VSL SE Vol. 1 too', NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 149),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Snare', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 150),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Cymbal', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 151),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Guitar FX', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 152),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Violin Ensemble', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 153),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Viola Ensemble', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 154),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Cello Ensemble', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 155),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Bass Ensemble', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 156),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Piano', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 157),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Glockenspiel', NULL, 'Orchestral -> 4 - VSL Percussion', 'Glockenspiel', 'Possibly VSL SE Vol. 1 too', NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 158),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Synth Sweep', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 159),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Bass Drum', NULL, NULL, NULL, NULL, NULL, '151. Arbiter of Fate - Singularity', 'main', 'ff_detailed', 160),
  -- =========================================================================
  -- Track 153: One-Winged Angel - Rebirth
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Choir & Vocals', NULL, NULL, NULL, NULL, 'Live Recording (The Philharmonic Chorus of Tokyo)', '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 161),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Cymbals', NULL, 'Perc -> CymGong', 'All Cymbals', NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 162),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Gong', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 163),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Glockenspiel', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 164),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Snare', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 165),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Tambourine', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 166),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Tubular Bells', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 167),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Xylophone', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 168),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Toms', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 169),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Timpani', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 170),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Flute Ensemble', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 171),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Oboe', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 172),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Piano', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 173),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'French Horn Ensemble', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 174),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trombone Ensemble', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 175),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Trumpet Ensemble', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 176),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Solo Trumpet', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 177),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Bass Ensemble', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 178),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Cello Ensemble', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 179),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Viola Ensemble', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 180),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Violin Ensemble', NULL, NULL, NULL, NULL, NULL, '153. One-Winged Angel - Rebirth', 'main', 'ff_detailed', 181),
  -- =========================================================================
  -- Track 155: Hollow
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Vocals', NULL, NULL, NULL, NULL, 'Live Recording (Yosh Morita)', '155. Hollow', 'main', 'ff_detailed', 182),
  -- =========================================================================
  -- Bonus Tracks 157-180 (Jukebox versions) — only track 160 has data
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Vocals (JP)', NULL, NULL, NULL, 'Credited as "non"', 'Live Recording (Nozomi Toki)', '160. Stamp (Jukebox Ver.)', 'bonus', 'ff_detailed', 183),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'), NULL, 'Vocals (EN)', NULL, NULL, NULL, NULL, 'Live Recording (Kaori)', '160. Stamp (Jukebox Ver.)', 'bonus', 'ff_detailed', 184),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Glockenspiel', NULL, 'Orchestral -> 4 - VSL Percussion', 'Glockenspiel', NULL, NULL, '160. Stamp (Jukebox Ver.)', 'bonus', 'ff_detailed', 185),
  -- =========================================================================
  -- Original Soundtrack PLUS — only track 33 has data
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Remake'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Fracture Sounds' COLLATE NOCASE AND p.name = 'Woodchester Piano' COLLATE NOCASE),
   'Piano Pad', NULL, '-', 'Woodchester Piano', 'Set Dream Pad to solo', NULL, 'OST PLUS 33. The First Guy I Ever Loved', 'bonus', 'ff_detailed', 186);
