-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 32-84
-- Pokémon Ruby and Pokémon Sapphire (GBA, 2002).
-- Composers: Go Ichinose, Morikazu Aoki, Junichi Masuda.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('KORG'),
  ('Roland'),
  ('Victor'),
  ('Zero-G'),
  ('EDIROL');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'KORG'   COLLATE NOCASE), 'TRINITY Pro', 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland' COLLATE NOCASE), 'SOUND Canvas SC-88 Pro', 'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Victor' COLLATE NOCASE), '効果音大全集 (VICG-40059~60)', 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G' COLLATE NOCASE), 'Creative Essentials Vol. 10 Global SFX', 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EDIROL' COLLATE NOCASE), 'STUDIO Canvas SD-90', 'Hardware');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Ruby and Pokémon Sapphire',
   'Game Boy Advance',
   'November 21, 2002',
   'Go Ichinose, Morikazu Aoki, Junichi Masuda',
   'go ichinose, morikazu aoki, junichi masuda',
   NULL);

-- Helper note: row positions are sequential within the game to preserve display order.

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Main usages (rows 33-64)
  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRINITY Pro' COLLATE NOCASE),
   'Combinations -> Bank A', 'A110 BIG BONED (fat)', NULL,
   'Abandoned Ship, Battle! (Regirock, Regice, Registeel), Battle! (Team Aqua/Magma)',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRINITY Pro' COLLATE NOCASE),
   'Programs -> Bank A', 'A040 !{Mega-Mix}! Kit', 'Note: C#5 (Crash Cymbal)', NULL,
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRINITY Pro' COLLATE NOCASE),
   'Programs -> Bank A', 'A086 30303 Mega Bass', NULL, 'Lose, Move: Lick (SFX), etc.',
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'SC-55 Map -> Drum Set', '001 STANDARD', 'Toms', 'Battle! (Regirock, Regice, Registeel)',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '001 000 Piano 1', NULL,
   'Littleroot Town, Pokémon Center, Trainers'' Eyes Meet (Lass), Battle! (Trainer Battle), Petalburg City',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '010 000 Glockenspiel', NULL, 'Diving',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '014 000 Xylophone', NULL, 'Trick Master',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '015 000 Tubular-bell', NULL, 'Ever Grande City',
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '018 000 Organ 2', NULL,
   'May, Trainers'' Eyes Meet (Youngster), Battle! (Trainer Battle), Victory! (Trainer Battle)',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '022 000 Accordion Fr', NULL, 'Petalburg City',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '025 000 Nylon-str.Gt', NULL, 'Route 101',
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '034 000 Fingered Bs.', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer Battle)',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '036 000 Fretless Bs.', NULL,
   'Littleroot Town, Birch Pokémon Lab, Pokémon Center, Route 101, Trainers'' Eyes Meet (Lass), Petalburg City',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '037 000 Slap Bass 1', NULL, 'May, Trainers'' Eyes Meet (Youngster)',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '039 000 Synth Bass 1', NULL, 'H-Help Me!',
   'main', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '046 000 PizzicatoStr', NULL, 'Littleroot Town, Oldale Town, Pokémon Center',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '047 000 Harp', NULL, 'Birch Pokémon Lab, Pokémon Healed',
   'main', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '048 000 Timpani', NULL,
   'Battle! (Wild Pokémon), Victory! (Wild Pokémon), Battle! (Trainer Battle)',
   'main', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '049 000 Strings :', NULL, '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '057 000 Trumpet', NULL, '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '059 000 Tuba', NULL,
   'Victory! (Wild Pokémon), Oldale Town, Victory! (Trainer Battle)',
   'main', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '061 000 French Horns', NULL, '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '074 000 Flute', NULL, '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '123 005 Bubble', NULL, 'Diving',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '127 006 Applause 2', 'Crowd SFX', NULL,
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map -> Drum Set', '003 STANDARD 3', 'Kick, Acoustic Snare, Clap, Hi Hats', NULL,
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map -> Drum Set', '049 ORCHESTRA', 'Orchestral Snare, Crash', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map -> Drum Set', '-', 'Low congas, High Congas', 'May, Route 101, Petalburg City',
   'main', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Victor' COLLATE NOCASE AND p.name = '効果音大全集 (VICG-40059~60)' COLLATE NOCASE),
   'Disc 1 -> Track 11', '自然篇 吹雪', 'Wind SFX', NULL,
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Victor' COLLATE NOCASE AND p.name = '効果音大全集 (VICG-40059~60)' COLLATE NOCASE),
   'Disc 2 -> Track 33', '効果音各種 破壊音(2 種)', 'Rock SFX', NULL,
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Victor' COLLATE NOCASE AND p.name = '効果音大全集 (VICG-40059~60)' COLLATE NOCASE),
   'Disc 2 -> Track 34', '効果音各種 爆発音(2 種)', 'Bomb/Explosion SFX', NULL,
   'main', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 10 Global SFX' COLLATE NOCASE),
   NULL, 'Waterfall 1', 'Water SFX', NULL,
   'main', 'newer_vgm', 32),

  -- Unused samples (rows 66-67)
  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '037 009 Unison Slap', NULL, 'Unused sample',
   'unused', 'newer_vgm', 33),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '081 000 Square Wave', NULL, 'Unused sample',
   'unused', 'newer_vgm', 34),

  -- Bonus tracks (rows 69-82); composers note: "(Music by: Go Ichinose, Junichi Masuda)"
  -- Live Recording and Sample: GAME FREAK rows are non-commercial sources, stored as raw_source.
  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   NULL, NULL, NULL, NULL, 'TRICK MASTER',
   'bonus', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   NULL, NULL, NULL, NULL, 'SLATEPORT CITY',
   'bonus', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   NULL, NULL, NULL, NULL, 'STEVEN STONE',
   'bonus', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   NULL, NULL, NULL, NULL, 'STEVEN STONE',
   'bonus', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   NULL, NULL, NULL, NULL, 'STEVEN STONE',
   'bonus', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   NULL, NULL, NULL, 'pitched down (defeated)', 'STEVEN STONE',
   'bonus', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '006 000 FM E.Piano', NULL, 'SLATEPORT CITY',
   'bonus', 'newer_vgm', 41),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '015 000 Tubular-bel2', NULL, 'SLATEPORT CITY',
   'bonus', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '039 000 MG303 Bass', NULL, 'SLATEPORT CITY',
   'bonus', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   NULL, NULL, 'standard drums 2', 'TRICK MASTER',
   'bonus', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '018 000 Organ 2', NULL, 'TRICK MASTER',
   'bonus', 'newer_vgm', 45),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '048 000 Timpani', NULL, 'TRICK MASTER',
   'bonus', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   NULL, NULL, 'Slap Bass', 'TRICK MASTER',
   'bonus', 'newer_vgm', 47),

  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   NULL, NULL, 'Glockenspiel', 'TRICK MASTER',
   'bonus', 'newer_vgm', 48),

  -- Stuff to find (row 84)
  ((SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   NULL, NULL, 'Drums', 'STEVEN STONE',
   'stuff_to_find', 'newer_vgm', 49);

-- Patch raw_source for the non-commercial bonus track rows (positions 35-40 above).
-- These rows had product_id NULL so we stash the original col A/B descriptor here.
UPDATE usages SET raw_source = 'Live Recording: Kenji Tominaga — Vocals'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire')
    AND position = 35;
UPDATE usages SET raw_source = 'Live Recording: Hiroko Tanako — Vocals'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire')
    AND position = 36;
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Battle / Menu SFX (Ruby & Sapphire)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire')
    AND position = 37;
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Cry (Skarmory)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire')
    AND position = 38;
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Cry (Milotic)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire')
    AND position = 39;
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Cry (Metagross)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Ruby and Pokémon Sapphire')
    AND position = 40;
