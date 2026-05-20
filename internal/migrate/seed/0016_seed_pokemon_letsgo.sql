-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 2823-2880
-- Pokémon Let's Go, Pikachu! and Pokémon Let's Go, Eevee! (Nintendo Switch, November 16, 2018).
-- Composer: Shota Kageyama.
-- Subsection headers in source:
--   row 2872 (Stuff to Find)
--   row 2877 (Beta / Unreleased Tracks)
-- All rows above row 2872 (incl. two Live Recording rows) -> category 'main'.
-- Stuff to Find rows -> category 'stuff_to_find' (one '?,?' row uses the Unknown/Unknown sentinel).
-- Beta / Unreleased Tracks -> category 'unused' (explicit beta/unreleased flag per rules).
-- Note: source CSV inconsistently capitalizes Modartt's product as both "Pianoteq 6" (row 2832)
-- and "PianoTeq 6" (row 2879); we normalize to "Pianoteq 6" for the products table since they
-- refer to the same software, while preserving each row's path_bank/preset verbatim.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Modartt'),
  ('Prominy'),
  ('Spitfire Audio'),
  ('Steven Slate Audio'),
  ('YMCK'),
  ('Audiobro');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'        COLLATE NOCASE), 'CineHarps',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'        COLLATE NOCASE), 'CinePerc',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Modartt'            COLLATE NOCASE), 'Pianoteq 6',                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Prominy'            COLLATE NOCASE), 'Hummingbird',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Prominy'            COLLATE NOCASE), 'SC Electric Guitar',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Stylus RMX',                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Trilian',                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'     COLLATE NOCASE), 'Joby Burgess Percussion',   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'     COLLATE NOCASE), 'Symphonic Brass',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'     COLLATE NOCASE), 'Symphonic Strings',         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'     COLLATE NOCASE), 'Symphonic Woodwinds',       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steven Slate Audio' COLLATE NOCASE), 'Steven Slate Drums 4',      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'          COLLATE NOCASE), 'HALion Sonic SE',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'          COLLATE NOCASE), 'HALion Sonic',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'YMCK'               COLLATE NOCASE), 'Magical 8bit Plug',         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Ethno World Instruments',   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Audiobro'           COLLATE NOCASE), 'LA Scoring Strings',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'           COLLATE NOCASE), 'RealGuitar',                'Instrument');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!',
   'Nintendo Switch',
   'November 16, 2018',
   'Shota Kageyama',
   'shota kageyama',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Row 2824: Live Recording: Hiroaki Tsutsumi — Acoustic Guitar (non-commercial; raw_source patched below).
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   NULL, NULL, NULL, NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 1),

  -- Row 2825: Live Recording: Kon Shirasu — Violin (non-commercial; raw_source patched below).
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   NULL, NULL, NULL, NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 2),

  -- Row 2826
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CineHarps' COLLATE NOCASE),
   '-', '01 Concert Harp', NULL, 'Caves of Mt. Moon',
   'main', 'newer_vgm', 3),

  -- Row 2827
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CineHarps' COLLATE NOCASE),
   '-', '02 Harp Glissandi', NULL, 'Cerulean City, Celadon City, Pewter City',
   'main', 'newer_vgm', 4),

  -- Row 2828
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Orchestral', 'Concert Snare Drum', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 5),

  -- Row 2829
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Orchestral', 'Piatti', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 6),

  -- Row 2830
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Orchestral', 'Piccolo Snare Drum', 'Saturation + EQ', '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 7),

  -- Row 2831
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Orchestral', 'Suspended Cymbals', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 8),

  -- Row 2832
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'Pianoteq 6' COLLATE NOCASE),
   'Grand Steinway D', 'Steinway D Close Mic Classical', 'to do: test and specify presets', 'Lavender Town, Rocket Hideout, Mt. Moon, Choose your Language, Cinnabar Island, GO Park, Connection',
   'main', 'newer_vgm', 9),

  -- Row 2833
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Prominy' COLLATE NOCASE AND p.name = 'Hummingbird' COLLATE NOCASE),
   'mono', 'Hummingbird_L', NULL, 'Viridian City, Cerulean City',
   'main', 'newer_vgm', 10),

  -- Row 2834
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '65-Congas 1', NULL, 'GO Park, Cerulean City',
   'main', 'newer_vgm', 11),

  -- Row 2835
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '66-Congas', NULL, 'Mystery Gift',
   'main', 'newer_vgm', 12),

  -- Row 2836
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Shakers', '80-Shaker 3', NULL, 'Connection',
   'main', 'newer_vgm', 13),

  -- Row 2837
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Triangles', '115-Triangle 2', NULL, 'Mystery Gift',
   'main', 'newer_vgm', 14),

  -- Row 2838
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Madrid', '90-Madrid Hi-Hats', NULL, 'Battle! (Master Trainer Battle)',
   'main', 'newer_vgm', 15),

  -- Row 2839
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Clean Fender - Full Range All', NULL, 'GO Park',
   'main', 'newer_vgm', 16),

  -- Row 2840
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Studio Rock - Full Range All', NULL, 'Cerulean City',
   'main', 'newer_vgm', 17),

  -- Row 2841
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Picked', 'Rock P-Bass Pick - Full Range All', NULL, 'Final Battle! (Rival)',
   'main', 'newer_vgm', 18),

  -- Row 2842
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Joby Burgess Percussion' COLLATE NOCASE),
   'Mallets - Metal', 'Glock v4', 'close mics', 'Pokémon Tower, Caves of Mt. Moon, Ending Theme, Into the Game: Let''s Go!, Rocket Game Corner',
   'main', 'newer_vgm', 19),

  -- Row 2843
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Joby Burgess Percussion' COLLATE NOCASE),
   'Mallets - Metal', 'Tubular Bells v4', NULL, 'Pokémon Gym, The Final Road',
   'main', 'newer_vgm', 20),

  -- Row 2844
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Joby Burgess Percussion' COLLATE NOCASE),
   'Mallets - Metal', 'Vibes v4', 'close mics', 'Pokémon Mansion',
   'main', 'newer_vgm', 21),

  -- Row 2845
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Joby Burgess Percussion' COLLATE NOCASE),
   'Mallets - Wood', 'Marimba v4', 'close mics', 'Viridian Forest, Road to Viridian City: Leaving Pallet Town, Mystery Gift, GO Park, Evolution, Celadon City, Battle! Wild Pokémon, Mystery Gift',
   'main', 'newer_vgm', 22),

  -- Row 2846
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Joby Burgess Percussion' COLLATE NOCASE),
   'Mallets - Wood', 'Xylophone v4', 'close mics', 'Catch! (Wild Pokémon), Caught a Pokémon!, Obtained a Gym Badge!, A Trainer Appears (Boy Version)',
   'main', 'newer_vgm', 23),

  -- Row 2847
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Joby Burgess Percussion' COLLATE NOCASE),
   'Timpani', 'Timpani v4', 'close mics (gym leader victory)', 'Ending Theme, Pokémon Gym, Victory! (Gym Leader Battle)',
   'main', 'newer_vgm', 24),

  -- Row 2848
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Joby Burgess Percussion' COLLATE NOCASE),
   'Toys', 'Shakers', NULL, 'Viridian Forest, Pokémon Tower, Cycling, Choose Your Language, Guide',
   'main', 'newer_vgm', 25),

  -- Row 2849
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Joby Burgess Percussion' COLLATE NOCASE),
   'Toys', 'Tambourines', NULL, 'Cycling, Pokémon Mansion',
   'main', 'newer_vgm', 26),

  -- Row 2850
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Brass' COLLATE NOCASE),
   '-', 'c - Horns a6', ' ', 'Road to Cerulean City: Leaving Mt. Moon, Road to Lavender Town: Leaving Vermilion City, The S.S. Anne, GO Park, The Final Road, Ending Theme',
   'main', 'newer_vgm', 27),

  -- Row 2851
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Brass' COLLATE NOCASE),
   '-', 'e - Tenor Trombones a2', NULL, 'Road to Cerulean City: Leaving Mt. Moon, Road to Lavender Town: Leaving Vermilion City, Battle! (Gym Leader Battle), Blue''s Theme, Catch! (Wild Pokémon), Rocket Game Corner',
   'main', 'newer_vgm', 28),

  -- Row 2852
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Brass' COLLATE NOCASE),
   '-', 'g - Bass Trombones a2', NULL, 'Pokémon Gym, Road to Lavender Town: Leaving Vermilion City',
   'main', 'newer_vgm', 29),

  -- Row 2853
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Brass' COLLATE NOCASE),
   '-', 'l - Trumpets a6', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 30),

  -- Row 2854
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Brass' COLLATE NOCASE),
   '-', 'm - Tuba Solo', NULL, 'Road to Cerulean City: Leaving Mt. Moon',
   'main', 'newer_vgm', 31),

  -- Row 2855
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'a - Violins 1', 'Often layered with live violin', '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 32),

  -- Row 2856
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'c - Violas ', NULL, 'Pewter City, Ending Theme, Theme of Jessie and James, Caves of Mt. Moon, Lavender Town',
   'main', 'newer_vgm', 33),

  -- Row 2857
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'd - Celli', NULL, 'Pallet Town, Hall of Fame, The Final Road, Final Battle! (Rival), Viridian Forest, Ending Theme, The Sea, Catch! (Wild Pokémon), Lavender Town, Silph Co., Caves of Mt. Moon',
   'main', 'newer_vgm', 34),

  -- Row 2858
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'e - Basses', NULL, 'Viridian City, Viridian Forest, Pallet Town, Into the Game: Let''s Go!, Title Screen, Road to Viridian City: Leaving Pallet Town, Lavender Town, Ending, Caves of Mt. Moon',
   'main', 'newer_vgm', 35),

  -- Row 2859
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'f - Ensembles', NULL, 'Celadon City',
   'main', 'newer_vgm', 36),

  -- Row 2860
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'a - Piccolo Flute', NULL, 'Jigglypuff''s Song, Choose Your Language, Lavender Town, Road to Viridian City: Leaving Pallet Town, Pallet Town',
   'main', 'newer_vgm', 37),

  -- Row 2861
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'b - Flute Solo', NULL, 'Lavender Town',
   'main', 'newer_vgm', 38),

  -- Row 2862
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'c - Flutes a2', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 39),

  -- Row 2863
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'f - Oboe Solo', NULL, 'Lavender Town',
   'main', 'newer_vgm', 40),

  -- Row 2864
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'g - Oboes a2', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 41),

  -- Row 2865
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', ' i - Clarinet Solo', NULL, 'Cinnabar Island, Caves of Mt. Moon',
   'main', 'newer_vgm', 42),

  -- Row 2866
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', ' j - Clarinets a2', NULL, 'Title Screen, Viridian City, Viridian Forest, Rocket Game Corner, Mystery Gift ',
   'main', 'newer_vgm', 43),

  -- Row 2867
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'm - Bassoon Solo', NULL, 'Vermillion City',
   'main', 'newer_vgm', 44),

  -- Row 2868
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'n - Bassoon a2', NULL, 'Road to Cerulean City: Leaving Mt. Moon, Viridian City, Caves of Mt. Moon, Viridian Forest, Rocket Game Corner, Professor Oak''s Laboratory, A Trainer Appears (Boy Version)',
   'main', 'newer_vgm', 45),

  -- Row 2869
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steven Slate Audio' COLLATE NOCASE AND p.name = 'Steven Slate Drums 4' COLLATE NOCASE),
   'SSD 4 Deluxe 1 -> 01 Deluxe Rock ', 'Deluxe Rock 05', 'Additional post processing (Saturation) req.', '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 46),

  -- Row 2870
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Mondo Lead', NULL, 'Battle! (Master Trainer Battle)',
   'main', 'newer_vgm', 47),

  -- Row 2871
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'YMCK' COLLATE NOCASE AND p.name = 'Magical 8bit Plug' COLLATE NOCASE),
   '-', 'Triangle', NULL, 'Connection',
   'main', 'newer_vgm', 48),

  -- Stuff to Find (rows 2873-2876) -> stuff_to_find
  -- Row 2873
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'KEY INSTRUMENTS -> DALLAPE ACCORDION', 'Dallape Accordion KEY', 'possibly, could be halion instead', 'Into the Game: Let''s Go!',
   'stuff_to_find', 'newer_vgm', 49),

  -- Row 2874
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Prominy' COLLATE NOCASE AND p.name = 'SC Electric Guitar' COLLATE NOCASE),
   'Multis', 'bmn_SPM_001', 'potentially', 'Battle! (Trainer), Battle! (Gym Leader Battle)',
   'stuff_to_find', 'newer_vgm', 50),

  -- Row 2875
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   NULL, NULL, 'the other synth at the start', 'Battle! (Master Trainer Battle)',
   'stuff_to_find', 'newer_vgm', 51),

  -- Row 2876: ?,? -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, '909 kick', 'Battle! (Master Trainer Battle)',
   'stuff_to_find', 'newer_vgm', 52),

  -- Beta / Unreleased Tracks (rows 2878-2880) -> unused
  -- Row 2878
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! Wild Pokémon ',
   'unused', 'newer_vgm', 53),

  -- Row 2879
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'Pianoteq 6' COLLATE NOCASE),
   'Grand Steinway D', 'Steinway D Prelude', NULL, '-Placeholder tracks-',
   'unused', 'newer_vgm', 54),

  -- Row 2880
  ((SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   NULL, NULL, NULL, 'Vermillion City',
   'unused', 'newer_vgm', 55);

-- Patch raw_source for the non-commercial Live Recording rows (positions 1, 2).
-- These rows were inserted with product_id NULL; we stash the original col A/B descriptor here.
UPDATE usages SET raw_source = 'Live Recording: Hiroaki Tsutsumi — Acoustic Guitar'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!')
    AND position = 1;

UPDATE usages SET raw_source = 'Live Recording: Kon Shirasu — Violin'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Let''s Go, Pikachu! and Pokémon Let''s Go, Eevee!')
    AND position = 2;
