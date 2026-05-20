-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 880-1488
-- Pokémon X and Pokémon Y (Nintendo 3DS, October 12, 2013).
-- Composers: Shota Kageyama, Minako Adachi, Hitomi Sato, Junichi Masuda.
-- Subsection headers in source: row 880 (game header), 1349 (annotation: 32kHz samples
-- originally from B/W), 1365 (Stuff to Find), 1415 (Early Tracks (eshop trailer)),
-- 1420 (Early Music (Teraleak / Freakleak - xy_120831_1606【rommk版】)),
-- 1459 (Early Music (Teraleak / Freakleak - y20130122_075257)).
-- Per task spec: main tracks + 32kHz B/W-derived block -> main; Stuff to Find -> stuff_to_find;
-- Early Tracks + both Early Music (Teraleak/Freakleak) blocks -> unused.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Big Fish Audio'),
  ('eLAB'),
  ('Ueberschall'),
  ('Vienna Symphonic Library'),
  ('MusicLab');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'Ethno World Instruments',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'Red Box Vol.4 (Special and Unusual)',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'             COLLATE NOCASE), 'ProSamples Vol. 55 - Retro Sampler',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Big Fish Audio'           COLLATE NOCASE), 'Nu Metal City',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Goliath',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Ra',                                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Symphonic Choirs',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Symphonic Orchestra',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                 COLLATE NOCASE), 'Voices of Passion',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'eLAB'                     COLLATE NOCASE), 'Xtortion',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EDIROL'                   COLLATE NOCASE), 'STUDIO Canvas SD-90',                           'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'IK Multimedia'            COLLATE NOCASE), 'SampleTank 2.5 XL',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Kaeru Cafe'               COLLATE NOCASE), 'Treasure in Japan Vol. 3',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools'     COLLATE NOCASE), 'Independence Pro',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                 COLLATE NOCASE), 'RealLPC',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                 COLLATE NOCASE), 'RealStrat',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Absynth',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Battery 3',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'FM8',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Kompakt Factory Library',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Kontakt Factory Library',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Kore 2',                                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'       COLLATE NOCASE), 'Massive',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Metamorphosis S.A.G.E. Xpander',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Omnisphere',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Stylus RMX',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'            COLLATE NOCASE), 'Trilian',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALionOne',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion Sonic',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                COLLATE NOCASE), 'HALion Sonic SE',                               'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'              COLLATE NOCASE), 'Astral Electro Flux',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (02-Fretted)',                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (03-Drums and Percs)',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (04-Synth and co)',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                      COLLATE NOCASE), 'PlugSound Pro (Loops)',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'Special Edition Vol. 1',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'Special Edition Vol. 2',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library' COLLATE NOCASE), 'Special Edition Vol. 2 PLUS (?)',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                COLLATE NOCASE), 'Addictive Drums',                               'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Brazil Chillout',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Chemical Beats',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Creative Essentials Vol. 20 Upfront Lead Guitar','Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'N.Y. CUTZ',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Phantom Horns',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Total Funk',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'Total House',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                   COLLATE NOCASE), 'World Pack',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                  COLLATE NOCASE), 'Unknown',                                       NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon X and Pokémon Y',
   'Nintendo 3DS',
   'October 12, 2013',
   'Shota Kageyama, Minako Adachi, Hitomi Sato, Junichi Masuda',
   'shota kageyama, minako adachi, hitomi sato, junichi masuda',
   'Source CSV annotation (row 1349): the rows following are 32kHz versions of samples originally used in Pokémon Black & White (Tile Puzzle / Head It / Berry Picker tracks).');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Row 881: Live Recording: Hideaki Kuroda — Suhr Classic guitar (non-commercial; raw_source patched below).
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   NULL, NULL, NULL, 'Confirmed via the XY SMC''s liner notes', 'Battle! (Wild Pokémon), Battle! (Trainer), Battle! (Team Flare), Battle (Xerneas/Yveltal/Zygarde), Battle! (Elite Four), Battle! (Gym Leader), Cyllage City, Pokemon Center',
   'main', 'newer_vgm', 1),

  -- Row 882: Sample: GAME FREAK — Pokémon Cry (Fletchling) (non-commercial; raw_source patched below).
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   NULL, '-', '-', 'Not present in-game for the version used for Reflection Cave, Frost Cavern and Route 20 - only Santalune Forest uses this', 'Santalune Forest',
   'main', 'newer_vgm', 2),

  -- Row 883
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'KEY INSTRUMENTS -> DALLAPE ACCORDION', 'DALLAPE ACCORDION KEY', NULL, 'Professor Sycamore, Santalune City',
   'main', 'newer_vgm', 3),

  -- Row 884
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol.4 (Special and Unusual)' COLLATE NOCASE),
   'CD3 -> restaurant service', 'stacking plates restaurant', 'pitched up + eq''d', 'Trainers'' Eyes Meet (Maid)',
   'main', 'newer_vgm', 4),

  -- Row 885
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Big Fish Audio' COLLATE NOCASE AND p.name = 'Nu Metal City' COLLATE NOCASE),
   'Nu Metal 03 065 E', '03 guitar 07', NULL, 'PR Video BGM "Thrilling 2"',
   'main', 'newer_vgm', 5),

  -- Row 886
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Big Fish Audio' COLLATE NOCASE AND p.name = 'Nu Metal City' COLLATE NOCASE),
   'Nu Metal 03 065 E', '03 guitar 08', NULL, 'Trainers'' Eyes Meet (Punk Guy)',
   'main', 'newer_vgm', 6),

  -- Row 887
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Acoustic Guitar Family', '2 Guitars', 'for the arps', 'Pokémon Center',
   'main', 'newer_vgm', 7),

  -- Row 888
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Acoustic Guitar Family', 'Acoustic God Sus', 'from Guitar and Bass', 'Boutique, Route 1, Aquacorde Town',
   'main', 'newer_vgm', 8),

  -- Row 889
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Acoustic Guitar Family', 'Classical Guitar', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 9),

  -- Row 890
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Choir Bank -> EWQL Choirs', 'Boys oh MOD', NULL, 'The Ultimate Weapon Deployed, PR Video BGM "Classical 4"',
   'main', 'newer_vgm', 10),

  -- Row 891
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Choir Bank -> Mens Choir', 'Mens Choir ah MOD', 'modwheel up', 'Battle! (Lysandre), PR Video BGM "Classical 4"',
   'main', 'newer_vgm', 11),

  -- Row 892
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Electric Guitar', '56s B Big Strummer', 'from ''56 Strat', 'Friends Theme "A New Meeting", Bicycle',
   'main', 'newer_vgm', 12),

  -- Row 893
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Electric Guitar', '56s B Mellow Strummer', 'from ''56 Strat', 'Looker''s Sorrowful Theme',
   'main', 'newer_vgm', 13),

  -- Row 894
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Electronic Drumkits', '508 Kit', 'Ride Cymbal is used', 'Kalos Power Plant',
   'main', 'newer_vgm', 14),

  -- Row 895
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '20-Church Organ', NULL, 'Battle! (Lysandre), PR Video BGM "Classical 4", The Ultimate Weapon Deployed',
   'main', 'newer_vgm', 15),

  -- Row 896
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '22-Accordian', NULL, 'Shopping, Route 18',
   'main', 'newer_vgm', 16),

  -- Row 897
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '24-Tango Accordian', 'humanize some notes a little', 'Camphrier Town',
   'main', 'newer_vgm', 17),

  -- Row 898
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 049-56 ENSEMBLE', '56-Orchestra Hit', NULL, 'Quiz Time in the Lumiose City Gym!',
   'main', 'newer_vgm', 18),

  -- Row 899
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 073-080 PIPE', '75-Recorder MOD', NULL, 'Gogoat Shuttle',
   'main', 'newer_vgm', 19),

  -- Row 900
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Pop Brass -> 3 Trumpets', '3 TP sus MODfilter', NULL, 'Friends Theme "A New Meeting"',
   'main', 'newer_vgm', 20),

  -- Row 901
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Africa -> Drums', 'Dejembe Ensemble', NULL, 'Friend Safari',
   'main', 'newer_vgm', 21),

  -- Row 902
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Plucked -> 1890 Wburn Guitar', 'Washbrn GTR KS C0-D#0', NULL, 'PR Video BGM "Cool 4"',
   'main', 'newer_vgm', 22),

  -- Row 903
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Plucked -> Banjo', 'Banjo Neck', NULL, 'Santalune City',
   'main', 'newer_vgm', 23),

  -- Row 904
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Winds -> FN Cdr Flute', 'FNC Flute KS C0-G#0', NULL, 'Route 1, Santalune City',
   'main', 'newer_vgm', 24),

  -- Row 905
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Europe -> Winds -> Bag Pipe Ens', 'Bag Pipe Ens VS', NULL, 'Dendemille Town',
   'main', 'newer_vgm', 25),

  -- Row 906
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Europe -> Winds -> Highland Pipes', 'Highland Pipes VS', 'varying velocities', 'Shalour City',
   'main', 'newer_vgm', 26),

  -- Row 907
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Koto', 'Koto KS C0-F#0', NULL, 'Sushi High Roller',
   'main', 'newer_vgm', 27),

  -- Row 908
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Shamisen', 'Shamisen C0-E0', NULL, 'PR Video BGM "Lively 4", Trainers'' Eyes Meet! (Furisode Girl)',
   'main', 'newer_vgm', 28),

  -- Row 909
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'India -> Bowed -> Sarangi', 'Sarangi KS C0-C#1', 'Keyswitch D#0 (Non Vib 2 articulation)', 'Shalour City',
   'main', 'newer_vgm', 29),

  -- Row 910
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'India -> Plucked -> Tambura', 'Tambura 4-Way RR', NULL, 'PR Video BGM "Mature 4"',
   'main', 'newer_vgm', 30),

  -- Row 911
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Mid East -> Bowed -> ME Fiddle', 'MidEast FDL KS C0-A0', NULL, 'Santalune City',
   'main', 'newer_vgm', 31),

  -- Row 912
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Instruments -> Full Chorus', 'FULLCHORUS OH MOD', NULL, 'The Legendary Pokémon Awoken',
   'main', 'newer_vgm', 32),

  -- Row 913
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 5 Keysw', '4TB KS Master', NULL, 'Route 4, Route 8, Route 15, Route 18, Title Screen',
   'main', 'newer_vgm', 33),

  -- Row 914
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 5 Keysw', '4TP KS Master', NULL, 'Title Screen, Route 4, Route 8, Route 15, Route 18, Battle! (World Champion), Opening Movie',
   'main', 'newer_vgm', 34),

  -- Row 915
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH 2sec Cres', NULL, 'Secret Super Training!',
   'main', 'newer_vgm', 35),

  -- Row 916
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH 3sec Cres Fltr', NULL, 'Firing the Ultimate Weapon! (Pokémon X)',
   'main', 'newer_vgm', 36),

  -- Row 917
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH Rips S', NULL, 'Victory! (Team Flare), Victory! (Champion)',
   'main', 'newer_vgm', 37),

  -- Row 918
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, 'Title Screen, Route 8',
   'main', 'newer_vgm', 38),

  -- Row 919
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> Solo Trumpet 1 -> 5 Keysw', 'STP KS Master', NULL, 'I''ll Go With You, Firing the Ultimate Weapon (both versions)',
   'main', 'newer_vgm', 39),

  -- Row 920
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> Solo Tuba -> 5 Keysw', 'STU KS Master', NULL, 'Battle! (World Champion)',
   'main', 'newer_vgm', 40),

  -- Row 921
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', 'All Cymbals', NULL, '~Used throughout the soundtrack~',
   'main', 'newer_vgm', 41),

  -- Row 922
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', '3 Snares', NULL, 'Route 4, Route 8, Route 15, Route 18, Victory Road, Battle! (World Champion), Title Screen, Opening Movie',
   'main', 'newer_vgm', 42),

  -- Row 923
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Bass Drum Wagner', NULL, 'Victory Road, Battle! (Xerneas/Yveltal/Zygarde), Title Screen',
   'main', 'newer_vgm', 43),

  -- Row 924
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', NULL, 'Route 15, Battle! (World Champion), A Mysterious Figure',
   'main', 'newer_vgm', 44),

  -- Row 925
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Roll DXF Mod Hits', NULL, 'PR Video BGM "Thrilling 1"',
   'main', 'newer_vgm', 45),

  -- Row 926
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', NULL, 'Battle! (Champion)',
   'main', 'newer_vgm', 46),

  -- Row 927
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', NULL, 'Victory Road, Route 8, Anistar City, Battle! (Champion), PR Video BGM "Classical 4"',
   'main', 'newer_vgm', 47),

  -- Row 928
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Sleigh Bells RR', NULL, 'Snowbelle City',
   'main', 'newer_vgm', 48),

  -- Row 929
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Various Metals', NULL, 'KISEKI',
   'main', 'newer_vgm', 49),

  -- Row 930
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Castanets', NULL, 'Surfing',
   'main', 'newer_vgm', 50),

  -- Row 931
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Xylophone', NULL, 'Victory Road',
   'main', 'newer_vgm', 51),

  -- Row 932
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 9 Double Basses -> 5 Keysw', 'CBS KS Master', NULL, 'Route 8',
   'main', 'newer_vgm', 52),

  -- Row 933
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Cellos -> 5 Keysw', 'VCS KS Master', NULL, 'Gym, Opening Movie',
   'main', 'newer_vgm', 53),

  -- Row 934
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Violas -> 5 Keysw', 'VAS KS Master', NULL, 'Route 8',
   'main', 'newer_vgm', 54),

  -- Row 935
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 3 Effects', '11V Trill W', NULL, 'GTS',
   'main', 'newer_vgm', 55),

  -- Row 936
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 5 Keysw', '11V KS Master', NULL, 'Team Flare Secret HQ',
   'main', 'newer_vgm', 56),

  -- Row 937
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 1 Long', '18V Trem Leg', NULL, 'Battle! (World Champion)',
   'main', 'newer_vgm', 57),

  -- Row 938
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'Title Screen, Route 4, Route 8, Route 15, Route 18, Opening Movie',
   'main', 'newer_vgm', 58),

  -- Row 939
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 1 Long', 'Harp Pluck', NULL, 'Title Screen, Surf, Route 15, The Legendary Pokemon Awoken, PR Video BGM "Cute 4", PR Video BGM "Elegant 4"',
   'main', 'newer_vgm', 59),

  -- Row 940
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 3 Effects', 'Harp Gliss Maj Up+Dn', NULL, 'Victory! (Champion)',
   'main', 'newer_vgm', 60),

  -- Row 941
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harp -> 3 Effects', 'Harp Gliss WT Up+Dn', NULL, 'Route 15',
   'main', 'newer_vgm', 61),

  -- Row 942
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Harpsichord', 'Harpsichord', NULL, 'Parfum Palace, Dendemille Town, Anistar City, Battle! (Lysandre)',
   'main', 'newer_vgm', 62),

  -- Row 943
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Large String Ens', '50 Piece Str Sec Sus', NULL, 'Battle! (Champion), Super Training: Try Again..., Wonder Trade, Anistar City',
   'main', 'newer_vgm', 63),

  -- Row 944
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Cello -> 5 Keysw', 'SVC KS Master', NULL, 'An Eternal Prison',
   'main', 'newer_vgm', 64),

  -- Row 945
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Contrabass -> 2 Short', 'SCB Pizz', NULL, 'Emma''s Theme',
   'main', 'newer_vgm', 65),

  -- Row 946
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Violin -> 5 Keysw', 'SVL KS Master', NULL, 'Hotel Richissime',
   'main', 'newer_vgm', 66),

  -- Row 947
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> 3 Flutes -> 5 Keysw', '3FL KS Master', NULL, 'Parfum Palace, Gym, Title Screen',
   'main', 'newer_vgm', 67),

  -- Row 948
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> 3 Oboes -> 5 Keysw', '3OB KS Master', NULL, 'Gym',
   'main', 'newer_vgm', 68),

  -- Row 949
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Bassoon -> 5 Keysw', 'BSN KS Master', NULL, 'Lumiose City, Route 4, Glittering Cave',
   'main', 'newer_vgm', 69),

  -- Row 950
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Clarinet -> 5 Keysw', 'SCL KS Master', NULL, 'Route 15, Glittering Cave',
   'main', 'newer_vgm', 70),

  -- Row 951
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Flute -> 5 Keysw', 'SFL KS Master', NULL, 'Surfing',
   'main', 'newer_vgm', 71),

  -- Row 952
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Oboe -> 1 Long', 'SOB Sus-Leg', NULL, 'Route 15',
   'main', 'newer_vgm', 72),

  -- Row 953
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Piccolo Flute -> 5 Keysw', 'PFL KS Master', NULL, 'Route 4, Victory! (Team Flare)',
   'main', 'newer_vgm', 73),

  -- Row 954
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Voices of Passion' COLLATE NOCASE),
   'America', 'America Elements', NULL, 'Battle! (Lysandre)',
   'main', 'newer_vgm', 74),

  -- Row 955
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'eLAB' COLLATE NOCASE AND p.name = 'Xtortion' COLLATE NOCASE),
   'Track 54 - GTR/FX', 'Timestamp 0:19', NULL, 'Trainers'' Eyes Meet! (Team Flare)',
   'main', 'newer_vgm', 75),

  -- Row 956
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kaeru Cafe' COLLATE NOCASE AND p.name = 'Treasure in Japan Vol. 3' COLLATE NOCASE),
   'Track 15', 'Syakuhachi', NULL, 'Trainers'' Eyes Meet! (Furisode Girl)',
   'main', 'newer_vgm', 76),

  -- Rows 957-991: MAGiX / Yellow Tools — Independence Pro
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '01 Acoustic Drum Kits', 'Drum Kit 01 (Sticks)', NULL, 'Route 1',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '01 Acoustic Drum Kits', 'Drum Kit 09 (Plastic Brushes)', NULL, 'Lysandre Labs',
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '02 Electronic Drum Kits', 'All Electronic Others 1', 'Cowbell', 'Let''s Super Train!',
   'main', 'newer_vgm', 79),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '02 Electronic Drum Kits', 'Electronic Drum Kit 04', NULL, 'Trainers'' Eyes Meet (Youngster)',
   'main', 'newer_vgm', 80),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '05 Acoustic Guitars', 'Acoustic Guitar 1 Ballad', NULL, 'Changed into Classic Clothes! (Boy)',
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '05 Acoustic Guitars', 'Acoustic Guitar 1 Spanish', 'Geosenge -> "Layer" turn on Pan Automation', 'Geosenge Town, FIN',
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '06 Electric Guitars', 'Electric Guitar Combi 1 & Preamp 2', 'Add reverb', 'Super Training: Try Again...',
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '06 Electric Guitars', 'Power Chords & Cabinet 1', 'For Powerchords (right ear)', 'Battle! (Trainer)',
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '06 Electric Guitars', 'Power Chords Simple Default', 'Remove delay', 'Trainers'' Eyes Meet (Punk Guy), Super Training!',
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'Acoustic Bar Piano', NULL, 'PR Video BGM "Lively 1"',
   'main', 'newer_vgm', 86),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'Acoustic Grand Piano & Mic Modeler 1', NULL, 'Friends Theme "Friends Forever"',
   'main', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'Acoustic Grand Piano & Mic Modeler 2', NULL, 'PR Video BGM "Elegant 2", Emma''s Theme',
   'main', 'newer_vgm', 88),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'Acoustic Piano', NULL, 'How About a Song? "Jubilife City", PR Video Studio, PR Video BGM "Elegant 3", Geosenge Town, Trainers'' Eyes Meet (Swimmer♂), Coumarine City',
   'main', 'newer_vgm', 89),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'E-Piano Pro', 'Add phaser', 'PR Video BGM "Lively 3"',
   'main', 'newer_vgm', 90),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'E-Piano Soft', 'Add chorus', 'Super Training: Try Again...',
   'main', 'newer_vgm', 91),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '08 Ethno Percussion', 'Tablas Alphabet', NULL, 'PR Video BGM "Mature 4"',
   'main', 'newer_vgm', 92),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '09 Tonal Percussion', 'Bell Tower', 'Add delay for Shalour City', 'Trainers'' Eyes Meet (Butler), Shalour City',
   'main', 'newer_vgm', 93),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '11 Industrial Percussion', 'Cymbals fx', NULL, 'Team Flare Appears!, Lysandre Labs, Battle! (Lysandre)',
   'main', 'newer_vgm', 94),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '11 Industrial Percussion', 'FX Percussion', 'A#4, B4', 'Team Flare Appears!',
   'main', 'newer_vgm', 95),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '12 Orchestral Percussion', 'Orchestral Cymbals 18 Inch', NULL, 'PR Video BGM "Elegant 3"',
   'main', 'newer_vgm', 96),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '12 Orchestral Percussion', 'Orchestral Cymbals 20 Inch', NULL, 'PR Video BGM "Classical 2", PR Video BGM "Rhythmical 1"',
   'main', 'newer_vgm', 97),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '12 Orchestral Percussion', 'Orchestral Triangle Set', NULL, 'PR Video BGM "Classical 2"',
   'main', 'newer_vgm', 98),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '13 Orchestral Brass (KHSO)', 'KHSO French Horn Key Switch C0', NULL, 'A Poké Radar Hit!',
   'main', 'newer_vgm', 99),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '14 Orchestral Strings (KHSO)', 'KHSO All Strings Key Switch C-1', NULL, 'Shalour City, Poké Radar Chain!',
   'main', 'newer_vgm', 100),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '14 Orchestral Strings (KHSO) -> # Orchestral Strings', 'KHSO Violins Key Switch C0', NULL, 'PR Video BGM "Classical 2"',
   'main', 'newer_vgm', 101),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '14 Orchestral Strings (KHSO) -> # Orchestral Strings', 'KHSO Bassi Key Switch C-1', NULL, 'PR Video BGM "Classical 2"',
   'main', 'newer_vgm', 102),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '15 Orchestral Woodwinds (KHSO)', 'KHSO Clarinet Key Switch C0', NULL, 'PR Video BGM "Classical 2"',
   'main', 'newer_vgm', 103),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '15 Orchestral Woodwinds (KHSO)', 'KHSO Clarinet KS C0 & Origami LE', NULL, 'A Poké Radar Hit!',
   'main', 'newer_vgm', 104),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '15 Orchestral Woodwinds (KHSO)', 'KHSO Flute Key Switch C0', NULL, 'PR Video BGM "Classical 2"',
   'main', 'newer_vgm', 105),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '16 Pop Brass Section', 'Brass Section BIG KS C1-F1 & Mic Modeler 1', NULL, 'Poke Radar Chain!',
   'main', 'newer_vgm', 106),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '16 Pop Brass Section', 'Trumpet Section BIG KS C1-F1', NULL, 'PR Video BGM "Rhythmical 3", PR Video BGM "Lively 3", PR Video BGM "Mature 3", Friend Safari',
   'main', 'newer_vgm', 107),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '17 Saxophones', 'Alto Sax Jazz BIG Key Switch B-1', NULL, 'PR Video BGM "Cool 1"',
   'main', 'newer_vgm', 108),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '18 Pipe Organ (NDB)', 'NDB Organ-Stop Scharff', NULL, 'Shalour City',
   'main', 'newer_vgm', 109),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '19 Synthesizers -> # Alternative', 'Saw Bass 2', NULL, 'PR Video BGM "Thrilling 3"',
   'main', 'newer_vgm', 110),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   'Yellow Tools Culture -> industrial & orchestral', 'cymbal china 12 inch', NULL, 'PR Video BGM "Rhythmical 1"',
   'main', 'newer_vgm', 111),

  -- Rows 992-995: Native Instruments — Absynth
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Bad FM', NULL, 'PR Video BGM "Cute 3"',
   'main', 'newer_vgm', 112),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Bowed Rhodes', NULL, 'Pokémon Village',
   'main', 'newer_vgm', 113),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Bright Lead shutters', NULL, 'Shalour City',
   'main', 'newer_vgm', 114),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Square Pad With Flange', NULL, 'PR Video Studio, PR Video BGM "Cute 3", "PR Video BGM "Thrilling 3"',
   'main', 'newer_vgm', 115),

  -- Rows 996-998: Native Instruments — Battery 3
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'GM Kit', 'clap', 'Route 1, Pokemon Center',
   'main', 'newer_vgm', 116),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'Pop Kit', NULL, 'Aquacorde Town, Trainers'' Eyes Meet (Poké Fan)',
   'main', 'newer_vgm', 117),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '04 - Electronic Kits', 'Dance 2 Kit', 'HIHAT 2, OPEN HIHAT 2 used', 'Secret Super Training, Try Again..., Success!',
   'main', 'newer_vgm', 118),

  -- Row 999: FM8
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM8 Factory', 'Bellmaker', NULL, 'Obtained a Key Item!, The TMV Departs',
   'main', 'newer_vgm', 119),

  -- Row 1000: Kompakt Factory Library (note: Kompakt, not Kontakt)
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kompakt Factory Library' COLLATE NOCASE),
   'Drums + Percussion -> Scratches Samples', '22e01scr082', NULL, 'Kalos Power Plant',
   'main', 'newer_vgm', 120),

  -- Rows 1001-1052: Native Instruments — Kontakt Factory Library
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 1 - Horns', 'Alto Saxophone', NULL, 'Coumarine City',
   'main', 'newer_vgm', 121),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 1 - Horns', 'Sax Section', NULL, 'PR Video BGM "Rhythmical 2"',
   'main', 'newer_vgm', 122),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 1 - Horns', 'Tenor Saxophone', NULL, 'Changed into Classic Clothes (Boy)',
   'main', 'newer_vgm', 123),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 1 - Horns', 'Trombone Section', NULL, 'Trainers'' Eyes Meet (Tourist)',
   'main', 'newer_vgm', 124),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 1 - Horns', 'Trumpet Section', NULL, 'Trainers'' Eyes Meet (Tourist), PR Video BGM "Rhythmical 2", PR Video BGM "Mature 2"',
   'main', 'newer_vgm', 125),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 2 - Acoustic Pianos', 'Grand Piano', NULL, 'PR Video BGM "Rhythmical 2"',
   'main', 'newer_vgm', 126),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 3 - Electric Pianos', 'Mark I Classic', NULL, 'Hurry Along 1, Pokémon Center',
   'main', 'newer_vgm', 127),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 4 - Organ', 'House Plop', NULL, 'PR Video BGM "Mature 3"',
   'main', 'newer_vgm', 128),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 4 - Organ', 'Indian Ropemen', 'rotary speed = fast', 'Looker''s Theme',
   'main', 'newer_vgm', 129),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 4 - Organ', 'Jazz Basic', 'turn up the drive a tiny bit', 'Trainers'' Eyes Meet (Swimmer♂)',
   'main', 'newer_vgm', 130),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 4 - Organ', 'Oye Como Va', NULL, 'Looker''s Sorrowful Theme',
   'main', 'newer_vgm', 131),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 4 - Organ', 'Preston', NULL, 'PR Video BGM "Mature 2"',
   'main', 'newer_vgm', 132),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Akkord Guitar (All Chords)', NULL, 'Professor Sycamore, Trainers'' Eyes Meet (Ace Trainer), KISEKI, Santalune City, Friends Theme "A New Meeting"',
   'main', 'newer_vgm', 133),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Jazz Guitar', NULL, 'Let''s Super Train!',
   'main', 'newer_vgm', 134),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Nylon Guitar', NULL, 'Vaniville Town, PR Video BGM "Cool 4", Kiloude City',
   'main', 'newer_vgm', 135),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Rhythm Rock Guitar', NULL, 'PR Video BGM "Thrilling 2"',
   'main', 'newer_vgm', 136),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Rock Guitar', NULL, 'PR Video BGM "Thrilling 2"',
   'main', 'newer_vgm', 137),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Classic Bass', NULL, 'PR Video BGM "Thrilling 2", Geosenge Town, Coumarine City',
   'main', 'newer_vgm', 138),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Funk Bass', NULL, 'Kiloude City, Trainers'' Eyes Meet (Swimmer♂), Changed into Basic Clothes (Girl)',
   'main', 'newer_vgm', 139),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Jazz Upright', NULL, 'How about a song? ~ "Jubilife City"',
   'main', 'newer_vgm', 140),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Central Stage Kit', NULL, 'PR Video BGM "Cool 2"',
   'main', 'newer_vgm', 141),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Funk Kit', NULL, 'PR Video BGM "Rhythmical 2"',
   'main', 'newer_vgm', 142),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Pop Kit', NULL, 'Cyllage City, Battle! (Champion)',
   'main', 'newer_vgm', 143),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Studio Break Kit', NULL, 'PR Video BGM "Cute 1", PR Video BGM "Thrilling 2"',
   'main', 'newer_vgm', 144),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Choir -> 3 - Choir', 'Choir [a]', NULL, 'Battle! (Xerneas/Yveltal/Zygarde), Tower of Mastery',
   'main', 'newer_vgm', 145),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Cello Ensemble', NULL, 'Congratulations on Entering the Hall of Fame!',
   'main', 'newer_vgm', 146),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Double Bass Ensemble', NULL, 'Victory! (Champion), Congratulations on Entering the Hall of Fame!',
   'main', 'newer_vgm', 147),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Harp', NULL, 'Scary House, PR Video BGM "Elegant 3"',
   'main', 'newer_vgm', 148),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Viola Ensemble', 'staccato articulation for team flare', 'Team Flare Appears!, A Mysterious Figure',
   'main', 'newer_vgm', 149),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Viola Solo', NULL, 'Looker''s in Trouble!',
   'main', 'newer_vgm', 150),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Violin Ensemble', NULL, 'Gate, A Mysterious Figure, Congratulations on Entering the Hall of Fame!',
   'main', 'newer_vgm', 151),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Violin Solo', NULL, 'Looker''s in Trouble!, PR Video BGM "Elegant 3"',
   'main', 'newer_vgm', 152),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Woodwinds', 'French Oboe', NULL, 'Hotel Richissime',
   'main', 'newer_vgm', 153),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Woodwinds', 'Piccolo', NULL, 'Victory! (Champion)',
   'main', 'newer_vgm', 154),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'French Horn Ensemble', NULL, 'Congratulations on Entering the Hall of Fame!',
   'main', 'newer_vgm', 155),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trombone Ensemble', NULL, 'Victory! (Champion), A Mysterious Figure, Congratulations on Entering the Hall of Fame!',
   'main', 'newer_vgm', 156),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trumpet', 'move the sound knob slightly', 'Coumarine City',
   'main', 'newer_vgm', 157),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trumpet Ensemble', NULL, 'Victory! (Champion), A Mysterious Figure, Congratulations on Entering the Hall of Fame!',
   'main', 'newer_vgm', 158),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Tubular Bells (metal)', NULL, 'PR Video BGM "Elegant 3"',
   'main', 'newer_vgm', 159),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Xylophone', NULL, 'Victory Road',
   'main', 'newer_vgm', 160),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 5 - Orchestral Percussion', 'Chimes', NULL, 'Glittering Cave',
   'main', 'newer_vgm', 161),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 6 - Keyboard Instruments', 'Concert Grand', 'Specify if any of these use NY Concert Grand', 'Cyllage City, Battle! (Team Flare), How about a song? ~ "Unwavering Heart", Route 1, Friends Theme "A New Meeting", Kalos Power Plant',
   'main', 'newer_vgm', 162),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 6 - Keyboard Instruments', 'Harpsichord', NULL, 'Shopping, Kalos Power Plant',
   'main', 'newer_vgm', 163),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 3 - Bass', 'Cabinet Bass 2', NULL, 'Friend Safari',
   'main', 'newer_vgm', 164),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 4 - Lead', 'Crawling Lead', NULL, 'Changed into Sporty Clothes (Girl)',
   'main', 'newer_vgm', 165),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 1 - Flutes', 'Kaval', NULL, 'PR Video BGM "Lively 4"',
   'main', 'newer_vgm', 166),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 3 - Reeds', 'Zurna', NULL, 'PR Video BGM "Mature 4"',
   'main', 'newer_vgm', 167),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 5 - Accordions', 'Accordion', NULL, 'Pokémon Village',
   'main', 'newer_vgm', 168),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 7 - Metallophones', 'Small Gongs', NULL, 'Geosenge Town, Shalour City',
   'main', 'newer_vgm', 169),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 8 - Percussion', 'Kalimba', NULL, 'Kiloude City',
   'main', 'newer_vgm', 170),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 8 - Percussion', 'Kroboto - Boba - Kidi', 'pitched down slightly', 'Shalour City',
   'main', 'newer_vgm', 171),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> 8 - Percussion', 'Taikos', NULL, 'PR Video BGM "Lively 4"',
   'main', 'newer_vgm', 172),

  -- Row 1053: Kore 2
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kore 2' COLLATE NOCASE),
   'Bass Instruments', 'Acoustic Bass', NULL, 'Pokémon Village',
   'main', 'newer_vgm', 173),

  -- Row 1054: Massive
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Bass', 'Ad Voca', NULL, 'Team Flare Appears!, Battle! (Lysandre)',
   'main', 'newer_vgm', 174),

  -- Row 1055: Spectrasonics — Metamorphosis S.A.G.E. Xpander
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis S.A.G.E. Xpander' COLLATE NOCASE),
   '050-059', '055-Mohave c', NULL, 'Super Training: Try Again...',
   'main', 'newer_vgm', 175),

  -- Rows 1056-1109: Spectrasonics — Stylus RMX
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 67-Crenshaw', '67-Crenshaw c', NULL, 'Gate',
   'main', 'newer_vgm', 176),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 75-Plate', '75-Plate a', NULL, 'PR Video BGM "Rhythmical 2"',
   'main', 'newer_vgm', 177),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 79-Shifted Jazz', '79-Shifted Jazz', NULL, 'Cyllage City',
   'main', 'newer_vgm', 178),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 86-Scortched Earth', '86-Scortched Earth', NULL, 'Secret Super Training!',
   'main', 'newer_vgm', 179),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 91-Happy X', '91-Happy X a', NULL, 'Secret Super Training!',
   'main', 'newer_vgm', 180),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 93-Break Feast', '93-Break Feast', NULL, 'Battle! (Friend)',
   'main', 'newer_vgm', 181),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 102-Forward', '102-Forward c', NULL, 'Success!',
   'main', 'newer_vgm', 182),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '65-Congas 1', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 183),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '93-Congas 2', NULL, 'PR Video BGM "Cool 4"',
   'main', 'newer_vgm', 184),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Hi-Hats 1', '70-Hi-Hats', NULL, 'PR Video BGM "Cute 1"',
   'main', 'newer_vgm', 185),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Hi-Hats 2', '124-Hi-Hats', NULL, 'Battle! (Champion)',
   'main', 'newer_vgm', 186),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Tambourines', '92-Tambourine', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 187),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Tambourines', '101-Tambourine', NULL, 'Sina and Dexio',
   'main', 'newer_vgm', 188),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Tambourines', '125-Tambourine', NULL, 'Sina and Dexio',
   'main', 'newer_vgm', 189),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 52-Alice''s Dream', '52-Alice''s Dream Combo', NULL, 'Friend Safari',
   'main', 'newer_vgm', 190),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 58-Motion Century', '58-Motion Century Gabegroove', NULL, 'PR Video BGM "Rhythmical 4"',
   'main', 'newer_vgm', 191),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 60-Two Speeder', '60-Two Speeder LoFi', NULL, 'Dark Skies, Anistar City, PR Video BGM "Thrilling 3"',
   'main', 'newer_vgm', 192),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 68-Tower Zero', '68-Tower Zero Simple Drums', NULL, 'PR Video Studio',
   'main', 'newer_vgm', 193),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 70-Datalife', '70-Datalife Rimbo', NULL, 'Trainers'' Eyes Meet (Honeymooners)',
   'main', 'newer_vgm', 194),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 70-Datalife', '70-Datalife Vibro', NULL, 'Looker''s in Trouble!',
   'main', 'newer_vgm', 195),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Bossa Love', '79-BossaLuv No Kick', NULL, 'PR Video BGM "Elegant 1"',
   'main', 'newer_vgm', 196),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Bossa Love', '79-BossaLuv Vinyl Mix', NULL, 'Kiloude City',
   'main', 'newer_vgm', 197),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Red Clouds', '79-Red Clouds a', NULL, 'PR Video BGM "Lively 3"',
   'main', 'newer_vgm', 198),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 79-Red Clouds', '79-Red Clouds c', NULL, 'Battle! (World Champion)',
   'main', 'newer_vgm', 199),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 80-Jedi', '80-Jedi Guit', NULL, 'PR Video BGM "Rhythmical 4"',
   'main', 'newer_vgm', 200),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 80-Space Ranger', '80-Space Ranger S+H', 'Custom loop', 'Wonder Trade',
   'main', 'newer_vgm', 201),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 84-Particles', '84-Particles Reflections 1', NULL, 'Gate',
   'main', 'newer_vgm', 202),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Madrid', '90-Madrid Combo', NULL, 'The Ultimate Weapon Deployed, Firing the Ultimate Weapon (Y)',
   'main', 'newer_vgm', 203),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Stutter', '90-Stutter Congas', NULL, 'Trainers'' Eyes Meet (Roller Skater)',
   'main', 'newer_vgm', 204),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 94-Space Train', '94-Space Train Platform', NULL, 'Team Flare Secret HQ',
   'main', 'newer_vgm', 205),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 94-Space Train', '94-Space Train Underground', NULL, 'Wonder Trade',
   'main', 'newer_vgm', 206),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 98-The Locals', '98-The Locals Combo', NULL, 'Friend Safari',
   'main', 'newer_vgm', 207),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 100-Boney', '100-Boney b', NULL, 'Geosenge Town',
   'main', 'newer_vgm', 208),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 103-Earthquake', '103-Earthquake Dist Drum', NULL, 'Pokémon League',
   'main', 'newer_vgm', 209),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 105-Perilous', '105-Perilous Combo b', NULL, 'Trainers'' Eyes Meet (Black Belt)',
   'main', 'newer_vgm', 210),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 112-Crossbred', '112-Crossbred e', NULL, 'PR Video BGM "Cool 3"',
   'main', 'newer_vgm', 211),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 115-Palmistry', '115-Palmistry Handclap Groove', NULL, 'Shopping',
   'main', 'newer_vgm', 212),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 120-Kryptonite', '120-Kryptonite', NULL, 'Battle! (Team Flare)',
   'main', 'newer_vgm', 213),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Emperor', '125-Emperor Combo 1', 'Loop edited for swing rhythm', 'Trainers'' Eyes Meet! (Team Flare)',
   'main', 'newer_vgm', 214),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Emperor', '125-Emperor Combo 2', NULL, 'PR Video BGM "Cool 3"',
   'main', 'newer_vgm', 215),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Evil Echo', '125-Evil Echo Evilness', NULL, 'Lysandre Labs',
   'main', 'newer_vgm', 216),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Evil Echo', '125-Evil Echo NoKick', NULL, 'Battle! (Team Flare)',
   'main', 'newer_vgm', 217),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Happy Go Lucky', '125-Happy Go Lucky a', NULL, 'PR Video Studio',
   'main', 'newer_vgm', 218),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Pink Panther', '125-Pink Panther Beat', 'slightly rearranged maybe?', 'PR Video BGM "Cute 3"',
   'main', 'newer_vgm', 219),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Pink Panther', '125-Pink Panther Combo a', NULL, 'Riding Skiddo',
   'main', 'newer_vgm', 220),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Floating', '135-Floating Combo 2', NULL, 'Wonder Trade',
   'main', 'newer_vgm', 221),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Horse Fury', '135-Horse Fury No Kick 1a', NULL, 'Battle! (World Champion)',
   'main', 'newer_vgm', 222),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Squashed', '135-Squashed Beat', NULL, 'Battle! (Lysandre)',
   'main', 'newer_vgm', 223),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 137-MicroTalk', '137-MicroTalk Combo 2', NULL, 'PR Video BGM "Thrilling 3"',
   'main', 'newer_vgm', 224),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 140-Encripted', '140-Encripted Mid Tones', NULL, 'Team Flare Appears!',
   'main', 'newer_vgm', 225),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 144-Electric Flower', '144-Electric Flower Kick', NULL, 'Battle! (Xerneas/Yveltal/Zygarde), Super Training!, Secret Super Training!',
   'main', 'newer_vgm', 226),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 144-Electric Flower', '144-Electric Flower Metals', NULL, 'Shopping',
   'main', 'newer_vgm', 227),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 160-Find The Exit', '160-Find The Exit Combo', NULL, 'Battle! (Lysandre), Firing the Ultimate Weapon (X)',
   'main', 'newer_vgm', 228),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus', 'MENU - Congas', NULL, 'A Mysterious Figure',
   'main', 'newer_vgm', 229),

  -- Rows 1110-1116: Spectrasonics — Trilian
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Acoustic Upright', 'Trilian Ac 1 - Full Range All', NULL, 'Coiffure Clips, Camphrier Town, Pokémon Link, How about a song? ~ "Unwavering Heart", Super Training!, Route 1, Friends Theme "A New Meeting"',
   'main', 'newer_vgm', 230),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Acoustic Upright', 'Trilian Ac 1 - Full Range Warm', 'might be Ac 2 - Full Range Clean/Character', 'Pokemon Center',
   'main', 'newer_vgm', 231),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Clean Fender - Full Range', NULL, 'Battle! (Trainer Battle), Trainers'' Eyes Meet (Ace Trainer), Looker''s Sorrowful Theme',
   'main', 'newer_vgm', 232),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Retro 60''s - Full Range', NULL, 'Bicycle',
   'main', 'newer_vgm', 233),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Fingered', 'Studio Bass All - Full Range', NULL, 'Kalos Power Plant, Trainers'' Eyes Meet (Poke Fan), Aquacorde Town, It''s a Pokémon Battle!',
   'main', 'newer_vgm', 234),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Electric Picked', 'Rock P-Bass Pick - Full Range', NULL, 'Super Training: Let''s Super Train!, Super Training: Try Again...',
   'main', 'newer_vgm', 235),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Check Please Phatty', NULL, 'Secret Super Training!',
   'main', 'newer_vgm', 236),

  -- Rows 1117-1118: Steinberg — HALionOne
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Rev Cymbal', NULL, 'Battle! (Champion)',
   'main', 'newer_vgm', 237),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'SimpleSlap', NULL, 'Trainers'' Eyes Meet (Roller Skater)',
   'main', 'newer_vgm', 238),

  -- Rows 1119-1168: Steinberg — HALion Sonic
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Oct Bass', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 239),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Fooling', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer Battle), Team Flare Appears!',
   'main', 'newer_vgm', 240),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Lead', NULL, 'Battle! (Champion), Battle! (Mewtwo)',
   'main', 'newer_vgm', 241),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Saw Comp', 'pan right', 'Battle! (Champion)',
   'main', 'newer_vgm', 242),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '5th Lead', NULL, 'Battle! (Trainer), Battle! (Xerneas/Yveltal/Zygarde), Battle! (Successor Korrina), Battle! (Elite Four)',
   'main', 'newer_vgm', 243),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '60 Cent', 'Cutoff: ~50%, Resonance: ~40%, Highpass', 'Kalos Power Plant',
   'main', 'newer_vgm', 244),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Arp Sequence 2', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 245),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Arp Sequence 3', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 246),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Arp Sequence 4', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 247),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Arp Syncer', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 248),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bass Head', NULL, 'Battle! (Gym Leader), Battle! (World Champion)',
   'main', 'newer_vgm', 249),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bass Tube', NULL, 'Battle! (Elite Four), Battle! (Mewtwo), Battle! (Champion)',
   'main', 'newer_vgm', 250),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Boogie Bass', NULL, 'Battle! (Successor Korrina), Battle! (Xerneas/Yveltal/Zygarde), Battle! (Elite Four), Battle! (Champion), Battle! (Mewtwo)',
   'main', 'newer_vgm', 251),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bright Concert Piano', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 252),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bright Mini Lead', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 253),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Britney Pop 2', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 254),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Burly Beats 125bpm', 'each with a different pitch', 'Battle! (Elite Four), Battle! (Successor Korrina), Battle! (Mewtwo)',
   'main', 'newer_vgm', 255),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Classic Trance Lead', NULL, 'Battle! (Champion)',
   'main', 'newer_vgm', 256),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Crispy Two Step', NULL, 'Battle! (Successor Korrina)',
   'main', 'newer_vgm', 257),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Desert Wind', NULL, 'Battle! (Xerneas/Yveltal/Zygarde)',
   'main', 'newer_vgm', 258),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Distorted Breaks', 'each with a different pitch', 'Battle! (Elite Four), Battle! Battle! (Successor Korrina), Battle! (Mewtwo), Battle! (Champion)',
   'main', 'newer_vgm', 259),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Drum n Bass Lead 01', NULL, 'Battle! (Gym Leader), Battle! Battle! (Successor Korrina)',
   'main', 'newer_vgm', 260),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Eccentric Lead', 'Max velocity', 'Battle! (Xerneas/Yveltal/Zygarde)',
   'main', 'newer_vgm', 261),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Evolving Sequence', NULL, 'Battle! (Elite Four), Battle! (Mewtwo)',
   'main', 'newer_vgm', 262),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Fast Forward', NULL, 'Battle! (Elite Four), Battle! (Mewtwo)',
   'main', 'newer_vgm', 263),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Fat Pulse Saw', NULL, 'Battle! (Champion)',
   'main', 'newer_vgm', 264),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Flex Suitcase', NULL, 'Game Sync',
   'main', 'newer_vgm', 265),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Gaga Saw', NULL, 'Evolution, Trainers'' Eyes Meet (Ace Trainer), Battle! (Mewtwo)',
   'main', 'newer_vgm', 266),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Geometry', NULL, 'Battle! (Mewtwo)',
   'main', 'newer_vgm', 267),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Hard FM Seq', NULL, 'Battle! (Xerneas/Yveltal/Zygarde)',
   'main', 'newer_vgm', 268),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Hero', NULL, 'Battle! (Gym Leader), Battle! (Successor Korrina)',
   'main', 'newer_vgm', 269),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'High Freq Atmo', NULL, 'Battle! (Successor Korrina)',
   'main', 'newer_vgm', 270),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Lets Go Sync Lead', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 271),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Mod Rain', 'might be Techno Rain instead', 'Battle! (Mewtwo)',
   'main', 'newer_vgm', 272),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Osc Meets Amp', NULL, 'Battle! (Gym Leader), Battle! (Xerneas/Yveltal/Zygarde)',
   'main', 'newer_vgm', 273),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Rawtekk D&B 1', NULL, 'Battle! (Xerneas/Yveltal/Zygarde)',
   'main', 'newer_vgm', 274),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'ReChorder', NULL, 'Battle! (Xerneas/Yveltal/Zygarde)',
   'main', 'newer_vgm', 275),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Reso Saw Rhythm', NULL, 'Battle! (Mewtwo), Battle! (Champion)',
   'main', 'newer_vgm', 276),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Seashore', NULL, 'Battle! (Gym Leader)',
   'main', 'newer_vgm', 277),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Simple Square Solo', NULL, 'Battle! (Champion)',
   'main', 'newer_vgm', 278),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Sine Lead', NULL, 'Super Training!',
   'main', 'newer_vgm', 279),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Snappy Analog Bass', NULL, 'Boutique',
   'main', 'newer_vgm', 280),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'SONIC Dancer', NULL, 'Battle! (Elite Four), Trainers'' Eyes Meet (Ace Trainer)',
   'main', 'newer_vgm', 281),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Space Colony 2', NULL, 'Battle! (Xerneas/Yveltal/Zygarde)',
   'main', 'newer_vgm', 282),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Synth Rider 1', NULL, 'Battle! (Gym Leader), Battle! (Successor Korrina)',
   'main', 'newer_vgm', 283),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Thunder', NULL, 'Battle! (Xerneas/Yveltal/Zygarde)',
   'main', 'newer_vgm', 284),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Trance Lead MW', NULL, 'Battle! (Elite Four)',
   'main', 'newer_vgm', 285),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Tri Lead', NULL, 'Trainers'' Eyes Meet (Ace Trainer)',
   'main', 'newer_vgm', 286),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'VOODOO Guitar', 'Pan slightly left', 'Battle! (Elite Four)',
   'main', 'newer_vgm', 287),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Whistle Lead', NULL, 'Kalos Power Plant',
   'main', 'newer_vgm', 288),

  -- Rows 1169-1201: Steinberg — HALion Sonic SE — Artist / Studio Set
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Balinese Gamelan', NULL, 'Sushi High Roller',
   'main', 'newer_vgm', 289),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Bottle Blow', NULL, 'Trainers'' Eyes Meet (Furisode Girl), Kiloude City',
   'main', 'newer_vgm', 290),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Brass Fanfare', NULL, 'Victory! (Team Flare), PR Video BGM "Classical 1"',
   'main', 'newer_vgm', 291),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Cold Space Dust', NULL, 'The Ultimate Weapon Deployed, Team Flare Secret HQ',
   'main', 'newer_vgm', 292),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Dance Bass', NULL, 'Trainers'' Eyes Meet (Honeymooners)',
   'main', 'newer_vgm', 293),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Delicate DX', 'Turn down Hall Mix', 'Trainers'' Eyes Meet (Furisode Girl)',
   'main', 'newer_vgm', 294),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Ethno Attack', NULL, 'Trainers'' Eyes Meet (Black Belt)',
   'main', 'newer_vgm', 295),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Finest Lead', NULL, 'Boutique, Wonder Trade, Cyllage City',
   'main', 'newer_vgm', 296),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Gagaku Switch', NULL, 'Sushi High Roller',
   'main', 'newer_vgm', 297),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Hard Grand Piano', NULL, 'Changed into Basic Clothes (Girl)',
   'main', 'newer_vgm', 298),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Hi-Pass Lead', 'Turn down Delay Mix, use modwheel', 'Team Flare Secret HQ',
   'main', 'newer_vgm', 299),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Hip Hop Kit 2', NULL, 'Team Flare Appears!',
   'main', 'newer_vgm', 300),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Jazzy Kit', NULL, 'Dendemille Town',
   'main', 'newer_vgm', 301),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Modern Jazz Upright', NULL, 'Riding Skiddo',
   'main', 'newer_vgm', 302),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Orchestral Hits', NULL, 'Battle! (Team Flare), Cyllage City',
   'main', 'newer_vgm', 303),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Pinched Tympanum', 'Use Modulation', 'Team Flare Appears!, Battle! (Team Flare), Lysandre Labs, Battle! (Lysandre)',
   'main', 'newer_vgm', 304),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Polymer', NULL, 'Trainers'' Eyes Meet (Honeymooners)',
   'main', 'newer_vgm', 305),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Portamento Bass', NULL, 'Cyllage City',
   'main', 'newer_vgm', 306),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Pulse Modular', NULL, 'Trainers'' Eyes Meet! (Honeymooners)',
   'main', 'newer_vgm', 307),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Purple Child Organ', NULL, 'Wonder Trade',
   'main', 'newer_vgm', 308),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Radiation Lead', NULL, 'Battle! (Team Flare), Battle! (Lysandre), Team Flare Appears!',
   'main', 'newer_vgm', 309),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Rock Multi', NULL, 'Trainers'' Eyes Meet (Punk Guy)',
   'main', 'newer_vgm', 310),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Sci-Fi Tick', NULL, 'Trainers'' Eyes Meet (Psychic)',
   'main', 'newer_vgm', 311),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Slow Ensemble', NULL, 'PR Video BGM "Cool 2"',
   'main', 'newer_vgm', 312),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'SR Live Grand Piano', 'turn up delay and hall mix', 'Gate',
   'main', 'newer_vgm', 313),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'SR Premium Ac Gtr1', NULL, 'Dendemille Town, PR Video BGM "Cool 2"',
   'main', 'newer_vgm', 314),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'SR Single Coil Chorus', NULL, 'PR Video BGM "Cool 2"',
   'main', 'newer_vgm', 315),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Sub Boom Bass', NULL, 'Wonder Trade',
   'main', 'newer_vgm', 316),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'T9 Analog Kit', NULL, 'Anistar City, Cyllage City, Battle! (Lysandre), Battle! (Team Flare)',
   'main', 'newer_vgm', 317),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Vintage Digital Tines', 'Add delay', 'Wonder Trade',
   'main', 'newer_vgm', 318),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Voyager Bass', NULL, 'Gate',
   'main', 'newer_vgm', 319),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Warm Phaser String Pad NoteExp', NULL, 'Dark Skies',
   'main', 'newer_vgm', 320),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'YAMAHA S90ES Piano', NULL, 'Anistar City, Team Flare Secret HQ, PR Video BGM "Elegant 1"',
   'main', 'newer_vgm', 321),

  -- Rows 1202-1236: Steinberg — HALion Sonic SE — Basic Set
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 001] Acoustic Grand Piano', NULL, 'PR Video BGM "Rhythmical 4"',
   'main', 'newer_vgm', 322),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 002] Bright Grand Piano', NULL, 'PR Video BGM "Mature 2"',
   'main', 'newer_vgm', 323),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 005] Electric Piano 1', NULL, 'Gate, Mystery Gift',
   'main', 'newer_vgm', 324),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 009] Celesta', NULL, 'Dark Skies, Cyllage City',
   'main', 'newer_vgm', 325),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 012] Vibraphone', 'Turn down Tremolo Depth', 'Trainers'' Eyes Meet (Lass), Trainers'' Eyes Meet (Honeymooners), PR Video BGM "Cute 1", Bicycle',
   'main', 'newer_vgm', 326),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 013] Marimba', NULL, 'Trainers'' Eyes Meet! (Team Flare), Battle! (Team Flare)',
   'main', 'newer_vgm', 327),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 014] Xylophone', NULL, 'Riding Skiddo, Dendemille Town',
   'main', 'newer_vgm', 328),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 015] Tubular Bells', NULL, 'Changed into Classic Clothes (Boy), Changed into Classic Clothes (Girl), PR Video BGM "Elegant 3"',
   'main', 'newer_vgm', 329),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 022] Accordion', NULL, 'Dendemille Town, Riding Skiddo, Kiloude City',
   'main', 'newer_vgm', 330),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 024] Tango Accordion', NULL, 'Gogoat Shuttle',
   'main', 'newer_vgm', 331),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 030] Overdrive Guitar', NULL, 'PR Video BGM "Cool 2"',
   'main', 'newer_vgm', 332),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 031] Distortion Guitar', NULL, 'Trainers'' Eyes Meet! (Team Flare), Battle! (Lysandre)',
   'main', 'newer_vgm', 333),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 032] Guitar Harmonics', NULL, 'Trainers'' Eyes Meet (Black Belt)',
   'main', 'newer_vgm', 334),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 033] Acoustic Bass', NULL, 'Changed into Special Clothes (Boy), Changed into Special Clothes (Girl)',
   'main', 'newer_vgm', 335),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 034] Electric Bass (Finger)', NULL, 'Trainers'' Eyes Meet (Furisode Girl)',
   'main', 'newer_vgm', 336),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 037] Slap Bass 2', NULL, 'Cyllage City',
   'main', 'newer_vgm', 337),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 046] Pizzicato Strings', NULL, 'Dendemille Town, Team Flare Secret HQ, Sina and Dexio',
   'main', 'newer_vgm', 338),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 339),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', 'Add reverb in Victory! (Team Flare)', 'Changed into Classic Clothes (Boy), Changed into Classic Clothes (Girl), Victory! (Team Flare)',
   'main', 'newer_vgm', 340),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 050] String Ensemble 2', NULL, 'Geosenge Town, Gogoat Shuttle, Looker''s in Trouble!',
   'main', 'newer_vgm', 341),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 052] Synth Strings 2', NULL, 'Changed into Basic Clothes (Girl)',
   'main', 'newer_vgm', 342),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 056] Orchestra Hit', NULL, 'Battle! (Xerneas/Yveltal/Zygarde), Battle! (Champion)',
   'main', 'newer_vgm', 343),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 062] Brass Section', NULL, 'Trainers'' Eyes Meet (Roller Skater)',
   'main', 'newer_vgm', 344),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 075] Recorder', 'highpass EQ', 'Dendemille Town, Bicycle',
   'main', 'newer_vgm', 345),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 076] Pan Flute', NULL, 'Anistar City',
   'main', 'newer_vgm', 346),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 081] Lead 1 (Square)', NULL, 'Pokémon Healed',
   'main', 'newer_vgm', 347),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 106] Banjo', NULL, 'Riding Skiddo',
   'main', 'newer_vgm', 348),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 113] Tinkle Bell', 'for the intro', 'Sina and Dexio',
   'main', 'newer_vgm', 349),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 120] Reverse Cymbal', NULL, 'Trainers'' Eyes Meet! (Roller Skater), Battle! (World Champion), Trainers'' Eyes Meet! (Team Flare)',
   'main', 'newer_vgm', 350),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 129] Stereo GM Kit', 'cymbal', 'Boutique',
   'main', 'newer_vgm', 351),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 131] Jazz Kit', NULL, 'PR Video BGM "Elegant 1"',
   'main', 'newer_vgm', 352),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 132] Percussion', NULL, 'Riding Skiddo, Trainers'' Eyes Meet (Psychic), Gogoat Shuttle, Trainers'' Eyes Meet! (Furisode Girl)',
   'main', 'newer_vgm', 353),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 133] R&B Kit', 'layered with something else', 'Kalos Power Plant, Boutique',
   'main', 'newer_vgm', 354),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 134] Rock Kit', NULL, 'Sina and Dexio',
   'main', 'newer_vgm', 355),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', 'Digi Layer Keys', 'buried under the mix but it''s there', 'Battle! (Champion)',
   'main', 'newer_vgm', 356),

  -- Rows 1237-1278: Steinberg — HALion Sonic SE — Pro Set (with one FILL IN SET row at 1271)
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'A Difficult Phase', 'modwheel used a little', 'Trainers'' Eyes Meet! (Team Flare)',
   'main', 'newer_vgm', 357),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Accented Double Bass', NULL, 'Lysandre Labs',
   'main', 'newer_vgm', 358),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Acoustic Bass VX', NULL, 'Dendemille Town, PR Video BGM "Elegant 1"',
   'main', 'newer_vgm', 359),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Arctic Bells', NULL, 'Lysandre Labs, Happy Birthday from the Pokémon Center!, Dendemille Town, Anistar City, Cyllage City',
   'main', 'newer_vgm', 360),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Art Of Oohs', NULL, 'Scary House',
   'main', 'newer_vgm', 361),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Asian Temple Bells', NULL, 'Scary House',
   'main', 'newer_vgm', 362),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Autobahn', 'low velo, turn down delay mix', 'PR Video BGM "Cool 3"',
   'main', 'newer_vgm', 363),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Blues Harp', 'Turn down Hall Mix', 'Gogoat Shuttle',
   'main', 'newer_vgm', 364),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Classic FM Bass', NULL, 'Battle! (World Champion)',
   'main', 'newer_vgm', 365),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Classic Rock Drawbars', 'Turn Hall Mix down', 'Lysandre Labs, Changed into Special Clothes (Girl), Trainers'' Eyes Meet (Punk Guy), Trainers'' Eyes Meet! (Furisode Girl)',
   'main', 'newer_vgm', 366),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Chasing Waves', 'Turn Hall Mix down', 'Trainers'' Eyes Meet (Psychic)',
   'main', 'newer_vgm', 367),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Copper Bass', NULL, 'Trainers'' Eyes Meet! (Team Flare), Battle! (Team Flare)',
   'main', 'newer_vgm', 368),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Cutting Saws', NULL, 'Team Flare Secret HQ',
   'main', 'newer_vgm', 369),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Dark Crunchy Strat', 'turn chorus mix down', 'PR Video BGM "Thrilling 2"',
   'main', 'newer_vgm', 370),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Distortion Guitar VX', NULL, 'Trainers'' Eyes Meet! (Team Flare), Trainers'' Eyes Meet! (Black Belt)',
   'main', 'newer_vgm', 371),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Dr. Caligari', NULL, 'The Ultimate Weapon Deployed',
   'main', 'newer_vgm', 372),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Dry Martini', NULL, 'PR Video BGM "Cool 3"',
   'main', 'newer_vgm', 373),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'DX100 Bass', NULL, 'Team Flare Secret HQ, Gogoat Shuttle',
   'main', 'newer_vgm', 374),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Elementary Particles', NULL, 'Trainers'' Eyes Meet! (Team Flare)',
   'main', 'newer_vgm', 375),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Expressive Flute', NULL, 'GTS, Route 8, PR Video BGM "Elegant 1"',
   'main', 'newer_vgm', 376),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Fairground Organ', NULL, 'Trainers'' Eyes Meet (Black Belt)',
   'main', 'newer_vgm', 377),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Get A Club Guitar', 'probably something else (absynth?)', 'Changed into Sporty Clothes (Girl)',
   'main', 'newer_vgm', 378),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Lead Bites', NULL, 'Cyllage City, Lysandre Labs, Battle! (Team Flare), Trainers'' Eyes Meet (Psychic)',
   'main', 'newer_vgm', 379),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Mellow Grand Piano', NULL, 'Sina and Dexio',
   'main', 'newer_vgm', 380),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Minor Lead', NULL, 'Trainers'' Eyes Meet (Black Belt)',
   'main', 'newer_vgm', 381),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Mondo Lead', NULL, 'Battle! (World Champion)',
   'main', 'newer_vgm', 382),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Mono Rock Kit 1', NULL, 'PR Video BGM "Mature 2"',
   'main', 'newer_vgm', 383),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Piano And Voices', NULL, 'Together with Shauna',
   'main', 'newer_vgm', 384),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Piano And Pad', NULL, 'Boutique',
   'main', 'newer_vgm', 385),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Pick Bass VX', NULL, 'PR Video BGM "Cute 1", PR Video BGM "Rhythmical 2", Trainers'' Eyes Meet (Black Belt)',
   'main', 'newer_vgm', 386),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Precision Roundwound', NULL, 'PR Video BGM "Cool 2"',
   'main', 'newer_vgm', 387),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Prog Rock Organ', 'Turn down Hall Mix', 'Trainers'' Eyes Meet (Roller Skater), Trainers'' Eyes Meet (Punk Guy)',
   'main', 'newer_vgm', 388),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Pulse Width Lead', NULL, 'Battle! (Team Flare), Trainers'' Eyes Meet (Roller Skater)',
   'main', 'newer_vgm', 389),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Scratches', 'boutique: G2, F#2, C3', 'Boutique, Trainers'' Eyes Meet (Psychic)',
   'main', 'newer_vgm', 390),

  -- Row 1271: path_bank "FILL IN SET" (CSV anomaly, preserved verbatim)
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'FILL IN SET', 'SyncDrone Bass', 'Layered with Copper Bass, requires a lot of editing', 'Battle! (Team Flare)',
   'main', 'newer_vgm', 391),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Titanium', NULL, 'Kalos Power Plant',
   'main', 'newer_vgm', 392),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Too Much Heat', NULL, 'Battle! (World Champion)',
   'main', 'newer_vgm', 393),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Touch of Teebee', NULL, 'Trainers'' Eyes Meet (Youngster)',
   'main', 'newer_vgm', 394),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Tremolo Wah Mark II', NULL, 'Cyllage City',
   'main', 'newer_vgm', 395),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Triangular Lead', NULL, 'Battle! (Mewtwo), Kalos Power Plant',
   'main', 'newer_vgm', 396),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Vintage Mk I', NULL, 'PR Video BGM "Cute 1"',
   'main', 'newer_vgm', 397),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Wah Fifths', NULL, 'Trainers'' Eyes Meet (Psychic)',
   'main', 'newer_vgm', 398),

  -- Rows 1279-1282: Ueberschall — Astral Electro Flux
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Astral Electro Flux' COLLATE NOCASE),
   'Percussion Loops -> Percussion 140 -> Industry ID 138', '01nse138_pneuma_x_1', 'Use Elastik''s Time Editor', 'Battle! (Lysandre), Team Flare Secret HQ',
   'main', 'newer_vgm', 399),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Astral Electro Flux' COLLATE NOCASE),
   'Percussion Loops -> Percussion 140 -> Industry ID 138', '03nse138_pneuma_x_1', NULL, 'Battle! (Lysandre)',
   'main', 'newer_vgm', 400),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Astral Electro Flux' COLLATE NOCASE),
   'Synth Loops -> Atmos -> Atmo ID', '02syn138_airplay_x_1', NULL, 'Battle! (Lysandre)',
   'main', 'newer_vgm', 401),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Astral Electro Flux' COLLATE NOCASE),
   'Synth Loops -> Atmos -> Atmo ID', '04syn138_galactic voice_x_1', NULL, 'Battle! (Lysandre)',
   'main', 'newer_vgm', 402),

  -- Rows 1283-1295: UVI — PlugSound Pro series
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Acoustic Grand Piano', NULL, 'Hurry Along 2, Friends Theme "Friends Forever"',
   'main', 'newer_vgm', 403),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Rock Piano', NULL, 'Mystery Gift',
   'main', 'newer_vgm', 404),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '07-Accordions', 'Accordion Diatonic 1', NULL, 'Pokémon Center',
   'main', 'newer_vgm', 405),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08-Mallets & co', 'Marimba', NULL, 'Pokémon Link, Route 1, Hurry Along 1, Hurry Along 2, Obtained an Item!',
   'main', 'newer_vgm', 406),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08-Mallets & co', 'Music Box', NULL, 'Friends Theme "A New Meeting", Battle! (Friend), Friends Theme ''Friends Forever'', PR Video BGM "Cute 2", Battle! (Xerneas/Yveltal/Zygarde)',
   'main', 'newer_vgm', 407),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08-Mallets & co', 'Vibraphone 1', NULL, 'Pokémon Link',
   'main', 'newer_vgm', 408),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '03-Stylistic Kits -> 03-Groove Kits', 'Groove Kit 02', NULL, 'Mystery Gift',
   'main', 'newer_vgm', 409),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '03-Stylistic Kits -> 03-Groove Kits', 'Groove Kit 09', NULL, 'Game Sync',
   'main', 'newer_vgm', 410),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synth and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Bell Litte', NULL, 'Trainers'' Eyes Meet (Youngster)',
   'main', 'newer_vgm', 411),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synth and co)' COLLATE NOCASE),
   '03-Tines-Bells', 'Christofer', NULL, 'Obtained an Item!',
   'main', 'newer_vgm', 412),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '34-Electric Bass 1', NULL, 'Mystery Gift',
   'main', 'newer_vgm', 413),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '07-Ensemble', '56-Orchestra Hit', NULL, 'Super Training!',
   'main', 'newer_vgm', 414),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '10-Pipe', '79-Whistle', 'MOTU Ethno Instrument instead?', 'PR Video BGM "Cool 4"',
   'main', 'newer_vgm', 415),

  -- Rows 1296-1323: Vienna Symphonic Library — Special Edition Vol. 1
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 01 Solo strings', '01S Solo violin', NULL, 'Professor Sycamore, Kalos Region Theme',
   'main', 'newer_vgm', 416),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '21S Strings violins', NULL, 'Aquacorde Town, Route 2, Battle Spot, Vaniville Town, Laverre City, Snowbelle City, Kalos Region Theme, An Adventure Is Beginning',
   'main', 'newer_vgm', 417),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '22S Strings violas', NULL, 'Coumarine City, Snowbelle City',
   'main', 'newer_vgm', 418),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '23S Strings cellos', NULL, 'Santalune Forest, Aquacorde Town, Kalos Region Theme, Vaniville Town',
   'main', 'newer_vgm', 419),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '24S Strings basses', 'Pizzicato articulation', 'Vaniville Town, Laverre City, Snowbelle City',
   'main', 'newer_vgm', 420),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 03 Orchestral strings', '25S Str violins+violins-8va', NULL, 'Trainers'' Eyes Meet (Swimmer♀), It''s a Pokémon Battle!, Battle! (Friend)',
   'main', 'newer_vgm', 421),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 05 Harp', '41S Harp', NULL, 'Battle! (Champion), Vaniville Town, Kalos Region Theme, An Adventure Is Beginning',
   'main', 'newer_vgm', 422),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 11 Flutes', '01S Piccolo', NULL, 'Route 2, An Adventure Is Beginning, Vaniville Town',
   'main', 'newer_vgm', 423),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 11 Flutes', '02S Flute 1', NULL, 'Aquacorde Town, Camphrier Town, Snowbelle City, An Adventure Is Beginning, Vaniville Town',
   'main', 'newer_vgm', 424),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 11 Flutes', '06S Piccolo + flute 1 - 8va', NULL, 'Secret Super Training!, Victory! (Gym Leader), Kalos Region Theme',
   'main', 'newer_vgm', 425),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 12 Oboes', '11S Oboe french', NULL, 'Vaniville Town, Aquacorde Town, Route 2, Professor Sycamore''s Laboratory, Laverre City, Trainers'' Eyes Meet (Butler), Laverre City, Geosenge Town, Snowbelle City, Kalos Region Theme, An Adventure Is Beginning',
   'main', 'newer_vgm', 426),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 14 Bassoons', '31 Bassoon', NULL, 'Route 2, An Adventure Is Beginning',
   'main', 'newer_vgm', 427),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 21 Horns', '03S Horn ensemble - a4', NULL, 'Battle! (Wild Pokemon), Battle! (Trainer Battle), Vaniville Town',
   'main', 'newer_vgm', 428),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '12S Trumpet ensemble', NULL, 'Aquacorde Town, Route 2, Battle Spot, Battle! (Wild Pokémon), Battle! (Trainer), Battle! (Friend), Super Training!, Kalos Region Theme, It''s a Pokémon Battle!',
   'main', 'newer_vgm', 429),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '12S Trumpet C', NULL, 'Snowbelle City, Looker''s Sorrowful Theme',
   'main', 'newer_vgm', 430),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 23 Trombones', '21S Tenor Trombone', NULL, 'PR Video BGM "Lively 2"',
   'main', 'newer_vgm', 431),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 23 Trombones', '25S Trombone ensemble', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer)',
   'main', 'newer_vgm', 432),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 31 Keyboards', '01S Bosendorfer grand piano', NULL, 'Snowbelle City',
   'main', 'newer_vgm', 433),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 31 Keyboards', '31 Celesta', NULL, 'Santalune Forest, Kalos Power Plant',
   'main', 'newer_vgm', 434),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '05S Glockenspiel', NULL, 'KISEKI, Route 2, Kalos Power Plant, Snowbelle City, Kalos Region Theme',
   'main', 'newer_vgm', 435),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '06S Xylophone', NULL, 'A Poké Radar Hit!, Battle Spot, Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 436),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '07S Vibraphone', NULL, 'Battle! (Champion), Looker''s Sorrowful Theme, Super Training: Success!, Changed into Elegant Clothes! (Girl), Pokédex Evaluation... Keep at It!, Laverre City',
   'main', 'newer_vgm', 437),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 32 Mallets', '08S Marimbaphone', NULL, 'Santalune Forest, Trainers'' Eyes Meet (Twins), Route 2, Pokémon Village, Obtained a Key Item!',
   'main', 'newer_vgm', 438),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '11S Timpani', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer)',
   'main', 'newer_vgm', 439),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '12S Drums', NULL, 'Victory! (Gym Leader), Snowbelle City, Kalos Region Theme',
   'main', 'newer_vgm', 440),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '13S Cymbals+Gongs', 'A-due Cymbals', '-Used throughout the soundtrack-',
   'main', 'newer_vgm', 441),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '14S Percussion', 'Castanets (notes C5-B5)', 'Laverre City, Snowbelle City',
   'main', 'newer_vgm', 442),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '155 Tubular bells', NULL, 'Tower of Mastery',
   'main', 'newer_vgm', 443),

  -- Rows 1324-1328: Vienna Symphonic Library — Special Edition Vol. 2
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 02 Chamber strings', '11S Chamber violins', NULL, 'Friends Theme "Friends Forever"',
   'main', 'newer_vgm', 444),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 02 Chamber strings', '13S Chamber cellos', NULL, 'Friends Theme "Friends Forever"',
   'main', 'newer_vgm', 445),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 12 Oboes', '12S Oboe vienna', NULL, 'Victory! (Gym Leader)',
   'main', 'newer_vgm', 446),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 13 Clarinets', '24S Basset horn', NULL, 'Route 2',
   'main', 'newer_vgm', 447),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2' COLLATE NOCASE),
   'MATRIX -> 21 Horns', '01S Horn vienna', NULL, 'Battle Spot',
   'main', 'newer_vgm', 448),

  -- Rows 1329-1334: XLN Audio — Addictive Drums
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Bundle - Jazz Beats', 'Jazz Beat 003', NULL, 'Trainers'' Eyes Meet (Tourist)',
   'main', 'newer_vgm', 449),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 016 - Jazz Beat', 'Song 016 - Jazz Beat (All)', NULL, 'How About a Song? "Jubilife City"',
   'main', 'newer_vgm', 450),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Beats -> Song 021 - Jazz Beat', 'Song 021 - Jazz Beat (Bridge)', NULL, 'Trainers'' Eyes Meet (Maid)',
   'main', 'newer_vgm', 451),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', NULL, 'Friends Theme "A New Meeting", It''s a Pokémon Battle!, Santalune City, Battle! (Wild Pokémon), Battle! (Trainer Battle), Super Training!, Trainers'' Eyes Meet (Ace Trainer), etc.',
   'main', 'newer_vgm', 452),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Rock', '90s Rock', NULL, 'PR Video BGM "Lively 2"',
   'main', 'newer_vgm', 453),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Rock', 'MiddleGround', NULL, 'Trainers'' Eyes Meet (Swimmer♂)',
   'main', 'newer_vgm', 454),

  -- Rows 1335-1348: Zero-G — various
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Brazil Chillout' COLLATE NOCASE),
   'Construction Kits -> 10 Milk n Honey 60bpm E', 'MNH Guitar Pt2', NULL, 'PR Video BGM "Elegant 1"',
   'main', 'newer_vgm', 455),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Brazil Chillout' COLLATE NOCASE),
   'Construction Kits -> 22 Tristeza 60bpm E', 'TRI Guitar', NULL, 'PR Video BGM "Elegant 1"',
   'main', 'newer_vgm', 456),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Chemical Beats' COLLATE NOCASE),
   'Guitar Loops-144', '144-Guitar Loop 05', 'Cropped loop, pitched up slightly, add reverb', 'Battle! (Lysandre)',
   'main', 'newer_vgm', 457),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 20 Upfront Lead Guitar' COLLATE NOCASE),
   'Track 21 - Funky -> Sample 3', 'Wah Classic Mutes 126 4', NULL, 'Cyllage City',
   'main', 'newer_vgm', 458),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'N.Y. CUTZ' COLLATE NOCASE),
   'CD 2 -> Track 45', 'Guitar Quik Lix 1', 'Timestamp 0:29', 'Trainers'' Eyes Meet (Roller Skater)',
   'main', 'newer_vgm', 459),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Phantom Horns' COLLATE NOCASE),
   'SOLOS -> FLUTE_SOLO', 'F05', NULL, 'PR Video BGM "Rhythmical 4"',
   'main', 'newer_vgm', 460),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Phantom Horns' COLLATE NOCASE),
   'SOLOS -> FLUTE_SOLO', 'F12', NULL, 'PR Video BGM "Rhythmical 4"',
   'main', 'newer_vgm', 461),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Phantom Horns' COLLATE NOCASE),
   'SOLOS -> FLUTE_SOLO', 'F23', NULL, 'PR Video BGM "Rhythmical 4"',
   'main', 'newer_vgm', 462),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Phantom Horns' COLLATE NOCASE),
   'SOLOS -> FLUTE_SOLO', 'F31', NULL, 'PR Video BGM "Rhythmical 4"',
   'main', 'newer_vgm', 463),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total Funk' COLLATE NOCASE),
   '-', 'Two Day Cycle-C', NULL, 'PR Video BGM "Rhythmical 2"',
   'main', 'newer_vgm', 464),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total House' COLLATE NOCASE),
   'Groove Loops -> Guitar Loops 125-BPM', '125 Sledge-A#', NULL, 'PR Video BGM "Rhythmical 2", Trainers'' Eyes Meet (Roller Skater)',
   'main', 'newer_vgm', 465),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total House' COLLATE NOCASE),
   'Groove Loops -> Guitar Loops 120-BPM', 'Eko Wah', NULL, 'PR Video BGM "Cool 2"',
   'main', 'newer_vgm', 466),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Total House' COLLATE NOCASE),
   'Groove Loops -> Guitar Loops 140-BPM', 'Feedga-B', NULL, 'PR Video BGM "Cool 3"',
   'main', 'newer_vgm', 467),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'World Pack' COLLATE NOCASE),
   'World Pack Instruments -> Ethnic Koto', 'Koto Gliss Up-A3', NULL, 'Trainers'' Eyes Meet! (Furisode Girl)',
   'main', 'newer_vgm', 468),

  -- Rows 1350-1364: 32kHz block (samples originally from Pokémon Black & White; still main)
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'AKAI S-1000', 'Flute', NULL, 'Tile Puzzle, Tile Puzzle Complete!',
   'main', 'newer_vgm', 469),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '017 Power Set 2', 'Kick, acoustic snare', 'Head It',
   'main', 'newer_vgm', 470),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2.5 XL' COLLATE NOCASE),
   'Ethnic', 'Accordion Musette', NULL, 'Head It',
   'main', 'newer_vgm', 471),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2.5 XL' COLLATE NOCASE),
   'Orchestra', 'Orchestra Strings', NULL, 'Tile Puzzle',
   'main', 'newer_vgm', 472),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2.5 XL' COLLATE NOCASE),
   'Orchestra', 'String Orchestra', NULL, 'Tile Puzzle',
   'main', 'newer_vgm', 473),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   'Acoustic Kits', 'GM Kit', 'Hihats', 'Head It',
   'main', 'newer_vgm', 474),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   'Acoustic Kits', 'Rock Kit', 'Crash, toms', 'Head It, Tile Puzzle, Tile Puzzle Complete!',
   'main', 'newer_vgm', 475),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trombone Ensemble', NULL, 'Berry Picker',
   'main', 'newer_vgm', 476),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trumpet Ensemble', NULL, 'Berry Picker, Head It, Tile Puzzle, Tile Puzzle Complete!',
   'main', 'newer_vgm', 477),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Xylophone', NULL, 'Berry Picker',
   'main', 'newer_vgm', 478),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Acoustic Grand Piano', NULL, 'Tile Puzzle',
   'main', 'newer_vgm', 479),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08-Mallets & co', 'Vibraphone 1', NULL, 'Head It',
   'main', 'newer_vgm', 480),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 01-Deluxe Bass', 'Ampeg Ac. Bass -Full', NULL, 'Berry Picker, Head It, Tile Puzzle, Tile Puzzle Complete!',
   'main', 'newer_vgm', 481),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '04-Guitar', '28-Electric Guitar', NULL, 'Head It',
   'main', 'newer_vgm', 482),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '17-GM Drum Kits', '5-GM Analog', '909 snare, hihats', 'Tile Puzzle',
   'main', 'newer_vgm', 483),

  -- Rows 1366-1414: Stuff to Find -> stuff_to_find
  -- Row 1366
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'British Thumb combi KS A-1', 'not 100% sure, but its not kfl', 'PR Video BGM "Mature 3"',
   'stuff_to_find', 'newer_vgm', 484),

  -- Row 1367: preset has commas inside quotes
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '17 Saxophones', NULL, 'Alto Sax (the fall expression, double check)', 'Trainers'' Eyes Meet (Honeymooners)',
   'stuff_to_find', 'newer_vgm', 485),

  -- Row 1368: MusicLab RealLPC
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealLPC' COLLATE NOCASE),
   '-', 'RealLPC', NULL, 'PR Video BGM "Lively 1"',
   'stuff_to_find', 'newer_vgm', 486),

  -- Row 1369: MusicLab RealStrat
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealStrat' COLLATE NOCASE),
   '-', 'Strat', 're-amp and enable wah for pr video studio', 'PR Video Studio, Trainers'' Eyes Meet (Swimmer♂), PR Video BGM "Mature 3"',
   'stuff_to_find', 'newer_vgm', 487),

  -- Row 1370
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '04 - Electronic Kits', 'Nein Oh Nein Kit', 'Has enough different cymbals for all the pitches', 'Battle! (Xerneas/Yveltal/Zygarde)',
   'stuff_to_find', 'newer_vgm', 488),

  -- Row 1371: empty path_bank/preset
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   NULL, NULL, 'missing synths', 'All Sato songs that have synths',
   'stuff_to_find', 'newer_vgm', 489),

  -- Row 1372
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 3 - Electric Pianos', 'Mark II Phaser Ballad', 'maybe?', 'PR Video Studio',
   'stuff_to_find', 'newer_vgm', 490),

  -- Row 1373
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Synth -> 3 - Bass', 'Bearded', NULL, 'PR Video BGM "Cute 3"',
   'stuff_to_find', 'newer_vgm', 491),

  -- Row 1374
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Vintage -> Digital Machines', 'Metabell', 'maybe? i think? im not sure at all', 'Kiloude City',
   'stuff_to_find', 'newer_vgm', 492),

  -- Row 1375
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kore 2' COLLATE NOCASE),
   '(discontinued software)', NULL, 'there is more for sure', 'All Sato songs that have synths',
   'stuff_to_find', 'newer_vgm', 493),

  -- Row 1376
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Urban Arsenal 1 -> Bass', 'Apologize This', 'double check this', 'Battle! (Team Flare), Battle! (Lysandre)',
   'stuff_to_find', 'newer_vgm', 494),

  -- Row 1377: empty path_bank/preset
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   NULL, NULL, 'synth bell (closest stuff ive found is here)', 'Evolution',
   'stuff_to_find', 'newer_vgm', 495),

  -- Row 1378
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Just The Simple Dreamy Piano Again', 'maybe', 'Game Sync',
   'stuff_to_find', 'newer_vgm', 496),

  -- Row 1379
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> Tambourines', '84-Tambourine', 'check if this is a plugsound loop instead', 'Route 1',
   'stuff_to_find', 'newer_vgm', 497),

  -- Row 1380: empty preset
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Floating', NULL, 'pitched down one semitone', 'Shopping',
   'stuff_to_find', 'newer_vgm', 498),

  -- Row 1381
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments -> Bass - Acoustic Upright', 'Trilian Ac 1 - Full Range Brite', 'might be a diff preset', 'Game Sync',
   'stuff_to_find', 'newer_vgm', 499),

  -- Row 1382
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Crystal', NULL, 'Anistar City',
   'stuff_to_find', 'newer_vgm', 500),

  -- Row 1383
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'SynthBass1', 'seemingly layered with smth else', 'Evolution',
   'stuff_to_find', 'newer_vgm', 501),

  -- Row 1384: empty path_bank/preset, notes has commas
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   NULL, NULL, 'music box, vibes', 'Kiloude City, PR Video BGM "Cute 2", Anistar City',
   'stuff_to_find', 'newer_vgm', 502),

  -- Row 1385: empty path_bank/preset
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   NULL, NULL, 'Long guitar chords (not the later melody)', 'Battle! (Elite Four)',
   'stuff_to_find', 'newer_vgm', 503),

  -- Row 1386
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Dreamsequence', 'disputed', 'Battle! (Gym Leader)',
   'stuff_to_find', 'newer_vgm', 504),

  -- Row 1387
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Square Wave Bass', 'layered with GM Synth Bass 1', 'Evolution',
   'stuff_to_find', 'newer_vgm', 505),

  -- Row 1388
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Phat Rat', NULL, 'Battle! (Team Flare)',
   'stuff_to_find', 'newer_vgm', 506),

  -- Row 1389
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 128] Gunshot', NULL, 'Battle! (Champion)',
   'stuff_to_find', 'newer_vgm', 507),

  -- Row 1390
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Ulysses Siren', 'maybe', 'PR Video BGM "Cute 3"',
   'stuff_to_find', 'newer_vgm', 508),

  -- Row 1391
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Raspy Voices', 'possibly used as the pad', 'Evolution',
   'stuff_to_find', 'newer_vgm', 509),

  -- Row 1392: empty path_bank/preset
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 2 PLUS (?)' COLLATE NOCASE),
   NULL, NULL, 'saxophone', 'PR Video BGM "Lively 2", Let''s Super Train!',
   'stuff_to_find', 'newer_vgm', 510),

  -- Row 1393
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   NULL, NULL, 'Reverse cymbals?', 'Battle! (Gym Leader), Battle! (Successor Korrina), Battle! (Elite Four), Battle! (Champion), Battle! (Xerneas/Yveltal/Zygarde), Battle! (Mewtwo)',
   'stuff_to_find', 'newer_vgm', 511),

  -- Row 1394
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   NULL, NULL, 'pizzicato', 'Mystery Gift',
   'stuff_to_find', 'newer_vgm', 512),

  -- Row 1395
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   NULL, NULL, 'loop', 'Battle! (Friend)',
   'stuff_to_find', 'newer_vgm', 513),

  -- Rows 1396-1412: ?,? rows -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'rhythm guitar loop', 'Battle! (Team Flare)',
   'stuff_to_find', 'newer_vgm', 514),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'pipe organ + arp at loop end', 'Battle! (Xerneas/Yveltal/Zygarde)',
   'stuff_to_find', 'newer_vgm', 515),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'drum kit', 'Looker''s in Trouble!',
   'stuff_to_find', 'newer_vgm', 516),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'low phasing synth pad', 'The Ultimate Weapon Deployed',
   'stuff_to_find', 'newer_vgm', 517),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'saw/hichiriki, low drum/taiko', 'Trainers'' Eyes Meet (Furisode Girl)',
   'stuff_to_find', 'newer_vgm', 518),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'drum kit', 'A Mysterious Figure',
   'stuff_to_find', 'newer_vgm', 519),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth lead', 'Battle! (World Champion)',
   'stuff_to_find', 'newer_vgm', 520),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'record scratch', 'Battle! (World Champion)',
   'stuff_to_find', 'newer_vgm', 521),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'shakers (either stylus or plugsound)', 'Hurry Along 1, Hurry Along 2',
   'stuff_to_find', 'newer_vgm', 522),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'very fast release FM E-Piano (not halion?)', 'Wonder Trade',
   'stuff_to_find', 'newer_vgm', 523),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'electronic drum elements', 'The Kalos Power Plant, Boutique',
   'stuff_to_find', 'newer_vgm', 524),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'clock (also appears in HarmoKnight)', 'Anistar City',
   'stuff_to_find', 'newer_vgm', 525),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'drums', 'PR Video BGM "Rhythmical 1", PR Video BGM "Thrilling 1"',
   'stuff_to_find', 'newer_vgm', 526),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synth bass', 'PR Video BGM "Lively 3"',
   'stuff_to_find', 'newer_vgm', 527),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'most of the synths', 'PR Video BGM "Cool 3"',
   'stuff_to_find', 'newer_vgm', 528),

  -- Row 1411: ?,?,,Orchestral Snare,... (has preset)
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Orchestral Snare', 'independence snare is not a match', 'GTS',
   'stuff_to_find', 'newer_vgm', 529),

  -- Row 1412
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'plucked synth thing', 'Bicycle',
   'stuff_to_find', 'newer_vgm', 530),

  -- Rows 1413-1414: empty mfr/product -> Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'clap', 'Boutique',
   'stuff_to_find', 'newer_vgm', 531),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'piano chords', 'Boutique',
   'stuff_to_find', 'newer_vgm', 532),

  -- Rows 1416-1419: Early Tracks (eshop trailer) -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '12S Trumpet Ensemble', 'Sforzando', 'Title Screen (Early Version)',
   'unused', 'newer_vgm', 533),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '11S Timpani', NULL, 'Title Screen (Early Version)',
   'unused', 'newer_vgm', 534),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '13S Cymbals+Gongs', NULL, 'Title Screen (Early Version)',
   'unused', 'newer_vgm', 535),

  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '14S Percussion', NULL, 'Title Screen (Early Version)',
   'unused', 'newer_vgm', 536),

  -- Rows 1421-1458: Early Music (Teraleak / Freakleak - xy_120831_1606【rommk版】) -> unused
  -- Row 1421
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'Victory! (Team Flare)',
   'unused', 'newer_vgm', 537),

  -- Row 1422
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '11 Industrial Percussion', 'Cymbals fx', NULL, 'Trainers'' Eyes Meet! (Team Flare) (Removed version), Battle! (Team Flare) (Early Lysandre, VS_FLARE)',
   'unused', 'newer_vgm', 538),

  -- Row 1423
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '19 Synthesizers', 'Future 1', NULL, 'Trainers'' Eyes Meet (Unknown) (BGM_EYE_04)',
   'unused', 'newer_vgm', 539),

  -- Row 1424
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'Pop Kit', NULL, 'Battle! (Unova Wild Pokémon) Arrange (Placeholder Theme)',
   'unused', 'newer_vgm', 540),

  -- Row 1425
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Bass', 'Ad Voca', NULL, 'Trainers'' Eyes Meet! (Team Flare) (Removed version), Battle! (Team Flare) (Early Lysandre, VS_FLARE)',
   'unused', 'newer_vgm', 541),

  -- Row 1426
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 144-Electric Flower', '144-Electric Flower Kick', NULL, 'Super Training Menu (SP_MENU)',
   'unused', 'newer_vgm', 542),

  -- Row 1427
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Squashed', '135-Squashed Beat', NULL, 'Battle! (Team Flare) (Early Lysandre, VS_FLARE)',
   'unused', 'newer_vgm', 543),

  -- Row 1428
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 160-Find The Exit', '160-Find The Exit Combo', NULL, 'Battle! (Team Flare) (Early Lysandre, VS_FLARE)',
   'unused', 'newer_vgm', 544),

  -- Row 1429
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   '-', 'Startup Preset', NULL, 'Super Training Menu (SP_MENU)',
   'unused', 'newer_vgm', 545),

  -- Row 1430
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Fooling', NULL, 'Battle! (Trainer) Draft by Junichi Masuda, Battle! (Wild Pokémon) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 546),

  -- Row 1431
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '5th Lead', NULL, 'Battle! (Trainer) Draft by Junichi Masuda, Battle! (Wild Pokémon) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 547),

  -- Row 1432
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bass Head', NULL, 'Battle! (Trainer) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 548),

  -- Row 1433
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bass Pedals', 'might be used for gym leader, not sure yet', 'Battle! (Trainer) Draft by Junichi Masuda, Battle! (Wild Pokémon) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 549),

  -- Row 1434
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bright Mini Lead', NULL, 'Battle! (Wild Pokémon) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 550),

  -- Row 1435
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Disarm', NULL, 'Battle! (Trainer) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 551),

  -- Row 1436
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'One Finger Picking GLP', NULL, 'Battle! (Trainer) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 552),

  -- Row 1437
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'VOODOO Guitar', 'Pan slightly left', 'Battle! (Elite Four) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 553),

  -- Row 1438
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Pinched Tympanum', NULL, 'Trainers'' Eyes Meet! (Team Flare) (Removed version), Battle! (Team Flare) (Early Lysandre, VS_FLARE)',
   'unused', 'newer_vgm', 554),

  -- Row 1439
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Radiation Lead', NULL, 'Battle! (Team Flare) (Early Lysandre, VS_FLARE)',
   'unused', 'newer_vgm', 555),

  -- Row 1440
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Shiny Trombone NoteExp', NULL, 'Battle! (Trainer) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 556),

  -- Row 1441
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 001] Acoustic Grand Piano', NULL, 'Battle! (Trainer) Draft by Junichi Masuda, Battle! (Wild Pokémon) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 557),

  -- Row 1442
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 014] Xylophone', NULL, 'Victory! (Team Flare)',
   'unused', 'newer_vgm', 558),

  -- Row 1443
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', NULL, 'Battle! (Trainer) Draft by Junichi Masuda, Battle! (Wild Pokémon) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 559),

  -- Row 1444
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Victory! (Team Flare)',
   'unused', 'newer_vgm', 560),

  -- Row 1445
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 063] Synth Brass 1', NULL, 'Battle! (Trainer) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 561),

  -- Row 1446
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 074] Flute', NULL, 'Battle! (Wild Pokémon) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 562),

  -- Row 1447
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 079] Whistle', 'Layered with 5th Lead', 'Battle! (Wild Pokémon) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 563),

  -- Row 1448
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Distortion Guitar VX', NULL, 'Battle! (Team Flare) (Early Lysandre, VS_FLARE)',
   'unused', 'newer_vgm', 564),

  -- Row 1449
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Astral Electro Flux' COLLATE NOCASE),
   'Synth Loops -> Atmos -> Atmo ID', '04syn138_galactic voice_x_1', NULL, 'Trainers'' Eyes Meet! (Team Flare) (Removed version), Battle! (Team Flare) (Early Lysandre, VS_FLARE)',
   'unused', 'newer_vgm', 565),

  -- Row 1450
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Astral Electro Flux' COLLATE NOCASE),
   'Synth Loops -> Atmos -> Atmo ID', '02syn138_airplay_x_1', NULL, 'Trainers'' Eyes Meet! (Team Flare) (Removed version), Battle! (Team Flare) (Early Lysandre, VS_FLARE)',
   'unused', 'newer_vgm', 566),

  -- Row 1451
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '07-Ensemble', '56-Orchestra Hit', NULL, 'A Tight Spot During Battle! (BATTLEPINCH)',
   'unused', 'newer_vgm', 567),

  -- Row 1452
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '12S Trumpet Ensemble', 'Sforzando', 'Super Training Clear (SP_CLEAR), Pokémon Theme (BGM_POKEMON_THEME)',
   'unused', 'newer_vgm', 568),

  -- Row 1453
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '11S Timpani', NULL, 'Pokémon Theme (BGM_POKEMON_THEME)',
   'unused', 'newer_vgm', 569),

  -- Row 1454
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '13S Cymbals+Gongs', NULL, 'Pokémon Theme (BGM_POKEMON_THEME)',
   'unused', 'newer_vgm', 570),

  -- Row 1455
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '14S Percussion', NULL, 'Pokémon Theme (BGM_POKEMON_THEME)',
   'unused', 'newer_vgm', 571),

  -- Row 1456: empty path_bank/preset
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   NULL, NULL, 'TBA', 'A Tight Spot During Battle! (BATTLEPINCH), Unused Event (BGM_E_04), Battle! (Unova Wild Pokémon) Arrange (Placeholder Theme), Super Training Clear (SP_CLEAR)',
   'unused', 'newer_vgm', 572),

  -- Row 1457
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', NULL, 'A Tight Spot During Battle! (BATTLEPINCH), Trainers'' Eyes Meet (Unknown) (BGM_EYE_04)',
   'unused', 'newer_vgm', 573),

  -- Row 1458
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Chemical Beats' COLLATE NOCASE),
   'Guitar Loops-144', '144-Guitar Loop 05', 'Cropped loop, pitched up slightly, add reverb', 'Battle! (Team Flare) (Early Lysandre, VS_FLARE)',
   'unused', 'newer_vgm', 574),

  -- Rows 1460-1488: Early Music (Teraleak / Freakleak - y20130122_075257) -> unused
  -- Row 1460
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Big Fish Audio' COLLATE NOCASE AND p.name = 'Nu Metal City' COLLATE NOCASE),
   'Nu Metal 13 090 E', '13 guitar 02', 'Loop edited at certain parts', 'Battle! (Team Flare Grunt) Early Mix',
   'unused', 'newer_vgm', 575),

  -- Row 1461
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitars', 'Rock Guitar', NULL, 'Battle! (Friend) Early Kageyama Mix',
   'unused', 'newer_vgm', 576),

  -- Row 1462
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '12th String Auto Strum 2', NULL, 'Battle! (Champion) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 577),

  -- Row 1463
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Lead', NULL, 'Battle! (Champion) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 578),

  -- Row 1464
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Bass', NULL, 'Battle! (Champion) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 579),

  -- Row 1465
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '5th Lead', NULL, 'Battle! (Xerneas / Yveltal) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 580),

  -- Row 1466
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '80s Hard', NULL, 'It''s A Pokémon Battle! Early Kageyama Mix',
   'unused', 'newer_vgm', 581),

  -- Row 1467
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Bad Radio', NULL, 'Battle! (Mewtwo) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 582),

  -- Row 1468
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Boogie Bass', NULL, 'Battle! (Champion) Draft by Junichi Masuda, Battle! (Xerneas / Yveltal) Draft by Junichi Masuda, Battle! (Mewtwo) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 583),

  -- Row 1469
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Burly Beats 125bpm', NULL, 'Battle! (Mewtwo) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 584),

  -- Row 1470
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Chick Lead', NULL, 'Battle! (Mewtwo) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 585),

  -- Row 1471
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Desert Wind', NULL, 'Battle! (Xerneas / Yveltal) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 586),

  -- Row 1472
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Eccentric Lead', NULL, 'Battle! (Xerneas / Yveltal) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 587),

  -- Row 1473
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Fat Pulse Saw', NULL, 'Battle! (Champion) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 588),

  -- Row 1474
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Hard FM Seq', NULL, 'Battle! (Xerneas / Yveltal) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 589),

  -- Row 1475
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Hybrid String Section', NULL, 'Battle! (Champion) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 590),

  -- Row 1476
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'One Finger Blues Rock Rock Gtr', NULL, 'Battle! (Wild Pokémon) Early Kageyama Mix',
   'unused', 'newer_vgm', 591),

  -- Row 1477
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'One Finger Picking GLP', NULL, 'Battle! (Champion) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 592),

  -- Row 1478
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Osc Meets Amp', NULL, 'Battle! (Xerneas / Yveltal) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 593),

  -- Row 1479
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'ReChorder', NULL, 'Battle! (Xerneas / Yveltal) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 594),

  -- Row 1480
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Reso Saw Rhythm', NULL, 'Battle! (Champion) Draft by Junichi Masuda, Battle! (Mewtwo) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 595),

  -- Row 1481
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Space Colony 2', NULL, 'Battle! (Xerneas / Yveltal) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 596),

  -- Row 1482
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Simple Square Solo', NULL, 'Battle! (Champion) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 597),

  -- Row 1483
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'VOODOO Guitar', 'Pan slightly left', 'Battle! (Elite Four) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 598),

  -- Row 1484
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Pinched Tympanum', NULL, 'Battle! (Team Flare Grunt) Early Mix',
   'unused', 'newer_vgm', 599),

  -- Row 1485
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Orchestra Hits', NULL, 'Battle! (World Champion) Draft by Minako Adachi, Battle! (Team Flare Grunt) Early Mix',
   'unused', 'newer_vgm', 600),

  -- Row 1486
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 040] Synth Bass 2', NULL, 'Battle! (World Champion) Draft by Minako Adachi',
   'unused', 'newer_vgm', 601),

  -- Row 1487
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 056] Orchestra Hit', NULL, 'Battle! (Xerneas / Yveltal) Draft by Junichi Masuda, Battle! (Champion) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 602),

  -- Row 1488 (final row)
  ((SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', 'Digi Layer Keys', NULL, 'Battle! (Champion) Draft by Junichi Masuda',
   'unused', 'newer_vgm', 603);

-- Patch raw_source for the non-commercial Live Recording / Sample rows (positions 1 and 2).
-- These rows were inserted with product_id NULL; we stash the original col A/B descriptor here.
UPDATE usages SET raw_source = 'Live Recording: Hideaki Kuroda — Suhr Classic'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y')
    AND position = 1;

UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Cry (Fletchling)'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon X and Pokémon Y')
    AND position = 2;
