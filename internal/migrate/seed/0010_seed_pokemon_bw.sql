-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 380-705
-- Pokémon Black and Pokémon White (Nintendo DS, September 18, 2010).
-- Composers: Shota Kageyama, Go Ichinose, Hitomi Sato, Junichi Masuda, Minako Adachi.
-- Subsection headers in source: row 380 (game header), 381-382 (annotations),
-- 550 (annotation: "All other documented instruments were ripped from previous Pokémon titles."),
-- 613 (Stuff to Find), 625 (Bonus Tracks), 640 (BW aif-6 (Leaked Samples)).
-- Per task spec: main rows 383-549 + 551-612 -> main; 614-624 -> stuff_to_find;
-- 626-639 -> bonus; 641-705 -> unused (leaked / not-in-game samples).

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('MOTU'),
  ('Sonic Reality'),
  ('Ueberschall'),
  ('Vienna Symphonic Library'),
  ('MusicLab'),
  ('Modartt'),
  ('Image-Line'),
  ('Nemesys'),
  ('Yellow Tools');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'Red Box Vol.4 (Special and Unusual)',         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 11 - Classic Orchestra',      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 13 - Choirs',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 15 - Dance Drums',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 27 - Dancefloor Bass',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 48 - Disco Fever',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 51 - Classic Orchestra 2',    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 55 - Retro Sampler',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'              COLLATE NOCASE), 'Discovery Japan',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'              COLLATE NOCASE), 'Sound Effects CD Series 1 - LIFE',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'              COLLATE NOCASE), 'Sound Effects CD Series 3 - TRAFFIC',         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'              COLLATE NOCASE), 'Sound Effects CD Series 5 - ANIMAL',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'              COLLATE NOCASE), 'Sound Effects CD Series 6 - NATURE',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'              COLLATE NOCASE), 'Voice Percussion',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Goliath',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'ProSamples Vol. 16 - Guitar & Bass',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'ProSamples Vol. 18 - Steinway Grand Piano',   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Ra',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Symphonic Choirs',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Symphonic Orchestra',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EDIROL'                      COLLATE NOCASE), 'STUDIO Canvas SD-90',                         'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'IK Multimedia'               COLLATE NOCASE), 'SampleTank 2 XL',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'IK Multimedia'               COLLATE NOCASE), 'SampleTank 2.5 XL',                           'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'IK Multimedia'               COLLATE NOCASE), 'Omnisynth 2',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Image-Line'                  COLLATE NOCASE), 'Sample Fusions: Killer Tweaks II',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Image-Line'                  COLLATE NOCASE), 'Sample Fusions: The Lo-Fi Box',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools'        COLLATE NOCASE), 'Independence Pro',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Midi Mark Productions'       COLLATE NOCASE), 'Vocal Bytes Vol. 3',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Modartt'                     COLLATE NOCASE), 'PianoTeq 3',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MOTU'                        COLLATE NOCASE), 'Ethno Instrument',                            'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                    COLLATE NOCASE), 'RealGuitar',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Battery 3',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Kontakt Factory Library',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Nemesys'                     COLLATE NOCASE), 'Gary Garritan''s GigaHarp',                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Nine Volt Audio'             COLLATE NOCASE), 'Taiko 1',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'AKAI Professional'           COLLATE NOCASE), 'Sound Library Vol. 2 - S1000/S1100 Samples',  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                      COLLATE NOCASE), 'SOUND Canvas SC-88 Pro',                      'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonic Reality'               COLLATE NOCASE), 'OmniSynth 2',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Sound Ideas'                 COLLATE NOCASE), 'Series 1000 General Sound Effects Library',   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sound Ideas'                 COLLATE NOCASE), 'The General Series 6000',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Omnisphere',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Stylus RMX',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'Groove Agent SE',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'HALionOne',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'                 COLLATE NOCASE), 'Drum&Bass Flashtrackz',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'                 COLLATE NOCASE), 'Houseworx!',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (02-Fretted)',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (03-Drums and Percs)',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (04-Synths and co)',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (06-Orchestral)',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (Loops)',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Victor'                      COLLATE NOCASE), '効果音ライブラリー3-動物',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'    COLLATE NOCASE), 'VI Epic Orchestra 1.0',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'    COLLATE NOCASE), 'Special Edition Vol. 1',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'                      COLLATE NOCASE), 'QY70',                                        'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Yellow Tools'                COLLATE NOCASE), 'Independence Pro',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Creative Essentials Vol. 09 Guitar Separates','Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Creative Essentials Vol. 13 Jungle Frenzy',   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Creative Essentials Vol. 16 Drum & Percussion Tools','Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Creative Essentials Vol. 17 Bass Separates',  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Creative Essentials Vol. 24 Funk Construction','Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Creative Essentials Vol. 30 Orchestral Flavours','Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Dance Pack 1',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'ProSamples Vol. 9 - Future Beats 2',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'ProSamples Vol. 23 - Trip Hop',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                     COLLATE NOCASE), 'Unknown',                                     NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Black and Pokémon White',
   'Nintendo DS',
   'September 18, 2010',
   'Shota Kageyama, Go Ichinose, Hitomi Sato, Junichi Masuda, Minako Adachi',
   'shota kageyama, go ichinose, hitomi sato, junichi masuda, minako adachi',
   'This section is VERY simplified; the BW section on the "Detailed Pokémon Sound Sources" sheet has more comprehensive info. Many samples in Black/White are reused from previous games (Diamond/Pearl, HGSS). All other documented instruments were ripped from previous Pokémon titles (per source CSV annotation, row 550). Bonus Tracks composers: Hitomi Sato, Shota Kageyama, Minako Adachi, Go Ichinose.');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   NULL,
   NULL, NULL, 'Confirmed by Go Ichinose', 'Village Bridge',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol.4 (Special and Unusual)' COLLATE NOCASE),
   'CD5 -> synth atmospheres', 'jet fx', 'as SFX', 'Game Freak Logo',
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol.4 (Special and Unusual)' COLLATE NOCASE),
   'CD5 -> synth atmospheres', 'space ship', 'as SFX', 'Game Freak Logo',
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 13 - Choirs' COLLATE NOCASE),
   'Classic Choir', 'AHH', NULL, 'Ending "Onward to Our Own Futures", Black City, Marvelous Bridge, N''s Castle, Team Plasma Plots, Trainers'' Eyes meet (Scientist), Decisive Battle! (N), Battle! (Ghetsis), etc.',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'BD 061-120', 'BD 061-090', '15A-BDE066 (Kick)', 'Opelucid City (B + W), Battle! (Strong Wild Pokémon), Battle! (Cheren/Bianca), Battle! (Team Plasma), Battle! (Elite Four), Decisive Battle! (N), Battle! (Reshiram/Zekrom), etc.',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'BD 061-120', 'BD 091-120', '15A-BDE120 (Kick + Crash)', 'Battle! (Strong Wild Pokémon), Battle! (Cheren/Bianca), Battle! (Team Plasma), Battle! (Elite Four), Battle! (Champion), Decisive Battle! (N), Battle! (Reshiram/Zekrom), etc.',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'HH 001-052', 'HH 001-026', 'Closed and open hi-hats', 'Battle! (Strong Wild Pokémon), Battle! (Team Plasma), Battle! (Elite Four), Battle! (N), Decisive Battle! (N), Battle! (Reshiram/Zekrom), Battle! (Legendary Pokémon), etc.',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'SD 061-120', 'SD 091-120', '15A-SDE105 (Snare)', 'Opelucid City (B), Trainers'' Eyes meet (Team Plasma), Battle! (Strong Wild Pokémon), Battle! (Team Plasma)',
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'SD 181-240', 'SD 181-210', '15A-SDE182 (Snare)', 'Battle! (Cheren/Bianca)',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 27 - Dancefloor Bass' COLLATE NOCASE),
   'Multisampled Basses -> 01-04', '27A-BSE01B', 'FM Bass', 'Opelucid City (B), Team Plasma Appears!, Battle! (Wild Pokémon), Battle! (Strong Wild Pokémon), Battle! (Team Plasma), Decisive Battle! (N)',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 48 - Disco Fever' COLLATE NOCASE),
   'Partition D -> STRING-LICKS', '48H-STR07-', 'Used as a string ensemble', 'Battle! (Team Plasma)',
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 48 - Disco Fever' COLLATE NOCASE),
   'Partition C -> BRASS-LICKS', '48U-BRS06-', 'Used as a brass ensemble', 'Battle! (N), Decisive Battle! (N)',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'AKAI S-1000', 'Flute', NULL, 'Title Screen, Nuvema Town, Accumula Town, Castelia City, Icirrus City, Skyarrow Bridge, Champion Alder, Battle! (Wild Pokémon), Battle! (Gym Leader), Battle! (Elite Four), etc.',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 1 - LIFE' COLLATE NOCASE),
   'Track 71 - HOUSEHOLD', 'CLOCK TICKING-2', NULL, 'Decisive Battle! (N)',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 3 - TRAFFIC' COLLATE NOCASE),
   'Track 5 - HELICOPTER', 'HELICOPTER-5', 'as SFX', 'Driftveil Drawbridge',
   'main', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 3 - TRAFFIC' COLLATE NOCASE),
   'Track 11 - JET PLANE', 'JET PLANE-3', 'as SFX', 'Driftveil Drawbridge',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 3 - TRAFFIC' COLLATE NOCASE),
   'Track 16 - ELECTRIC TRAIN', 'ELECTRIC TRAIN-2', 'as SFX', 'Battle Subway',
   'main', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 5 - ANIMAL' COLLATE NOCASE),
   'Track 26 - DOG', 'HOWL', 'as SFX', 'N''s Dragon (W)',
   'main', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 6 - NATURE' COLLATE NOCASE),
   'Track 28 - WIND', 'WIND-2', 'as SFX', 'Skyarrow Bridge',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Voice Percussion' COLLATE NOCASE),
   'type-A -> 080', 'voice_per-80~05', NULL, 'Village Bridge',
   'main', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Voice Percussion' COLLATE NOCASE),
   'type-A -> 080', 'voice_per-80~08', NULL, 'Village Bridge',
   'main', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Pop Brass -> Alto Sax', 'A Sax leg sus', NULL, 'Castelia City, Nimbasa City, Route 12 (Summer), Musical: "A Sweet Soirée", Trainers'' Eyes meet (Roughneck)',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Pop Brass -> Trumpet', 'TP susmf', NULL, 'Title Screen, Opelucid City (B), Battle! (Wild Pokémon), Battle! (Strong Wild Pokémon), Battle! (Team Plasma), Battle! (Elite Four), Battle! (N), Decisive Battle! (N), etc.',
   'main', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Perc -> Gongs', 'Chinese Gong 34 Inches', 'Note C4', 'Coronation Day',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Instruments -> Full Chorus', 'FULLCHORUS AH MOD', NULL, 'Coronation Day, The Dragon Awakes, Pokémon World Championships Final',
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Instruments -> Soloists', 'ALTO Solo KS C0-A#0', 'C0 articulation', 'Musical: "Carnival Pokémon"',
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Multis -> Mens and Womens WB', 'WOMENS WB HARD MOD', 'type "ge tis" into Word Builder', 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Multis -> Mens and Womens WB', 'MENS WB HARD MOD', 'type "ge tis" into Word Builder', 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Sopranos -> SOPR Vowels', 'SOPR ee DXF C0-D#0', 'C0 articulation, vel <= 101, modulation 80', 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch Chimes', NULL, 'Coronation Day, Title Screen, Ending "Onward to Our Own Futures", Route 12, Driftveil Drawbridge, Battle Subway, Entralink, N''s Castle, Cold Storage, Victory Road',
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> Effects', '6FH Rips F', NULL, 'Battle! (Reshiram/Zekrom), Battle! (Kyurem)',
   'main', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> Effects', '6FH Rips S', NULL, 'Battle! (Reshiram/Zekrom), Battle! (Kyurem)',
   'main', 'newer_vgm', 32),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set -> Drums', '026 Analog Set', 'Used for: Compressed Reverbed Snare (E1)', 'Battle! (Legendary Pokémon), Battle! (Elite Four)',
   'main', 'newer_vgm', 33),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '011 000 Music Box', NULL, 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 34),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '031 000 DistortionGt', NULL, 'Battle! (Team Plasma)',
   'main', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '082 000 Saw Wave', NULL, 'Battle! (Gym Leader), Battle! (Elite Four), Battle! (N), Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '115 000 Steel Drums', NULL, 'Undella Town (Summer)',
   'main', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '117 000 Taiko', NULL, 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '122 000 Breath Noise', NULL, 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '126 002 Car-Stop', NULL, 'Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '126 004 Car-Crash', NULL, 'Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 41),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '128 000 Gunshot', NULL, 'Decisive Battle! (N)',
   'main', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '039 000 MG303 Bass', 'New samples at 127 velocity', 'Battle! (N), Battle! (Elite Four), Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '048 000 Timpani 2', NULL, 'Battle! (Gym Leader), Battle! (Ghetsis), Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '056 000 Orch Hit 2', NULL, 'Battle! (Gym Leader), Battle! (Elite Four), Battle! (N), Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 45),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '001 StandardSet2', 'Used for: New kick drum, castanets, cowbell', 'Surf, Undella Town (Summer), Castelia City, Route 2, Skyarrow Bridge, Gate, Cold Storage, Relic Castle, Cheren''s Theme, Champion Alder, Battle! (Cheren/Bianca), etc.',
   'main', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '017 Power Set 2', 'Used for: Various drum elements', 'Bicycle, Surf, Abyssal Ruins, Ending "Onward to Our Own Futures", Nimbasa City, Driftveil City, Battle! (Gym Leader), Battle! (Cheren/Bianca), Battle! (Legendary Pokémon), etc.',
   'main', 'newer_vgm', 47),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '025 Dance Set', 'Used for: Open Conga', 'Abyssal Ruins, Lacunosa Town, Undella Town (Summer), Driftveil City, Icirrus City, White Forest, Marvelous Bridge, Someone''s Entralink, Champion Alder, Spin Trade',
   'main', 'newer_vgm', 48),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Special Set 1', '090 335 Drive2', 'Two guitar feedback samples', 'Battle! (Team Plasma)',
   'main', 'newer_vgm', 49),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2 XL' COLLATE NOCASE),
   'Drums -> Acoustic', 'Room', 'Used for various drum elements', 'Nacrene City, Gear Station',
   'main', 'newer_vgm', 50),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2 XL' COLLATE NOCASE),
   'Ethnic', 'Accordion Musette', NULL, 'Nuvema Town, Striaton City, Nacrene City, Icirrus City, Route 10, Battle! (Cheren/Bianca), Spin Trade',
   'main', 'newer_vgm', 51),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2 XL' COLLATE NOCASE),
   'Orchestra', 'Orchestra Strings', NULL, 'Nacrene City, Icirrus City, Route 1, Route 2, Pokémon Center, Trainers'' Eyes Meet (Lass), Mystery Gift, Spin Trade',
   'main', 'newer_vgm', 52),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2 XL' COLLATE NOCASE),
   'Orchestra', 'String Orchestra', 'Used in most tracks', 'Title Screen, Surf, Ending "Onward to Our Own Futures", Route 4, Route 6, Route 10, N''s Castle, Battle! (Wild Pokémon), Battle! (Trainer Battle), Battle! (Gym Leader), etc.',
   'main', 'newer_vgm', 53),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2 XL' COLLATE NOCASE),
   'Percussion', 'Marimba', NULL, 'Driftveil City, Icirrus City, White Forest, Route 1, Route 2, Pokémon Center, Relic Castle, Hurry Along 1, Hurry Along 2, Battle! (Wild Pokémon), Battle! (Strong Wild Pokémon), etc.',
   'main', 'newer_vgm', 54),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2 XL' COLLATE NOCASE),
   'Winds', 'Clarinet', NULL, 'Striaton City, Route 1, Route 2, Route 6 (Autumn), Skyarrow Bridge, Pokémon Center, Chargestone Cave, Lostlorn Forest, Prisoner to a Formula, Musical Theater, etc.',
   'main', 'newer_vgm', 55),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> Electric J-Bass', 'Fng J-Bass Long sc2', NULL, 'Nimbasa City',
   'main', 'newer_vgm', 56),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '05 Acoustic Guitars', 'Acoustic Guitar 1 Spanish', NULL, 'Relic Song',
   'main', 'newer_vgm', 57),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '13 Orchestral Brass (KHSO)', 'KHSO Trumpets Stc', NULL, 'Victory! (Team Plasma)',
   'main', 'newer_vgm', 58),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '13 Orchestral Brass (KHSO)', 'KHSO Trombones Stc', NULL, 'A New Adventure!, Title Screen, Battle! (Elite Four), Battle! (Champion), Battle! (Reshiram/Zekrom), Battle! (Kyurem), Victory! (Team Plasma)',
   'main', 'newer_vgm', 59),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '14 Orchestral Strings (KHSO)', 'KHSO All Strings Sus 1', NULL, 'Lostlorn Forest, Victory! (Team Plasma)',
   'main', 'newer_vgm', 60),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '14 Orchestral Strings (KHSO)', 'KHSO All Strings Spc Up', NULL, 'Victory! (Team Plasma)',
   'main', 'newer_vgm', 61),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   'Yellow Tools Culture -> industrial & orchestra -> snares', 'snare 12 x 6.5 high m1 fx 1', 'A#5, Common Snare Roll Sample', 'Title Screen, Victory! (Team Plasma), Battle! (Legendary Pokémon), Battle! (Reshiram/Zekrom), Battle! (Kyurem)',
   'main', 'newer_vgm', 62),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 25 - Romio -> Sample 19', 'Noo', NULL, 'Village Bridge',
   'main', 'newer_vgm', 63),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 58 - Vocoder Zoom -> Sample 1', 'You got me up', NULL, 'Opelucid City (Black)',
   'main', 'newer_vgm', 64),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 59 - Vocoder -> Sample 16', 'I cant stop', NULL, 'Opelucid City (Black)',
   'main', 'newer_vgm', 65),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'Ethno Instrument' COLLATE NOCASE),
   'Geographic -> Middle East-Mediterranean -> Maghreb Violin', 'Maghreb Violin short', NULL, 'Opelucid City (White)',
   'main', 'newer_vgm', 66),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'GM Kit', 'Used for: Various drum elements', 'Route 1, Pokémon Center, Accumula Town, Striaton City, Battle! (Gym Leader), Bicycle, Undella Town (Summer), Village Bridge, Lostlorn Forest, Musical: "Carnival Ludicolo!", etc.',
   'main', 'newer_vgm', 67),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'Rock Kit', 'Used for: Crash Cymbal and Toms', 'Castelia City, Relic Castle, Tubeline Bridge, Opelucid City (White), Route 10, Undella Town (Summer), Looker''s Theme, Battle! (Legendary Pokémon), Gear Station, etc.',
   'main', 'newer_vgm', 68),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 3 - Electric Pianos', 'Mark I Classic', NULL, 'Pokémon Center, Gate, Dreamyard, Nacrene City, Bianca''s Theme, Trainers'' Eyes Meet (Twins), Bicycle, Driftveil Drawbridge, Abyssal Ruins, Musical: "Pokémon Smash!", etc.',
   'main', 'newer_vgm', 69),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitar', 'Rock Guitar', 'Only in Kontakt 3. Velocity 97-125, toggle distortion', 'Gear Station',
   'main', 'newer_vgm', 70),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 5 - Guitar', 'Nylon Guitar', NULL, 'Nuvema Town, Trainers'' Eyes Meet (Lass), Pokémon Center, Castelia City, Champion Alder, Cedric Juniper, Anville Town, Icirrus City, Route 10, Lacunosa Town, Village Bridge, etc.',
   'main', 'newer_vgm', 71),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Upright Bass', NULL, 'Mystery Gift',
   'main', 'newer_vgm', 72),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Pop Kit', 'Used for: Kick and Crash Cymbal', 'Accumula Town, Trainers'' Eyes Meet (Twins), Icirrus City, Tubeline Bridge, Route 10, Looker''s Theme, Lacunosa Town, Nintendo Wi-Fi Connection, Unity Tower, Dress Up with Props',
   'main', 'newer_vgm', 73),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Harp', NULL, 'Battle! (Trainer Battle), Surf, Victory! (Team Plasma), Pokémon League, Embracing One''s Duty, Lostlorn Forest, The Curtain for the Musical Rises!, The Royal Unova, Entralink, etc.',
   'main', 'newer_vgm', 74),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Violin Ensemble', 'Pizzicato Articulation', 'Battle! (Wild Pokémon), Team Plasma Plots, Prisoner to a Formula, Dreamyard, Anville Town, Chargestone Cave, Trainers'' Eyes Meet (Scientist), Victory Road, Lostlorn Forest, etc.',
   'main', 'newer_vgm', 75),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Cello Ensemble', 'Pizzicato Articulation', 'Team Plasma Plots, Prisoner to a Formula, Dreamyard, Anville Town, Chargestone Cave, Trainers'' Eyes Meet (Scientist), Victory Road, Lostlorn Forest, Entralink, etc.',
   'main', 'newer_vgm', 76),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 2 - VSL Woodwinds', 'Oboe', 'Sustain Articulation', 'Title Screen, Trainers'' Eyes Meet (Gentleman), Relic Castle, Dragonspiral Tower, Battle! (Reshiram/Zekrom/ Kyurem), Opelucid City (White), White Forest, Entralink',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'French Horn Ensemble', 'Sustain Articulation', 'Title Screen, Striaton City, Dreamyard, Trainers'' Eyes Meet (Backpacker), Pokémon Gym, Ghetsis'' Ambitions, Ending "Onward to Our Own Futures", Unity Tower, Entralink, etc.',
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trombone Ensemble', 'Sustain Articulation', 'Title Screen, Driftveil City, Looker''s Theme, Trainers'' Eyes Meet (Pokéfan), Victory Lies Before You!, Battle! (Champion), Entralink, Pokémon World Championships Final, etc.',
   'main', 'newer_vgm', 79),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trumpet Ensemble', 'Sustain Articulation', 'Title Screen, Trainers'' Eyes Meet (Backpacker), Pokémon Gym, Battle! (Gym Leader), Professor Juniper, Nimbasa City, Mistralton City, Surf, Unity Tower, Musical: "Stardom", etc.',
   'main', 'newer_vgm', 80),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Tuba', 'Sustain Articulation', 'Route 6, Pokémon League, Victory Road, Trainers'' Eyes Meet (Backpacker), Battle! (Trainer Battle), Battle! (Battle Subway Trainer)',
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Cymbals a due', NULL, 'Coronation Day, A New Adventure!, Title Screen, Ending "Onward to Our Own Futures", Icirrus City, Route 4, Route 6, Pokémon Center, Pokémon League, N''s Castle, Farewell, etc.',
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Xylophone', NULL, 'Route 4 (Autumn), There''s Trouble!',
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 5 - Orchestral Percussion', 'Various Percussion', 'Used for castanet', 'Striaton City, Musical: "Forest Stroll", Trainers'' Eyes Meet (Twins)',
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 5 - Orchestral Percussion', 'Tambourine', NULL, 'Route 1, Bianca''s Theme, Trainers'' Eyes Meet (Twins)',
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> Metallophones', 'Steel Drums', NULL, 'Decisive Battle! (N)',
   'main', 'newer_vgm', 86),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Nine Volt Audio' COLLATE NOCASE AND p.name = 'Taiko 1' COLLATE NOCASE),
   'Instrument', 'TO BE FILLED', 'left channel is sampled', 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '126 008 Starship', 'First few seconds are cut off. Effects need research', 'Game Freak Logo',
   'main', 'newer_vgm', 88),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Reality' COLLATE NOCASE AND p.name = 'OmniSynth 2' COLLATE NOCASE),
   'Omnisynth 2 GM', '010 Glockenspeil', 'Uses the reverb from the preset', 'Evolution',
   'main', 'newer_vgm', 89),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Reality' COLLATE NOCASE AND p.name = 'OmniSynth 2' COLLATE NOCASE),
   'Omnisynth 2 GM', '012 Vibraphone', 'Uses the reverb from the preset', 'Battle! (Champion), Mystery Gift, Pokemon Center',
   'main', 'newer_vgm', 90),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Reality' COLLATE NOCASE AND p.name = 'OmniSynth 2' COLLATE NOCASE),
   'Omnisynth 2 GM', '017 Drawbar Org DRY', NULL, 'Mystery Gift',
   'main', 'newer_vgm', 91),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Reality' COLLATE NOCASE AND p.name = 'OmniSynth 2' COLLATE NOCASE),
   'Omnisynth 2 GM', '036 Fretless DRY', NULL, 'Pokémon Center, Icirrus City',
   'main', 'newer_vgm', 92),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Reality' COLLATE NOCASE AND p.name = 'OmniSynth 2' COLLATE NOCASE),
   'Omnisynth 2 GM', '040 SynBass2 DRY', NULL, 'Spin Trade',
   'main', 'newer_vgm', 93),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Reality' COLLATE NOCASE AND p.name = 'OmniSynth 2' COLLATE NOCASE),
   'Omnisynth 2 GM', '056 ORCH HIT', 'Uses the reverb from the preset', 'A Tight Spot During Battle!',
   'main', 'newer_vgm', 94),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'Series 1000 General Sound Effects Library' COLLATE NOCASE),
   'SYNTHETIC: WHISTLING POLAR WIND,WEATHER', 'WIND', '#1028-59-01', 'Fusion Flare/Fusion Bolt SFX',
   'main', 'newer_vgm', 95),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'LARGE FOREST FIRE: CRACKLE, RUMBLE', 'FIRE, FOREST', '#6040-32-01', 'The Dragon Awakes (B)',
   'main', 'newer_vgm', 96),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'METAL DRAGGING ON METAL FOLEY', 'METAL, SQUEAL', '#6040_39', 'N''s Dragon (B)',
   'main', 'newer_vgm', 97),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'PASS BY: CATAPULTED BALL OF FIRE', 'FIRE, BALL', '#6040-30-01', 'The Dragon Awakes (B)',
   'main', 'newer_vgm', 98),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Organs', 'Pipe Organ Cathedral', NULL, 'Ending "Onward to Our Own Futures", N''s Castle, Decisive Battle! (N)',
   'main', 'newer_vgm', 99),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 102-Troxie', '102-Troxie', NULL, 'Musical: "MELOETTAAA!!!"',
   'main', 'newer_vgm', 100),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 121-Studio 54', '121-Studio 54 a', NULL, 'Musical: "Pokémon Smash!"',
   'main', 'newer_vgm', 101),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Koto', NULL, 'Lostlorn Forest',
   'main', 'newer_vgm', 102),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Shakuhachi', NULL, 'Lostlorn Forest',
   'main', 'newer_vgm', 103),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Drum Content', 'Tekno Kit', NULL, 'Game Freak Logo',
   'main', 'newer_vgm', 104),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'Pro Set', 'Mondo Lead', NULL, 'Musical: "Pokémon Smash!", Musical: "MELOETTAAA!!!"',
   'main', 'newer_vgm', 105),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'Studio Set', 'Big 80s Kit', 'C#2 cymbal (cut for the suspended cymbal)', 'Lostlorn Forest and many others',
   'main', 'newer_vgm', 106),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'Studio Set', 'Hard Sync Solo', NULL, 'Opelucid City (Black), Team Plasma Appears!, Musical: "Stardom", Trainers'' Eyes Meet (Team Plasma), Battle! (Strong Wild Pokémon), Battle! (Team Plasma), Battle! (Elite Four)',
   'main', 'newer_vgm', 107),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'Studio Set', 'T9 Analog Kit', 'Used for kick and clap/snare Thing', 'Opelucid City (Black), Battle Subway, Dragonspiral Tower, Musical: "Stardom", Battle! (Team Plasma), Battle! (Elite Four), Decisive Battle! (N), Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 108),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'Studio Set', 'Tack Piano', NULL, 'A Ferris Wheel Ride Together',
   'main', 'newer_vgm', 109),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Drum&Bass Flashtrackz' COLLATE NOCASE),
   'Partition A -> #04  170 BPM', '04 DR 170', NULL, 'Congratulations on Entering the Hall of Fame!',
   'main', 'newer_vgm', 110),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Houseworx!' COLLATE NOCASE),
   'Partition B -> VOLUME 001', '086H-LP125', 'Main Drum Loop, Track 19 in CDDA Version', 'Musical: "Stardom"',
   'main', 'newer_vgm', 111),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Houseworx!' COLLATE NOCASE),
   'Partition C -> VOLUME 004', '038PCLP125', 'Triangle Loop, Track 40 in CDDA Version', 'Musical: "Stardom"',
   'main', 'newer_vgm', 112),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Houseworx!' COLLATE NOCASE),
   'Partition H -> VOLUME 007', 'H07CLAP', 'Clap Sample, Track 90 in CDDA Version', 'Musical: "Stardom"',
   'main', 'newer_vgm', 113),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Houseworx!' COLLATE NOCASE),
   'Partition B -> VOLUME 018', '025HHLP125', 'Add-on HiHat Loop, Track 36 in CDDA Version', 'Musical: "Stardom"',
   'main', 'newer_vgm', 114),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 07-Mallets & co', 'Music Box', NULL, 'Black City, Prisoner to Formula, Route 6 (Winter), Trainers'' Eyes Meet (Twins), The Pokémon Child, N',
   'main', 'newer_vgm', 115),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '03-Harpsichords & co', 'French Harpsichord', NULL, 'Nuvema Town, Opelucid City (Black), Route 12 (Autumn), Village Bridge, Battle! (Team Plasma)',
   'main', 'newer_vgm', 116),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '03-Harpsichords & co', 'Harpsichord 16+8', 'Sample octaves', 'Musical: "Carnival Pokémon"',
   'main', 'newer_vgm', 117),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs > 01-High End Organs', 'Full Organ', NULL, 'Abyssal Ruins, Nacrene City, Castelia City, Driftveil City, Tubeline Bridge, Gear Station, Someone''s Entralink, Battle! (Strong Wild Pokémon), Battle! (Team Plasma)',
   'main', 'newer_vgm', 118),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs > 01-High End Organs', 'Jazz Organ', NULL, 'Mistralton City, A Ferris Wheel Ride Together, Dress Up with Props, Game Sync, Musical: "Carnival Pokémon", Musical: "Charming Munna", Musical: "Carnival Ludicolo!"',
   'main', 'newer_vgm', 119),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08-Mallets & co', 'Vibraphone 1', NULL, 'Surf, Congratulations on Entering the Hall of Fame!, Lacunose City, Nacrene City, Opelucid City (White), Route 1, Route 12 (Winter), N''s Castle, Chargestone Cave, Relic Castle',
   'main', 'newer_vgm', 120),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '01-Acoustic Guitar -> 03-Folk', 'Martin Soft 2', NULL, 'Relic Castle',
   'main', 'newer_vgm', 121),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '02-Electric Guitar -> 03-Gibson Les Paul', 'LP Marschall', NULL, 'Evolution, Ending "Onward to Our Own Futures", Pokémon Gym, Cold Storage, Cheren''s Theme, Trainers'' Eyes Meet (Ace Trainer), Trainers'' Eyes Meet (Clerk ♂), Team Rocket!?',
   'main', 'newer_vgm', 122),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '03-Acoustic Bass -> 01-Jazzistic Bass', 'Jazz Double Bass Hard', NULL, 'Accumula Town, Lacunosa Town, Striaton City, Nacrene City, Opelucid City (Black), Opelucid City (White), Battle Subway, Dreamyard, Hurry Along. Prisoner to Formula',
   'main', 'newer_vgm', 123),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 01-Deluxe Bass', 'Ampeg Ac. Bass -Full', NULL, 'Nuvema Town, Undella Town (Summer), Castelia City, White Forest, Route 10, Skyarrow Bridge, Pokémon Gym, Gate, Gear Station, Someone''s Entralink, Relic Castle',
   'main', 'newer_vgm', 124),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 04-Fend. Jazz Bass', 'Fend. Slap 1 Pull', NULL, 'Mistralton City, Battle Subway, Cheren''s Theme, Team Plasma Appears, Trainers'' Eyes Meet (Ace Trainer), Trainers'' Eyes Meet (Team Plasma), Battle! (Elite Four)',
   'main', 'newer_vgm', 125),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '06-Ethnic -> 02-Indian', 'Electric Sitar', NULL, 'Abyssal Ruins',
   'main', 'newer_vgm', 126),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '03-Stylistic Kits -> 03-Groove Kits', 'Groove Kit 09', 'Used for: Various drum elements', 'Embracing One''s Duty, Battle! (Battle Subway Trainer), Musical: "Carnival Pokémon"',
   'main', 'newer_vgm', 127),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> R''n B - Funk', 'Elastik', NULL, 'Bicycle, Surf, Mistralton City, Congratulations on Entering the Hall of Fame!, Ending "Onward to Our Own Futures", Driftveil City, Musical: Stardom, Battle! (Wild Pokémon), etc.',
   'main', 'newer_vgm', 128),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '01-Piano', '01-Acoustic Grand Piano', '115 velocity or lower', 'Coronation Day, Surf, Anville Town, Lacunosa Town, Gate, Dragonspiral Tower, An Unwavering Heart, Farewell, Battle! (Legendary Pokémon), Mystery Gift, Game Sync',
   'main', 'newer_vgm', 129),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '10-Glockenspiel', NULL, 'Title Screen, Driftveil City, Opelucid City (White), Route 4 (Winter), Driftveil Drawbridge, Musical Theater, Battle! (Wild Pokémon), Battle! (Trainer Battle), Battle! (Gym Leader)',
   'main', 'newer_vgm', 130),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '04-Guitar', '28-Electric Guitar', NULL, 'Undella Town (Summer), Nimbasa City, Someone''s Entralink, Bianca''s Theme, Musical: "Carnival Pokémon", Musical: "Charming Munna", Musical: "Carnival Ludicolo!"',
   'main', 'newer_vgm', 131),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '06-String & Orchestra', '48-Timpani', NULL, 'Coronation Day, A New Adventure!, Title Screen, Onward to Adventure!, Evolution, Ending "Onward to Our Own Futures", Mistralton City, Route 4, Route 6, Entralink, Unity Tower',
   'main', 'newer_vgm', 132),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '17-GM Drum Kits', '4-GM Room', 'C1, G1, A1, C2 for the kick and the toms', 'Someone''s Entralink',
   'main', 'newer_vgm', 133),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '17-GM Drum Kits', '5-GM Analog', 'Used for: Various drum elements', 'Congratulations on Entering the Hall of Fame!, Nacrene City, Driftveil City, Black City, Embracing One''s Duty, Dreamyard, Dragonspiral Tower, Battle! (Battle Subway Trainer)',
   'main', 'newer_vgm', 134),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Strings Solo', 'Cello sus', NULL, 'Coronation Day, A New Adventure!, Title Screen, Ending "Onward to Our Own Futures", Marvelous Bridge, Pokémon League, Embracing One''s Duty, N''s Castle, Chargestone Cave',
   'main', 'newer_vgm', 135),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Strings Solo', 'Violin sus', NULL, 'Accumula Town, Spin Trade, Battle! (Cynthia), Professor Juniper, Icirrus City',
   'main', 'newer_vgm', 136),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Woodwinds Solo', 'Flute sus', NULL, 'A New Adventure!, Onward to Adventure!, Bicycle, Black City, White Forest, Route 1, Route 2, Route 4, Route 6 (Spring), Route 10, Unity Tower, Ghetsis'' Ambitions, Relic Song',
   'main', 'newer_vgm', 137),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Guitar ->  Electric -> Blues and Rock', '160-C-Heavy Rock 2', NULL, 'Gear Station, Battle! (Team Plasma)',
   'main', 'newer_vgm', 138),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Victor' COLLATE NOCASE AND p.name = '効果音ライブラリー3-動物' COLLATE NOCASE),
   'Track 99', 'その他の動物/ライオン', 'Growl SFX', 'Dragonspiral Tower Cutscene (Zekrom)',
   'main', 'newer_vgm', 139),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'VI Epic Orchestra 1.0' COLLATE NOCASE),
   'PRESET', '08 Percussion - Preset', 'See note', 'An Unwavering Heart, Battle! (Ghetsis)',
   'main', 'newer_vgm', 140),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '000 088 Bass&Ld', 'Check notes', 'Battle! (Gym Leader), Battle! (Team Plasma), Battle! (Trainer), Opelucid City (Black), Musical: "Stardom"',
   'main', 'newer_vgm', 141),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 09 Guitar Separates' COLLATE NOCASE),
   'Track 19', '09_19_02', 'Major Chord', 'Battle! (Cheren/Bianca)',
   'main', 'newer_vgm', 142),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 18', '16_18_02', 'Snare', 'Coronation Day, A New Adventure!, Onward to Adventure!, Ending "Onward to Our Own Futures", Accumula Town, Route 4, Route 6, Route 12, Skyarrow Bridge, Pokémon Center',
   'main', 'newer_vgm', 143),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 24', '16_24_11', 'Rim Hit', 'Lacunosa Town, Undella Town (Summer), Opelucid City (White), Route 10, Dreamyard, Dress Up with Props, Nintendo Wi-Fi Connection',
   'main', 'newer_vgm', 144),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 28', '16_28_08', 'Side Stick', 'White Forest, ',
   'main', 'newer_vgm', 145),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 28', '16_28_09', 'Clap', 'Cold Storage, Relic Castle, A Ferris Wheel Ride Together, Trainers'' Eyes meet (Pokéfan), Battle! (Cheren/Bianca), Poké Transfer: Choose Your Pokémon!/Catch Your Pokémon!',
   'main', 'newer_vgm', 146),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 28', '16_28_12', 'Rim Hit', 'Dreamyard',
   'main', 'newer_vgm', 147),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 24 Funk Construction' COLLATE NOCASE),
   'Track 40', '24_40_01', 'Guitar strum sound sampled from loop', 'Battle! (Cheren/Bianca)',
   'main', 'newer_vgm', 148),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 02', '30_02_01', NULL, 'Team Plasma Appears!, Battle! (Trainer Battle), Battle! (Battle Subway Trainer), Battle! (Gym Leader), Battle! (Champion), Battle! (Reshiram/Zekrom), Battle! (Kyurem)',
   'main', 'newer_vgm', 149),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 02', '30_02_05', NULL, 'Team Plasma Appears!',
   'main', 'newer_vgm', 150),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_01', NULL, 'Battle! (Elite Four), Battle! (Champion), Decisive Battle! (N), Battle! (Legendary Pokémon), Battle! (Cynthia), Pokemon World Championships Final',
   'main', 'newer_vgm', 151),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_03', NULL, 'Battle! (Cynthia)',
   'main', 'newer_vgm', 152),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_05', NULL, 'Battle! (Cynthia)',
   'main', 'newer_vgm', 153),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_07', NULL, 'Battle! (Cynthia)',
   'main', 'newer_vgm', 154),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-07 Future Beats -> Guitar Loops 144', 'Guitar Loop 144 3-E ZG', 'Sampled the squeal', 'Gear Station, Battle! (Team Plasma)',
   'main', 'newer_vgm', 155),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-07 Future Beats -> FX Loops 072', 'Fx Loop 072 05 ZG', NULL, 'Battle! (Team Plasma)',
   'main', 'newer_vgm', 156),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-07 Future Beats -> FX Loops 128', 'FX Loop 128 06 ZG', 'Kick and Snare sampled out of the loop', 'Battle! (Elite Four), Battle! (Legendary Pokémon)',
   'main', 'newer_vgm', 157),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'Total-Drum & Bass -> Drum Loops -> 160-BPM', 'Leonora ZG', NULL, 'Battle! (Battle Subway Trainer), Pokemon World Championships Final',
   'main', 'newer_vgm', 158),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-37 Dance Synths -> Percussion Hits -> Ethnic Perc', 'Deep Tabla ZG', NULL, 'Battle Subway',
   'main', 'newer_vgm', 159),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-37 Dance Synths -> Percussion Hits -> Ethnic Perc', 'Mid Tabla ZG', NULL, 'Battle Subway',
   'main', 'newer_vgm', 160),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-37 Dance Synths -> Percussion Hits -> Ethnic Perc', 'Tabla Rim ZG', NULL, 'Battle Subway',
   'main', 'newer_vgm', 161),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-37 Dance Synths -> Percussion Hits -> Ethnic Perc', 'Tabla Slap ZG', NULL, 'Battle Subway',
   'main', 'newer_vgm', 162),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-37 Dance Synths -> Percussion Hits -> Ethnic Perc', 'Tabla Flick ZG', NULL, 'Battle Subway',
   'main', 'newer_vgm', 163),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-37 Dance Synths -> Bass Loops 160-BPM', 'Closer ZG', 'Sampled out of the loop', 'Battle! (Cheren/Bianca)',
   'main', 'newer_vgm', 164),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-37 Dance Synths -> Synth Loops 160-BPM', 'Joker ZG', 'Sampled out of the loop', 'Battle! (Cheren/Bianca)',
   'main', 'newer_vgm', 165),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'ProSamples Vol. 9 - Future Beats 2' COLLATE NOCASE),
   'Loop 15 154BPM', '09g02pls', 'Laser synth oscillation', 'Battle! (Team Plasma)',
   'main', 'newer_vgm', 166),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'ProSamples Vol. 9 - Future Beats 2' COLLATE NOCASE),
   'Loop 18 208BPM', '09i06zap', 'Clock', 'Decisive Battle! (N)',
   'main', 'newer_vgm', 167),

  -- Reused-from-previous-Pokémon block (CSV rows 551-612). Per annotation row 550
  -- ("All other documented instruments were ripped from previous Pokémon titles."),
  -- these are still main usages in Black/White (the source library remains the same).
  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 11 - Classic Orchestra' COLLATE NOCASE),
   'Partition E -> ADV ORCH 3', 'TIMPANI VS', 'From Pokémon Diamond/Pearl', 'Battle! (Wild Pokémon), Battle! (Strong Wild Pokémon), Battle! (Cheren/Bianca), Battle! (Team Plasma), Battle! (Champion), Battle! (Reshiram/Zekrom), etc.',
   'main', 'newer_vgm', 168),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 13 - Choirs' COLLATE NOCASE),
   'Classic Choir', 'AHH', 'From Pokémon Diamond/Pearl', 'Battle! (Cynthia)',
   'main', 'newer_vgm', 169),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'BD 001-060 -> BD 031-060', '15A-BDE050', 'Kick', 'Evolution, Mistralton City, Pokémon Center, Pokémon Gym, Cheren''s Theme, Battle! (Gym Leader), Battle! (Champion), Battle! (N), Mystery Gift, Spin Trade, Let''s Go Together!, etc.',
   'main', 'newer_vgm', 170),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'CLAP 45-88', '15C-CLP45', 'Clap', 'Pokémon Center, Mystery Gift',
   'main', 'newer_vgm', 171),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'CYM 01-44', '15E-CYM11', 'Ride Bell', 'Icirrus City, Pokémon Center, Trainers'' Eyes meet (Cyclist), Battle! (Elite Four), Battle! (Champion), Battle! (Reshiram/Zekrom), Battle! (Kyurem), Spin Trade',
   'main', 'newer_vgm', 172),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'CYM 01-44', '15E-CYM36', 'Ride Cymbal', 'Icirrus City, Pokémon Center, Pokémon Gym, Trainers'' Eyes meet (Cyclist)',
   'main', 'newer_vgm', 173),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'Partition B -> DRUMCOMPUTER', 'YAMAHA R5+RX', 'From Pokémon Diamond/Pearl', 'Icirrus City, Pokémon Center, Trainers'' Eyes Meet (Ace Trainer), Trainers'' Eyes Meet (Parasol Lady), Spin Trade',
   'main', 'newer_vgm', 174),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 16 - Guitar & Bass' COLLATE NOCASE),
   'Plexi LD', 'Dist Gtr', 'From Pokémon Diamond/Pearl', 'Team Plasma Appears!, Trainers'' Eyes meet (Cyclist), Trainers'' Eyes meet (Team Plasma), Battle! (Champion), Battle! (Cynthia)',
   'main', 'newer_vgm', 175),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'GS -> Drum set', '025 ELECTRONIC', 'Used for: Reverse Cymbal', 'Title Screen, Onward to Adventure!, Abyssal Ruins, Driftveil City, Route 4, Route 10, Pokémon Center, Trainers'' Eyes meet (Cyclist), Trainers'' Eyes meet (Psychic), Global Terminal',
   'main', 'newer_vgm', 176),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'GS -> Drum set', '026 TR-808', 'Used for: Analog Snare', 'Anville Town, Pokémon Center, Mystery Gift, Spin Trade',
   'main', 'newer_vgm', 177),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '037 000 Slap Bass 1', 'From Pokémon Diamond/Pearl', 'Trainers'' Eyes Meet (Cyclist), Mystery Gift, Team Rocket!?',
   'main', 'newer_vgm', 178),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '006 000 FM E.Piano ', NULL, 'Battle! (Cynthia)',
   'main', 'newer_vgm', 179),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '039 000 MG303 Bass', 'From Pokémon Diamond/Pearl', 'Battle! (Cynthia)',
   'main', 'newer_vgm', 180),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '048 000 Timpani 2', 'From Pokémon Diamond/Pearl', 'Battle! (Cynthia)',
   'main', 'newer_vgm', 181),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '058 000 Solo Bone', 'From Pokémon Diamond/Pearl', 'Battle! (Cynthia)',
   'main', 'newer_vgm', 182),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '061 000 FrenchHorns2', 'From Pokémon Diamond/Pearl', 'Battle! (Cynthia)',
   'main', 'newer_vgm', 183),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '079 000 Whistle 2 ', 'From Pokémon Diamond/Pearl', 'Battle! (Cynthia)',
   'main', 'newer_vgm', 184),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '001 StandardSet2', 'Various drum elements', 'Surf, Undella Town (Summer), Castelia City, Route 2, Skyarrow Bridge, Gate, Cold Storage, Relic Castle, Cheren''s Theme, Champion Alder, Battle! (Cheren/Bianca), etc.',
   'main', 'newer_vgm', 185),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '017 Power Set 2', 'Power Snare', 'Bicycle, Surf, Abyssal Ruins, Ending "Onward to Our Own Futures", Nimbasa City, Driftveil City, Battle! (Gym Leader), Battle! (Cheren/Bianca), Battle! (Legendary Pokémon), etc.',
   'main', 'newer_vgm', 186),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '025 Dance Set', 'Open Conga', 'Abyssal Ruins, Lacunosa Town, Undella Town (Summer), Driftveil City, Icirrus City, White Forest, Marvelous Bridge, Someone''s Entralink, Champion Alder, Spin Trade',
   'main', 'newer_vgm', 187),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '049 OrchestraSet', 'Orchestral Snare', 'Mistralton City, Pokémon Center, Cheren''s Theme, Trainers'' Eyes Meet (Cyclist), Global Terminal, Gts',
   'main', 'newer_vgm', 188),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2 XL' COLLATE NOCASE),
   'Orchestra', 'String Orchestra', 'Used in most tracks', 'Marvelous Bridge, Bianca''s Theme, Trainers'' Eyes Meet (Parasol Lady)',
   'main', 'newer_vgm', 189),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2 XL' COLLATE NOCASE),
   'Winds', 'Clarinet', 'some .swars reuse the HGSS version', 'GTS',
   'main', 'newer_vgm', 190),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   'Acoustic Kits', 'GM Kit', 'Used for: Various drum elements', 'Ending "Onward to Our Own Futures", Mistralton City, etc.',
   'main', 'newer_vgm', 191),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   'Acoustic Kits', 'Rock Kit', 'Used for: Crash Cymbal and Toms', 'Castelia City, Relic Castle, Tubeline Bridge, Opelucid City (White), Route 10, Undella Town (Summer), Looker''s Theme, Battle! (Legendary Pokémon), Gear Station, etc.',
   'main', 'newer_vgm', 192),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Harp', 'some .swars use the HGSS version', 'Battle! (Trainer Battle), Surf, Victory! (Team Plasma), Pokémon League, Embracing One''s Duty, Lostlorn Forest, The Curtain for the Musical Rises!, The Royal Unova, Entralink, etc.',
   'main', 'newer_vgm', 193),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Violin Ensemble', 'Pizzicato Articulation', 'Mystery Gift',
   'main', 'newer_vgm', 194),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Cello Ensemble', 'Pizzicato Articulation', 'Mystery Gift',
   'main', 'newer_vgm', 195),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 2 - VSL Woodwinds', 'Oboe', 'Sustain Articulation', 'GTS',
   'main', 'newer_vgm', 196),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'French Horn Ensemble', 'Sustain Articulation', 'Surf, Skyarrow Bridge',
   'main', 'newer_vgm', 197),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trombone Ensemble', 'Sustain Articulation', 'Battle! (Wild Pokémon), Battle! (Strong Wild Pokémon), Battle! (Ghetsis)',
   'main', 'newer_vgm', 198),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trumpet Ensemble', 'Sustain Articulation', 'Trainers'' Eyes Meet (Cyclist), Battle! (Champion)',
   'main', 'newer_vgm', 199),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Cymbals a due', 'some .swars reuse the HGSS version', 'Ending "Onward to Our Own Futures", Icirrus City, Pokémon Center',
   'main', 'newer_vgm', 200),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Xylophone', 'some .swars reuse the HGSS version', 'GTS',
   'main', 'newer_vgm', 201),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Acoustic Grand Piano', 'some .swars reuse the HGSS version', 'Coronation Day, Surf, Anville Town, Lacunosa Town, Gate, Dragonspiral Tower, An Unwavering Heart, Farewell, Battle! (Legendary Pokémon), Mystery Gift, Game Sync',
   'main', 'newer_vgm', 202),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Rock Piano', 'From Pokémon HeartGold/SoulSilver', 'Cheren''s Theme, Trainers'' Eyes Meet (Roughneck), Battle Subway, Global Terminal, Musical: "Stardom", Musical: "Pokémon Smash!",  Musical: "MELOETTAAA!!!"',
   'main', 'newer_vgm', 203),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '02-Electric Pianos > 01-Classic EP', 'A Suitcase Medium', 'From Pokémon HeartGold/SoulSilver', 'Route 2 (Winter), Trainers'' Eyes Meet (Cyclist), Mystery Gift, Global Terminal, Poké Transfer: Choose Your Pokémon!", "Poké Transfer: Catch Your Pokémon!"',
   'main', 'newer_vgm', 204),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs > 01-High End Organs', 'Full Organ', 'some .swars reuse the HGSS version', 'Abyssal Ruins, Nacrene City, Castelia City, Driftveil City, Tubeline Bridge, Gear Station, Someone''s Entralink, Battle! (Strong Wild Pokémon), Battle! (Team Plasma)',
   'main', 'newer_vgm', 205),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08-Mallets & co', 'Vibraphone 1', 'some .swars reuse the HGSS version', 'Surf, Congratulations on Entering the Hall of Fame!, Lacunose City, Nacrene City, Opelucid City (White), Route 1, Route 12 (Winter), N''s Castle, Chargestone Cave, Relic Castle',
   'main', 'newer_vgm', 206),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '01-Acoustic Guitar -> 01-Nylon', 'Gerome Finger Soft 2', 'From Pokémon HeartGold/SoulSilver', 'Let''s Go Together!, Musical: "Carnival Pokémon", Musical: "Charming Munna", Musical: "Carnival Ludicolo!"',
   'main', 'newer_vgm', 207),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '01-Acoustic Guitar -> 03-Folk', 'Martin Soft 2', 'some .swars reuse the HGSS version', 'Trainers'' Eyes Meet (Parasol Lady)',
   'main', 'newer_vgm', 208),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '03-Acoustic Bass -> 01-Jazzistic Bass', 'Jazz Double Bass Hard', 'some .swars reuse the HGSS version', 'Title Screen, Anville Town, Professor Juniper, Musical: "A Sweet Soirée"',
   'main', 'newer_vgm', 209),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 01-Deluxe Bass', 'Ampeg Ac. Bass -Full', 'some .swars reuse the HGSS version', 'Evolution, A Tight Spot During Battle, Let''s Go Together!',
   'main', 'newer_vgm', 210),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> R''n B - Funk', 'Elastik', 'some .swars reuse the HGSS version', 'Bicycle, Surf, Mistralton City, Congratulations on Entering the Hall of Fame!, Ending "Onward to Our Own Futures", Driftveil City, Musical: Stardom, Battle! (Wild Pokémon), etc.',
   'main', 'newer_vgm', 211),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '04-Guitar', '28-Electric Guitar', 'some .swars reuse the HGSS version', 'Undella Town (Summer), Nimbasa City, Someone''s Entralink, Bianca''s Theme, Musical: "Carnival Pokémon", Musical: "Charming Munna", Musical: "Carnival Ludicolo!"',
   'main', 'newer_vgm', 212),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '06-String & Orchestra', '48-Timpani', 'some .swars reuse the HGSS version', 'Evolution, GTS',
   'main', 'newer_vgm', 213),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '07-Ensemble', '56-Orchestra Hit', 'From Pokémon HeartGold/SoulSilver', 'Musical: "Carnival Pokémon", Musical: "Charming Munna", Musical: "Carnival Ludicolo!"',
   'main', 'newer_vgm', 214),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '11-Synth Lead', '81-Square Wave', 'From Pokémon HeartGold/SoulSilver', 'Village Bridge, Battle! (Gym Leader)',
   'main', 'newer_vgm', 215),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Strings Solo', 'Cello sus', 'some .swars reuse the HGSS version', 'Coronation Day, A New Adventure!, Title Screen, Ending "Onward to Our Own Futures", Marvelous Bridge, Pokémon League, Embracing One''s Duty, N''s Castle, Chargestone Cave',
   'main', 'newer_vgm', 216),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Woodwinds Solo', 'Flute sus', 'some .swars reuse the HGSS version', 'A New Adventure!, Onward to Adventure!, Bicycle, Black City, White Forest, Route 1, Route 2, Route 4, Route 6 (Spring), Route 10, Unity Tower, Ghetsis'' Ambitions, Relic Song',
   'main', 'newer_vgm', 217),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '082 032 DoublSaw', 'from Pokémon Diamond/Pearl (Check Notes)', 'Battle! (Cynthia)',
   'main', 'newer_vgm', 218),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '028 127 Dance Kit [Notes C2 and D2]', 'from Pokémon Diamond/Pearl (Check Notes)', 'Battle! (Cynthia)',
   'main', 'newer_vgm', 219),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 02', '16_02_06', 'Compressed Kick', 'Pokémon Center, Mystery Gift, Global Terminal',
   'main', 'newer_vgm', 220),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 02', '16_02_10', 'Kick, highly compressed and clipped', 'Pokémon Center, Trainers'' Eyes meet (Psychic), Musical: "Carnival Pokémon", Musical: "Charming Munna", Musical: "Carnival Ludicolo!"',
   'main', 'newer_vgm', 221),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 18', '16_18_02', 'Snare', 'Coronation Day, A New Adventure!, Onward to Adventure!, Ending "Onward to Our Own Futures", Accumula Town, Route 4, Route 6, Route 12, Skyarrow Bridge, Pokémon Center',
   'main', 'newer_vgm', 222),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 20', '16_20_04', 'Crash Cymbal', 'Battle! (Champion), Battle! (Cynthia)',
   'main', 'newer_vgm', 223),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 24', '16_24_06', 'Side Stick', 'Pokémon Center, Musical: "Carnival Pokémon", Musical: "Charming Munna", Musical: "Carnival Ludicolo!"',
   'main', 'newer_vgm', 224),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 26', '16_26_10', 'Shaker', 'Pokémon Center',
   'main', 'newer_vgm', 225),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 31', '16_31_03', 'Windchimes', 'Musical: "A Sweet Soirée"',
   'main', 'newer_vgm', 226),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 44 (Bass Slides, Slaps & FX)', '17_44_04 (Filter Slaps)', '"Wah" synth bass', 'Battle! (Cynthia)',
   'main', 'newer_vgm', 227),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 02', '30_02_01', 'some .swars use the DPPt version', 'Team Plasma Appears!, Battle! (Trainer Battle), Battle! (Battle Subway Trainer), Battle! (Gym Leader), Battle! (Champion), Battle! (Reshiram/Zekrom), Battle! (Kyurem)',
   'main', 'newer_vgm', 228),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 03', '30_03_01', 'some .swars use the DPPt version', 'Battle! (Elite Four), Battle! (Champion), Decisive Battle! (N), Battle! (Legendary Pokémon), Battle! (Cynthia), Pokemon World Championships Final',
   'main', 'newer_vgm', 229),

  -- Stuff to Find (CSV header row 613, rows 614-624) -> stuff_to_find
  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'feedback guitar', NULL, 'Battle! (Team Plasma)',
   'stuff_to_find', 'newer_vgm', 230),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'synth bass', NULL, 'Battle! (Gym Leader)',
   'stuff_to_find', 'newer_vgm', 231),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'underwater synth', NULL, 'Abyssal Ruins',
   'stuff_to_find', 'newer_vgm', 232),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'FM Synth', NULL, 'Xtransceiver',
   'stuff_to_find', 'newer_vgm', 233),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '14 Orchestral Strings (KHSO)', NULL, NULL, 'Lullaby for Trains',
   'stuff_to_find', 'newer_vgm', 234),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   NULL, NULL, NULL, 'Lullaby for Trains',
   'stuff_to_find', 'newer_vgm', 235),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent SE' COLLATE NOCASE),
   NULL, 'Anna Hop Kit', 'cymbals only, find correct GA One listings', 'Summer in Lacunosa',
   'stuff_to_find', 'newer_vgm', 236),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent SE' COLLATE NOCASE),
   NULL, 'Brush Kit CD', 'cymbals only, find correct GA One listings', 'Summer in Lacunosa',
   'stuff_to_find', 'newer_vgm', 237),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   NULL, NULL, 'Choir', 'Lullaby for Trains',
   'stuff_to_find', 'newer_vgm', 238),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   NULL, NULL, 'Pizzicato strings', 'Lullaby for Trains',
   'stuff_to_find', 'newer_vgm', 239),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   '4 instruments, many SFX are undocumented', 'Please check the folder linked to see what''s missing', NULL, NULL,
   'stuff_to_find', 'newer_vgm', 240),

  -- Bonus Tracks (CSV header row 625, rows 626-639) -> bonus
  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '03 Acoustic Basses', 'Upright Bass 8th A sc1', 'EQ + wider (perhaps Waves Doubler used)', 'Summer in Lacunosa',
   'bonus', 'newer_vgm', 241),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '05 Acoustic Guitars', 'Acoustic Guitar 1 Spanish', NULL, 'Summer in Lacunosa',
   'bonus', 'newer_vgm', 242),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '07 Pianos - Keys', 'Acoustic Grand Piano', 'Also known as the "Startup Piano"', 'Summer in Lacunosa',
   'bonus', 'newer_vgm', 243),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '15 Orchestral Woodwinds (KHSO)', 'KHSO Piccolo Vib', NULL, 'Summer in Lacunosa',
   'bonus', 'newer_vgm', 244),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'PianoTeq 3' COLLATE NOCASE),
   NULL, 'C3 Grand', NULL, 'Farewell (Refrain)',
   'bonus', 'newer_vgm', 245),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'Series 1000 General Sound Effects Library' COLLATE NOCASE),
   'SYNTHETIC: WHISTLING POLAR WIND,WEATHER', 'WIND', '#1028-59-01', 'Final Battle! (N Remix)',
   'bonus', 'newer_vgm', 246),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'Artist / Studio Set', 'Bass Pedal Synth', NULL, 'Final Battle! (N Remix)',
   'bonus', 'newer_vgm', 247),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'Artist / Studio Set', 'Hard Grand Piano', NULL, 'Final Battle! (N Remix)',
   'bonus', 'newer_vgm', 248),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 03-Honky Tonk', 'Orleans Honky Piano', NULL, 'Lullaby for Trains',
   'bonus', 'newer_vgm', 249),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '01-Piano', '01-Acoustic Grand Piano', NULL, 'Lullaby for Trains',
   'bonus', 'newer_vgm', 250),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '05-Bass', '33-Acoustic Bass', 'pitch bend range 12', 'Lullaby for Trains',
   'bonus', 'newer_vgm', 251),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 11 Flutes', '02S Flute 1', NULL, 'Farewell (Refrain)',
   'bonus', 'newer_vgm', 252),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 22 Trumpets', '14S Trumpet ensemble', NULL, 'Farewell (Refrain)',
   'bonus', 'newer_vgm', 253),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 13 Jungle Frenzy' COLLATE NOCASE),
   'Track 17 - Vibez', 'Timestamp 0:00', NULL, 'Final Battle! (N Remix)',
   'bonus', 'newer_vgm', 254),

  -- Leaked Samples / BW aif-6 (CSV header row 640, rows 641-705) -> unused
  -- Per header: "Only samples not found in-game are listed".
  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AKAI Professional' COLLATE NOCASE AND p.name = 'Sound Library Vol. 2 - S1000/S1100 Samples' COLLATE NOCASE),
   'Partition C -> 1035 WIND #1', 'CLARINET', 'Unused instrument, samples not found in-game', 'clarinet_a3_22.aif, clarinet_d2_22.aif, clarinet_ds3_22.aif',
   'unused', 'newer_vgm', 255),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition A -> SD 001-060', '15A-SDE035.wav', 'Unused sample', 'dance3_snare_32.aif',
   'unused', 'newer_vgm', 256),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition A -> SD 061-120', '15A-SDE078.wav', 'Unused sample', 'dance2_snare_32.aif',
   'unused', 'newer_vgm', 257),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition C -> PRC 130-166', '15F-PRC148.wav', 'Unused sample', 'synth_tom01_32.aif',
   'unused', 'newer_vgm', 258),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 51 - Classic Orchestra 2' COLLATE NOCASE),
   'Oboe', 'Oboe', 'Instrument used without this sample in-game', 'oboe_c4_22.aif',
   'unused', 'newer_vgm', 259),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'EMU E-III', 'Sax Balzy', 'Unused instrument, samples not found in-game', 'sax_c3_16.aif, sax_c4_16.aif, sax_c5_16.aif',
   'unused', 'newer_vgm', 260),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Discovery Japan' COLLATE NOCASE),
   'Track 56', 'Percussion_Kane_56', 'Unused instrument, samples not found in-game', 'kane_closed_22.aif, kane_open_22.aif',
   'unused', 'newer_vgm', 261),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Voice Percussion' COLLATE NOCASE),
   'type-A -> 080', 'voice_per-80~08', 'Instrument used without this sample in-game', 'voice_hight01_max_32.aif',
   'unused', 'newer_vgm', 262),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Pop Brass -> Trumpet', 'TP susmf', 'Instrument used without this sample in-game', 'pbrasslop_cs3_max32.aif',
   'unused', 'newer_vgm', 263),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 18 - Steinway Grand Piano' COLLATE NOCASE),
   '-', 'PS-18 AIFF Grand Piano', 'See note', 'grand_piano_c2_32.aif, grand_piano_c3_32.aif, grand_piano_c4_32.aif, grand_piano_c5_32.aif, grand_piano_c6_32.aif,',
   'unused', 'newer_vgm', 264),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Multis -> Mens and Womens WB', 'MENS WB HARD MOD', 'Instrument used without this sample in-game', 'g_voice_ahh_d2_22,aif, g_voice_ann_d2_22.aif, g_voice_ice_cs2_22.aif, g_voice_wii_a2_22.aif',
   'unused', 'newer_vgm', 265),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '115 000 Steel Drums', 'Instrument used without these samples in-game', 'steel_pan_g3_32.aif',
   'unused', 'newer_vgm', 266),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '031 000 DistortionGt', 'Instrument used without these samples in-game', 'dis_gtl_c1_32.aif, dis_gtl_c2_32.aif',
   'unused', 'newer_vgm', 267),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set -> Drums', '001 Standard Set', 'Instrument used without these samples in-game', 'bassdr1_32.aif, bassdr2_32.aif, wh_16_loop.aif',
   'unused', 'newer_vgm', 268),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set -> Drums', '017 Power Set', 'Instrument used without this sample in-game', 'power_bass2_16.aif',
   'unused', 'newer_vgm', 269),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Special Set 1', '090 335 Drive2', 'Instrument used without these samples in-game', 'plasma_gt_c1_32.aif, plasma_gt_c2_32.aif',
   'unused', 'newer_vgm', 270),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2.5 XL' COLLATE NOCASE),
   'Drums -> Acoustic', 'Room', 'Instrument used without this sample in-game', 'crashcym_rockkit_st_32.aif',
   'unused', 'newer_vgm', 271),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'SampleTank 2.5 XL' COLLATE NOCASE),
   'Bass', 'Slap Chorusy Bass', 'Unused instrument, samples not found in-game', 'slap_bass_wb_c2_22.aif, slap_bass_wb_c3_22.aif',
   'unused', 'newer_vgm', 272),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'IK Multimedia' COLLATE NOCASE AND p.name = 'Omnisynth 2' COLLATE NOCASE),
   'Omnisynth 2 GM', '010 Glockenspeil', 'Instrument used without these samples in-game', 'glocken_wb_g4_32.aif, glocken_wb_g5_22.aif',
   'unused', 'newer_vgm', 273),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Click4.wav', 'Unused instrument, samples not found in-game', 'Noise_Click_32.wav',
   'unused', 'newer_vgm', 274),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Hi hat2 closed.wav', 'Unused instrument, samples not found in-game', 'Noise_C_Hat_01_32.wav',
   'unused', 'newer_vgm', 275),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Hi hat2 open.wav', 'Unused instrument, samples not found in-game', 'Noise_O_Hat_01_32.wav',
   'unused', 'newer_vgm', 276),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Hi hat Tech Annoying2.wav', 'Unused instrument, samples not found in-game', 'Noise_Perc_01_32.wav',
   'unused', 'newer_vgm', 277),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Hihat metal close.wav', 'Unused instrument, samples not found in-game', 'Noise_Metal_32.wav',
   'unused', 'newer_vgm', 278),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Metallic hit.wav', 'Unused instrument, samples not found in-game', 'Noise_Hit_32.wav',
   'unused', 'newer_vgm', 279),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Noise hit.wav', 'Unused instrument, samples not found in-game', 'Noise_Hit_02_32.wav',
   'unused', 'newer_vgm', 280),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Pling1.wav', 'Unused instrument, samples not found in-game', 'Noise_Pling_01_32.wav',
   'unused', 'newer_vgm', 281),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Pling8.wav', 'Unused instrument, samples not found in-game', 'Noise_Pling_02_32.wav',
   'unused', 'newer_vgm', 282),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Short noise.wav', 'Unused instrument, samples not found in-game', 'Noise_Snare_02_32.wav',
   'unused', 'newer_vgm', 283),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Snare3.wav', 'Unused instrument, samples not found in-game', 'Noise_Snare_03_32.wav',
   'unused', 'newer_vgm', 284),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: Killer Tweaks II' COLLATE NOCASE),
   'Drums', 'Snare5.wav', 'Unused instrument, samples not found in-game', 'Noise_Snare_01_32.wav',
   'unused', 'newer_vgm', 285),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'Sample Fusions: The Lo-Fi Box' COLLATE NOCASE),
   'Drumkits -> Beatbox', 'beatbox_can_001b.wav', 'Unused instrument, samples not found in-game', 'Indst_Can_32.wav',
   'unused', 'newer_vgm', 286),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 25', 'Romio', 'Instrument used without this sample in-game', 'ohyeah_max_22.aif',
   'unused', 'newer_vgm', 287),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'Ethno Instrument' COLLATE NOCASE),
   'Geographic -> Asia -> Koto', 'Koto 2 picked', 'Instrument used without this sample in-game', 'koto_pick_e5_16.aif',
   'unused', 'newer_vgm', 288),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'Ethno Instrument' COLLATE NOCASE),
   'Geographic -> Asia -> Shamisen', 'Shamisen picked', 'Instrument used without this sample in-game', 'shamisen_ds5_16.aif',
   'unused', 'newer_vgm', 289),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'Ethno Instrument' COLLATE NOCASE),
   'Geographic -> Asia -> Shakuhachi -> Isshakausansun-high', 'Isshakausansun blow', 'Unused instrument, samples not found in-game', 'shakuhachi_a4_16.aif, shakuhachi_c4_16.aif, shakuhachi_e5_16.aif',
   'unused', 'newer_vgm', 290),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'Pop Kit', 'Instrument used without these samples in-game', 'hihat_closed1_popkit_32.aif, hihat_open1_popkit_32.aif, splash_cym1_popkit_32.aif',
   'unused', 'newer_vgm', 291),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 6 - Bass', 'Upright Bass', 'Instrument used without these samples in-game', 'a_bass_wb_e3_22.aif',
   'unused', 'newer_vgm', 292),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 2 - VSL Woodwinds', 'Oboe', 'See note', 'oboe_wb_b4_22.aif, oboe_wb_e4_22.aif, oboe_wb_g5_22.aif',
   'unused', 'newer_vgm', 293),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Brass Ensemble', 'Unused instrument, samples not found in-game', 'horn_wb_c5_22.aif, horn_wb_d4_22.aif, horn_wb_f3_22.aif',
   'unused', 'newer_vgm', 294),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'French Horn', 'Instrument used without these samples in-game', 'bright_horn_g5_32.aif',
   'unused', 'newer_vgm', 295),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Trumpet Ensemble', 'See note', 'trumpet_wb_a4_22.aif, trumpet_wb_c4_22.aif, trumpet_wb_f5_22.aif',
   'unused', 'newer_vgm', 296),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 3 - VSL Brass', 'Tuba', 'Instrument used without this sample in-game', 'tuba_f3_32.aif',
   'unused', 'newer_vgm', 297),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Timpani', 'Unused instrument, samples not found in-game', 'timpani_wb_c3_22.aif, timpani_wb_g2_22.aif, timpani_wb_g3_22.aif',
   'unused', 'newer_vgm', 298),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 4 - VSL Percussion', 'Tubular Bells (metal)', 'Unused instrument, samples not found in-game', 'tub_bell_wb_c5_22.aif, tub_bell_wb_e4_22.aif, ',
   'unused', 'newer_vgm', 299),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 5 - Orchestral Percussion', 'All Percussion', 'Unused instrument, samples not found in-game', 'castanet_32.aif',
   'unused', 'newer_vgm', 300),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'World -> Metallophones', 'Music Box', 'Unused instrument, samples not found in-game', 'musicbox_wb_g4_22.aif, musicbox_wb_g5_22.aif',
   'unused', 'newer_vgm', 301),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Nemesys' COLLATE NOCASE AND p.name = 'Gary Garritan''s GigaHarp' COLLATE NOCASE),
   '-', 'GigaHarp.gig', 'Unused instrument, samples not found in-game', 'harp_03_a3_32.aif, harp_03_c3_32.aif, harp_03_d5_32.aif, harp_03_f4_32.aif',
   'unused', 'newer_vgm', 302),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Content', 'Whistle', 'Unused instrument, samples not found in-game', 'c3_oct1_whis_32.aif, c4_oct01_whis_32.aif, c5_oct02_whis_32.aif',
   'unused', 'newer_vgm', 303),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'Studio Set', 'Big 80s Kit', 'Instrument used without these samples in-game', 'Power_C_Hat_32.wav, Power_Crash_02_32.wav, Power_Kick_01_32.wav, Power_Kick_02_32.wav, Power_O_Hat_32.wav, Power_Snare_01_32.wav, Power_Snare_02_32.wav, Power_Tom_H_32.wav, Power_Tom_L_32.wav, Power_Tom_MH_32.wav, Power_Tom_ML_32.wav',
   'unused', 'newer_vgm', 304),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'Studio Set', 'Industrial Kit', 'Unused instrument, samples not found in-game', 'Indst_C_Hat_32.wav, Indst_Crash_01_32.wav, Indst_Crash_02_32.wav, Indst_Kick_01_32.wav, Indst_Kick_02_32.wav, Indst_O_Hat_32.wav, Indst_Perc_01_32.wav, Indst_Perc_02_32.wav, Indst_Snare_01_32.wav, Indst_Snare_02_32.wav, Indst_Tom_H_32.wav, Indst_Tom_L_32.wav, Indst_Tom_MH_32.wav, Indst_Tom_ML_32.wav',
   'unused', 'newer_vgm', 305),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   NULL, 'All Kick Drums', 'See note', 'Noise_Kick_01_32.wav, Noise_Kick_01d_32.wav, Noise_Kick_02_32.wav, Noise_Kick_03_32.wav',
   'unused', 'newer_vgm', 306),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs > 01-High End Organs', 'Full Organ', 'Instrument used without these samples in-game', 'drawbar_organ_c2_22.aif',
   'unused', 'newer_vgm', 307),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '02-Electric Guitar -> 03-Gibson Les Paul', 'LP Marschall', 'Instrument used without these samples in-game', 'e_guitar_chord_e3_22.aif, e_guitar_chord_g2_22.aif',
   'unused', 'newer_vgm', 308),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '03-Acoustic Bass -> 01-Jazzistic Bass', 'Jazz Double Bass Hard', 'Instrument used without this sample in-game', 'a_bass_ps_g2_32.aif',
   'unused', 'newer_vgm', 309),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '17-GM Drum Kits', '5-GM Analog', 'Instrument used without these samples in-game', 'crashcym2_analog_kit_32.aif, ridecym_analog_kit_32.aif, splashcym1_analog_kit_32.aif',
   'unused', 'newer_vgm', 310),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Woodwinds Solo', 'Bassoon sus', 'Instrument used without these samples in-game', 'basson_f4_22.aif, basson_f4_32.aif',
   'unused', 'newer_vgm', 311),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   'Electric Basses -> Alternative', 'German Punk combi KS A-1', 'Unused instrument, samples not found in-game', 'e_bass_pick_c3_32.aif, e_bass_pick_e2_32.aif, e_bass_pick_g1_32.aif',
   'unused', 'newer_vgm', 312),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 17', '16_17_01', 'Unused sample', 'snare2_trinity_32.aif',
   'unused', 'newer_vgm', 313),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 02', '30_02_03', 'Instrument used without this sample in-game', 'oche_hit_major_ds4_32.aif',
   'unused', 'newer_vgm', 314),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 02', '30_02_07', 'Instrument used without this sample in-game', 'oche_hit_major_a4_32.aif',
   'unused', 'newer_vgm', 315),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'ProSamples Vol. 23 - Trip Hop' COLLATE NOCASE),
   'WAV Scratching', '23-11scr', 'Unused sample', 'scrat_01_22_max.aif',
   'unused', 'newer_vgm', 316),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'ProSamples Vol. 23 - Trip Hop' COLLATE NOCASE),
   'WAV Scratching', '23-15scr', 'Unused sample', 'scrat_02_22_max.aif',
   'unused', 'newer_vgm', 317),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'ProSamples Vol. 23 - Trip Hop' COLLATE NOCASE),
   'WAV Scratching', '23-05scr', 'Unused sample', 'scrat_03_22_max.aif',
   'unused', 'newer_vgm', 318),

  ((SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Dance Pack 1' COLLATE NOCASE),
   'PS-37 Dance Synths -> Synth Loops 160-BPM', 'Members Only ZG', 'Unused instrument, samples not found in-game', 'synth02_c3_32.aif',
   'unused', 'newer_vgm', 319); 


-- Patch raw_source for the non-commercial Live Recording row (position 1).
-- That row was inserted with product_id NULL; we stash the original col A/B descriptor here.
UPDATE usages SET raw_source = 'Live Recording: GAME FREAK — Staff Recording'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Black and Pokémon White')
    AND position = 1;
