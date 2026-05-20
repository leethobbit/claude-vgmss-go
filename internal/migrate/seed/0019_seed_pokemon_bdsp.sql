-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 3606-3744
-- Pokémon Brilliant Diamond & Pokémon Shining Pearl (Nintendo Switch, November 19, 2021).
-- Composers: Shota Kageyama, Junichi Masuda.
-- Subsection headers in source:
--   row 3607 (Pre-Release Patch - v1.1.0)            -> main
--   row 3712 (annotation: all other documented instruments ripped from previous Pokémon titles)
--   row 3713 (Victor sample from Pokémon Diamond/Pearl) -> main (sits between annotation and "Stuff to Find")
--   row 3714 (Stuff to Find)                          -> stuff_to_find
--   row 3731 (Unused Music)                           -> unused
--   row 3737 (Base Game / Early Battle Themes - v1.0.0) -> main
-- Note: row 3715 has manufacturer "Audio Modelling" (sic; spelled differently from "Audio Modeling"
--   used elsewhere in this section) with product "?". Treated as Unknown/Unknown sentinel with
--   the original manufacturer string preserved in notes.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('8dio'),
  ('Audio Modeling'),
  ('Audio Modelling');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = '8dio'              COLLATE NOCASE), 'Requiem Pro',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Audio Modeling'    COLLATE NOCASE), 'SWAM Clarinets',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Audio Modeling'    COLLATE NOCASE), 'SWAM Double Reeds',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Audio Modeling'    COLLATE NOCASE), 'SWAM Flutes',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Audio Modeling'    COLLATE NOCASE), 'SWAM Horns & Tubas',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Audio Modeling'    COLLATE NOCASE), 'SWAM Saxophones',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Audio Modeling'    COLLATE NOCASE), 'SWAM Trumpets',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'       COLLATE NOCASE), 'CineHarps',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'       COLLATE NOCASE), 'CinePerc',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'       COLLATE NOCASE), 'CineWinds Pro',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'       COLLATE NOCASE), 'CineStrings',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Cinesamples'       COLLATE NOCASE), 'CineBrass',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'FXpansion'         COLLATE NOCASE), 'BFD3',                                          'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Modartt'           COLLATE NOCASE), 'Pianoteq 6',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Prominy'           COLLATE NOCASE), 'SC Electric Guitar',                            'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Prominy'           COLLATE NOCASE), 'Hummingbird',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'           COLLATE NOCASE), 'A-200',                                         'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'           COLLATE NOCASE), 'Mark I',                                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'     COLLATE NOCASE), 'Omnisphere',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'     COLLATE NOCASE), 'Stylus RMX',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'     COLLATE NOCASE), 'Trilian',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'    COLLATE NOCASE), 'Spitfire Percussion',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'    COLLATE NOCASE), 'Symphonic Brass',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'    COLLATE NOCASE), 'Symphonic Strings',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spitfire Audio'    COLLATE NOCASE), 'Symphonic Woodwinds',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'         COLLATE NOCASE), 'HALion Sonic',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'         COLLATE NOCASE), 'HALion Sonic SE',                               'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Victor'            COLLATE NOCASE), '効果音大全集 (VICG-40059~60)',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'      COLLATE NOCASE), 'Ethno World Instruments',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'        COLLATE NOCASE), 'Damage',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MOTU'              COLLATE NOCASE), 'Electric Keys',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Arturia'           COLLATE NOCASE), 'Modular V',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'          COLLATE NOCASE), 'Symphonic Orchestra',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'Kinetic Metal',                                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'           COLLATE NOCASE), 'Unknown',                                       NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Brilliant Diamond & Pokémon Shining Pearl',
   'Nintendo Switch',
   'November 19, 2021',
   'Shota Kageyama, Junichi Masuda',
   'shota kageyama, junichi masuda',
   'All other documented instruments were ripped from previous Pokémon titles (per source CSV annotation, row 3712).');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Pre-Release Patch - v1.1.0 (rows 3608-3711) -> main
  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = '8dio' COLLATE NOCASE AND p.name = 'Requiem Pro' COLLATE NOCASE),
   '-', 'Requiem Pro Ah Legato', NULL, 'Decisive Battle! (Pokémon League)',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audio Modeling' COLLATE NOCASE AND p.name = 'SWAM Clarinets' COLLATE NOCASE),
   '-', 'Clarinet', NULL, 'Amity Square, GTS, Bike',
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audio Modeling' COLLATE NOCASE AND p.name = 'SWAM Double Reeds' COLLATE NOCASE),
   '-', 'Oboe', NULL, 'Amity Square, Route 203, Solaceon Town',
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audio Modeling' COLLATE NOCASE AND p.name = 'SWAM Flutes' COLLATE NOCASE),
   '-', 'Flute', NULL, 'Amity Square, GTS, Bike, Hearthome City (Day)',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audio Modeling' COLLATE NOCASE AND p.name = 'SWAM Horns & Tubas' COLLATE NOCASE),
   '-', 'French Horn Bb', 'Straight mute', 'Sunyshore City',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audio Modeling' COLLATE NOCASE AND p.name = 'SWAM Horns & Tubas' COLLATE NOCASE),
   '-', 'French Horn F', NULL, 'Route 210, Sunyshore City',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audio Modeling' COLLATE NOCASE AND p.name = 'SWAM Saxophones' COLLATE NOCASE),
   '-', 'Alto Sax', NULL, 'Team Galactic HQ, Eterna City, Jublife City (Night), Route 203, Solaceon Town, Veilstone City, Sunyshore City',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audio Modeling' COLLATE NOCASE AND p.name = 'SWAM Trumpets' COLLATE NOCASE),
   '-', 'Trumpet', NULL, 'Elite Four Encounter, Trainers'' Eyes Meet (Ace Trainer), Team Galactic HQ, Veilstone City',
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CineHarps' COLLATE NOCASE),
   '-', '01 Concert Harp', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Ethnic', 'Udu', NULL, 'Amity Square',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Melodic', 'Glockenspiel', NULL, 'Solaceon Town, Twinleaf Town, Sunyshore City',
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Metals', 'Triangles', NULL, 'Twinleaf Town, Hearthome City, Snowpoint City',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Metals', 'Sleigh Bells', NULL, 'Snowpoint City',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Orchestral', 'Piatti', 'Crash cymbal', '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Orchestral', 'Piccolo Snare Drum', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Orchestral', 'Suspended Cymbals', NULL, 'Twinleaf Town',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   'Woods', 'Temple Blocks', '"Close and Tight" mix preset', 'Eterna City',
   'main', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CineWinds Pro' COLLATE NOCASE),
   '-', 'Tenor Recorder', NULL, 'Hearthome City (Day)',
   'main', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'FXpansion' COLLATE NOCASE AND p.name = 'BFD3' COLLATE NOCASE),
   'BFD3 Core Library', 'BFD3 Pop 110bpm JM', 'slight high boost on amb mix', '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'Pianoteq 6' COLLATE NOCASE),
   'Grand Steinway D', 'Steinway D Prelude', 'Pretty much the common piano sound.', '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Prominy' COLLATE NOCASE AND p.name = 'SC Electric Guitar' COLLATE NOCASE),
   'Multis', 'bmn_SPM_001', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'A-200' COLLATE NOCASE),
   '-', 'Good Vibrato', NULL, 'Twinleaf Town',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Mark I' COLLATE NOCASE),
   '-', 'Funky Rio', 'turn off reverb', 'Jubilife City',
   'main', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Mark I' COLLATE NOCASE),
   '-', 'Scarbee Mark I', NULL, 'Hearthome City (Day)',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Mark I' COLLATE NOCASE),
   '-', 'Steal A Dame', NULL, 'Canalave City',
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Warm Glockendream Bells', NULL, 'Twinleaf Town, Sandgem Town, Snowpoint City',
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 68-Small Blocks', '68-Small Blocks Combo', NULL, 'Battle! (Minor Ramanas Legendary)',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Madrid', '90-Madrid HiHat Analog', 'Re-sequenced', 'Happening at the Lake!',
   'main', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 103-Earthquake', '103-Earthquake Dist Drum', NULL, 'Lake Cavern',
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Elephant Boy', '125-Elephant Boy Kick', NULL, 'Stark Mountain',
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Bamboo', '135-Bamboo Combo', NULL, 'Stark Mountain',
   'main', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 144-Electric Flower', '144-Electric Flower Kick', NULL, 'Battle! (Uxie/Mesprit/Azelf)',
   'main', 'newer_vgm', 32),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Acoustic Upright', 'Trilian Ac 1 - Full Range All', NULL, 'Twinleaf Town, Eterna City, Solaceon Town, Veilstone City',
   'main', 'newer_vgm', 33),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Acoustic Upright', 'Trilian Ac 1 - Full Range Brite', NULL, 'Jubilife City, Floaroma Town',
   'main', 'newer_vgm', 34),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Clean Fender - Full Range All', NULL, 'Trainers'' Eyes Meet (Lass)',
   'main', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Clean Fender - Full Range Brite', NULL, 'Hearthome City (Day)',
   'main', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Retro 60''s - Full Range All', NULL, 'Sunyshore City',
   'main', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Studio Bass - Full Range All', NULL, 'Canalave City',
   'main', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Picked', 'Rock P-Bass Pick - Full Range All', NULL, 'Sandgem Town (Day)',
   'main', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Slapped', 'Studio Funk - Sustains', NULL, 'The Elite Four Appears!',
   'main', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Slapped', 'Studio Slap - Sustains', NULL, 'Dawn''s Theme, Mt. Coronet, Trainers'' Eyes Meet (Black Belt), Battle! (Team Galactic Admin), Super Contest: Coolness, Route 210, Team Galactic HQ, Battle! (Team Galactic Boss) ...',
   'main', 'newer_vgm', 41),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Spitfire Percussion' COLLATE NOCASE),
   'Mallets - Metal', 'Glock v4', NULL, 'The Grand Underground, Canalave City, Snowpoint City',
   'main', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Spitfire Percussion' COLLATE NOCASE),
   'Mallets - Metal', 'Tubular Bells v4', NULL, 'Sandgem Town, Sunyshore City',
   'main', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Spitfire Percussion' COLLATE NOCASE),
   'Mallets - Metal', 'Vibes v4', NULL, 'The Grand Underground, Veilstone City, Canalave City',
   'main', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Spitfire Percussion' COLLATE NOCASE),
   'Mallets - Wood', 'Marimba v4', NULL, 'The Grand Underground, Sandgem Town, Hearthome City, Sunyshore City',
   'main', 'newer_vgm', 45),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Spitfire Percussion' COLLATE NOCASE),
   'Mallets - Wood', 'Xylophone v4', NULL, 'Hearthome City',
   'main', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Brass' COLLATE NOCASE),
   '-', 'c - Horns a6', NULL, 'Opening Movie, Introduction, Route 206',
   'main', 'newer_vgm', 47),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Brass' COLLATE NOCASE),
   '-', 'e - Tenor Trombones a2', NULL, 'Opening Movie, The Grand Underground',
   'main', 'newer_vgm', 48),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Brass' COLLATE NOCASE),
   '-', 'l - Trumpets a6', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 49),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'a - Violins 1', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 50),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'b - Violins 2', NULL, 'Opening Movie, Route 201, Introduction, Twinleaf Town',
   'main', 'newer_vgm', 51),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'c - Violas', NULL, 'Opening Movie, Route 201, Introduction',
   'main', 'newer_vgm', 52),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'd - Celli', NULL, 'Opening Movie, Route 201, Introduction, Floaroma Town, Eterna City, Solaceon Town, Canalave City, Snowpoint City, Sunyshore City',
   'main', 'newer_vgm', 53),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Strings' COLLATE NOCASE),
   '-', 'e - Basses', NULL, 'Opening Movie, Route 201, Introduction',
   'main', 'newer_vgm', 54),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'a - Piccolo Flute', NULL, 'Route 201, Eterna City',
   'main', 'newer_vgm', 55),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'b - Flute Solo', NULL, 'Twinleaf Town, Sandgem Town, Floaroma Town',
   'main', 'newer_vgm', 56),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'c - Flutes a2', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 57),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'f - Oboe Solo', NULL, 'Floaroma Town',
   'main', 'newer_vgm', 58),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'g - Oboes a2', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 59),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'i - Clarinet Solo', NULL, 'Floaroma Town',
   'main', 'newer_vgm', 60),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'j - Clarinets a2', NULL, 'Route 201',
   'main', 'newer_vgm', 61),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spitfire Audio' COLLATE NOCASE AND p.name = 'Symphonic Woodwinds' COLLATE NOCASE),
   '-', 'n - Bassoon a2', NULL, 'Route 201, The Grand Underground',
   'main', 'newer_vgm', 62),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', '80s Synth Brass Comp', NULL, 'Route 225',
   'main', 'newer_vgm', 63),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', '9o9 Studio Kit', NULL, 'Metronome Style Shop',
   'main', 'newer_vgm', 64),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', 'Brassy', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 65),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory', 'Digi Marimba', NULL, 'Contest: Introductions',
   'main', 'newer_vgm', 66),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Gaga Saw', NULL, 'Battle! (Minor Ramanas Legendary), Battle! (Champion)',
   'main', 'newer_vgm', 67),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Auron Set', 'Antiquities', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer), Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 68),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 003] Electric Grand Piano', NULL, 'Battle! (Trainer), Pokémon Center (Day), Battle! (Uxie/Mesprit/Azelf)',
   'main', 'newer_vgm', 69),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 005] Electric Piano 1', NULL, 'Poffins, Snowpoint City, Sunyshore City',
   'main', 'newer_vgm', 70),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 006] Electric Piano 2', NULL, 'Sandgem Town',
   'main', 'newer_vgm', 71),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 008] Clavinet', NULL, 'Battle! (Dialga/Palkia)',
   'main', 'newer_vgm', 72),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 012] Vibraphone', NULL, 'Battle! (Minor Ramanas Legendary), Victory! (Team Galactic), Battle! (Giratina)',
   'main', 'newer_vgm', 73),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 015] Tubular Bells', NULL, 'Bike, Ending Theme',
   'main', 'newer_vgm', 74),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 016] Dulcimer', NULL, 'Jubilife City, Sunyshore City',
   'main', 'newer_vgm', 75),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 021] Reed Organ', NULL, 'Route 216, Hearthome City (Day)',
   'main', 'newer_vgm', 76),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 022] Accordion', NULL, 'Valor Lakefront (Night), Bike, Amity Square, Super Contest: Toughness, Battle! (Uxie/Mesprit/Azelf), Ending Theme',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 023] Harmonica', NULL, 'Battle! (Rival), Ending Theme, Eterna City',
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 027] Electric Guitar', NULL, 'Eterna City',
   'main', 'newer_vgm', 79),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 039] Synth Bass 1', NULL, 'PokéMart, Battle! (Trainer), Victory! (Gym Leader), Route 216, Battle! (Dialga / Palkia), Battle! (Giratina)',
   'main', 'newer_vgm', 80),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 040] Synth Bass 2', NULL, 'Lake, Super Contest: Coolness',
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 046] Pizzicato Strings', 'double check if these aren''t "Pizzicato" (SE)', 'Victory! (Champion), Battle! (Giratina), Route 228',
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer), Battle! (Gym Leader), Battle! (Team Galactic Commander), Bike, Amity Square, Opening Movie, Metronome Shop (Game Corner) ...',
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Battle! (Trainer), Trainers'' Eyes Meet (Sailor), Victory! (Gym Leader)',
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 056] Orchestra Hit', NULL, 'A Surprise at the Lake!, Battle! (Team Galactic Commander), Battle! (Champion), Battle! (Uxie / Mesprit / Azelf), Battle! (Legendary Pokémon), Battle! (Minor Ramanas Legendary) ...',
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 057] Trumpet', NULL, 'Battle! (Trainer), Battle! (Rival), Battle! (Team Galactic), Battle! (Team Galactic Commander)',
   'main', 'newer_vgm', 86),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 063] Synth Brass 1', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 075] Recorder', NULL, 'Eterna City',
   'main', 'newer_vgm', 88),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 076] Pan Flute', NULL, 'Old Chateau',
   'main', 'newer_vgm', 89),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 079] Whistle', NULL, 'Battle! (Champion), TV Station, Trainers'' Eyes Meet (Hiker)',
   'main', 'newer_vgm', 90),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 081] Lead 1 (Square)', NULL, 'TV Station, Battle! (Minor Ramanas Legendary)',
   'main', 'newer_vgm', 91),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 082] Lead 2 (Sawtooth)', NULL, 'TV Station',
   'main', 'newer_vgm', 92),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 120] Reverse Cymbal', NULL, 'Mt. Coronet',
   'main', 'newer_vgm', 93),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 121] Guitar Fret Noise', NULL, 'Hearthome City, Canalave City',
   'main', 'newer_vgm', 94),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 132] Percussion', NULL, 'Stark Mountain, PokéRadar',
   'main', 'newer_vgm', 95),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 129] Stereo GM Kit', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 96),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 134] Rock Kit', NULL, 'Victory Road',
   'main', 'newer_vgm', 97),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', '60s Drawbar Organ', NULL, 'Sunyshore City',
   'main', 'newer_vgm', 98),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'American Jazz Organ', NULL, 'Lucas',
   'main', 'newer_vgm', 99),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'French Horn Ensemble', NULL, 'Gym, Battle! (Team Galactic), Battle! (Team Galactic Commander), Battle! (Team Galactic Boss), Team Galactic HQ, Victory! (Gym Leader)',
   'main', 'newer_vgm', 100),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'SR Premium Ac Gtr1', NULL, 'Hearthome City, Canalave City',
   'main', 'newer_vgm', 101),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Prog Rock Organ', 'Turn mod up for Sunyshore City', 'A Surprise at the Lake!, Battle! (Wild Pokémon), Dawn, Pokémon Center (Day), Trainers'' Eyes Meet (Lass), Battle! (Rival), Team Galactic Appears!, Solaceon Town, Sunyshore City, etc.',
   'main', 'newer_vgm', 102),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Pizzicato', NULL, 'Oreburgh Gate',
   'main', 'newer_vgm', 103),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Trip Set', 'Headlights', NULL, 'Battle! (Minor Ramanas Legendary)',
   'main', 'newer_vgm', 104),

  -- Row 3713 (Victor sample from Pokémon Diamond/Pearl, between annotation and "Stuff to Find") -> main
  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Victor' COLLATE NOCASE AND p.name = '効果音大全集 (VICG-40059~60)' COLLATE NOCASE),
   'Disc 1 -> Track 11', '自然篇 吹雪', 'from Pokémon Diamond/Pearl', 'Stark Mountain',
   'main', 'newer_vgm', 105),

  -- Stuff to Find (rows 3715-3730) -> stuff_to_find
  -- Row 3715: "Audio Modelling,?" (sic; manufacturer typo'd vs "Audio Modeling" used above). Treated as Unknown/Unknown.
  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Audio Modelling: ? — could be used for solo strings in some songs', 'Super Contest: Toughness',
   'stuff_to_find', 'newer_vgm', 106),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'KEY INSTRUMENTS -> DALLAPE ACCORDION', 'Dallape Accordion KEY', 'i think this is just an octaved halion accordion', 'Trainers'' Eyes Meet (Hiker)',
   'stuff_to_find', 'newer_vgm', 107),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CineStrings' COLLATE NOCASE),
   NULL, NULL, 'could be used', 'Battle! (Major Ramanas Legendary), among other songs',
   'stuff_to_find', 'newer_vgm', 108),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CineBrass' COLLATE NOCASE),
   NULL, NULL, 'could be used', 'Battle! (Major Ramanas Legendary), among other songs',
   'stuff_to_find', 'newer_vgm', 109),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Cinesamples' COLLATE NOCASE AND p.name = 'CinePerc' COLLATE NOCASE),
   NULL, NULL, NULL, 'Galactic Eterna Building',
   'stuff_to_find', 'newer_vgm', 110),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, 'Elements / loop', 'Battle! (Arceus)',
   'stuff_to_find', 'newer_vgm', 111),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, 'Percussion loop', 'Battle! (Major Ramanas Legendary)',
   'stuff_to_find', 'newer_vgm', 112),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'Electric Keys' COLLATE NOCASE),
   NULL, 'organ', 'key click sounds different to halion', 'Route 203 (Day), Route 203 (Night)',
   'stuff_to_find', 'newer_vgm', 113),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Prominy' COLLATE NOCASE AND p.name = 'Hummingbird' COLLATE NOCASE),
   'mono', 'Hummingbird_L', 'alternatively, RealGuitar', 'Twinleaf Town',
   'stuff_to_find', 'newer_vgm', 114),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Prominy' COLLATE NOCASE AND p.name = 'Hummingbird' COLLATE NOCASE),
   'mono', 'Hummingbird_S', NULL, 'Oreburgh City',
   'stuff_to_find', 'newer_vgm', 115),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library', 'bell and synth sounds', 'there''s more for sure', NULL,
   'stuff_to_find', 'newer_vgm', 116),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, 'Djembe', 'Stark Mountain',
   'stuff_to_find', 'newer_vgm', 117),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   NULL, 'Fingered Bass', 'Either Clean Fender or Studio Bass', 'Contest Assembly Hall',
   'stuff_to_find', 'newer_vgm', 118),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   NULL, NULL, 'Acoustic Bass', 'Introduction',
   'stuff_to_find', 'newer_vgm', 119),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 101] Fx 5 (Brightness)', 'potentially', 'Snowpoint City',
   'stuff_to_find', 'newer_vgm', 120),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', 'Percussion', 'Either GM Percussion or Studio GM Kit', 'Amity Square',
   'stuff_to_find', 'newer_vgm', 121),

  -- Unused Music (rows 3732-3736) -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'Modular V' COLLATE NOCASE),
   'Bass', 'Arie', 'edit VC Low Pass', 'nazo_a',
   'unused', 'newer_vgm', 122),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 1 Long', '4TP Sus', NULL, 'nazo_b',
   'unused', 'newer_vgm', 123),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> CymGong', '37 Chinese Tam Tam', NULL, 'nazo_b',
   'unused', 'newer_vgm', 124),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'nazo_b',
   'unused', 'newer_vgm', 125),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kinetic Metal' COLLATE NOCASE),
   '-', 'Furnace Grates', 'Turn off the Waves', 'nazo_a',
   'unused', 'newer_vgm', 126),

  -- Base Game / Early Battle Themes - v1.0.0 (rows 3738-3744) -> main
  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 035] Electric Bass (Pick)', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 127),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 022] Accordion', NULL, 'Battle! (Azelf/Mesprit/Uxie)',
   'main', 'newer_vgm', 128),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 039] Synth Bass 1', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 129),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', NULL, 'Battle! (Gym Leader), Battle! (Elite Four), Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 130),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Battle! (Gym Leader), Battle! (Team Galactic Boss), Battle! (Elite Four), Battle! (Azelf/Mesprit/Uxie), Battle! (Giratina)',
   'main', 'newer_vgm', 131),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 057] Trumpet', NULL, 'Battle! (Trainer Battle), Battle! (Gym Leader), Battle! (Team Galactic Grunt), Battle! (Elite Four), Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 132),

  ((SELECT id FROM games WHERE title = 'Pokémon Brilliant Diamond & Pokémon Shining Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 079] Whistle', NULL, 'Battle! (Champion)',
   'main', 'newer_vgm', 133);
