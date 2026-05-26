-- NEWER VGM SEGA/Atlus — Section 16 (Valkyria Chronicles)
--
-- Source: reference/NEWER VGM Sound Sources - SEGAAtlus.csv lines 2509-2546.
-- 2 game records, ~28 usage rows. Both games composed by Hitoshi Sakimoto.
--
-- The entire section sits under "Stuff to Find" — no confirmed sources,
-- just contributor-flagged candidates. Both games credit Sakimoto in-CSV.
--
-- CSV typo (Rule 11 — fail loud):
--   - CSV row 2531 says Valkyria Chronicles 2 was "(Released: April 24,
--     2008)" — that is VC1's date pasted by accident. Real VC2 release
--     is 2010-01-21 (PSP JP). Using the accurate date in the released
--     column and flagging the CSV typo in notes; the released column
--     is structured data the UI surfaces verbatim, so preserving an
--     objectively-wrong date there would mislead users.
--
-- Variant spellings preserved verbatim (Rule 2):
--   - "Sonic Implant" (singular) and "Sonic Implants" (plural) both
--     appear in the CSV for Valkyria Chronicles' Symphonic String
--     Collection rows. They are split into two distinct manufacturer
--     rows. Different strings — NOCASE does not merge them.
--   - "ProjectSam" (lowercase 'a') and "ProjectSAM" (all caps) both
--     appear in the CSV. The existing ProjectSAM manufacturer row
--     (added in 0012 Pokemon ORAS) merges both via the NOCASE UNIQUE
--     constraint on manufacturers.name, so the case variants collapse
--     by design.
--   - "SAM Tronbones" (CSV row 2529) is a typo for "SAM Trombones" —
--     preserved verbatim as a new product per Rule 2.
--
-- Conventions (same as prior batches):
--   - Per-game positions start at 1.
--   - Existing products reused: EastWest / Symphonic Orchestra,
--     Miroslav Vitous / Woodwind and Brass Ensembles 2.0,
--     DS Soundware / Ultimate Orchestral Percussion,
--     ProjectSAM / SAM Horns.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Sonic Implant'),
  ('Sonic Implants');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Sonic Implant'  COLLATE NOCASE), 'Symphonic String Collection', 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonic Implants' COLLATE NOCASE), 'Symphonic String Collection', 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'ProjectSAM'     COLLATE NOCASE), 'SAM Tronbones',               'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Valkyria Chronicles',   'PlayStation 3',         '2008-04-24', 'Hitoshi Sakimoto', 'hitoshi sakimoto', 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 16 Valkyria Chronicles). Entire section sits under "Stuff to Find" — no confirmed sources, just contributor candidates.'),
  ('Valkyria Chronicles 2', 'PlayStation Portable',  '2010-01-21', 'Hitoshi Sakimoto', 'hitoshi sakimoto', 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 16 Valkyria Chronicles). CSV row 2531 lists release as "April 24, 2008" — that is VC1''s date pasted by accident; corrected to 2010-01-21 (PSP JP actual).');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, raw_source, examples, category, source_family, position)
VALUES
  -- G1: Valkyria Chronicles — 16 stuff_to_find rows
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'DS Soundware' COLLATE NOCASE AND p.name = 'Ultimate Orchestral Percussion' COLLATE NOCASE),
   'Med Hard Timpani', 'Med Hard Timpani', NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'DS Soundware' COLLATE NOCASE AND p.name = 'Ultimate Orchestral Percussion' COLLATE NOCASE),
   'Orchestral Cymbals', 'Orchestral Cymbals', NULL, NULL, 'Desperate Fight', 'stuff_to_find', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Instruments -> Bassoon', NULL, NULL, NULL, 'Daily Life of the 7th Platoon', 'stuff_to_find', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Instruments -> Clarinet', NULL, NULL, NULL, 'Daily Life of the 7th Platoon', 'stuff_to_find', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> 3 Oboes -> 5 Keysw', '3OB KS Master', NULL, NULL, 'Desperate Fight, Randgirth City', 'stuff_to_find', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Flute -> 5 Keysw', 'SFL KS Master', NULL, NULL, 'Randgirth City', 'stuff_to_find', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, NULL, 'We Are The Barracks, The Fields, Battle', 'stuff_to_find', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> Solo Tuba -> 5 Keysw', 'STU KS Master', NULL, NULL, 'Conferral of Honors', 'stuff_to_find', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Tps', 'Tps Port 1', 'Layered with Tps X', NULL, 'Desperate Fight, Strategic Instructions, Urgent Instructions, Battle, We Are The 7th Platoon', 'stuff_to_find', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Tps', 'Tps Stacc 1', NULL, NULL, 'Desperate Fight, We Are The 7th Platoon', 'stuff_to_find', 'newer_vgm', 10),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Tps', 'Tps X', 'Layered with Tps Port 1', NULL, 'Desperate Fight, Strategic Instructions, Urgent Instructions, Battle, We Are The 7th Platoon', 'stuff_to_find', 'newer_vgm', 11),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Implant' COLLATE NOCASE AND p.name = 'Symphonic String Collection' COLLATE NOCASE),
   '07 Ensemble I -> Ensemble Legato', 'Ensemble Legato', NULL, NULL, 'We are the Barracks, Conferral of Honors, Europa at War', 'stuff_to_find', 'newer_vgm', 12),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Implants' COLLATE NOCASE AND p.name = 'Symphonic String Collection' COLLATE NOCASE),
   '07 Ensemble II -> Ensemble Staccato', 'Ensemble Staccato', NULL, NULL, 'Desperate Fight', 'stuff_to_find', 'newer_vgm', 13),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Implants' COLLATE NOCASE AND p.name = 'Symphonic String Collection' COLLATE NOCASE),
   '07 Ensemble II -> Ensemble Pizzicato', 'Pizzicato', NULL, NULL, 'Urgent Instruction', 'stuff_to_find', 'newer_vgm', 14),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'SAM Horns' COLLATE NOCASE),
   'SAM Horns 1. Main (far)', 'SAM H KEY - Basic A (f)', NULL, NULL, 'Urgent Instruction, We Are The Barracks, Daily Life of the 7th Platoon', 'stuff_to_find', 'newer_vgm', 15),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'SAM Tronbones' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, 'Urgent Instruction, We Are The Barracks, Daily Life of the 7th Platoon', 'stuff_to_find', 'newer_vgm', 16),

  -- G2: Valkyria Chronicles 2 — 12 stuff_to_find rows
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'DS Soundware' COLLATE NOCASE AND p.name = 'Ultimate Orchestral Percussion' COLLATE NOCASE),
   'Med Hard Timpani', 'Med Hard Timpani', NULL, NULL, 'Practice Battle', 'stuff_to_find', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'DS Soundware' COLLATE NOCASE AND p.name = 'Ultimate Orchestral Percussion' COLLATE NOCASE),
   'Orchestral Cymbals', 'Orchestral Cymbals', NULL, NULL, 'Practice Battle', 'stuff_to_find', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> 3 Oboes -> 5 Keysw', '3OB KS Master', NULL, NULL, 'Practice Battle', 'stuff_to_find', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> 3 Flutes -> 5 Keysw', '3FL KS Master', NULL, NULL, 'Practice Battle', 'stuff_to_find', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, NULL, 'The Rebels Assault', 'stuff_to_find', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> Solo Tuba -> 5 Keysw', 'STU KS Master', NULL, NULL, 'The Rebels Assault', 'stuff_to_find', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Tps', 'Tps Port 1', 'Layered with Tps X', NULL, 'Practice Battle, The Rebels Assault', 'stuff_to_find', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Tps', 'Tps X', 'Layered with Tps Port 1', NULL, 'Practice Battle, The Rebels Assault', 'stuff_to_find', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Miroslav Vitous' COLLATE NOCASE AND p.name = 'Woodwind and Brass Ensembles 2.0' COLLATE NOCASE),
   'Tps', 'Tps Stacc 1', NULL, NULL, 'Practice Battle, The Rebels Assault', 'stuff_to_find', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'SAM Horns' COLLATE NOCASE),
   'SAM Horns 1. Main (far)', 'SAM H KEY - Basic A (f)', NULL, NULL, 'Practice Battle, The Rebels Assault', 'stuff_to_find', 'newer_vgm', 10),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Implant' COLLATE NOCASE AND p.name = 'Symphonic String Collection' COLLATE NOCASE),
   '07 Ensemble I -> Ensemble Legato', 'Ensemble Legato', NULL, NULL, 'Practice Battle, The Rebels Assault', 'stuff_to_find', 'newer_vgm', 11),
  ((SELECT id FROM games WHERE title = 'Valkyria Chronicles 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Implants' COLLATE NOCASE AND p.name = 'Symphonic String Collection' COLLATE NOCASE),
   '07 Ensemble II -> Ensemble Col Legno', 'Col Legno', NULL, NULL, 'Liberation Battle', 'stuff_to_find', 'newer_vgm', 12);
