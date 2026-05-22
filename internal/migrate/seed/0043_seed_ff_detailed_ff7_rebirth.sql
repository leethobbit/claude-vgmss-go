-- Source: reference/Final Fantasy Sound Sources (Detailed) - Final Fantasy VII Remake Trilog.csv
-- Section 2: Final Fantasy VII Rebirth (CSV rows 811-853).
-- Per-instrument shape. 4 tracks documented: "The Unknown Journey Continues",
-- "Another Buster Sword", "J-E-N-O-V-A - Emergence", "Her Final Prayer".
-- ~35 rows; most are stub instruments with empty sources.
-- "Xfer - Serum" (line 848) preserved verbatim as a separate manufacturer
-- from existing "Xfer Records" — same vendor, contributor drift; cleanup
-- deferred per batch plan.
-- "Stems: Square Enix - Final Fantasy VII Remake" → raw_source per the new
-- batch plan rule (data provenance reference, not a vendor lookup).

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Xfer');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Xfer'             COLLATE NOCASE), 'Serum',                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'PreSonus'         COLLATE NOCASE), 'Impact XT',               'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Orchestral Tools' COLLATE NOCASE), '??? (SINE Player)',       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'   COLLATE NOCASE), 'blankfor.ms Tape Synths', 'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Final Fantasy VII Rebirth',
   'PlayStation 5, PC',
   '2024-02-29',
   'Nobuo Uematsu, Masashi Hamauzu, Mitsuto Suzuki, Yasunori Nishiki, Shotaro Shima, Yoshinori Nakamura',
   'nobuo uematsu, masashi hamauzu, mitsuto suzuki, yasunori nishiki, shotaro shima, yoshinori nakamura',
   'Source: Final Fantasy Sound Sources (Detailed) - Final Fantasy VII Remake Trilog.csv (Section 2). CSV section is small and very partial — only 4 tracks documented at all, most rows are stub instruments with empty sources. "J-E-N-O-V-A - Emergence" annotations are credited to Nakamura''s Twitter posts.');

INSERT INTO usages
  (game_id, product_id, sample_label, sample_ref, path_bank, preset, notes, raw_source, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Track 1: The Unknown Journey Continues
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Reverse Glass Break', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 1),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Clarinet Glissando', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 2),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, '"One-Winged Angel" section', NULL, 'CD 7 -> Track 10 -> TS: 9:36 ', 'One-Winged Angel - Rebirth', NULL, 'Stems: Square Enix - Final Fantasy VII Remake', '1. The Unknown Journey Continues', 'main', 'ff_detailed', 3),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Synth Keys', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 4),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Droning Synth Pad', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 5),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Piano', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 6),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'String Ensemble', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 7),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Trumpet Ensemble', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 8),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Trombone Ensemble', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 9),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'French Horn Ensemble', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 10),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Flute ', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 11),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Oboe', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 12),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Kick', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 13),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Percussion Loop', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 14),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Glockenspiel', NULL, NULL, NULL, NULL, NULL, '1. The Unknown Journey Continues', 'main', 'ff_detailed', 15),
  -- =========================================================================
  -- Track 2: Another Buster Sword
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Piano', NULL, NULL, NULL, NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 16),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Strings', NULL, NULL, NULL, NULL, 'Live Recording', '2. Another Buster Sword', 'main', 'ff_detailed', 17),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Flute Ensemble', NULL, 'Woodwinds -> 3 Flutes -> 5 Keysw', '3FL KS Master', NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 18),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Piccolo', NULL, 'Woodwinds -> Solo Piccolo -> 5 Keysw', 'PFL KS Master', NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 19),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Brass', NULL, NULL, NULL, NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 20),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Harp', NULL, NULL, NULL, NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 21),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Choir', NULL, NULL, NULL, NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 22),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Gran Casa', NULL, NULL, NULL, NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 23),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Snare', NULL, 'Orchestral -> 4 - VSL Percussion', 'Snare Drum ens', 'Possibly VSL SE Vol. 1 too', NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 24),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'), NULL, 'Toms', NULL, NULL, NULL, NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 25),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Triangle', NULL, 'Orchestral -> 4 - VSL Percussion', 'Triangle 1', 'Possibly VSL SE Vol. 1 too', NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 26),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Tubular Bells', NULL, 'Perc -> Metals', 'Orch Chimes', NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 27),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Castagnets', NULL, 'Orchestral -> 5 - Orchestral Percussion', 'All Percussion', NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 28),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Percussion Loop', NULL, 'CHECK', 'CHECK', NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 29),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Cymbals', NULL, 'Perc -> CymGong', 'All Cymbals', NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 30),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Gong', NULL, 'Percussion -> CymGong', 'All Gongs', NULL, NULL, '2. Another Buster Sword', 'main', 'ff_detailed', 31),
  -- =========================================================================
  -- J-E-N-O-V-A - Emergence (sourced via Nakamura's Twitter posts)
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Glide Synth', NULL, NULL, 'Custom Preset named [Synth] Glide_v1', 'Shown on Nakamura''s Twitter', NULL, 'J-E-N-O-V-A - Emergence', 'main', 'ff_detailed', 32),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'PreSonus' COLLATE NOCASE AND p.name = 'Impact XT' COLLATE NOCASE),
   'Drums', NULL, NULL, '???', 'Shown on Nakamura''s Twitter', NULL, 'J-E-N-O-V-A - Emergence', 'main', 'ff_detailed', 33),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Orchestral Tools' COLLATE NOCASE AND p.name = '??? (SINE Player)' COLLATE NOCASE),
   '???', NULL, NULL, '???', 'Shown on Nakamura''s Twitter', NULL, 'J-E-N-O-V-A - Emergence', 'main', 'ff_detailed', 34),
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'blankfor.ms Tape Synths' COLLATE NOCASE),
   'Synth Textures', NULL, NULL, '???', 'Shown on Nakamura''s Twitter', NULL, 'J-E-N-O-V-A - Emergence', 'main', 'ff_detailed', 35),
  -- =========================================================================
  -- Her Final Prayer
  -- =========================================================================
  ((SELECT id FROM games WHERE title = 'Final Fantasy VII Rebirth'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Fracture Sounds' COLLATE NOCASE AND p.name = 'Woodchester Piano' COLLATE NOCASE),
   'Piano Pad', NULL, '-', 'Woodchester Piano', 'Set Dream Pad to solo', NULL, 'Her Final Prayer', 'main', 'ff_detailed', 36);
