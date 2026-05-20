-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 1489-1947
-- Pokémon Omega Ruby and Pokémon Alpha Sapphire (Nintendo 3DS, November 21, 2014).
-- Composers: Shota Kageyama, Minako Adachi, Hideaki Kuroda, Hitomi Sato.
-- Subsection headers in source: rows 1490-1495 (Live Recording: Hideaki Kuroda hardware),
-- 1496 (Sample: GAME FREAK -> Pokémon Ruby and Sapphire), 1497-1818 (Streamed/Sequenced),
-- 1819 (Stuff to Find), 1873 (Bonus Tracks; "(Music by: Minako Adachi, Hitomi Sato)"),
-- 1888 (Early Music (Teraleak / Freakleak - poke_viewer.cci)),
-- 1928 (Stuff to Find within Early Music),
-- 1938 (Early Bonus Tracks (Teraleak / Freakleak - XY Part 1)).
-- Per task spec: Streamed/Sequenced -> main; Stuff to Find -> stuff_to_find;
-- Bonus Tracks -> bonus; Early Music (Teraleak/Freakleak) -> unused;
-- Early Bonus Tracks (Teraleak/Freakleak) -> unused (leak content).

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('FXpansion'),
  ('Modartt'),
  ('ProjectSAM'),
  ('Vienna Symphonic Library'),
  ('Vir2'),
  ('Wallander Instruments'),
  ('Clavia'),
  ('MOTU'),
  ('MusicLab'),
  ('Prominy'),
  ('Crypton Future Media');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'              COLLATE NOCASE), 'Chris Hein Horns Pro Complete',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'              COLLATE NOCASE), 'Ethno World Instruments',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'              COLLATE NOCASE), 'Red Box Vol. 4 (Special and Unusual)',   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Clavia'                    COLLATE NOCASE), 'Nord Electro 2',                         'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Clavia'                    COLLATE NOCASE), 'Nord Rack',                              'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Crypton Future Media'      COLLATE NOCASE), '巡音ルカ（MEGURINE LUKA）',                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                  COLLATE NOCASE), 'Goliath',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                  COLLATE NOCASE), 'Stormdrum Loops',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                  COLLATE NOCASE), 'Stormdrum 2',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                  COLLATE NOCASE), 'Symphonic Orchestra',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'FXpansion'                 COLLATE NOCASE), 'BFD2',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                      COLLATE NOCASE), 'TRITON-Rack',                            'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                      COLLATE NOCASE), 'EXB-PCM04 Dance Extreme',                'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                      COLLATE NOCASE), 'RADIAS',                                 'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools'      COLLATE NOCASE), 'Independence Pro',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Modartt'                   COLLATE NOCASE), 'Pianoteq 3',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MOTU'                      COLLATE NOCASE), 'Electric Keys',                          'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                  COLLATE NOCASE), 'RealLPC',                                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'        COLLATE NOCASE), 'Absynth',                                'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'        COLLATE NOCASE), 'Battery 3',                              'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'        COLLATE NOCASE), 'Kontakt Factory Library',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'        COLLATE NOCASE), 'Massive',                                'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'ProjectSAM'                COLLATE NOCASE), 'Symphobia 2',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Prominy'                   COLLATE NOCASE), 'SC Electric Guitar',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                    COLLATE NOCASE), 'SOUND Canvas SC-88 Pro',                 'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'             COLLATE NOCASE), 'Omnisphere',                             'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'             COLLATE NOCASE), 'Stylus RMX',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'             COLLATE NOCASE), 'Trilian',                                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'             COLLATE NOCASE), 'Trilogy',                                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                 COLLATE NOCASE), 'HALionOne',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                 COLLATE NOCASE), 'HALion Sonic',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                 COLLATE NOCASE), 'HALion Sonic SE',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                       COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                       COLLATE NOCASE), 'Acoustic Toy Museum',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'  COLLATE NOCASE), 'Special Edition Vol. 1',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'  COLLATE NOCASE), 'Special Edition Vol. 2',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vir2'                      COLLATE NOCASE), 'Electri6ity',                            'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Wallander Instruments'     COLLATE NOCASE), 'Woodwinds & Saxophones',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                 COLLATE NOCASE), 'Addictive Drums',                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                    COLLATE NOCASE), 'Total Funk',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                    COLLATE NOCASE), 'Total House',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                   COLLATE NOCASE), 'Unknown',                                NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Omega Ruby and Pokémon Alpha Sapphire',
   'Nintendo 3DS',
   'November 21, 2014',
   'Shota Kageyama, Minako Adachi, Hideaki Kuroda, Hitomi Sato',
   'shota kageyama, minako adachi, hideaki kuroda, hitomi sato',
   'Bonus Tracks subsection (source row 1873) attributed to Minako Adachi and Hitomi Sato. Early Music subsection (row 1888) drawn from the Teraleak / Freakleak (poke_viewer.cci). Early Bonus Tracks subsection (row 1938) drawn from the Teraleak / Freakleak (XY Part 1).');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Live Recording: Hideaki Kuroda (rows 1490-1495) -> main, product_id NULL (raw_source patched below)
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   NULL, NULL, 'Roscoe SKB-3005 Fretless', NULL, 'Fortree City',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   NULL, NULL, 'Scandalli Accordion', NULL, 'Fortree City',
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   NULL, NULL, 'Furch D23-CR', 'unless its another one of his guitars', 'A Path We Must All Walk',
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   NULL, NULL, 'Modulus Q6 Sweet Spot', NULL, 'per aspera ad astra!',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   NULL, NULL, 'Suhr Classic', 'likely amped with guitar rig', 'Battle! (Team Aqua/Team Magma Leaders), Battle! (Primal Reversion), per aspera ad astra!, Battle! (Steven), Battle! (Battle Chatelaine), Champion Steven',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   NULL, NULL, 'Yamaha G-280A', 'Mislabeled as C-280A on his website', 'A Path We Must All Walk, Fortree City',
   'main', 'newer_vgm', 6),

  -- Sample: GAME FREAK (row 1496) -> main, product_id NULL (raw_source patched below)
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   NULL, 'Disk 2 -> Track 29', 'Battle! (Super-Ancient Pokémon)', NULL, 'Battle! (Primal Reversion)',
   'main', 'newer_vgm', 7),

  -- Streamed / Sequenced Tracks (rows 1497-1818) -> main
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol1', '18 Trumpet Solo', NULL, 'Team Magma Appears!',
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol1', '55 Trumpet Section', NULL, 'Trick House',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol2 -> Solo', '19 Trumpet A', 'around second 42', 'Battle! (Steven)',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol2 -> Solo', '20 Trumpet B', NULL, 'Brendan',
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol2 -> Solo', '22 Trumpet D', '"sustain 2" articulation', 'Battle! (Team Aqua/Team Magma Leaders)',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   'CHH-Vol3 -> Section', '18Tp Sect 2O 2S 2C', NULL, 'Team Aqua Appears!',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'KEY INSTRUMENTS -> DALLAPE ACCORDION', 'DALLAPE ACCORDION KEY', NULL, 'Battle! (Zinnia), Sootopolis City',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Acoustic Guitar Family', '2 Guitars', NULL, 'Hurry Along!',
   'main', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Acoustic Guitar Family', 'Acoustic God Sus', 'play as octaves', 'Fallarbor Town',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 001-8 PIANO', '6-Electric Piano 2', NULL, 'Trick House',
   'main', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 009-16 CROMPERC', '9-Celesta', NULL, 'Hurry Along!',
   'main', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 009-16 CROMPERC', '13-Marimba', NULL, 'Trick House',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '17-Drawbar Organ MOD', NULL, 'Trick House',
   'main', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '24-Tango Accordian', NULL, 'Dewford Town',
   'main', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 025-32 GUITAR', '26-Ac. GTR (Steel)', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 033-40 BASS', '33-Upright Bass', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 033-40 BASS', '38-SLAP BASS 2', NULL, 'Hideout',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 041-48 STRINGS', '48-Timp', 'lower midi timpani by an octave', 'Trick House',
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 049-56 ENSEMBLE', '56-Orchestra Hit', NULL, 'Trainers'' Eyes Meet (Street Thug)',
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 073-80 PIPE', '73-Piccolo', NULL, 'Trick House',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Stormdrone MOD -> 4 way high morphs', 'Soundwarrior (Hi)', NULL, 'Hideout',
   'main', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Stormdrum Loops' COLLATE NOCASE),
   'Thunderous Instruments', 'Zagkaran 150 BPM', NULL, 'The Super-Ancient Pokemon Awaken!',
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Stormdrum 2' COLLATE NOCASE),
   'Drumkit and Related', 'Black Kit Basic MOR', NULL, 'Battle! (Brendan/May)',
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 5 Keysw', '4TB KS Master', NULL, 'Title Screen, Introductions, Route 104, Battle! (Gym Leader), Battle! (Steven), Route 119, Route 120, Victory Road, Battle! (Lorekeeper Zinnia), Victory! (Team Aqua/Team Magma), H-Help Me!',
   'main', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 5 Keysw', '4TP KS Master', NULL, 'Title Screen, Introductions, Route 110, Route 119, Battle! (Gym Leader), Battle! (Elite Four), Battle! (Steven), Battle! (Deoxys), Victory Road, Opening Movie 1 & 2, etc.',
   'main', 'newer_vgm', 32),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH 3Sec Cres Fltr', NULL, 'Battle! (Super-Ancient Pokémon)',
   'main', 'newer_vgm', 33),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH Rips L', NULL, 'Battle! (Super-Ancient Pokémon), Battle! (Primal Reversion)',
   'main', 'newer_vgm', 34),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, 'Introductions, Route 104, Route 119, Battle! (Brendan/May), Battle! (Gym Leader), Battle! (Steven), Battle! (Deoxys)',
   'main', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> Solo French Horn -> 5 Keysw', 'SFH KS Master', NULL, 'Team Magma Appears!',
   'main', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> Solo Trumpet 1 -> 5 Keysw', 'STP KS Master', NULL, 'Route 104, Ever Grande City, Leader''s Theme (Team Aqua/Team Magma)',
   'main', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> Solo Tuba -> 5 Keysw', 'STU KS Master', NULL, 'Trainers'' Eyes Meet! (Hex Maniac)',
   'main', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', 'All Cymbals', NULL, 'Battle! (Team Aqua/Team Magma Leaders), Littleroot Town, Sootopolis City, Petalburg City, Title Screen, Introductions, Petalburg Woods, Mt. Chimney, Sealed Chamber, Route 110, Introductions, Victory Road, Hall of Fame, Hideout, Fallarbor Town',
   'main', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', 'All Gongs', '28 Gong', 'Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Bass Drum Concert', NULL, 'Opening Movie 2',
   'main', 'newer_vgm', 41),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Bass Drum Wagner', 'unsure for Battle! (Super-Ancient Pokémon)', 'Title Screen, Battle! (Super-Ancient Pokémon)',
   'main', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Snare Ens Small', NULL, 'Title Screen, Introductions, Route 104, Route 119, Sea Mauville',
   'main', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', NULL, 'Battle! (Brendan/May)',
   'main', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', NULL, 'Cycling, Southern Island, Petalburg City',
   'main', 'newer_vgm', 45),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', NULL, 'Battle! (Deoxys), Battle! (Primal Reversion), Battle! (Super Ancient Pokemon), Ever Grande City, Hall of Fame, Sea Mauville',
   'main', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Sleigh Bells RR', NULL, 'Petalburg City',
   'main', 'newer_vgm', 47),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Various Metals', 'G1 (A1 at loop point)', 'Fallarbor Town',
   'main', 'newer_vgm', 48),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Steinway B', NULL, 'Oceanic Museum',
   'main', 'newer_vgm', 49),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Xylophone', NULL, 'Trainers'' Eyes Meet (Twins)',
   'main', 'newer_vgm', 50),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 9 Double Basses -> 5 Keysw', 'CBS KS Master', NULL, 'Fallarbor Town, Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 51),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Cellos -> 5 Keysw', 'VCS KS Master', NULL, 'Fallarbor Town, Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 52),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Violas -> 5 Keysw', 'VAS KS Master', NULL, 'Battle! (Brendan/May)',
   'main', 'newer_vgm', 53),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'Route 104, Route 119, Battle! (Brendan/May), Battle! (Gym Leader), Battle! (Steven), Battle! (Deoxys), Victory Road, Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 54),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', NULL, 'Southern Island, Route 120, Lilycove City, Sealed Chamber, Fallarbor Town, Dive',
   'main', 'newer_vgm', 55),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Large String Ens', '50 Piece Str Sec Sus', NULL, 'Petalburg City',
   'main', 'newer_vgm', 56),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Large String Ens', 'String Quarter QLeg RR', NULL, 'Fallarbor Town',
   'main', 'newer_vgm', 57),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Viola -> 5 Keysw', 'SVA KS Master', NULL, 'Fallarbor Town',
   'main', 'newer_vgm', 58),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 5 Keysw', 'SVL KS Master', NULL, 'Birch Pokémon Lab, Oceanic Museum, The Heirs to Eternity, Battle! (Lorekeeper Zinnia), Fallarbor Town',
   'main', 'newer_vgm', 59),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> 3 Clarinets -> 5 Keysw', '3CL KS Master', NULL, 'Dewford Town',
   'main', 'newer_vgm', 60),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> 3 Flutes -> 5 Keysw', '3FL KS Master', NULL, 'Victory! (Gym Leader/Elite Four)',
   'main', 'newer_vgm', 61),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Bassoon -> 5 Keysw', 'BSN KS Master', NULL, 'Title Screen',
   'main', 'newer_vgm', 62),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Clarinet -> 5 Keysw', 'SCL KS Master', NULL, 'Opening Movie 1',
   'main', 'newer_vgm', 63),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo English Horn -> 5 Keysw', 'ENH KS Master', NULL, 'Birch Pokemon Lab',
   'main', 'newer_vgm', 64),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Flute -> 5 Keysw', 'SFL KS Master', NULL, 'Opening Movie 1, Fallarbor Town',
   'main', 'newer_vgm', 65),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Oboe -> 5 Keysw', 'SOB KS Master', NULL, 'Sea Mauville',
   'main', 'newer_vgm', 66),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Piccolo Flute -> 5 Keysw', 'PFL KS Master', NULL, 'Opening Movie 1',
   'main', 'newer_vgm', 67),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'FXpansion' COLLATE NOCASE AND p.name = 'BFD2' COLLATE NOCASE),
   '-', 'BFD2 Default Startup Preset', NULL, 'per aspera ad astra!',
   'main', 'newer_vgm', 68),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-Rack' COLLATE NOCASE),
   'Programs -> Bank A', 'A020 House Kit', 'something else is used for the kick', 'Team Magma Appears!',
   'main', 'newer_vgm', 69),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-Rack' COLLATE NOCASE),
   'Programs -> Bank C', 'C105 Attack Brass ST', NULL, 'May',
   'main', 'newer_vgm', 70),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'Acoustic Piano', NULL, 'Lisia''s Theme',
   'main', 'newer_vgm', 71),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '11 Industrial Percussion', 'FX Percussion & Big Room', NULL, 'Cave of Origin, Route 104, Battle! (Super-Ancient Pokémon)',
   'main', 'newer_vgm', 72),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '11 Industrial Percussion', 'FX Percussion', NULL, 'Hurry Along',
   'main', 'newer_vgm', 73),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'Pianoteq 3' COLLATE NOCASE),
   'Grand C3', 'C3 Solo Recording', 'to do: test and specify presets', 'Opening Movie 1, Littleroot Town, Route 101, Battle! (Trainer), Ending, A Meteor Elegy, Those Who Inherit Eternity (Zinnia''s Theme), A Road Once Traveled, Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 74),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'Pianoteq 3' COLLATE NOCASE),
   'Grand C3', 'C3 Solo Rec Variant 1', NULL, 'Title Screen',
   'main', 'newer_vgm', 75),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'Pianoteq 3' COLLATE NOCASE),
   'Grand C3', 'C3 Solo Rec Variant 2', NULL, 'Rustboro City',
   'main', 'newer_vgm', 76),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'Pianoteq 3' COLLATE NOCASE),
   'Grand K1', 'K1 Close Mic', NULL, 'Trainer School',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'Pianoteq 3' COLLATE NOCASE),
   'Grand K1', 'K1 Solo Recording', NULL, 'Verdanturf Town, A Path We All Must Walk, Southern Island',
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Square Pad With Flange', NULL, 'Lisia''s Theme',
   'main', 'newer_vgm', 79),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '04 - Electronic Kits', 'Dance 2 Kit', 'HIHAT 2 used, CYMBAL 1 used as open hihat', 'Battle! (Deoxys), Battle! (Regirock/Regice/Registeel)',
   'main', 'newer_vgm', 80),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 1 - Horns', 'Sax Section', NULL, 'Mt. Chimney',
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 2 - Acoustic Pianos', 'Acoustic Piano', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 2 - Acoustic Pianos', 'Upright Piano', NULL, 'The Elite Four Appear!',
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 3 - Electric Pianos', 'Wurly EP', NULL, 'Rustboro City',
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 4 - Organs', 'Born to C3', NULL, 'Trainers'' Eyes Meet (Ace Trainer)',
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 4 - Organs', 'Jazz Basic', NULL, 'Sootopolis City',
   'main', 'newer_vgm', 86),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Akkord Guitar (All Chords)', NULL, 'Sootopolis City, Brendan, Petalburg City, Route 113, Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Elektrik Guitar', NULL, 'Lisia''s Theme',
   'main', 'newer_vgm', 88),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Solo Guitar', NULL, 'Battle! (Brendan/May)',
   'main', 'newer_vgm', 89),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Nylon Guitar', NULL, 'Mt. Pyre Exterior, AZOTH, Route 101, Littleroot Town, Petalburg City, Battle! (Zinnia)',
   'main', 'newer_vgm', 90),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Jazz Guitar', NULL, 'Mt. Pyre Exterior',
   'main', 'newer_vgm', 91),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Classic Bass', 'PB range increased for Primal Reversion', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 92),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Funk Bass', NULL, 'Brendan, Team Aqua Appears!',
   'main', 'newer_vgm', 93),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Jazz Upright', NULL, 'Wally''s Theme',
   'main', 'newer_vgm', 94),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Pop Bass', NULL, 'Hurry Along, Trainers'' Eyes Meet (Psychic), Room of Glory',
   'main', 'newer_vgm', 95),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Bling Bling Kit', 'Intro Cymbal - Also in Street Knowledge Kit', 'Rival''s Theme',
   'main', 'newer_vgm', 96),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Funk Kit', NULL, 'Mt. Chimney',
   'main', 'newer_vgm', 97),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Pop Kit', 'Increase level of Snare Drum(s) & Cymbals', 'Mt. Pyre Exterior, Petalburg City, Team Aqua Appears!, Trainers'' Eyes Meet (Psychic), Route 104',
   'main', 'newer_vgm', 98),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Rock Kit', NULL, 'Trainers'' Eyes Meet (Ace Trainer), Ever Grande City',
   'main', 'newer_vgm', 99),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Studio Break Kit', NULL, 'Battle! (Steven), Rival''s Theme',
   'main', 'newer_vgm', 100),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Violin Ensemble', NULL, 'Battle! (Steven)',
   'main', 'newer_vgm', 101),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trumpet Ensemble', NULL, 'Battle! (Brendan/May)',
   'main', 'newer_vgm', 102),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trombone Ensemble', NULL, 'Battle! (Brendan/May)',
   'main', 'newer_vgm', 103),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Xylophone', NULL, 'Trainers'' Eyes Meet (Tuber♀), The Elite Four Appear!',
   'main', 'newer_vgm', 104),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 5 - Orchestral Percussion', 'Timpani Hits', 'reverb off', 'Mt. Pyre Exterior',
   'main', 'newer_vgm', 105),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 3 - Synth Bass', '700 Dirt Bass', NULL, 'The Elite Four Appear!',
   'main', 'newer_vgm', 106),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Urban Beats -> 1 - Performances', '079 - Clearly Now', 'Kick and Clap', 'Lisia''s Theme',
   'main', 'newer_vgm', 107),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Urban Beats -> 6 - Cymbals', 'Cymbals 1', 'A#1', 'Five Furious Strikes!',
   'main', 'newer_vgm', 108),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 1 - Flutes', 'Bansuri', NULL, 'Petalburg City',
   'main', 'newer_vgm', 109),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 2 - Recorders', 'Piccolo Recorder', NULL, 'Hurry Along!',
   'main', 'newer_vgm', 110),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 5 - Accordions', 'Melodeon', NULL, 'The Heirs To Eternity',
   'main', 'newer_vgm', 111),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 7 - Metallophones', 'Kalimba', NULL, 'Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 112),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 7 - Metallophones', 'Music Box', NULL, 'The End',
   'main', 'newer_vgm', 113),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'Symphobia 2' COLLATE NOCASE),
   '4 Dystopia', 'Stinger Drones and Risers', 'G#4', 'The Super-Ancient Pokemon Awaken!',
   'main', 'newer_vgm', 114),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Anapluck Bellz', NULL, 'Victory! (Team Aqua/Team Magma)',
   'main', 'newer_vgm', 115),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Classic Super Bells', NULL, 'Fallarbor Town',
   'main', 'newer_vgm', 116),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Fizz Bells', 'highpassed a little', 'Trainers'' Eyes Meet (Twins)',
   'main', 'newer_vgm', 117),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Giant Bellz', NULL, 'Room of Glory',
   'main', 'newer_vgm', 118),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Squaretable Bells', NULL, 'Cave of Origin',
   'main', 'newer_vgm', 119),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Pads + Strings', 'Majestic Air Swell', 'highpassed', 'Southern Island',
   'main', 'newer_vgm', 120),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Mono', 'Complex Worm Lead', NULL, 'Battle! (Gym Leader), Drought',
   'main', 'newer_vgm', 121),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Mono', 'Electrotalker', NULL, 'Trainers'' Eyes Meet (Hex Maniac)',
   'main', 'newer_vgm', 122),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Mono', 'Unisonic Lead', NULL, 'Battle! (Gym Leader), Battle! (Team Aqua/Team Magma Leaders) Battle! (Steven)',
   'main', 'newer_vgm', 123),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Short', 'Percussion Squares', NULL, 'Route 111',
   'main', 'newer_vgm', 124),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Cubist Rhythms', NULL, 'Hideout',
   'main', 'newer_vgm', 125),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Deluded Orbit', NULL, 'Oceanic Museum',
   'main', 'newer_vgm', 126),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Skipping Across the Radio', NULL, 'Trainers'' Eyes Meet (Hex Maniac)',
   'main', 'newer_vgm', 127),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Carlos Bellsaws', NULL, 'Ever Grande City',
   'main', 'newer_vgm', 128),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Church Bells', NULL, 'Mt. Pyre',
   'main', 'newer_vgm', 129),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Wendy''s Bells', NULL, 'Wally''s Theme',
   'main', 'newer_vgm', 130),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Ethnic World', 'Electric Sitar a', NULL, 'Trainers'' Eyes Meet (Scuba Diver)',
   'main', 'newer_vgm', 131),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Guitars', 'Glorious Guitars', NULL, 'Soaring Illusions',
   'main', 'newer_vgm', 132),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Dream Glockpiano', NULL, 'Team Aqua Appears!',
   'main', 'newer_vgm', 133),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Organs', 'Cheap White Gospel Organ', 'Turn off Thriftshop under FX -> Common', 'Dive',
   'main', 'newer_vgm', 134),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Organs', 'Smoked Hammond Perc', 'Lowered velocities so the tone is different', 'Hideout',
   'main', 'newer_vgm', 135),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Oberheim Butter', 'low velocity so high octave doesnt come in', 'Mt. Pyre',
   'main', 'newer_vgm', 136),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Platinum Sky', NULL, 'Drought',
   'main', 'newer_vgm', 137),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Analog Knocker Bass', NULL, 'Trainers'' Eyes Meet (Hex Maniac)',
   'main', 'newer_vgm', 138),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Analog Seq - Big ‘n Tight', NULL, 'Trick House, Reached a New Contest Rank!',
   'main', 'newer_vgm', 139),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Angry Multi Oscillating Bass', NULL, 'Battle! (Super-Ancient Pokémon)',
   'main', 'newer_vgm', 140),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Badd Booty Bass', NULL, 'Battle! (Team Aqua/Team Magma Leaders)',
   'main', 'newer_vgm', 141),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Bass in the Microwave', NULL, 'Heavy Rain',
   'main', 'newer_vgm', 142),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Classy Clickin Bass', 'solo legato off and glide off', 'Trainers'' eyes Meet (Twins)',
   'main', 'newer_vgm', 143),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Cool Clubbing Bass', NULL, 'Battle! (Brendan/May), Dive',
   'main', 'newer_vgm', 144),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Digi Waveshaper Bass 1', 'use modwheel for higher notes', 'Petalburg Woods',
   'main', 'newer_vgm', 145),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Elektrophonik Bass', NULL, 'Drought',
   'main', 'newer_vgm', 146),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Totally Destructive Bass', 'Gradually raise modwheel near loop end', 'Battle! (Primal Reversion)',
   'main', 'newer_vgm', 147),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Authentic Triangle Lead', NULL, 'Petalburg Woods',
   'main', 'newer_vgm', 148),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Chocolate Trance Lead', 'glide off + add delay + add autopan', 'Battle! (Champion)',
   'main', 'newer_vgm', 149),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Electro Reduction', 'very slightly highpassed', 'Heavy Rain',
   'main', 'newer_vgm', 150),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Fuzzilla Lead', 'layered throughout with KFL Classic Bass', 'Battle! (Steven)',
   'main', 'newer_vgm', 151),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Gotham at Dusk', 'full velocity', 'Battle! (Team Aqua / Team Magma Leaders)',
   'main', 'newer_vgm', 152),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Grinder Lead', 'Add reverb', 'Trainers'' Eyes Meet (Psychic), Trainers'' Eyes Meet (Hex Maniac), Hideout',
   'main', 'newer_vgm', 153),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Happy Gaga Lead', NULL, 'Ever Grande City',
   'main', 'newer_vgm', 154),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'ParaLeader Dry', NULL, 'Brendan',
   'main', 'newer_vgm', 155),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Soaring Edge Lead', NULL, 'Surf, Trainers'' Eyes Meet (Hex Maniac)',
   'main', 'newer_vgm', 156),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Square Blippies', NULL, 'Heavy Rain',
   'main', 'newer_vgm', 157),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Stanky Lead', NULL, 'Route 111',
   'main', 'newer_vgm', 158),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Unison Detuner Lead', 'Layered with Stanky Lead but very quiet', 'Route 111',
   'main', 'newer_vgm', 159),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Vintage Squares Lead Unison', NULL, 'Route 113',
   'main', 'newer_vgm', 160),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Pluck', 'Simple Stereo Square', NULL, 'Battle! (Steven)',
   'main', 'newer_vgm', 161),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'American Obesity', NULL, 'Reached a New Contest Rank!',
   'main', 'newer_vgm', 162),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Big Ol'' Oberheim Swell', 'plays upward gliss in intro', 'Battle! (Steven)',
   'main', 'newer_vgm', 163),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Chromatrem', NULL, 'Mt. Pyre Exterior, Route 111',
   'main', 'newer_vgm', 164),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Compressed Supersawz', NULL, 'Battle! (Team Aqua/Team Magma Leaders)',
   'main', 'newer_vgm', 165),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Flaming Supersaws', NULL, 'Rival''s Theme',
   'main', 'newer_vgm', 166),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Jupiter Simple Phase', NULL, 'Mt. Pyre Exterior',
   'main', 'newer_vgm', 167),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'OB-8 PWM Swelleads', NULL, 'Mt. Pyre Exterior',
   'main', 'newer_vgm', 168),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Short', 'Cllcky Cool JP Organ', 'Add reverb', 'Team Aqua Appears!',
   'main', 'newer_vgm', 169),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Trons and Optical', 'Optigan Marimba', NULL, 'Poké Mart',
   'main', 'newer_vgm', 170),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 78-Slithery', '78-Slithery a', NULL, 'Dive',
   'main', 'newer_vgm', 171),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 93-Jamma Gyro', '93-Jamma Gyro c', NULL, 'The Heirs to Eternity',
   'main', 'newer_vgm', 172),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 97-Genghis Khan', '97-Genghis Khan a', NULL, 'Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 173),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 127-Trixie', '127-Trixie a', 'for the snare', 'Dewford Town, Sootopolis City',
   'main', 'newer_vgm', 174),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 114-Housebreak', '114-Housebreak c', NULL, 'Dive',
   'main', 'newer_vgm', 175),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Bongos', '141-Bongos', NULL, 'Safari Zone',
   'main', 'newer_vgm', 176),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '67-Congas', NULL, 'Sea Mauville',
   'main', 'newer_vgm', 177),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '80-Congas 1', NULL, 'The Heirs to Eternity',
   'main', 'newer_vgm', 178),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '80-Congas 2', NULL, 'Route 111',
   'main', 'newer_vgm', 179),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Cowbells', '93-Agogos', NULL, 'Safari Zone, Battle Resort',
   'main', 'newer_vgm', 180),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Djembes', '076-Djembe', NULL, 'Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 181),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Djembes', '120-Djembe 2', NULL, 'Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 182),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Tambourines', '86-Tambourine', NULL, 'Lisia''s Theme',
   'main', 'newer_vgm', 183),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 51-Scuba Duba', '51-Scuba Duba LoFi', NULL, 'Heavy Rain',
   'main', 'newer_vgm', 184),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 54-Eclipse', '54-Eclipse Atoms', NULL, 'Hideout',
   'main', 'newer_vgm', 185),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 58-Motion Century', '58-Motion Century Noise Bounce', NULL, 'Trainers'' Eyes Meet (Elite Four)',
   'main', 'newer_vgm', 186),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 60-Two Speeder', '60-Two Speeder LoFi', NULL, 'Mt. Pyre',
   'main', 'newer_vgm', 187),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 60-Volcano', '60-Volcano Combo', NULL, 'The Slitherers',
   'main', 'newer_vgm', 188),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 60-Volcano', '60-Volcano Eruption mix', 'pitch +1 and custom loop', 'Room of Glory',
   'main', 'newer_vgm', 189),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 64-Foggy Skyline', '64-Foggy Skyline Combo', 'Custom loop', 'Battle! (Team Aqua/Team Magma Leaders)',
   'main', 'newer_vgm', 190),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 68-Small Blocks', '68-Small Blocks Combo', NULL, 'Trainers'' Eyes Meet (Diver)',
   'main', 'newer_vgm', 191),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 68-Tower Zero', '68-Tower Zero Combo', NULL, 'Explosive Encounters! Red and Blue',
   'main', 'newer_vgm', 192),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 68-Tower Zero', '68-Tower Zero Simple Drums', NULL, 'Oceanic Museum',
   'main', 'newer_vgm', 193),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 72-Half Moon', '72-Half Moon Combo', NULL, 'Route 113',
   'main', 'newer_vgm', 194),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 72-Liquid Frame', '72-Liquid Frame Puddles', NULL, 'Petalburg Woods',
   'main', 'newer_vgm', 195),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 73-Caravan', '73-Caravan Combo', NULL, 'Trick House',
   'main', 'newer_vgm', 196),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 73-Caravan', '73-Caravan Perc', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 197),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Bossa Love', '79-BossaLuv Electro NoKik', NULL, 'Wally''s Theme, Cycling',
   'main', 'newer_vgm', 198),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 80-Space Ranger', '80-Space Ranger HiHat Bend', NULL, 'Soaring Illusions',
   'main', 'newer_vgm', 199),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 84-Particles', '84-Particles Combo', NULL, 'Countdown to Destruction',
   'main', 'newer_vgm', 200),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Variable Axis', '90-Variable Axis Combo', NULL, 'Trainers'' Eyes Meet (Diver)',
   'main', 'newer_vgm', 201),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 95-Raw Meat', '95-Raw Meat', NULL, 'Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 202),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 97-Wax Wash', '97-Wax Wash No Kick', NULL, 'Battle! (Steven)',
   'main', 'newer_vgm', 203),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 97-Wax Wash', '97-Wax Wash Vinyl Perc', NULL, 'Trick House',
   'main', 'newer_vgm', 204),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 101-Poison', '101-Poison Combo a', NULL, 'Lisia''s Theme',
   'main', 'newer_vgm', 205),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 114-Spazoo', '114-Spazoo Combo', NULL, 'Trainers'' Eyes Meet (Diver)',
   'main', 'newer_vgm', 206),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 115-Optoman', '115-Optoman Perc Mix', 'Time Designer -> 3/4', 'Surf',
   'main', 'newer_vgm', 207),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 120-Notre Dame', '120-Notre Dame Beat Mix', NULL, 'H-Help Me!',
   'main', 'newer_vgm', 208),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 126-Transonica', '126-Transonica Combo', NULL, 'Contest Theme (all variants)',
   'main', 'newer_vgm', 209),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 126-Transonica', '126-Transonica NoKick', NULL, 'Crossing the Sea',
   'main', 'newer_vgm', 210),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 133-Fritz', '133-Fritz Beat No Snare', NULL, 'Battle! (Brendan/May)',
   'main', 'newer_vgm', 211),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Rue The Day', '135-Rue the Day Snare', 'also in MENU - Snares Noisy (C#4)', 'Battle! (Wild Pokémon), Battle! (Team Aqua/Magma), Battle! (Deoxys), Explosive Encounters! Red and Blue',
   'main', 'newer_vgm', 212),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Iron Boy', '135-Iron Boy No Kick Mix 2', NULL, 'Battle! (Team Aqua/Magma)',
   'main', 'newer_vgm', 213),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 140-Atomic ZOO', '140-Atomic ZOO Break 2', NULL, 'Team Aqua Appears!',
   'main', 'newer_vgm', 214),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 144-Electric Flower', '144-Electric Flower Kick', 'also in MENU - Kicks Deep 1 (G#3)', 'Battle! (Trainer Battle), Battle! (Wild Pokémon), Battle! (Team Aqua/Magma), Battle! (Deoxys), Battle Resort, Safari Zone, Battle! (Lorekeeper Zinnia), Explosive Encounters! Red and Blue, Trainers'' Eyes Meet (Triathlete), The Heirs to Eternity',
   'main', 'newer_vgm', 215),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 160-Find The Exit', '160-Find The Exit Combo', NULL, 'Battle! (Super Ancient Pokemon)',
   'main', 'newer_vgm', 216),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 160-The Call', '160-The Call Combo', NULL, 'Five Furious Strikes!',
   'main', 'newer_vgm', 217),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus -> Cinematic', 'MENU - Big Boomers', 'C#3', 'Battle! (Primal Reversion)',
   'main', 'newer_vgm', 218),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus -> Cymbals', 'MENU - All Cymbals - Hi-Fi', NULL, 'Battle! (Wild Pokémon), Battle! (Team Aqua/Magma), Crossing the Sea, Trainers'' Eyes Meet (Street Thug), Trainers'' Eyes Meet (Poké Fan), Five Furious Strikes!, Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 219),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus -> Hi-Hats', 'MENU - Hi-Hats 808 - 909', NULL, 'Dewford Town, Crossing the Sea, Super Secret Base, Contest Theme (all variations)',
   'main', 'newer_vgm', 220),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus -> Hi-Hats', 'MENU - Hi-Hats Chunky', NULL, 'Sootopolis City',
   'main', 'newer_vgm', 221),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus -> Percussion', 'MENU - Congas', NULL, 'Trainers'' eyes Meet (Twins)',
   'main', 'newer_vgm', 222),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Acoustic Upright', 'Trilian Ac 1 - Full Range All', NULL, 'Route 101, Littleroot Town, Rustboro City, Sootopolis City, The Heirs to Eternity',
   'main', 'newer_vgm', 223),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Clean Fender - Full Range All', 'Check: Some of these may be Studio Bass', 'Battle! (Wild Pokémon), Battle! (Trainer Battle), Battle! (Team Aqua/Magma), Battle Resort, Verdanturf Town, Route 110, Dewford Town, Safari Zone, Soaring Dreams, Contest Lobby',
   'main', 'newer_vgm', 224),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Retro 60''s - Full Range All', NULL, 'Slateport City',
   'main', 'newer_vgm', 225),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Studio Bass All - Full Range', NULL, 'Trainers'' Eyes Meet (Triathlete)',
   'main', 'newer_vgm', 226),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Muted', 'Chapman Stick - Full Range All', NULL, 'Battle! (Zinnia), Victory! (Trainer Battle)',
   'main', 'newer_vgm', 227),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Slapped', 'Hardcore Funk - Full Range All', NULL, 'Champion Steven',
   'main', 'newer_vgm', 228),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Slapped', 'Hardcore Slap - Full Range All', NULL, 'Battle! (Regirock/Regice/Registeel), Champion Steven',
   'main', 'newer_vgm', 229),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Bang Street', NULL, 'Crossing the Sea, Explosive Encounters! Red & Blue, Contest Lobby, Pokémon Contest Spectacular Introductions!, Pokémon Contest Spectacular: Appeals!',
   'main', 'newer_vgm', 230),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Hotcore', NULL, 'Trainers'' Eyes Meet (Street Thug)',
   'main', 'newer_vgm', 231),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Mono', 'Armageddon Tetra', 'See note', 'Battle! (Champion)',
   'main', 'newer_vgm', 232),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Mono', 'Serrated Edge', 'edit glide + turn off legato', 'Battle! (Brendan/May)',
   'main', 'newer_vgm', 233),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilogy' COLLATE NOCASE),
   'Synth Bass', 'TR-Buzz Breath', NULL, 'The Slitherers',
   'main', 'newer_vgm', 234),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Caliop Ld', NULL, 'Victory! (Trainer Battle)',
   'main', 'newer_vgm', 235),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Flute', NULL, 'Trainers'' Eyes Meet (Lass), Trainers'' Eyes Meet (Tuber♀)',
   'main', 'newer_vgm', 236),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Rev Cymbal', NULL, 'Battle! (Wild Pokémon), Battle! (Team Aqua/Magma), Five Furious Strikes!, Battle! (Deoxys)',
   'main', 'newer_vgm', 237),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Rock Piano', NULL, 'Petalburg Woods',
   'main', 'newer_vgm', 238),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Saw Ld', NULL, 'Battle! (Trainer Battle), Slateport City, Contest Themes',
   'main', 'newer_vgm', 239),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'SimpleSlap', NULL, 'Trainers'' Eyes Meet (Youngster)',
   'main', 'newer_vgm', 240),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Square Ld', NULL, 'Battle! (Trainer Battle), Crossing the Sea, Victory Road, Battle! (Elite Four), Battle! (Deoxys), Contest Themes, Route 120',
   'main', 'newer_vgm', 241),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'SynthBass1', NULL, 'Battle! (Elite Four), Sky Pillar',
   'main', 'newer_vgm', 242),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Timpani+Cym', NULL, 'Battle! (Trainer Battle), Battle (Team Aqua/Magma), Leader''s Theme (Team Aqua/Team Magma), Battle! (Elite Four), Battle! (Wild Pokémon), etc.',
   'main', 'newer_vgm', 243),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Trumpet', NULL, 'Trainers'' Eyes Meet (Youngster)',
   'main', 'newer_vgm', 244),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Tuba', NULL, 'Trainers'' Eyes Meet (Hiker)',
   'main', 'newer_vgm', 245),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Fooling', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 246),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '5th Avenue', 'About ~50 velocity. Turn down Delay Mix', 'H-Help Me!',
   'main', 'newer_vgm', 247),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '8o8 Studio Kit', NULL, 'Super Secret Base',
   'main', 'newer_vgm', 248),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bright Mini Lead', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 249),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Gaga Saw', NULL, 'Battle! (Trainer Battle), Battle! (Wild Pokémon), Battle! (Team Aqua/Magma), Battle! (Regirock/Regice/Registeel)',
   'main', 'newer_vgm', 250),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Simple Square Solo', NULL, 'Contest Theme (all variants), Safari Zone',
   'main', 'newer_vgm', 251),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Tango Accordion 2', NULL, 'Sootopolis City',
   'main', 'newer_vgm', 252),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Tango Accordion 3', NULL, 'Petalburg City',
   'main', 'newer_vgm', 253),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Click Bass', NULL, 'Sky Pillar',
   'main', 'newer_vgm', 254),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Dark Precision', NULL, 'Route 104',
   'main', 'newer_vgm', 255),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Finest Lead', NULL, 'Interviewers',
   'main', 'newer_vgm', 256),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Fretless Bass VX', 'layered with a synth bass', 'Route 111',
   'main', 'newer_vgm', 257),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Short Syn Brass', 'panned right', 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 258),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'T9 Analog Kit', NULL, 'Battle! (Team Aqua/Magma Leaders)',
   'main', 'newer_vgm', 259),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'YAMAHA S90ES Piano', NULL, 'Fallarbor Town, Birch Pokemon Lab, Pokémon Center',
   'main', 'newer_vgm', 260),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 001] Acoustic Grand Piano', NULL, 'Trainers'' Eyes Meet (Lass)',
   'main', 'newer_vgm', 261),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 002] Bright Acoustic Piano', 'Add delay', 'Lisia''s Theme',
   'main', 'newer_vgm', 262),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 003] Electric Grand Piano', 'panned left during intro', 'Trainers'' Eyes Meet (Hiker)',
   'main', 'newer_vgm', 263),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 005] Electric Piano 1', NULL, 'Wally''s Theme',
   'main', 'newer_vgm', 264),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 006] Electric Piano 2', 'quiet and panned left', 'Route 101',
   'main', 'newer_vgm', 265),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 009] Celesta', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 266),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 012] Vibraphone', NULL, 'Trainers'' Eyes Meet (Lass)',
   'main', 'newer_vgm', 267),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 014] Xylophone', NULL, 'H-Help Me!',
   'main', 'newer_vgm', 268),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 015] Tubular Bells', NULL, 'Slateport City',
   'main', 'newer_vgm', 269),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 025] Nylon Guitar', 'add reverb', 'Trainers'' Eyes Meet (Twins)',
   'main', 'newer_vgm', 270),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 036] Fretless Bass', NULL, 'Trainers'' Eyes Meet (Lass)',
   'main', 'newer_vgm', 271),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 039] Synth Bass 1', NULL, 'Mt. Pyre Exterior',
   'main', 'newer_vgm', 272),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 040] Synth Bass 2', NULL, 'Opening Movie 2, H-Help Me!',
   'main', 'newer_vgm', 273),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 046] Pizzicato Strings', NULL, 'Birch Pokémon Lab',
   'main', 'newer_vgm', 274),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', NULL, 'Route 104, Trainers'' Eyes Meet (Hiker), Team Magma Appears!, Mt. Chimney, Battle! (Steven), The Elite Four Appear!',
   'main', 'newer_vgm', 275),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Trainers'' Eyes Meet (Lass), Pokémon Center',
   'main', 'newer_vgm', 276),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 061] French Horn', NULL, 'H-Help Me!, Trainers'' Eyes Meet (Hiker)',
   'main', 'newer_vgm', 277),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 062] Brass Section', NULL, 'May, Interviewers',
   'main', 'newer_vgm', 278),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 081] Lead 1 (Square)', NULL, 'Team Aqua Appears!, Team Magma Appears!, H-Help Me!',
   'main', 'newer_vgm', 279),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 084] Lead 4 (Chiff)', 'Turn down Delay Mix', 'Trainers'' Eyes Meet (Psychic)',
   'main', 'newer_vgm', 280),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 120] Reverse Cymbal', NULL, 'Battle! (Steven), Battle! (Lorekeeper Zinnia)?',
   'main', 'newer_vgm', 281),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 129] Stereo GM Kit', NULL, 'Littleroot Town, H-Help Me!, Route 101, Trainers'' Eyes Meet (Youngster), Victory! (Trainer), Dewford Town, Interviewers',
   'main', 'newer_vgm', 282),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Ambient Tonewheel Organ', 'Turn down Delay Mix', 'Brendan',
   'main', 'newer_vgm', 283),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Soft Vibrato Flute NoteExp', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 284),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Classic Rock Drawbars', NULL, 'Poké Mart, Slateport City',
   'main', 'newer_vgm', 285),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Highpass Sweep Lead', NULL, 'Battle! (Deoxys)',
   'main', 'newer_vgm', 286),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Lead Bites', 'phaser added for mt pyre', 'Poké Mart, Mt. Pyre Exterior',
   'main', 'newer_vgm', 287),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Mondo Lead', NULL, 'Pokémon Contest Spectacular: Appeals!',
   'main', 'newer_vgm', 288),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Natural Nylon NoteExp', 'add delay', 'Mt. Pyre',
   'main', 'newer_vgm', 289),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Precision Roundwound', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 290),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '01-Piano', '05-Electric Piano 1', NULL, 'The Slitherers',
   'main', 'newer_vgm', 291),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '15-Percussive', '120-Reverse Cymbal', 'E3 note', 'Explosive Encounters! Red and Blue',
   'main', 'newer_vgm', 292),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '26 Strings violins+violins-8va', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 293),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '21S Strings violins', NULL, 'Littleroot Town, Oldale Town, Dewford Town, Verdanturf Town, Lilycove City',
   'main', 'newer_vgm', 294),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '22S Strings violas', NULL, 'Lilycove City',
   'main', 'newer_vgm', 295),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '23S Strings cellos', NULL, 'Verdanturf Town',
   'main', 'newer_vgm', 296),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '24S Strings basses', NULL, 'Oldale Town, Verdanturf Town, Lilycove City',
   'main', 'newer_vgm', 297),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '29S Strings all', NULL, 'Sootopolis City',
   'main', 'newer_vgm', 298),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 05 Harp', '41S Harp', NULL, 'Crossing the Sea, Dewford Town',
   'main', 'newer_vgm', 299),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 11 Flutes', '01S Piccolo', NULL, 'Littleroot Town, Oldale Town, Verdanturf Town, Lilycove City, Dewford Town',
   'main', 'newer_vgm', 300),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 11 Flutes', '02S Flute 1', NULL, 'Littleroot Town, Oldale Town, Route 101, Verdanturf Town, Lilycove City, The Slitherers, Dewford Town',
   'main', 'newer_vgm', 301),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 11 Flutes', '06S Piccolo + flute 1 - 8va', NULL, 'Route 123, Crossing the Sea',
   'main', 'newer_vgm', 302),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 12 Oboes', '11S Oboe French', NULL, 'Littleroot Town, Oldale Town, Route 101, Verdanturf Town, Lilycove City',
   'main', 'newer_vgm', 303),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 14 Bassoons', '31 Bassoon', NULL, 'Route 101',
   'main', 'newer_vgm', 304),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 14 Bassoons', '32 Contra bassoon', NULL, 'Dewford Town',
   'main', 'newer_vgm', 305),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 21 Horns', '03S Horn ensemble - a4', NULL, 'Littleroot Town, Oldale Town, Lilycove City, Battle! (Team Aqua/Magma)',
   'main', 'newer_vgm', 306),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '14S Trumpet ensemble', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer Battle)',
   'main', 'newer_vgm', 307),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 23 Trombones', '25S Trombone ensemble', NULL, 'Battle! (Trainer Battle)',
   'main', 'newer_vgm', 308),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 24 Tubas', '31S Tuba', NULL, 'Victory! (Wild Pokemon)',
   'main', 'newer_vgm', 309),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '05S Glockenspiel', NULL, 'Littleroot Town, Route 101, Route 110, Lilycove City, Sootopolis City, Dewford Town, Verdanturf Town',
   'main', 'newer_vgm', 310),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '06S Xylophone', NULL, 'Route 101',
   'main', 'newer_vgm', 311),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '07S Vibraphone', NULL, 'Slateport City, The Slitherers',
   'main', 'newer_vgm', 312),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '08S Marimbaphone', NULL, 'Sootopolis City, Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 313),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '11S Timpani', NULL, 'Battle! (Wild Pokemon), Battle! (Team Aqua/Magma), Battle! (Lorekeeper Zinnia)',
   'main', 'newer_vgm', 314),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '14S Percussion', NULL, 'Lilycove City, Littleroot Town',
   'main', 'newer_vgm', 315),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '15S Tubular Bells', NULL, 'Slateport City, Route 110',
   'main', 'newer_vgm', 316),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 02 Chamber strings', '11S Chamber violins', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer Battle)',
   'main', 'newer_vgm', 317),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 12 Oboes', '13S Oboe D''Amore', NULL, 'Dewford Town',
   'main', 'newer_vgm', 318),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 13 Clarinets', '21S Clarinet Eb', NULL, 'Lilycove City',
   'main', 'newer_vgm', 319),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 13 Clarinets', '24S Basset horn', NULL, 'Victory! (Wild Pokemon)',
   'main', 'newer_vgm', 320),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 21 Horns', '04S Horn Ensemble - a8', NULL, 'Battle! (Team Aqua/Magma)',
   'main', 'newer_vgm', 321),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Stratocaster Amped', NULL, 'Battle! (Zinnia)',
   'main', 'newer_vgm', 322),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Wallander Instruments' COLLATE NOCASE AND p.name = 'Woodwinds & Saxophones' COLLATE NOCASE),
   'Woodwinds', 'Bb Clarinet 2', 'Edited room and vibrato settings', 'Fortree City',
   'main', 'newer_vgm', 323),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', NULL, 'Slateport City, Battle! (Elite Four), Champion Steven, Trainers'' Eyes Meet (Street Thug)',
   'main', 'newer_vgm', 324),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Rock', '90s Rock', NULL, 'Battle! (Trainer Battle), Battle! (Wild Pokémon), Trainers'' Eyes Meet (Triathlete)',
   'main', 'newer_vgm', 325),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   'Groove Loops -> Guitars 095-BPM', 'Tomahawk', NULL, 'Mt. Chimney',
   'main', 'newer_vgm', 326),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   'Groove Loops -> Guitars 110-BPM', 'Tonkin-A', NULL, 'Route 111',
   'main', 'newer_vgm', 327),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   'Groove Loops -> Guitars 110-BPM', 'World Wah-A#', NULL, 'Mt. Chimney',
   'main', 'newer_vgm', 328),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total House' COLLATE NOCASE),
   'Groove Loops -> Guitar Loops 125-BPM', 'Wee Wah-E', 'requires pitching', 'Trainers'' Eyes Meet (Ace Trainer)',
   'main', 'newer_vgm', 329),

  -- Stuff to Find (rows 1820-1872) -> stuff_to_find
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Clavia' COLLATE NOCASE AND p.name = 'Nord Electro 2' COLLATE NOCASE),
   NULL, NULL, 'organ', 'Per Aspera Ad Astra',
   'stuff_to_find', 'newer_vgm', 330),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Clavia' COLLATE NOCASE AND p.name = 'Nord Rack' COLLATE NOCASE),
   NULL, 'synths + noise fx for primal reversion', 'could also be KORG Radias', 'May, Team Magma Appears! Battle! (Primal Reversion), Battle! (Team Aqua/Team Magma Leaders), Battle! (Battle Chatelaine)',
   'stuff_to_find', 'newer_vgm', 331),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '20-Church Organ', 'disputed', 'Battle! (Deoxys), Battle! (Regirock/Regice/Registeel), Sky Pillar',
   'stuff_to_find', 'newer_vgm', 332),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'EXB-PCM04 Dance Extreme' COLLATE NOCASE),
   '-', '024 Vogue Bass', 'synth bass maybe', 'Team Magma Appears!',
   'stuff_to_find', 'newer_vgm', 333),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'RADIAS' COLLATE NOCASE),
   NULL, NULL, 'drums maybe', 'May, Battle! (Battle Chatelaine)',
   'stuff_to_find', 'newer_vgm', 334),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'Electric Keys' COLLATE NOCASE),
   NULL, NULL, 'see note', 'Battle! (Team Aqua/Team Magma), Battle Resort, Battle! (Regirock/Regice/Registeel), Battle! (Deoxys)',
   'stuff_to_find', 'newer_vgm', 335),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'Electric Keys' COLLATE NOCASE),
   NULL, NULL, 'organ', 'Rustboro City',
   'stuff_to_find', 'newer_vgm', 336),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealLPC' COLLATE NOCASE),
   '-', 'RealLPC', 'for the main rhythm playing', 'Battle! (Brendan/May)',
   'stuff_to_find', 'newer_vgm', 337),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 5 - Orchestral Percussion', 'Chimes', 'Unsure', 'Littleroot Town, Fallarbor Town, Ever Grande City',
   'stuff_to_find', 'newer_vgm', 338),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Synth Lead', 'Complete Fck', 'maybe? turn DimExp down, prob other editing', 'Team Magma Appears!',
   'stuff_to_find', 'newer_vgm', 339),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Prominy' COLLATE NOCASE AND p.name = 'SC Electric Guitar' COLLATE NOCASE),
   'Multis', 'bmn_SPM_001', 'most likely live instead', 'Trainers'' Eyes Meet (Triathlete)',
   'stuff_to_find', 'newer_vgm', 340),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '017 017 60''s Organ 2', 'sound way closer than halion imo', 'May',
   'stuff_to_find', 'newer_vgm', 341),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Omniboard Bells', 'Synth pluck thing', 'Battle! (Team Aqua/Magma Leaders)',
   'stuff_to_find', 'newer_vgm', 342),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Glockendream', '1/8T delay and reverb added', 'Dive',
   'stuff_to_find', 'newer_vgm', 343),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Organs', 'Cheesy Toy Surf Organ', NULL, 'Hurry Along',
   'stuff_to_find', 'newer_vgm', 344),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Retro Land', 'Triangular Recorder', NULL, 'Trainers'' eyes Meet (Twins)',
   'stuff_to_find', 'newer_vgm', 345),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Reloaded Bass', 'layers trumpets at 0:00-0:03', 'Battle! (Brendan/May)',
   'stuff_to_find', 'newer_vgm', 346),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', '? (see note)', NULL, 'Trainers'' eyes Meet (Twins)',
   'stuff_to_find', 'newer_vgm', 347),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Mid-Range Killer', 'Turn off Layer A', 'Battle! (Team Aqua/Team Magma Leaders), The Elite Four Appear!',
   'stuff_to_find', 'newer_vgm', 348),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', NULL, NULL, 'Dive',
   'stuff_to_find', 'newer_vgm', 349),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass (Sound Source)', 'ARP 2600 Sawtooth', NULL, 'Battle! (Trainer Battle), Battle! (Team Aqua/Magma), Battle! (Elite Four), Battle! (Deoxys)',
   'stuff_to_find', 'newer_vgm', 350),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> Congas', '?', NULL, 'Mt. Pyre Exterior',
   'stuff_to_find', 'newer_vgm', 351),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus -> SOUND MENUS - Snares', 'MENU - Snares Drum Machines', 'multiple 808 and analog snare elements', 'Crossing the Sea',
   'stuff_to_find', 'newer_vgm', 352),

  -- Row 1843: Spectrasonics with unknown product -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'various synth basses (raw source: Spectrasonics, ?)', 'Route 111, Ever Grande City',
   'stuff_to_find', 'newer_vgm', 353),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'P-Bass RW Pick Studio', 'Mute Pos 1 keyswitch', 'Petalburg City',
   'stuff_to_find', 'newer_vgm', 354),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Jazz Perc', 'may be something else', 'Champion Steven',
   'stuff_to_find', 'newer_vgm', 355),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', NULL, 'slap', 'Interviewers',
   'stuff_to_find', 'newer_vgm', 356),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 115] Steel Drums', NULL, 'TRICK MASTER ~Karaku-REMIX!~',
   'stuff_to_find', 'newer_vgm', 357),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 135] Tekno Kit', 'C#2', 'Sootopolis City',
   'stuff_to_find', 'newer_vgm', 358),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Rock Standard Kit 2', 'maybe', 'Battle! (Brendan/May)',
   'stuff_to_find', 'newer_vgm', 359),

  -- Row 1850: Steinberg HALion Sonic SE, ? path -> path NULL, manufacturer/product known
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   NULL, NULL, 'electric bass (could be kfl) and organ', 'Lisia''s Theme',
   'stuff_to_find', 'newer_vgm', 360),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Draw Organ', 'layer', 'Slateport City',
   'stuff_to_find', 'newer_vgm', 361),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Tuba', NULL, 'Trainers'' eyes Meet (Twins)',
   'stuff_to_find', 'newer_vgm', 362),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'Acoustic Toy Museum' COLLATE NOCASE),
   NULL, NULL, 'most likely from here', 'Fortree City',
   'stuff_to_find', 'newer_vgm', 363),

  -- Row 1854: Vienna Symphonic Library, ? (Special Edition Vol. 3) -> Unknown/Unknown
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'con sordino strings (raw source: Vienna Symphonic Library, ? (Special Edition Vol. 3))', 'Verdanturf Town',
   'stuff_to_find', 'newer_vgm', 364),

  -- Rows 1855-1872: ?,? -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'snare and bass drum (velocity sensitive)', 'Hurry Along',
   'stuff_to_find', 'newer_vgm', 365),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth bass (not halion, komplete, triton or sc)', 'May',
   'stuff_to_find', 'newer_vgm', 366),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'weird saw thing', 'Leader''s Theme (Team Aqua/Team Magma)',
   'stuff_to_find', 'newer_vgm', 367),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Swoosh SFX at the start', NULL, 'Most contest themes / Contest Lobby',
   'stuff_to_find', 'newer_vgm', 368),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Bubbles sample + synths', NULL, 'Dive',
   'stuff_to_find', 'newer_vgm', 369),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'staccato-ish synth arp', NULL, 'Battle! (Gym Leader)',
   'stuff_to_find', 'newer_vgm', 370),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'various comp synths', NULL, 'Route 111',
   'stuff_to_find', 'newer_vgm', 371),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'pads + echoing synth', NULL, 'Mt. Pyre',
   'stuff_to_find', 'newer_vgm', 372),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Drum kit (snare + cymbals)', 'and also the plucked guitar/santoor', 'Battle! (Brendan/May)',
   'stuff_to_find', 'newer_vgm', 373),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Snares', 'Dewford Town, Contest Themes',
   'stuff_to_find', 'newer_vgm', 374),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Square lead, yet to be found', 'Battle! (Team Aqua/Magma)',
   'stuff_to_find', 'newer_vgm', 375),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'percussion elements', 'TRICK MASTER ~Karaku-REMIX!~',
   'stuff_to_find', 'newer_vgm', 376),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Electric Guitar or some other distorted chords', 'Panned far right next to acoustic guitar', 'Battle! (Lorekeeper Zinnia)',
   'stuff_to_find', 'newer_vgm', 377),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Reverse Cymbal', NULL, NULL,
   'stuff_to_find', 'newer_vgm', 378),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Synth Bass', 'not halion or trilian', 'Battle! (Deoxys)',
   'stuff_to_find', 'newer_vgm', 379),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth bell / fantasia', 'Trainers'' Eyes Meet (Scuba Diver)',
   'stuff_to_find', 'newer_vgm', 380),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Sub/Synth Bass', 'Hard to narrow down, Trilian sounds quite close', 'Battle! (Lorekeeper Zinnia)',
   'stuff_to_find', 'newer_vgm', 381),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'organish/guitarish synth sweep', 'not from omnisphere pads+strings', 'Heavy Rain',
   'stuff_to_find', 'newer_vgm', 382),

  -- Bonus Tracks (rows 1874-1887) -> bonus
  -- Rows 1874-1876: Live Recording rows (product_id NULL, raw_source patched below)
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   NULL, NULL, 'See note', NULL, 'TRICK MASTER ~Karaku-REMIX!~',
   'bonus', 'newer_vgm', 383),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   NULL, NULL, 'Hironobu Yoshida, Karakuri Chorus', NULL, 'TRICK MASTER ~Karaku-REMIX!~',
   'bonus', 'newer_vgm', 384),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   NULL, NULL, 'Naomi Orikasa', NULL, 'Appeal☆Love',
   'bonus', 'newer_vgm', 385),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol. 4 (Special and Unusual)' COLLATE NOCASE),
   'CD3 -> bells', 'bell ringing in a tower', NULL, 'Appeal☆Love',
   'bonus', 'newer_vgm', 386),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 4 - Lead', 'Android PWM Lead 1', NULL, 'Appeal☆Love',
   'bonus', 'newer_vgm', 387),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 4 - Lead', 'Cheesy Lead', NULL, 'Appeal☆Love',
   'bonus', 'newer_vgm', 388),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Analog Seq - Big ‘n Tight', NULL, 'TRICK MASTER ~Karaku-REMIX!~',
   'bonus', 'newer_vgm', 389),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Centrifuge', '135-Centrifuge HiHatShake', NULL, 'Appeal☆Love',
   'bonus', 'newer_vgm', 390),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Orchestra Hits', NULL, 'TRICK MASTER ~Karaku-REMIX!~',
   'bonus', 'newer_vgm', 391),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 013] Marimba', NULL, 'Appeal☆Love',
   'bonus', 'newer_vgm', 392),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 019] Rock Organ', NULL, 'Appeal☆Love',
   'bonus', 'newer_vgm', 393),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 081] Lead 1 (Square)', NULL, 'Appeal☆Love',
   'bonus', 'newer_vgm', 394),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kit', 'Startup', NULL, 'Appeal☆Love',
   'bonus', 'newer_vgm', 395),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   'Groove Loops -> Guitars 120-BPM', 'Button Up-G', NULL, 'TRICK MASTER ~Karaku-REMIX!~',
   'bonus', 'newer_vgm', 396),

  -- Early Music (Teraleak / Freakleak - poke_viewer.cci) (rows 1889-1927) -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 5 Keysw', '4TB KS Master', NULL, 'Battle! (Gym Leader) Draft by Minako Adachi, Route 119',
   'unused', 'newer_vgm', 397),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 5 Keysw', '4TP KS Master', NULL, 'Battle! (Gym Leader) Draft by Minako Adachi, Route 119',
   'unused', 'newer_vgm', 398),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, 'Battle! (Brendan / May), Battle! (Gym Leader) Draft by Minako Adachi, Route 113',
   'unused', 'newer_vgm', 399),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', 'All Cymbals', NULL, 'Battle! (Gym Leader) Draft by Minako Adachi, Battle! (Team Aqua), Route 119',
   'unused', 'newer_vgm', 400),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Violas -> 5 Keysw', 'VAS KS Master', NULL, 'Battle! (Brendan / May)',
   'unused', 'newer_vgm', 401),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'Battle! (Brendan / May), Battle! (Team Aqua), Battle! (Gym Leader) Draft by Minako Adachi, Route 111, Route 113, Route 119',
   'unused', 'newer_vgm', 402),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', NULL, 'Battle! (Team Aqua)',
   'unused', 'newer_vgm', 403),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitar', 'Rhythm Rock Guitar', NULL, 'Rival''s Theme Draft by Minako Adachi',
   'unused', 'newer_vgm', 404),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Classic Bass', NULL, 'Route 119',
   'unused', 'newer_vgm', 405),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Pop Kit', NULL, 'Battle! (Team Aqua), Fortree City (Minako Adachi arr.)',
   'unused', 'newer_vgm', 406),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Studio Break Kit', NULL, 'Battle! (Gym Leader) Draft by Minako Adachi, Rival''s Theme Draft by Minako Adachi',
   'unused', 'newer_vgm', 407),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 7 - Metallophones', 'Music Box', NULL, 'Fortree City (Minako Adachi arr.)',
   'unused', 'newer_vgm', 408),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Mono', 'Complex Worm Lead', NULL, 'Battle! (Gym Leader) Draft by Minako Adachi',
   'unused', 'newer_vgm', 409),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Mono', 'Unisonic Lead', 'Plays lead', 'Battle! (Gym Leader) Draft by Minako Adachi',
   'unused', 'newer_vgm', 410),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Short', 'Percussion Squares', NULL, 'Route 111',
   'unused', 'newer_vgm', 411),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Distortion', 'Shredder Head', NULL, 'Battle! (Champion) Draft by Minako Adachi, Battle! (Team Aqua/Team Magma Leaders) Draft by Minako Adachi',
   'unused', 'newer_vgm', 412),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Organs', 'Cobalt Organ', 'plays a modified countermelody at loop start', 'Battle! (Team Aqua)',
   'unused', 'newer_vgm', 413),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Organs', 'Dusty Wheels 1', 'Transpose by 1 octave up', 'Battle! (Team Aqua)',
   'unused', 'newer_vgm', 414),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Cryogenic Freeze', NULL, 'Battle! (Team Aqua)',
   'unused', 'newer_vgm', 415),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Analog Knocker Bass', NULL, 'Route 111',
   'unused', 'newer_vgm', 416),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Badd Booty Bass', NULL, 'Battle! (Gym Leader) Draft by Minako Adachi',
   'unused', 'newer_vgm', 417),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Bottom of the Bucket Bass', NULL, 'Battle! (Champion) Draft by Minako Adachi',
   'unused', 'newer_vgm', 418),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Cool Clubbing Bass', NULL, 'Battle! (Brendan / May)',
   'unused', 'newer_vgm', 419),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Authentic PWM Lead', 'Octave lower "echo" for Dusty Wheels 1', 'Battle! (Team Aqua)',
   'unused', 'newer_vgm', 420),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Electro Reduction', NULL, 'Battle! (Team Aqua)',
   'unused', 'newer_vgm', 421),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Soaring Edge Lead', NULL, 'Battle! (Team Aqua)',
   'unused', 'newer_vgm', 422),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Stanky Lead', NULL, 'Route 111',
   'unused', 'newer_vgm', 423),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Unison Detuner Lead', NULL, 'Route 111',
   'unused', 'newer_vgm', 424),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Vintage Squares Lead Unison', NULL, 'Route 113',
   'unused', 'newer_vgm', 425),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Chromatrem', NULL, 'Route 111',
   'unused', 'newer_vgm', 426),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Flaming Supersaws', NULL, 'Rival''s Theme Draft by Minako Adachi',
   'unused', 'newer_vgm', 427),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Mono', 'Armageddon Tetra', 'See note', 'Battle! (Champion) Draft by Minako Adachi',
   'unused', 'newer_vgm', 428),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 72-Half Moon', '72-Half Moon Combo', NULL, 'Route 113',
   'unused', 'newer_vgm', 429),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 113-Fritz', '133-Fritz Beat No Snare', NULL, 'Battle! (Brendan / May)',
   'unused', 'newer_vgm', 430),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '80-Congas 2', NULL, 'Route 111',
   'unused', 'newer_vgm', 431),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Mono', 'Serrated Edge', 'edit glide + turn off legato', 'Battle! (Brendan / May)',
   'unused', 'newer_vgm', 432),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Timpani+Cym', NULL, 'Battle! (Team Aqua), Battle! (Gym Leader) Draft by Minako Adachi',
   'unused', 'newer_vgm', 433),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 088] Lead 8 (Bass + Lead)', NULL, 'Battle! (Team Aqua)',
   'unused', 'newer_vgm', 434),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   'Groove Loops -> Guitars 110-BPM', 'Tonkin-A', NULL, 'Route 111',
   'unused', 'newer_vgm', 435),

  -- Stuff to Find inside Early Music subsection (rows 1929-1937) -> stuff_to_find
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Chris Hein Horns Pro Complete' COLLATE NOCASE),
   NULL, NULL, 'check kfl too for brass sections', 'Battle! (Team Aqua)',
   'stuff_to_find', 'newer_vgm', 436),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 3 Effects', 'Harp Gliss', NULL, 'Battle! (Team Aqua)',
   'stuff_to_find', 'newer_vgm', 437),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', NULL, 'either pop bass or classic bass', 'Fortree City (Minako Adachi arr.)',
   'stuff_to_find', 'newer_vgm', 438),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Poly', NULL, 'synth brass in intro', 'Battle! (Gym Leader) Draft by Minako Adachi',
   'stuff_to_find', 'newer_vgm', 439),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Organic Rhodes Ampy', 'rhodes arp', 'Battle! (Gym Leader) Draft by Minako Adachi',
   'stuff_to_find', 'newer_vgm', 440),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library', NULL, 'synth arp (sequenced manually)', 'Battle! (Gym Leader) Draft by Minako Adachi',
   'stuff_to_find', 'newer_vgm', 441),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, 'hihats', 'Battle! (Team Aqua)',
   'stuff_to_find', 'newer_vgm', 442),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, 'hand percussion', 'Fortree City (Minako Adachi arr.)',
   'stuff_to_find', 'newer_vgm', 443),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'SONIC Dancer', 'unsure. Layer 2 turned off?', 'Battle! (Brendan / May)',
   'stuff_to_find', 'newer_vgm', 444),

  -- Early Bonus Tracks (Teraleak / Freakleak - XY Part 1) (rows 1939-1947) -> unused (leak content)
  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Crypton Future Media' COLLATE NOCASE AND p.name = '巡音ルカ（MEGURINE LUKA）' COLLATE NOCASE),
   NULL, NULL, NULL, 'TRICK MASTER ~Karaku-REMIX!~, Appeal☆Love (Demo)',
   'unused', 'newer_vgm', 445),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band ->  5 - Guitar', 'Elektrik Guitar', NULL, 'Appeal☆Love (Demo)',
   'unused', 'newer_vgm', 446),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 4 - Lead', 'Android PWM Lead 1', 'Also in the final version', 'Appeal☆Love (Demo)',
   'unused', 'newer_vgm', 447),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 4 - Lead', 'Cheesy Lead', 'Also in the final version', 'Appeal☆Love (Demo)',
   'unused', 'newer_vgm', 448),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 126-All Night Party', '126-All Night Party Combo 2', NULL, 'Appeal☆Love (Demo)',
   'unused', 'newer_vgm', 449),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 133-Centrifuge', '133-Centrifuge HiHatShake', 'Also in the final version', 'Appeal☆Love (Demo)',
   'unused', 'newer_vgm', 450),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 144-Electric Flower', '144-Electric Flower Claps', NULL, 'Appeal☆Love (Demo)',
   'unused', 'newer_vgm', 451),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 002] Bright Acoustic Piano', 'Also in the final version', 'Appeal☆Love (Demo)',
   'unused', 'newer_vgm', 452),

  ((SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 004] Honky-Tonk Piano', NULL, 'Appeal☆Love (Demo)',
   'unused', 'newer_vgm', 453);

-- Patch raw_source for the Live Recording / Sample rows (positions 1-7, 383-385) inserted with product_id NULL.
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Roscoe SKB-3005 Fretless'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire')
    AND position = 1;
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Scandalli Accordion'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire')
    AND position = 2;
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Furch D23-CR'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire')
    AND position = 3;
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Modulus Q6 Sweet Spot'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire')
    AND position = 4;
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Suhr Classic'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire')
    AND position = 5;
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Yamaha G-280A'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire')
    AND position = 6;
UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Ruby and Sapphire'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire')
    AND position = 7;
UPDATE usages SET raw_source = 'Live Recording: Horns'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire')
    AND position = 383;
UPDATE usages SET raw_source = 'Live Recording: Vocals — Hironobu Yoshida, Karakuri Chorus'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire')
    AND position = 384;
UPDATE usages SET raw_source = 'Live Recording: Vocals — Naomi Orikasa'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Omega Ruby and Pokémon Alpha Sapphire')
    AND position = 385;
