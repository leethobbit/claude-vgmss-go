-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 120-143
-- Pokémon Emerald (GBA, 2004).
-- Composers: Go Ichinose, Junichi Masuda, Hitomi Sato.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Midi Mark Productions');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Midi Mark Productions' COLLATE NOCASE), 'Vocal Bytes Vol. 3',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                COLLATE NOCASE), 'Creative Essentials Vol. 09 Guitar Separates', 'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Emerald',
   'Game Boy Advance',
   'September 16, 2004',
   'Go Ichinose, Junichi Masuda, Hitomi Sato',
   'go ichinose, junichi masuda, hitomi sato',
   'All other instruments come from Ruby & Sapphire (per source CSV annotation).');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Main usages (rows 122-129)
  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '078 000 Shakuhachi', NULL, 'Battle Arena',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Enhanced Set', '108 000 St.Koto 2', 'Added compression', 'Battle Arena',
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 45 - Jennifer -> Sample 10', 'uhhhh huh', NULL, 'Battle Pike',
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '020 016 Church Org.3', 'Sample 3 octaves for each note', 'Rayquaza Appears!',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   'CD 2 -> Track 9 -> TS 0:09', 'Gamelan Orchestra Hits', NULL, 'Battle Palace',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 21 Ethnic Flavours' COLLATE NOCASE),
   'Track 40', '21_40_07', 'Kotsuzumi', 'Battle Arena',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 21 Ethnic Flavours' COLLATE NOCASE),
   'Track 40', '21_40_08', 'Ohtsuzumi', 'Battle Arena',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 21 Ethnic Flavours' COLLATE NOCASE),
   'Track 40', '21_40_09', 'Hyoushigi', 'Battle Arena',
   'main', 'newer_vgm', 8),

  -- Unused samples (rows 131-139)
  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '001 000 Piano 1', 'octpia_c3.aif', 'Unused sample, not in final game',
   'unused', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRINITY Pro' COLLATE NOCASE),
   'Combinations -> Bank B', 'B008 Violin Section', 'STR_C4 2.AIF (EQ)', 'Unused sample, not in final game',
   'unused', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRINITY Pro' COLLATE NOCASE),
   'Programs -> Bank A', 'A038 Acoustic Bass', 'ACOBS_C4 2.AIF', 'Unused sample, not in final game',
   'unused', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRINITY Pro' COLLATE NOCASE),
   'Programs -> Bank B', 'B054 Euro 8va Bass', 'SYNBS_C4.AIF', 'Unused sample, not in final game',
   'unused', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 58 - Vocoder Zoom -> Sample 1', 'You got me up', 'vocoder_ra1.aif', 'Unused sample, not in final game',
   'unused', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '035 Muted PickBs', 'elbass_c1.aif', 'Unused sample, not in final game',
   'unused', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map -> Drum Set', '001 STANDARD 1', 'ride.aif', 'Unused sample',
   'unused', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 09 Guitar Separates' COLLATE NOCASE),
   'Track 22', '09_22_01', 'Single Note', 'Unused sample, not in final game',
   'unused', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 09 Guitar Separates' COLLATE NOCASE),
   'Track 32', '09_32_04', 'Power Chord', 'Unused sample',
   'unused', 'newer_vgm', 17),

  -- Stuff to find (rows 141-143; all ?,? rows -> Unknown sentinel)
  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Male vocal', 'Unused sample',
   'stuff_to_find', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Clarinet and oboe? (Oboe needs to be on the FRLG section)', NULL,
   'stuff_to_find', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Emerald'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Analog snare', 'Unused sample',
   'stuff_to_find', 'newer_vgm', 20);
