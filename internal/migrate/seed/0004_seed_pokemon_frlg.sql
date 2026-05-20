-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 85-119
-- Pokémon FireRed and Pokémon LeafGreen (GBA, 2004).
-- Composer: Go Ichinose (main); Go Ichinose + Junichi Masuda for bonus tracks.
-- NOTE from CSV row 86: "All other instruments come from Ruby & Sapphire" — kept in game notes.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Best Service'),
  ('EastWest'),
  ('Spectrasonics'),
  ('Unknown');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service' COLLATE NOCASE),  'ProSamples Vol. 13 - Choirs',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service' COLLATE NOCASE),  'ProSamples Vol. 15 - Dance Drums',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'     COLLATE NOCASE),  'ProSamples Vol. 18 - Steinway Grand Piano',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics' COLLATE NOCASE), 'Heart of Asia',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'       COLLATE NOCASE),  'Creative Essentials Vol. 16 Drum & Percussion Tools',    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'       COLLATE NOCASE),  'Creative Essentials Vol. 21 Ethnic Flavours',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'      COLLATE NOCASE),  'Unknown',                                                NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon FireRed and Pokémon LeafGreen',
   'Game Boy Advance',
   'January 24, 2004',
   'Go Ichinose',
   'go ichinose',
   'All other instruments come from Ruby & Sapphire (per source CSV annotation).');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Main usages (rows 87-101)
  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 13 - Choirs' COLLATE NOCASE),
   'CLASSIC', 'AHH', NULL, 'Final Battle! (Rival)',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CYM 01-44', 'CYM 01-22', '15E-CYM11 (Ride Bell)', NULL,
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 18 - Steinway Grand Piano' COLLATE NOCASE),
   '-', 'PS-18 AIFF Grand Piano', '18-pno28C3', NULL,
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '005 001 Detuned EP1', NULL, NULL,
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '030 000 Overdrive Gt.', NULL, NULL,
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '031 000 DistortionGt.', NULL, NULL,
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '079 000 Whistle', NULL, 'Route 1',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Solo Set -> Drum set', '001 St.Standard', 'Rimshot snare', NULL,
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Enhanced Set', '078 000 Delay Shaku', NULL, 'Pokémon Tower',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Enhanced Set -> Drum Set', '001 Amb.Standard', 'Tom drums', NULL,
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Special 1 Set', '112 Scream Drive', NULL, NULL,
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   'CD 2 -> Track 17 -> TS 0:27', 'Indian Percussion', NULL, 'Pokémon Tower',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Victor' COLLATE NOCASE AND p.name = '効果音大全集 (VICG-40059~60)' COLLATE NOCASE),
   'Disc 1 -> Track 37', '乗り物篇〈客船〉汽笛', 'Ship Horn SFX', 'The S.S. Anne',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 02', '16_02_10', 'Kick', 'Battle! (Mewtwo), Battle! (Trainer), etc',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 21 Ethnic Flavours' COLLATE NOCASE),
   'Track 40', '21_40_02', 'Atarigane', 'Pokémon Tower',
   'main', 'newer_vgm', 15),

  -- Bonus tracks (rows 103-109).
  -- Live Recording rows are non-commercial; stored with product_id NULL, raw_source set below.
  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   NULL, NULL, NULL, NULL, 'Teach Me, Poke Dude!',
   'bonus', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   NULL, NULL, NULL, NULL, 'Memory P',
   'bonus', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Solo Set', '041 000 Violin 2 vib', NULL, 'Memory P',
   'bonus', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Solo Set', '101 000 Brightness 3', NULL, 'Memory P',
   'bonus', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Solo Set -> Drum set', '001 St.Standard', NULL, 'Memory P',
   'bonus', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Enhanced Set -> Drum Set', '026 Bully Set', NULL, 'Teach Me, Poke Dude!',
   'bonus', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '025 000 Nylon-str.Gt', NULL, 'Teach Me, Poke Dude!',
   'bonus', 'newer_vgm', 22),

  -- Stuff to find (rows 111-119).
  -- ?,?,,,,, rows use Unknown/Unknown sentinel per session decision.
  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, NULL, NULL,
   'stuff_to_find', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synths', 'Pokémon Tower 1999',
   'stuff_to_find', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   NULL, NULL, 'Misc. drum elements', NULL,
   'stuff_to_find', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'MS-20' COLLATE NOCASE),
   NULL, NULL, 'likely used', 'Pokémon Tower 1999, Gym Leader''s Power, Rocket Gang Hideout',
   'stuff_to_find', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   NULL, NULL, 'bass', 'Teach Me, Poke Dude!',
   'stuff_to_find', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '069 000 Oboe', 'Contemporary Set -> Brite Oboe instead?', NULL,
   'stuff_to_find', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   NULL, NULL, 'Misc. drum elements', 'Battle! (Mewtwo), Battle! (Trainer), etc',
   'stuff_to_find', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Amen Break Variation', 'Strength of a Gym Leader',
   'stuff_to_find', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'drumloops', 'Pokémon Tower 1999, Gym Leader''s Power, Rocket Gang Hideout',
   'stuff_to_find', 'newer_vgm', 31);

-- Patch raw_source for the non-commercial bonus track rows (positions 16-17).
UPDATE usages SET raw_source = 'Live Recording: Hironobu Yoshida — Vocals'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen')
    AND position = 16;
UPDATE usages SET raw_source = 'Live Recording: Yumi Funasakwa — Vocals'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon FireRed and Pokémon LeafGreen')
    AND position = 17;
