-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 144-241
-- Pokémon Diamond and Pokémon Pearl (DS, 2006).
-- Composers: Go Ichinose, Junichi Masuda, Hitomi Sato.
-- Multi-line cells in source (rows 200-201, 202-203) were normalized to single lines.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Discovery Firm'),
  ('Yamaha');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'ProSamples Vol. 11 - Classic Orchestra',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'ProSamples Vol. 41 - Solo Strings',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'ProSamples Vol. 51 - Classic Orchestra 2',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'   COLLATE NOCASE), 'ProSamples Vol. 55 - Retro Sampler',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm' COLLATE NOCASE), 'Sound Effects CD Series 2 - INDUSTRY',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm' COLLATE NOCASE), 'Sound Effects CD Series 6 - NATURE',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'ProSamples Vol. 16 - Guitar & Bass',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'ProSamples Vol. 19 - Pop Brass',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'       COLLATE NOCASE), 'ProSamples Vol. 32 - Ethnic Adventures',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'         COLLATE NOCASE), 'QY70',                                            'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'         COLLATE NOCASE), 'SY77',                                            'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'         COLLATE NOCASE), 'Creative Essentials Vol. 17 Bass Separates',      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'         COLLATE NOCASE), 'Creative Essentials Vol. 30 Orchestral Flavours', 'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Diamond and Pokémon Pearl',
   'Nintendo DS',
   'September 28, 2006',
   'Go Ichinose, Junichi Masuda, Hitomi Sato',
   'go ichinose, junichi masuda, hitomi sato',
   'All other documented instruments were ripped from previous Pokémon titles (per source CSV annotation, row 236).');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Main usages (rows 145-235, then 237-239)
  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 11 - Classic Orchestra' COLLATE NOCASE),
   'Partition E -> ADV ORCH 3', 'TIMPANI VS', '47', 'Route 210 (Day), Battle! (Trainer Battle), Battle! (Gym Leader), etc.',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 13 - Choirs' COLLATE NOCASE),
   'Classic Choir', 'AHH', NULL, 'Battle! (Champion), Old Chateau',
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition A -> BD 001-060', 'BD 031-060', '15A-BDE050 (Kick)', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CLAP 45-88', 'CLAP 45-66', '15C-CLP45 (Clap)', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CYM 01-44', 'CYM 01-22', '15E-CYM11 (Ride Bell)', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CYM 01-44', 'CYM 23-44', '15E-CYM36 (Ride Cymbal)', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 41 - Solo Strings' COLLATE NOCASE),
   'Violin pizzicato forte', '41c-vi05-g4', NULL, 'Route 206',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 41 - Solo Strings' COLLATE NOCASE),
   'Violin pizzicato forte', '41c-vi09-g5', NULL, 'Route 206',
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 51 - Classic Orchestra 2' COLLATE NOCASE),
   'Oboe', 'Oboe', NULL, 'Route 209 (Night), Solaceon Town (Day), The Underground, etc.',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 51 - Classic Orchestra 2' COLLATE NOCASE),
   'French Horns', '51F-FRH01-B0', NULL, 'Battle! (Azelf/Mesprit/Uxie)',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 51 - Classic Orchestra 2' COLLATE NOCASE),
   'Harp Long', 'Harp Long', NULL, 'Lake, Wi-Fi Plaza, Battle! (Team Galactic Commander), Snowpoint City (Day), etc.',
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'Partition A -> CELLO SECTIO', 'CELLO SECTIO', '55F-CL01-C#1', 'Battle! (Azelf/Mesprit/Uxie)',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'Partition A -> ORCHESTRA 2', 'ORCHESTRA', '55AA-ORC09-C', 'Unused until Platinum',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'Partition B -> DRUMCOMPUTER', 'YAMAHA R5+RX', '55P-DRM54-F5', NULL,
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'Partition B -> ORGAN B3 HAM', 'ORGAN B3 HAM', '55AV-ORG03-C, 55AV-ORG04-C', 'Hurry Along, etc.',
   'main', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'Partition B -> PERC MIX', 'PERC MIX', '55AY-PRC39-E', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 2 - INDUSTRY' COLLATE NOCASE),
   'Track 8 - COSMOS', 'WARP-2', 'as SFX', NULL,
   'main', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 6 - NATURE' COLLATE NOCASE),
   'Track 27 - WIND', 'WIND-1', 'as SFX', 'Spear Pillar',
   'main', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 16 - Guitar & Bass' COLLATE NOCASE),
   'Acoustic God -> AC Picked', 'AC Hard Pick', NULL, 'Ending Theme, Valor Lakefront (Day), Valor Lakefront (Night)',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 16 - Guitar & Bass' COLLATE NOCASE),
   'Blues Chug PC', 'Blues Chug', '16m-gte03-A1', 'Ending Theme, Captured a Flag Underground!',
   'main', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 16 - Guitar & Bass' COLLATE NOCASE),
   'Plexi LD', 'Dist Gtr', NULL, 'Route 225 (Day), Battle Tower, etc.',
   'main', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 16 - Guitar & Bass' COLLATE NOCASE),
   'Rectifier PC', 'Power Chord', NULL, 'Deep Within Team Galactic HQ',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 16 - Guitar & Bass' COLLATE NOCASE),
   'Stingray', 'Stingray Bass Hard', '16b-bse01-E0', 'Victory! (Gym Leader)',
   'main', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 18 - Steinway Grand Piano' COLLATE NOCASE),
   '-', 'PS-18 AIFF Grand Piano', 'Two low notes sampled for 03, rest is 02',
   'The Elite Four Appears!, Route 205 (Day), Route 209 (Day), Champion Cynthia, Team Galactic HQ, etc.',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 19 - Pop Brass' COLLATE NOCASE),
   'Partition A -> VOLUME 002', '3TP SUS', 'T3SSFC#3, T3SSFC#4, T3SSFB4',
   'Battle! (Wild Pokémon), Battle! (Trainer Battle), Route 205 (Day), Route 225 (Night) Route 228 (Day), etc.',
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 32 - Ethnic Adventures' COLLATE NOCASE),
   'Africa 81-96-108 -> Africa 081 bpm', '32a-prchit01-81', 'Africa Drum', 'Stark Mountain, Battle Factory (Platinum)',
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'GS -> Drums', '025 ELECTRONIC', 'Reverse cymbal (E3)', 'Battle! (Team Galactic Commander)',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'GS -> Drums', '026 TR-808', '808 Snare (D2)', 'Route 216 (Day & Night), Eterna City',
   'main', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '018 000 Organ 2', NULL, 'Galactic Eterna Building',
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '037 000 Slap Bass 1', NULL, 'The Elite Four Appears!, Route 225 (Day), etc.',
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '121 000 Gt.FretNoise', NULL, 'Eterna City (Day), Eterna City (Night), Ending Theme',
   'main', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '005 000 Soft Rhodes', NULL, 'Jubilife City, Snowpoint City (Day), Snowpoint City (Night)',
   'main', 'newer_vgm', 32),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '006 000 FM E.Piano', NULL, 'Jubilife City, Mt. Coronet, Canalave City, Eterna Forest',
   'main', 'newer_vgm', 33),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '008 000 Atack Clav 1', NULL, 'Team Galactic HQ',
   'main', 'newer_vgm', 34),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '010 000 Glocken 2', NULL, 'Battle! (Gym Leader), Solaceon Town (Day), Team Galactic HQ, Surf, etc.',
   'main', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '012 000 Vibraphone 2', NULL, 'Route 206 (Day), Route 210 (Day), The Underground, etc.',
   'main', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '013 000 Marimba 2', NULL, 'Twinleaf Town (Day), Sandgem Town (Day), Route 206 (Day), etc.',
   'main', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '014 000 Xylophone 2', NULL, 'The Underground, Hearthome City (Day)',
   'main', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '015 000 Tubular-bel2', NULL,
   'Pokémon Gym, Congratulations on Entering the Hall of Fame!, Route 210 (Day), etc.',
   'main', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '022 000 French Acc', NULL, 'Ending Theme, Bicycle',
   'main', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '023 000 Harmonica 2', NULL, 'Eterna City (Day), Ending Theme, Battle! (Rival), etc.',
   'main', 'newer_vgm', 41),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '028 000 TC Rear', NULL, 'Oreburgh City (Day)',
   'main', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '031 000 Atk Dist Gt', NULL, 'Game Corner',
   'main', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '039 000 MG303 Bass', '85% velocity', 'Battle! (Trainer Battle), etc.',
   'main', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '041 000 Violin Vib', NULL, 'Battle! (Team Galactic Commander), Route 203 (Day), Battle! (Champion), etc.',
   'main', 'newer_vgm', 45),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '048 000 Timpani 2', NULL, 'Battle! (Azelf/Mesprit/Uxie), Decisive Battle! (Pokémon League), Battle! (Champion)',
   'main', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '049 000 Strings 2', '85% velocity, cut samples',
   'Battle! (Wild Pokémon), Battle! (Trainer Battle), Battle! (Gym Leader), Route 201 (Day), Route 205 (Day), etc.',
   'main', 'newer_vgm', 47),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '058 000 Solo Bone', NULL, 'Battle! (Team Galactic Commander), Battle! (Legendary Pokemon)',
   'main', 'newer_vgm', 48),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '059 000 Tuba 2', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 49),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '061 000 FrenchHorns2', NULL, 'Route 206 (Day), Congratulations on Entering the Hall of Fame!, Team Galactic HQ, etc.',
   'main', 'newer_vgm', 50),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '065 000 Soprano Sax2', NULL, 'Solaceon Town (Day), Veilstone City, Jubilife City (Night)',
   'main', 'newer_vgm', 51),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '074 000 Flute 2', NULL, 'Route 209 (Day), Poffins, Victory! (Trainer Battle)',
   'main', 'newer_vgm', 52),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '075 000 Recorder 2', NULL, 'Eterna City (Day), Hearthome City (Day)',
   'main', 'newer_vgm', 53),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '079 000 Whistle 2', 'use modulation (midi CC 1)', 'Battle! (Champion)',
   'main', 'newer_vgm', 54),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '106 000 Banjo 2', NULL, 'Captured a Flag Underground!',
   'main', 'newer_vgm', 55),

  -- rows 200-201, 202-203 had embedded newlines in source; normalized here
  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '001 StandardSet2', 'Tom', 'Solaceon Town',
   'main', 'newer_vgm', 56),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '009 Room Set 2', 'Tom', 'Route 228 (Day & Night)',
   'main', 'newer_vgm', 57),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '017 Power Set 2', 'Power Snare', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 58),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '049 OrchestraSet', 'Snare', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 59),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Solo Set', '025 000 Nylon Gt 3', NULL, 'Eterna City',
   'main', 'newer_vgm', 60),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Special 1 Set', '054 Perky Spin', 'Set "Rotary" MFX to "Fast"', 'Battle! (Team Galactic), Battle! (Team Galactic Commander), Route 225 (Day), etc.',
   'main', 'newer_vgm', 61),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRINITY Pro' COLLATE NOCASE),
   'Combinations -> Bank A', 'A105 POP U Wit'' This', NULL, 'Opening, Happening at the Lake!, Evolution, Battle! (Azelf/Mesprit/Uxie), Battle! (Team Galactic Boss)',
   'main', 'newer_vgm', 62),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRINITY Pro' COLLATE NOCASE),
   'Combinations -> Bank B', 'B019 MIDI Grand Stack', NULL, 'Jubilife City, Route 228 (Day)',
   'main', 'newer_vgm', 63),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '039 005 P5 Bass', 'Sample is cut, reverb off', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 64),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   'CD 2 -> Track 14 -> TS 0:36', 'Dragon Drums', NULL, 'Spin Trade (Platinum)',
   'main', 'newer_vgm', 65),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   'CD 2 -> Track 17 -> TS 0:27', 'Indian Percussion', NULL, 'Amity Square, Galactic Eterna Building',
   'main', 'newer_vgm', 66),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '082 032 DoublSaw', 'Check notes', 'Battle! (Team Galactic), Battle! (Team Galactic Commander), Route 225 (Day), etc.',
   'main', 'newer_vgm', 67),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '028 127 Dance Kit', '[Notes C2 and D2] Check notes', 'Game Corner, Battle! (Champion), etc.',
   'main', 'newer_vgm', 68),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'PRESET 1 -> Bank C', 'C15 Clarinet', NULL, 'Bicycle, Twinleaf Town (Day), Amity Square, etc.',
   'main', 'newer_vgm', 69),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 02', '16_02_06', 'Radio compressed kick', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 70),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 02', '16_02_10', 'Compressed kick', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 71),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 18', '16_18_02', 'Snare', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 72),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 20', '16_20_04', 'Cymbal', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 73),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 22', '16_22_10', 'Open hi-hat', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 74),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 23', '16_23_08', 'Open Closed 1', NULL,
   'main', 'newer_vgm', 75),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 23', '16_23_10', 'Ped 1', NULL,
   'main', 'newer_vgm', 76),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 23', '16_23_12', 'Hat', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 24', '16_24_06', 'Sidestick', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 26', '16_26_10', 'Shaker', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 79),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 28', '16_28_15', 'EQ percussion "clap"', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 80),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 10', '17_10_04', 'Woody Bass - String 1', NULL,
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 12', '17_12_02', 'Woody Bass - String 3', 'Veilstone City (Day), Galactic Eterna Building, Surf, etc.',
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 12', '17_12_07', 'Woody Bass - String 3', NULL,
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 12', '17_12_13', 'Woody Bass - String 3', NULL,
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 23', '17_23_01', 'Pick Bass - String 1', 'Battle! (Elite Four), Contest Hall, etc.',
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 43', '17_43_04', 'Bass Slides, Slaps & FX - Slaps', 'Oreburgh City (Day), Oreburgh City (Night), Looker''s Theme (Platinum)',
   'main', 'newer_vgm', 86),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 44', '17_44_04', 'Bass Slides, Slaps & FX - Filter Slaps', 'Battle! (Azelf/Mesprit/Uxie), Battle! (Team Galactic Boss) etc.',
   'main', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 02', '30_02_01', 'Orchestra hit (major)', 'Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 88),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_01', 'Orchestra hit (minor)', 'Battle! (Champion), Battle! (Team Galactic Commander)',
   'main', 'newer_vgm', 89),

  -- rows 237-239: samples specifically ripped from earlier games
  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '081 000 Square Wave', 'from Pokémon Ruby/Sapphire', 'You''re a Jackpot Winner!',
   'main', 'newer_vgm', 90),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '123 005 Bubble', 'from Pokémon Ruby/Sapphire', 'Various SFX',
   'main', 'newer_vgm', 91),

  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Victor' COLLATE NOCASE AND p.name = '効果音大全集 (VICG-40059~60)' COLLATE NOCASE),
   'Disc 1 -> Track 11', '自然篇 吹雪', 'from Pokémon Ruby/Sapphire', 'Stark Mountain, Various SFX',
   'main', 'newer_vgm', 92),

  -- Stuff to find (row 241): only contains an "SFX documentation" note placeholder
  ((SELECT id FROM games WHERE title = 'Pokémon Diamond and Pokémon Pearl'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'SFX documentation', NULL,
   'stuff_to_find', 'newer_vgm', 93);
