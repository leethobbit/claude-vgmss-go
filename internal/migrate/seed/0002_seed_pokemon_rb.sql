-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 29-31
-- Pokémon Red and Pokémon Blue (Game Boy, 1996 in JP).
-- The on-cartridge soundtrack uses the Game Boy's PSG directly; only
-- the post-release "Bonus Tracks" / remix material uses commercial sources.
-- All usages are therefore category=bonus.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('KORG'),
  ('Zero-G');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'KORG'   COLLATE NOCASE), 'MS-20', 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G' COLLATE NOCASE), 'Creative Essentials Vol. 13 Jungle Frenzy', 'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Red and Pokémon Blue',
   'Game Boy',
   NULL,
   'Junichi Masuda',
   'junichi masuda',
   'Only the bonus/remix material uses commercial sound sources; the in-game soundtrack is on-chip Game Boy PSG synthesis.');

-- Usage rows
INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  ((SELECT id FROM games WHERE title = 'Pokémon Red and Pokémon Blue'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'MS-20' COLLATE NOCASE),
   NULL, NULL,
   'Could be used',
   'Pokémon Techno / Pokémon Red and Green Sound Effect Compilation [Fanfare/Sound Effects/Battle Move Sound Effects/Battle Special Abilities Sound Effects]',
   'bonus', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Red and Pokémon Blue'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 13 Jungle Frenzy' COLLATE NOCASE),
   'TRACK_22', '13_22_09',
   'Amen Break',
   'Pokémon Techno / Pokémon Red and Green Sound Effect Compilation [Fanfare/Sound Effects/Battle Move Sound Effects/Battle Special Abilities Sound Effects]',
   'bonus', 'newer_vgm', 2);
