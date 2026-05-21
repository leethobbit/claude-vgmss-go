-- Source: reference/HOYO-MiX Sound Sources - Honkai Star Rail.csv (~1873 rows)
-- ONE game row for Honkai: Star Rail. Albums encoded as notes per usage row.
-- Albums covered (21): Out of Control, Of Snow and Ember, Svah Sanishyu, Astral Theater Vol. 1,
--   The Flapper Sinthome (Part 1), The Flapper Sinthome (Part 2), Astral Theater Vol. 2,
--   Allegory of the Cave (Part 1), Allegory of the Cave (Part 2), Allegory of the Cave (Part 3),
--   Astral Theater Vol.3, Let There Be Laughter (Part 1), Unreleased Soundtrack
--   (ToC also references EP/Singles: Interstellar Journey, Take the Journey, Experience the Paths Vol.1-4,
--    WHITE NIGHT, INSIDE, Had I Not Seen the Sun, No Dazzle No Break, Nameless Faces — none have
--    listed source rows in the CSV body and are therefore not represented as usages.)
-- Composers aggregated from per-track ♪ annotations across all albums.
-- Live Recording rows: product_id NULL, raw_source populated via UPDATE at end of file.
-- Recording Studio multi-line annotation blocks are dropped (album-level metadata, not usages).

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Native Instruments'),
  ('Splice Sounds'),
  ('Heavyocity'),
  ('Modartt'),
  ('Spectrasonics'),
  ('Arturia'),
  ('Xfer Records'),
  ('XLN Audio'),
  ('Toontrack'),
  ('Position Music'),
  ('u-he'),
  ('Unfiltered Audio'),
  ('Apple'),
  ('EastWest'),
  ('Vengeance Sound'),
  ('ProjectSAM'),
  ('Best Service'),
  ('Ample Sound'),
  ('Strezov Sampling'),
  ('reFX'),
  ('Disciple Samples'),
  ('KORG'),
  ('Image-Line'),
  ('Rhythm Lab'),
  ('Matt Tylel'),
  ('Dharma Studio'),
  ('Epic Stock Media'),
  ('Sample Magic'),
  ('Sample: Valve Software'),
  ('Sample: Toby Fox'),
  ('Sample: alfo399'),
  ('Sample: madsiepatsie'),
  ('Sample: Meme Sound FX'),
  ('Sample: Neave'),
  ('Sample: OmarSounds');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Noire',                                          'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Una Corda',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Session Strings 2',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Rise & Hit',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Spotlight Collection: East Asia',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Massive X',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'      COLLATE NOCASE), 'Action Strikes',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Splice Sounds'           COLLATE NOCASE), 'Sounds of KSHMR Vol. 1',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Splice Sounds'           COLLATE NOCASE), 'Sounds of KSHMR Vol. 2',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Splice Sounds'           COLLATE NOCASE), 'Sounds of KSHMR Vol. 3',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Splice Sounds'           COLLATE NOCASE), 'Sounds of KSHMR Vol. 4',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'              COLLATE NOCASE), 'Damage',                                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'              COLLATE NOCASE), 'Damage 2',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Modartt'                 COLLATE NOCASE), 'Pianoteq 7',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'           COLLATE NOCASE), 'Trilian',                                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'           COLLATE NOCASE), 'Omnisphere',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'           COLLATE NOCASE), 'Omnisphere 2',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'           COLLATE NOCASE), 'Keyscape',                                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'           COLLATE NOCASE), 'Stylus RMX',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Arturia'                 COLLATE NOCASE), 'Analog Lab V',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Arturia'                 COLLATE NOCASE), 'Modular V3',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Arturia'                 COLLATE NOCASE), 'ARP 2600 V3',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Xfer Records'            COLLATE NOCASE), 'Serum',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'               COLLATE NOCASE), 'Addictive Drums 2',                              'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Toontrack'               COLLATE NOCASE), 'EZdrummer 2',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Toontrack'               COLLATE NOCASE), 'Americana EZX',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Position Music'          COLLATE NOCASE), 'Danger Impact - Sound Design Vol. 1',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'u-he'                    COLLATE NOCASE), 'Hive 2',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'u-he'                    COLLATE NOCASE), 'Diva',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'u-he'                    COLLATE NOCASE), 'Repro-5',                                        'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'u-he'                    COLLATE NOCASE), 'Repro-1',                                        'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Unfiltered Audio'        COLLATE NOCASE), 'Sandman Pro',                                    'Effect'),
  ((SELECT id FROM manufacturers WHERE name = 'Apple'                   COLLATE NOCASE), 'Sampler',                                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Apple'                   COLLATE NOCASE), 'Drum Machine Designer',                          'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Apple'                   COLLATE NOCASE), 'iLife Sound Effects',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                COLLATE NOCASE), 'Symphonic Orchestra',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                COLLATE NOCASE), 'Hollywood Choirs',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vengeance Sound'         COLLATE NOCASE), 'VPS Avenger',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'ProjectSAM'              COLLATE NOCASE), 'Symphobia',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'            COLLATE NOCASE), 'Ethno World Instruments',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ample Sound'             COLLATE NOCASE), 'Ample China Qudi',                               'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Ample Sound'             COLLATE NOCASE), 'Ample China Zheng',                              'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Strezov Sampling'        COLLATE NOCASE), 'Rhodope 2: Ethnic Bulgarian Choir',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'reFX'                    COLLATE NOCASE), 'FL Slayer',                                      'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'reFX'                    COLLATE NOCASE), 'Nexus',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Disciple Samples'        COLLATE NOCASE), 'Virtual Riot & Modestep - Spicy Riddim Drums Vol. 2', 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Disciple Samples'        COLLATE NOCASE), 'Sharks - Color Bass Vol. 1',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Disciple Samples'        COLLATE NOCASE), 'Barely Alive - Essential Samples Vol. 1',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Disciple Samples'        COLLATE NOCASE), 'Chime & Ace Aura - Melodic Riddim Vol. 1',       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Disciple Samples'        COLLATE NOCASE), 'Virtual Riot - Heavy Bass Design Vol. 2',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                    COLLATE NOCASE), 'M1',                                             'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Image-Line'              COLLATE NOCASE), 'FL Studio',                                      'DAW'),
  ((SELECT id FROM manufacturers WHERE name = 'Image-Line'              COLLATE NOCASE), 'FLEX',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Rhythm Lab'              COLLATE NOCASE), 'Amen Break Vol. 2',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Matt Tylel'              COLLATE NOCASE), 'Vital',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Dharma Studio'           COLLATE NOCASE), 'Sounds of KSHMR Vol. 4 Complete Edition',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Epic Stock Media'        COLLATE NOCASE), 'Digital Elements',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sample Magic'            COLLATE NOCASE), 'Chiptune',                                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sample: Valve Software'  COLLATE NOCASE), 'Counter-Strike',                                 NULL),
  ((SELECT id FROM manufacturers WHERE name = 'Sample: Toby Fox'        COLLATE NOCASE), 'UNDERTALE',                                      NULL),
  ((SELECT id FROM manufacturers WHERE name = 'Sample: alfo399'         COLLATE NOCASE), 'Risada do Peludão',                              NULL),
  ((SELECT id FROM manufacturers WHERE name = 'Sample: madsiepatsie'    COLLATE NOCASE), 'haram alert',                                    NULL),
  ((SELECT id FROM manufacturers WHERE name = 'Sample: Meme Sound FX'   COLLATE NOCASE), 'Fart with reverb sound effect',                  NULL),
  ((SELECT id FROM manufacturers WHERE name = 'Sample: Neave'           COLLATE NOCASE), 'Goofy Cartoon Sounds',                           NULL),
  ((SELECT id FROM manufacturers WHERE name = 'Sample: OmarSounds'      COLLATE NOCASE), 'Vine Boom Sound Effect',                         NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Honkai: Star Rail',
   'PC, Mobile, PlayStation',
   '2023-04-26',
   'Fan, Eli.W, Vinchi, Gon, Yj.W, Sean, TSAR, Jing.W, Laetus.L, Hao, Yonghui.C, Wei.C, Duke.Killers, Wandy.N, Shijia.Y, Zheng.L, Aolin.Huang, Sherry.S, Han.J, Bojack, Eva Zuo',
   'fan, eli.w, vinchi, gon, yj.w, sean, tsar, jing.w, laetus.l, hao, yonghui.c, wei.c, duke.killers, wandy.n, shijia.y, zheng.l, aolin.huang, sherry.s, han.j, bojack, eva zuo',
   'Source: HOYO-MiX Sound Sources - Honkai Star Rail.csv. ~21 albums / EPs / singles. Track-level composer attribution aggregated. Live Recording rows have product_id NULL and raw_source set to "<role> — <performer>".');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Album: Out of Control (2023-03-24)
  -- =========================================================================
  -- 1. Star Rail (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Out of Control', '1. Star Rail', 'main', 'hoyo_mix', 1),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Out of Control', '1. Star Rail', 'main', 'hoyo_mix', 2),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Out of Control', '1. Star Rail', 'main', 'hoyo_mix', 3),
  -- 2. Space Walk (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Out of Control', '2. Space Walk', 'main', 'hoyo_mix', 4),
  -- 5. Call of the Stars (Vinchi)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Transitions -> Shaker_Transitions', 'KSHMR_Shaker_Transition_15', 'Album: Out of Control', '5. Call of the Stars', 'main', 'hoyo_mix', 5),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Transitions -> Tambourine_Transitions', 'KSHMR_Tambourine_Transition_02', 'Album: Out of Control', '5. Call of the Stars', 'main', 'hoyo_mix', 6),
  -- 6. Science Fiction (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Out of Control', '6. Science Fiction', 'main', 'hoyo_mix', 7),
  -- 7. Drift (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'Pianoteq 7' COLLATE NOCASE),
   'Grand Steinway D', 'Steinway D Prelude', 'Album: Out of Control', '7. Drift', 'main', 'hoyo_mix', 8),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', 'Trilian Ac 1 - Full Range All', 'Album: Out of Control', '7. Drift', 'main', 'hoyo_mix', 9),
  -- 8. Crises (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Out of Control', '8. Crises', 'main', 'hoyo_mix', 10),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'Analog Lab V' COLLATE NOCASE),
   NULL, NULL, 'Album: Out of Control | Synths', '8. Crises', 'main', 'hoyo_mix', 11),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase', 'Album: Out of Control | B4', '8. Crises', 'main', 'hoyo_mix', 12),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Modern Mystery (STR)', 'Album: Out of Control | D4, E4, A#4', '8. Crises', 'main', 'hoyo_mix', 13),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 03 Hybrid Cinematic (STR)', 'Hybrid Cinematic - Full Breakout Loops 03 (STR)', 'Album: Out of Control | C3', '8. Crises', 'main', 'hoyo_mix', 14),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer', NULL, 'Album: Out of Control | To be found', '8. Crises', 'main', 'hoyo_mix', 15),
  -- 9. Flashpoint (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'Analog Lab V' COLLATE NOCASE),
   NULL, NULL, 'Album: Out of Control | To be found', '9. Flashpoint', 'main', 'hoyo_mix', 16),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer', NULL, 'Album: Out of Control', '9. Flashpoint', 'main', 'hoyo_mix', 17),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD booty [AF]', 'Album: Out of Control', '9. Flashpoint', 'main', 'hoyo_mix', 18),
  -- 10. Deep Within (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Out of Control', '10. Deep Within', 'main', 'hoyo_mix', 19),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'Analog Lab V' COLLATE NOCASE),
   'Analog Lab Factory -> Sequence', 'Autumn Fireflies 1', 'Album: Out of Control', '10. Deep Within', 'main', 'hoyo_mix', 20),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'Modular V3' COLLATE NOCASE),
   'Keys', 'Sample&hld', 'Album: Out of Control', '10. Deep Within', 'main', 'hoyo_mix', 21),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Session Strings 2' COLLATE NOCASE),
   'Sound', 'Session Strings', 'Album: Out of Control | Pizzicato articulation', '10. Deep Within', 'main', 'hoyo_mix', 22),
  -- 11. Flow Experience (Eli.W, Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Out of Control', '11. Flow Experience', 'main', 'hoyo_mix', 23),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', NULL, 'Album: Out of Control', '11. Flow Experience', 'main', 'hoyo_mix', 24),
  -- 12. Mystery (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 03 Hybrid Cinematic (STR)', 'Hybrid Cinematic - Full Breakout Loops 01 (STR)', 'Album: Out of Control | D#4, E4', '12. Mystery', 'main', 'hoyo_mix', 25),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', NULL, 'Album: Out of Control', '12. Mystery', 'main', 'hoyo_mix', 26),
  -- 13. Dire Straits (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 03 Hybrid Cinematic (STR)', 'Hybrid Cinematic - Full Breakout Loops 03 (STR)', 'Album: Out of Control | C4, G#4', '13. Dire Straits', 'main', 'hoyo_mix', 27),
  -- 14. Alternative Rock (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Out of Control', '14. Alternative Rock', 'main', 'hoyo_mix', 28),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Out of Control | Maybe? Snare sounds like it''s from the Black Velvet kits', '14. Alternative Rock', 'main', 'hoyo_mix', 29),
  -- 15. Dawn of Disaster (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Out of Control', '15. Dawn of Disaster', 'main', 'hoyo_mix', 30),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Album: Out of Control | G4', '15. Dawn of Disaster', 'main', 'hoyo_mix', 31),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Modartt' COLLATE NOCASE AND p.name = 'Pianoteq 7' COLLATE NOCASE),
   'Grand Steinway D', 'Steinway D Prelude', 'Album: Out of Control', '15. Dawn of Disaster', 'main', 'hoyo_mix', 32),
  -- 16. Salty Moon (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', NULL, 'Album: Out of Control', '16. Salty Moon', 'main', 'hoyo_mix', 33),
  -- 17. Timeline (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Una Corda' COLLATE NOCASE),
   NULL, NULL, 'Album: Out of Control | Sounds like it', '17. Timeline', 'main', 'hoyo_mix', 34),
  -- 18. Take the Journey (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Out of Control', '18. Take the Journey', 'main', 'hoyo_mix', 35),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Out of Control', '18. Take the Journey', 'main', 'hoyo_mix', 36),

  -- =========================================================================
  -- Album: Of Snow and Ember (2023-05-02)
  -- =========================================================================
  -- 1. Embers (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '1. Embers', 'main', 'hoyo_mix', 37),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '1. Embers', 'main', 'hoyo_mix', 38),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '1. Embers', 'main', 'hoyo_mix', 39),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '1. Embers', 'main', 'hoyo_mix', 40),
  -- 2. Hearthfire (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '2. Hearthfire', 'main', 'hoyo_mix', 41),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '2. Hearthfire', 'main', 'hoyo_mix', 42),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '2. Hearthfire', 'main', 'hoyo_mix', 43),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'EZdrummer 2 Modern', 'Basic', 'Album: Of Snow and Ember | Used for the kick', '2. Hearthfire', 'main', 'hoyo_mix', 44),
  -- 3. Streets Abuzz (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '3. Streets Abuzz', 'main', 'hoyo_mix', 45),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '3. Streets Abuzz', 'main', 'hoyo_mix', 46),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '3. Streets Abuzz', 'main', 'hoyo_mix', 47),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '3. Streets Abuzz', 'main', 'hoyo_mix', 48),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember | Pitch shifted', '3. Streets Abuzz', 'main', 'hoyo_mix', 49),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unfiltered Audio' COLLATE NOCASE AND p.name = 'Sandman Pro' COLLATE NOCASE),
   NULL, NULL, 'Album: Of Snow and Ember | idk if an effect plugin should be noted but they had this in the video', '3. Streets Abuzz', 'main', 'hoyo_mix', 50),
  -- 4. Faded Sun (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '4. Faded Sun', 'main', 'hoyo_mix', 51),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 02 Ethnic Drums', 'PERC Ethnic Ens Percussion', 'Album: Of Snow and Ember', '4. Faded Sun', 'main', 'hoyo_mix', 52),
  -- 5. Frosty Trail (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '5. Frosty Trail', 'main', 'hoyo_mix', 53),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '5. Frosty Trail', 'main', 'hoyo_mix', 54),
  -- 6. Order (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Ensemble Designer', NULL, 'Album: Of Snow and Ember', '6. Order', 'main', 'hoyo_mix', 55),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'EZdrummer 2 Modern', 'Basic', 'Album: Of Snow and Ember', '6. Order', 'main', 'hoyo_mix', 56),
  -- 7. Braving the Cold (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '7. Braving the Cold', 'main', 'hoyo_mix', 57),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 01 Epic Organic Drums', 'PERC Studio Armageddon Ens', 'Album: Of Snow and Ember', '7. Braving the Cold', 'main', 'hoyo_mix', 58),
  -- 8. Warm Sun (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '8. Warm Sun', 'main', 'hoyo_mix', 59),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '8. Warm Sun', 'main', 'hoyo_mix', 60),
  -- 9. Sleep Tight (Sean)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Una Corda' COLLATE NOCASE),
   NULL, NULL, 'Album: Of Snow and Ember | To check', '9. Sleep Tight', 'main', 'hoyo_mix', 61),
  -- 10. Silent (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '10. Silent', 'main', 'hoyo_mix', 62),
  -- 11. Cutting Mistral (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '11. Cutting Mistral', 'main', 'hoyo_mix', 63),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '11. Cutting Mistral', 'main', 'hoyo_mix', 64),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '11. Cutting Mistral', 'main', 'hoyo_mix', 65),
  -- 12. Tempered Cord (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '12. Tempered Cord', 'main', 'hoyo_mix', 66),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '12. Tempered Cord', 'main', 'hoyo_mix', 67),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '12. Tempered Cord', 'main', 'hoyo_mix', 68),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Of Snow and Ember | To be found', '12. Tempered Cord', 'main', 'hoyo_mix', 69),
  -- 14. Traceless Drift (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '14. Traceless Drift', 'main', 'hoyo_mix', 70),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '14. Traceless Drift', 'main', 'hoyo_mix', 71),
  -- 15. Ghost From the Past (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Guitars', 'Double-Tracked 6-Strings a', 'Album: Of Snow and Ember | Has weird delay effect', '15. Ghost From the Past', 'main', 'hoyo_mix', 72),
  -- 16. Sinking Hoarfrost (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '16. Sinking Hoarfrost', 'main', 'hoyo_mix', 73),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '16. Sinking Hoarfrost', 'main', 'hoyo_mix', 74),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 02 Ethnic Drums', 'PERC Ethnic Ens Percussion', 'Album: Of Snow and Ember', '16. Sinking Hoarfrost', 'main', 'hoyo_mix', 75),
  -- 17. Kindling (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '17. Kindling', 'main', 'hoyo_mix', 76),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '17. Kindling', 'main', 'hoyo_mix', 77),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Guitars', 'Flamenco Guitar - Mandolin Duo', 'Album: Of Snow and Ember', '17. Kindling', 'main', 'hoyo_mix', 78),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Spotlight - EDM -> Synth Bass', 'Swagger Bass 2', 'Album: Of Snow and Ember | High passed', '17. Kindling', 'main', 'hoyo_mix', 79),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'ARP + BPM', 'Electric Train Trip 1', 'Album: Of Snow and Ember | Played at 119 BPM', '17. Kindling', 'main', 'hoyo_mix', 80),
  -- 18. Underground (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '18. Underground', 'main', 'hoyo_mix', 81),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '18. Underground', 'main', 'hoyo_mix', 82),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 04 Hybrid FX Hits', 'PERC Low Drum Skin FX', 'Album: Of Snow and Ember | A2', '18. Underground', 'main', 'hoyo_mix', 83),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 02 Ethnic Drums', 'PERC Ethnic Ens Percussion', 'Album: Of Snow and Ember', '18. Underground', 'main', 'hoyo_mix', 84),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '03 - Hybrid Sounds', 'Hungry Shark', 'Album: Of Snow and Ember', '18. Underground', 'main', 'hoyo_mix', 85),
  -- 19. Blaze (TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '19. Blaze', 'main', 'hoyo_mix', 86),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'FL Slayer' COLLATE NOCASE),
   NULL, 'POWER Dire Straits', 'Album: Of Snow and Ember | Filtered', '19. Blaze', 'main', 'hoyo_mix', 87),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'FX_Elements -> KSHMR_Industrial_Grime', 'KSHMR_Industrial_Grime_15_149_E', 'Album: Of Snow and Ember | First kick is only used', '19. Blaze', 'main', 'hoyo_mix', 88),
  -- 20. Conflict Undraped (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '20. Conflict Undraped', 'main', 'hoyo_mix', 89),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'EZdrummer 2 Modern', 'Basic', 'Album: Of Snow and Ember', '20. Conflict Undraped', 'main', 'hoyo_mix', 90),
  -- 21. Crystal Tears (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '21. Crystal Tears', 'main', 'hoyo_mix', 91),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '21. Crystal Tears', 'main', 'hoyo_mix', 92),
  -- 22. Lingering Heat (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '22. Lingering Heat', 'main', 'hoyo_mix', 93),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '22. Lingering Heat', 'main', 'hoyo_mix', 94),
  -- 23. Thick Haze (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '23. Thick Haze', 'main', 'hoyo_mix', 95),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '23. Thick Haze', 'main', 'hoyo_mix', 96),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 02 Ethnic Drums', 'PERC Ethnic Ens Percussion', 'Album: Of Snow and Ember', '23. Thick Haze', 'main', 'hoyo_mix', 97),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, 'Album: Of Snow and Ember | To be found', '23. Thick Haze', 'main', 'hoyo_mix', 98),
  -- 24. Godfather (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '24. Godfather', 'main', 'hoyo_mix', 99),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '24. Godfather', 'main', 'hoyo_mix', 100),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '24. Godfather', 'main', 'hoyo_mix', 101),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 02 Ethnic Drums', 'PERC Ethnic Ens Percussion', 'Album: Of Snow and Ember', '24. Godfather', 'main', 'hoyo_mix', 102),
  -- 25. Eternal Freeze (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '25. Eternal Freeze', 'main', 'hoyo_mix', 103),
  -- 26. Everwinter (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '26. Everwinter', 'main', 'hoyo_mix', 104),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '26. Everwinter', 'main', 'hoyo_mix', 105),
  -- 27. Frozen March (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '27. Frozen March', 'main', 'hoyo_mix', 106),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '27. Frozen March', 'main', 'hoyo_mix', 107),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '27. Frozen March', 'main', 'hoyo_mix', 108),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Tech Elements 01', 'Album: Of Snow and Ember | G#5', '27. Frozen March', 'main', 'hoyo_mix', 109),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 02 Ethnic Drums', 'PERC Ethnic Ens Percussion', 'Album: Of Snow and Ember', '27. Frozen March', 'main', 'hoyo_mix', 110),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Position Music' COLLATE NOCASE AND p.name = 'Danger Impact - Sound Design Vol. 1' COLLATE NOCASE),
   '06. Hit Rips', '47. Sideways', 'Album: Of Snow and Ember', '27. Frozen March', 'main', 'hoyo_mix', 111),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   '02 Poly Leads', 'MC Mango', 'Album: Of Snow and Ember', '27. Frozen March', 'main', 'hoyo_mix', 112),
  -- 28. Fate (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '28. Fate', 'main', 'hoyo_mix', 113),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   '01 Basses', 'MC Moo B', 'Album: Of Snow and Ember', '28. Fate', 'main', 'hoyo_mix', 114),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   '02 Poly Leads', 'MC Mango', 'Album: Of Snow and Ember', '28. Fate', 'main', 'hoyo_mix', 115),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   '04 Keys & Classic', 'AZ Lullaby', 'Album: Of Snow and Ember', '28. Fate', 'main', 'hoyo_mix', 116),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   'Transmitting Spheres -> 02 Keys & Leads', 'Key Dyno Rhodes', 'Album: Of Snow and Ember', '28. Fate', 'main', 'hoyo_mix', 117),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   'ZaBong - Hive Slice 1', 'ARP Berlin Pluck 1', 'Album: Of Snow and Ember', '28. Fate', 'main', 'hoyo_mix', 118),
  -- 29. A Trap With No Return (Gon, Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '29. A Trap With No Return', 'main', 'hoyo_mix', 119),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '29. A Trap With No Return', 'main', 'hoyo_mix', 120),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '29. A Trap With No Return', 'main', 'hoyo_mix', 121),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '06 - Into the Void', 'Disappearing Bells', 'Album: Of Snow and Ember', '29. A Trap With No Return', 'main', 'hoyo_mix', 122),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'EZdrummer 2 Modern', 'Basic', 'Album: Of Snow and Ember', '29. A Trap With No Return', 'main', 'hoyo_mix', 123),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   '01 Basses', 'HS Sub-30', 'Album: Of Snow and Ember', '29. A Trap With No Return', 'main', 'hoyo_mix', 124),
  -- 30. Wildfire (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '30. Wildfire', 'main', 'hoyo_mix', 125),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Of Snow and Ember', '30. Wildfire', 'main', 'hoyo_mix', 126),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '06 - Into the Void', 'Disappearing Bells', 'Album: Of Snow and Ember', '30. Wildfire', 'main', 'hoyo_mix', 127),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'EZdrummer 2 Modern', 'Basic', 'Album: Of Snow and Ember | Layered with a different kit', '30. Wildfire', 'main', 'hoyo_mix', 128),

  -- =========================================================================
  -- Album: Svah Sanishyu (2023-07-19)
  -- =========================================================================
  -- 1. Anthropic Domain (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '1. Anthropic Domain', 'main', 'hoyo_mix', 129),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '1. Anthropic Domain', 'main', 'hoyo_mix', 130),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '1. Anthropic Domain', 'main', 'hoyo_mix', 131),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '1. Anthropic Domain', 'main', 'hoyo_mix', 132),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '1. Anthropic Domain', 'main', 'hoyo_mix', 133),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '1. Anthropic Domain', 'main', 'hoyo_mix', 134),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'Sampler' COLLATE NOCASE),
   'Orchestral -> Percussion', 'Orchestral Kit', 'Album: Svah Sanishyu | Roto toms', '1. Anthropic Domain', 'main', 'hoyo_mix', 135),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Repro-5' COLLATE NOCASE),
   '06 Keys - Brass & Strings', 'EH Dark Tuba', 'Album: Svah Sanishyu', '1. Anthropic Domain', 'main', 'hoyo_mix', 136),
  -- 2. Lustrous Moonlight (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '2. Lustrous Moonlight', 'main', 'hoyo_mix', 137),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '2. Lustrous Moonlight', 'main', 'hoyo_mix', 138),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '2. Lustrous Moonlight', 'main', 'hoyo_mix', 139),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '2. Lustrous Moonlight', 'main', 'hoyo_mix', 140),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '2. Lustrous Moonlight', 'main', 'hoyo_mix', 141),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Diva' COLLATE NOCASE),
   '2 LEAD', 'HS Space Ocarina', 'Album: Svah Sanishyu', '2. Lustrous Moonlight', 'main', 'hoyo_mix', 142),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   '03 Mono Leads', 'ST Slow Attacker', 'Album: Svah Sanishyu | low pass filter', '2. Lustrous Moonlight', 'main', 'hoyo_mix', 143),
  -- 3. Thundering Chariot (Yj.W, Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '3. Thundering Chariot', 'main', 'hoyo_mix', 144),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '3. Thundering Chariot', 'main', 'hoyo_mix', 145),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '3. Thundering Chariot', 'main', 'hoyo_mix', 146),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase', 'Album: Svah Sanishyu | F3, D4', '3. Thundering Chariot', 'main', 'hoyo_mix', 147),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'Symphobia' COLLATE NOCASE),
   'Brass -> Brass Section -> Effects', 'Repetitions', 'Album: Svah Sanishyu', '3. Thundering Chariot', 'main', 'hoyo_mix', 148),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'Symphobia' COLLATE NOCASE),
   'World -> World Winds Phrases', 'Native American Flute Phrases', 'Album: Svah Sanishyu | Note: F2', '3. Thundering Chariot', 'main', 'hoyo_mix', 149),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'EZdrummer 2 Modern', 'Basic', 'Album: Svah Sanishyu', '3. Thundering Chariot', 'main', 'hoyo_mix', 150),
  -- 4. Cumulus Formations (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '4. Cumulus Formations', 'main', 'hoyo_mix', 151),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '4. Cumulus Formations', 'main', 'hoyo_mix', 152),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '4. Cumulus Formations', 'main', 'hoyo_mix', 153),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '4. Cumulus Formations', 'main', 'hoyo_mix', 154),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '4. Cumulus Formations', 'main', 'hoyo_mix', 155),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '4. Cumulus Formations', 'main', 'hoyo_mix', 156),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   '01 Basses', 'XS Warm 808 Sub', 'Album: Svah Sanishyu', '4. Cumulus Formations', 'main', 'hoyo_mix', 157),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   '01 Basses', 'HS Breaker Bass', 'Album: Svah Sanishyu', '4. Cumulus Formations', 'main', 'hoyo_mix', 158),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Repro-1' COLLATE NOCASE),
   '01 Basses', 'CK Dogtooth', 'Album: Svah Sanishyu', '4. Cumulus Formations', 'main', 'hoyo_mix', 159),
  -- 5. Ave Astra et Viator (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '5. Ave Astra et Viator', 'main', 'hoyo_mix', 160),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '5. Ave Astra et Viator', 'main', 'hoyo_mix', 161),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '5. Ave Astra et Viator', 'main', 'hoyo_mix', 162),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '5. Ave Astra et Viator', 'main', 'hoyo_mix', 163),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '5. Ave Astra et Viator', 'main', 'hoyo_mix', 164),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '5. Ave Astra et Viator', 'main', 'hoyo_mix', 165),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '5. Ave Astra et Viator', 'main', 'hoyo_mix', 166),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'Drum Machine Designer' COLLATE NOCASE),
   'Electronic Drum Kit', 'Bright Bass House', 'Album: Svah Sanishyu | To confirm', '5. Ave Astra et Viator', 'main', 'hoyo_mix', 167),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, 'Album: Svah Sanishyu | Maybe?', '5. Ave Astra et Viator', 'main', 'hoyo_mix', 168),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   '01 Basses', 'XS Warm 808 Sub', 'Album: Svah Sanishyu', '5. Ave Astra et Viator', 'main', 'hoyo_mix', 169),
  -- 6. Warden of Jade (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '6. Warden of Jade', 'main', 'hoyo_mix', 170),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '6. Warden of Jade', 'main', 'hoyo_mix', 171),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '6. Warden of Jade', 'main', 'hoyo_mix', 172),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'Sampler' COLLATE NOCASE),
   'Orchestral -> Strings', 'Full Strings+', 'Album: Svah Sanishyu | To confirm', '6. Warden of Jade', 'main', 'hoyo_mix', 173),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Svah Sanishyu', '6. Warden of Jade', 'main', 'hoyo_mix', 174),
  -- 7. Into the Breach (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '7. Into the Breach', 'main', 'hoyo_mix', 175),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 02 Organic Cinematic (STR)', 'Organic Cinematic - Breakout Full Loops 02 (STR)', 'Album: Svah Sanishyu | A1, A4', '7. Into the Breach', 'main', 'hoyo_mix', 176),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: East Asia' COLLATE NOCASE),
   'Percussion China', 'Bangu', 'Album: Svah Sanishyu', '7. Into the Breach', 'main', 'hoyo_mix', 177),
  -- 8. Hunter's Intuition (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Svah Sanishyu', '8. Hunter''s Intuition', 'main', 'hoyo_mix', 178),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Cinematic 1 -> Arp', 'AR Seventeen Years', 'Album: Svah Sanishyu | Melody A and Melody B parts played solo across the track', '8. Hunter''s Intuition', 'main', 'hoyo_mix', 179),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Effects Trance -> Sequences', 'SQ Short Fill 1', 'Album: Svah Sanishyu', '8. Hunter''s Intuition', 'main', 'hoyo_mix', 180),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Factory -> Synth', 'SY Haunted Horn', 'Album: Svah Sanishyu | pitch envelope disabled', '8. Hunter''s Intuition', 'main', 'hoyo_mix', 181),
  -- 9. Transient Jubilation (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ample Sound' COLLATE NOCASE AND p.name = 'Ample China Qudi' COLLATE NOCASE),
   'Presets', 'Default', 'Album: Svah Sanishyu | video', '9. Transient Jubilation', 'main', 'hoyo_mix', 182),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ample Sound' COLLATE NOCASE AND p.name = 'Ample China Zheng' COLLATE NOCASE),
   'Presets', 'Default', 'Album: Svah Sanishyu', '9. Transient Jubilation', 'main', 'hoyo_mix', 183),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> Tambourines', '92-Tambourine', 'Album: Svah Sanishyu | Edited loop', '9. Transient Jubilation', 'main', 'hoyo_mix', 184),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', 'Trilogy Acoustic - Full Range', 'Album: Svah Sanishyu', '9. Transient Jubilation', 'main', 'hoyo_mix', 185),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'Americana EZX' COLLATE NOCASE),
   NULL, NULL, 'Album: Svah Sanishyu', '9. Transient Jubilation', 'main', 'hoyo_mix', 186),
  -- 10. Upon the Firmament (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '10. Upon the Firmament', 'main', 'hoyo_mix', 187),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '10. Upon the Firmament', 'main', 'hoyo_mix', 188),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Repro-5' COLLATE NOCASE),
   '06 Keys - Brass & Strings', 'EH Dark Tuba', 'Album: Svah Sanishyu', '10. Upon the Firmament', 'main', 'hoyo_mix', 189),
  -- 11. Exquisite Ingenuity (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Album: Svah Sanishyu | C3, C4, F4', '11. Exquisite Ingenuity', 'main', 'hoyo_mix', 190),
  -- 12. Fabulous Foresight (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Svah Sanishyu', '12. Fabulous Foresight', 'main', 'hoyo_mix', 191),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Factory -> Sequences', 'SQ Living Spirits', 'Album: Svah Sanishyu | Arp and Drums disabled', '12. Fabulous Foresight', 'main', 'hoyo_mix', 192),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Trance One -> Arp', 'AR Black Lotus', 'Album: Svah Sanishyu | Slightly modified sequence', '12. Fabulous Foresight', 'main', 'hoyo_mix', 193),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Trance One -> Pads', 'PD Band Clusters', 'Album: Svah Sanishyu', '12. Fabulous Foresight', 'main', 'hoyo_mix', 194),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   NULL, NULL, 'Album: Svah Sanishyu | To be found, plays after Black Lotus', '12. Fabulous Foresight', 'main', 'hoyo_mix', 195),
  -- 13. Divine Camaraderie (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '13. Divine Camaraderie', 'main', 'hoyo_mix', 196),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '13. Divine Camaraderie', 'main', 'hoyo_mix', 197),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '13. Divine Camaraderie', 'main', 'hoyo_mix', 198),
  -- 14. Blade Abracadabra (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 02 Organic Cinematic (STR)', 'Organic Cinematic - Mid Loops (STR)', 'Album: Svah Sanishyu | G1', '14. Blade Abracadabra', 'main', 'hoyo_mix', 199),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'The Stand -> Sequences', 'SEQ - Velvet', 'Album: Svah Sanishyu | Drums muted', '14. Blade Abracadabra', 'main', 'hoyo_mix', 200),
  -- 15. Into the Desolate (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '15. Into the Desolate', 'main', 'hoyo_mix', 201),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '15. Into the Desolate', 'main', 'hoyo_mix', 202),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', NULL, 'Album: Svah Sanishyu | To be found', '15. Into the Desolate', 'main', 'hoyo_mix', 203),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Album: Svah Sanishyu | D1, C#3, F#4, A#4', '15. Into the Desolate', 'main', 'hoyo_mix', 204),
  -- 16. Deerstalker (Vinchi)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '16. Deerstalker', 'main', 'hoyo_mix', 205),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Tambourine_Transitions', 'KSHMR_Tambourine_Transition_02', 'Album: Svah Sanishyu', '16. Deerstalker', 'main', 'hoyo_mix', 206),
  -- 17. Skyedge Voyage (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Ensemble Designer -> 01 All Star Presets', 'Armageddon 2 (17)', 'Album: Svah Sanishyu', '17. Skyedge Voyage', 'main', 'hoyo_mix', 207),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Keyboards', 'Dream Pianoceleste', 'Album: Svah Sanishyu', '17. Skyedge Voyage', 'main', 'hoyo_mix', 208),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Keyboards', 'Infinite Celeste', 'Album: Svah Sanishyu', '17. Skyedge Voyage', 'main', 'hoyo_mix', 209),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', 'Chapman Stick Sustain', 'Album: Svah Sanishyu', '17. Skyedge Voyage', 'main', 'hoyo_mix', 210),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Repro-1' COLLATE NOCASE),
   '02 Leads', 'CK The Voice', 'Album: Svah Sanishyu', '17. Skyedge Voyage', 'main', 'hoyo_mix', 211),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Repro-1' COLLATE NOCASE),
   '02 Leads', 'HS Ocarina Yodel', 'Album: Svah Sanishyu', '17. Skyedge Voyage', 'main', 'hoyo_mix', 212),
  -- 18. Severed Harmony (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '18. Severed Harmony', 'main', 'hoyo_mix', 213),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '18. Severed Harmony', 'main', 'hoyo_mix', 214),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Cinematic 1 -> Pads', 'PD Melancholy', 'Album: Svah Sanishyu', '18. Severed Harmony', 'main', 'hoyo_mix', 215),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Factory -> Pads', 'PD Exoplanet', 'Album: Svah Sanishyu', '18. Severed Harmony', 'main', 'hoyo_mix', 216),
  -- 19. Terrene Deliverance (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '19. Terrene Deliverance', 'main', 'hoyo_mix', 217),
  -- 20. Serene Stroll (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Acoustic Pianos', 'LA Custom C7 Grand Piano', 'Album: Svah Sanishyu', '20. Serene Stroll', 'main', 'hoyo_mix', 218),
  -- 21. Evanescent Dreams (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '21. Evanescent Dreams', 'main', 'hoyo_mix', 219),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Strezov Sampling' COLLATE NOCASE AND p.name = 'Rhodope 2: Ethnic Bulgarian Choir' COLLATE NOCASE),
   '-', 'Rhodope2 SyllaBuilder', 'Album: Svah Sanishyu', '21. Evanescent Dreams', 'main', 'hoyo_mix', 220),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Cinematic 1 -> Pads', 'PD Melancholy', 'Album: Svah Sanishyu', '21. Evanescent Dreams', 'main', 'hoyo_mix', 221),
  -- 22. Mokshasatya (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '22. Mokshasatya', 'main', 'hoyo_mix', 222),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '22. Mokshasatya', 'main', 'hoyo_mix', 223),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Strezov Sampling' COLLATE NOCASE AND p.name = 'Rhodope 2: Ethnic Bulgarian Choir' COLLATE NOCASE),
   '-', 'Rhodope2 Eh Legato', 'Album: Svah Sanishyu', '22. Mokshasatya', 'main', 'hoyo_mix', 224),
  -- 23. Sanctus Medicus Dharani (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '23. Sanctus Medicus Dharani', 'main', 'hoyo_mix', 225),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '23. Sanctus Medicus Dharani', 'main', 'hoyo_mix', 226),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'BOWED INSTRUMENTS -> BOWED PSALTRY', 'Bowed Psaltery KEY', 'Album: Svah Sanishyu | unsure', '23. Sanctus Medicus Dharani', 'main', 'hoyo_mix', 227),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Industrial Cinematic (STR)', 'Album: Svah Sanishyu | F3', '23. Sanctus Medicus Dharani', 'main', 'hoyo_mix', 228),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Strezov Sampling' COLLATE NOCASE AND p.name = 'Rhodope 2: Ethnic Bulgarian Choir' COLLATE NOCASE),
   '-', 'Rhodope2 SyllaBuilder', 'Album: Svah Sanishyu | Sustain Syllable Controls', '23. Sanctus Medicus Dharani', 'main', 'hoyo_mix', 229),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Cinematic 2 -> Drums', 'DL Heatbeat', 'Album: Svah Sanishyu | Deep, Perc, Stick, and Sub muted', '23. Sanctus Medicus Dharani', 'main', 'hoyo_mix', 230),
  -- 24. A Brew of Storm (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '24. A Brew of Storm', 'main', 'hoyo_mix', 231),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Svah Sanishyu | To be found', '24. A Brew of Storm', 'main', 'hoyo_mix', 232),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Album: Svah Sanishyu | C#3', '24. A Brew of Storm', 'main', 'hoyo_mix', 233),
  -- 25. Gleaming Clash (TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '25. Gleaming Clash', 'main', 'hoyo_mix', 234),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Strezov Sampling' COLLATE NOCASE AND p.name = 'Rhodope 2: Ethnic Bulgarian Choir' COLLATE NOCASE),
   '-', 'Rhodope2 SyllaBuilder', 'Album: Svah Sanishyu | Staccato Syllable Controls', '25. Gleaming Clash', 'main', 'hoyo_mix', 235),
  -- 26. Erstwhile Resonance (Wei.C)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '26. Erstwhile Resonance', 'main', 'hoyo_mix', 236),
  -- 27. Obscured Pearls (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '27. Obscured Pearls', 'main', 'hoyo_mix', 237),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '27. Obscured Pearls', 'main', 'hoyo_mix', 238),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '27. Obscured Pearls', 'main', 'hoyo_mix', 239),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '27. Obscured Pearls', 'main', 'hoyo_mix', 240),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '22 Cymbal', 'Album: Svah Sanishyu', '27. Obscured Pearls', 'main', 'hoyo_mix', 241),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Celesta', 'Album: Svah Sanishyu', '27. Obscured Pearls', 'main', 'hoyo_mix', 242),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Svah Sanishyu | Reverbed', '27. Obscured Pearls', 'main', 'hoyo_mix', 243),
  -- 28. Arteria Inceptionis (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '28. Arteria Inceptionis', 'main', 'hoyo_mix', 244),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '28. Arteria Inceptionis', 'main', 'hoyo_mix', 245),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '28. Arteria Inceptionis', 'main', 'hoyo_mix', 246),
  -- 29. Pedujara (all 3 phases) (Vinchi)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '29. Pedujara (all 3 phases)', 'main', 'hoyo_mix', 247),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '29. Pedujara (all 3 phases)', 'main', 'hoyo_mix', 248),
  -- 30. Samudrartha (Fan, Gon, Vinchi)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '30. Samudrartha', 'main', 'hoyo_mix', 249),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '30. Samudrartha', 'main', 'hoyo_mix', 250),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Svah Sanishyu', '30. Samudrartha', 'main', 'hoyo_mix', 251),

  -- =========================================================================
  -- Album: Astral Theater Vol. 1 (2024-01-12)
  -- =========================================================================
  -- 1. Paean of Indulgence (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '1. Paean of Indulgence', 'main', 'hoyo_mix', 252),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS', 'Kena KEY', 'Album: Astral Theater Vol. 1', '1. Paean of Indulgence', 'main', 'hoyo_mix', 253),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WORLD PERCUSSION -> WOOD PERCUSSION', 'Wooden Bells', 'Album: Astral Theater Vol. 1', '1. Paean of Indulgence', 'main', 'hoyo_mix', 254),
  -- 2. Night Bazaar in Full Glow (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '2. Night Bazaar in Full Glow', 'main', 'hoyo_mix', 255),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'BigTone 1 -> Arp', 'AR Glibbery When Wet', 'Album: Astral Theater Vol. 1', '2. Night Bazaar in Full Glow', 'main', 'hoyo_mix', 256),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'BigTone 2 -> Arp', 'AR Occasional Triplet Beauty', 'Album: Astral Theater Vol. 1 | unsure', '2. Night Bazaar in Full Glow', 'main', 'hoyo_mix', 257),
  -- 3. Whispers of Departure (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '3. Whispers of Departure', 'main', 'hoyo_mix', 258),
  -- 4. Wedding Wine (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '4. Wedding Wine', 'main', 'hoyo_mix', 259),
  -- 5. Nesting Avians (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: East Asia' COLLATE NOCASE),
   'Percussion Korea', 'Kkwaenggwari', 'Album: Astral Theater Vol. 1', '5. Nesting Avians', 'main', 'hoyo_mix', 260),
  -- 6. Above The Fray (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '6. Above The Fray', 'main', 'hoyo_mix', 261),
  -- 7. Haunting Hoots (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'BOWED INSTRUMENTS -> DILRUBA', 'Dilruba FX', 'Album: Astral Theater Vol. 1 | G3', '7. Haunting Hoots', 'main', 'hoyo_mix', 262),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> VARIOUS FLUTE FX', 'Various Flute FX', 'Album: Astral Theater Vol. 1 | D3, C3', '7. Haunting Hoots', 'main', 'hoyo_mix', 263),
  -- 8. Dancing Fantasms (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '8. Dancing Fantasms', 'main', 'hoyo_mix', 264),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '8. Dancing Fantasms', 'main', 'hoyo_mix', 265),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> VARIOUS FLUTE FX', 'Various Flute FX', 'Album: Astral Theater Vol. 1 | A1, C2, B2, C3, A3, B3', '8. Dancing Fantasms', 'main', 'hoyo_mix', 266),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase', 'Album: Astral Theater Vol. 1 | G#3', '8. Dancing Fantasms', 'main', 'hoyo_mix', 267),
  -- 9. Age of Innocence (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '9. Age of Innocence', 'main', 'hoyo_mix', 268),
  -- 10. Age of Opulence (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '10. Age of Opulence', 'main', 'hoyo_mix', 269),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '10. Age of Opulence', 'main', 'hoyo_mix', 270),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Keyboards', 'Infinite Celeste', 'Album: Astral Theater Vol. 1', '10. Age of Opulence', 'main', 'hoyo_mix', 271),
  -- 11. A Gentleman's Fantasy (Laetus.L, Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '11. A Gentleman''s Fantasy', 'main', 'hoyo_mix', 272),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '11. A Gentleman''s Fantasy', 'main', 'hoyo_mix', 273),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '22 Cymbal', 'Album: Astral Theater Vol. 1', '11. A Gentleman''s Fantasy', 'main', 'hoyo_mix', 274),
  -- 12. In Disbelief (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Plucked', 'PL Nothing Special [DRK]', 'Album: Astral Theater Vol. 1', '12. In Disbelief', 'main', 'hoyo_mix', 275),
  -- 13. Aberrant Receptacle (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 05 Damage Kits', 'PERC Bad A Krunch Kit', 'Album: Astral Theater Vol. 1', '13. Aberrant Receptacle', 'main', 'hoyo_mix', 276),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   NULL, NULL, 'Album: Astral Theater Vol. 1', '13. Aberrant Receptacle', 'main', 'hoyo_mix', 277),
  -- 16. Everwinter's Collection (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '16. Everwinter''s Collection', 'main', 'hoyo_mix', 278),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '16. Everwinter''s Collection', 'main', 'hoyo_mix', 279),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '16. Everwinter''s Collection', 'main', 'hoyo_mix', 280),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '16. Everwinter''s Collection', 'main', 'hoyo_mix', 281),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '16. Everwinter''s Collection', 'main', 'hoyo_mix', 282),
  -- 20. Shadows of Enigma (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   NULL, NULL, 'Album: Astral Theater Vol. 1 | To be found, might be wrong', '20. Shadows of Enigma', 'main', 'hoyo_mix', 283),
  -- 22. Cosmic Sacrifice for Love (Laetus.L)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass', 'BA Organ Bass [FP]', 'Album: Astral Theater Vol. 1', '22. Cosmic Sacrifice for Love', 'main', 'hoyo_mix', 284),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX High Transition [FN]', 'Album: Astral Theater Vol. 1', '22. Cosmic Sacrifice for Love', 'main', 'hoyo_mix', 285),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Plucked', 'PL Phantoms [SD]', 'Album: Astral Theater Vol. 1', '22. Cosmic Sacrifice for Love', 'main', 'hoyo_mix', 286),
  -- 24. Battle Arena (TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '24. Battle Arena', 'main', 'hoyo_mix', 287),
  -- 25. Welcome to Aetherium Wars! (TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '25. Welcome to Aetherium Wars!', 'main', 'hoyo_mix', 288),
  -- 26. Battle! Championship Contender (Gon, TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Album: Astral Theater Vol. 1', '26. Battle! Championship Contender', 'main', 'hoyo_mix', 289),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Break_Beat_Loops', 'KSHMR_Break_Beat_Loop_09_150', 'Album: Astral Theater Vol. 1', '26. Battle! Championship Contender', 'main', 'hoyo_mix', 290),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Disciple Samples' COLLATE NOCASE AND p.name = 'Virtual Riot & Modestep - Spicy Riddim Drums Vol. 2' COLLATE NOCASE),
   'one_shots -> drums -> fill_one_shots', 'DS_SRD2_140_drum_one_shot_fill_redline', 'Album: Astral Theater Vol. 1', '26. Battle! Championship Contender', 'main', 'hoyo_mix', 291),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Disciple Samples' COLLATE NOCASE AND p.name = 'Virtual Riot & Modestep - Spicy Riddim Drums Vol. 2' COLLATE NOCASE),
   'one_shots -> drums -> fill_one_shots', 'DS_SRD2_150_drum_one_shot_fill_bitcrushed', 'Album: Astral Theater Vol. 1', '26. Battle! Championship Contender', 'main', 'hoyo_mix', 292),
  -- 28. Battle! Tournament Winner (Yj.W, TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '28. Battle! Tournament Winner', 'main', 'hoyo_mix', 293),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '28. Battle! Tournament Winner', 'main', 'hoyo_mix', 294),
  -- 30. Battle! King of the Snowy Hill (Eli.W, TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '30. Battle! King of the Snowy Hill', 'main', 'hoyo_mix', 295),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 1', '30. Battle! King of the Snowy Hill', 'main', 'hoyo_mix', 296),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Disciple Samples' COLLATE NOCASE AND p.name = 'Sharks - Color Bass Vol. 1' COLLATE NOCASE),
   'tonal_one_shots -> synth_one_shots', 'DS_SCB_synth_one_shot_cascade_forest_Fmin', 'Album: Astral Theater Vol. 1', '30. Battle! King of the Snowy Hill', 'main', 'hoyo_mix', 297),

  -- =========================================================================
  -- Album: The Flapper Sinthome (Part 1) (2024-05-30)
  -- =========================================================================
  -- 1. This Side of Paradise (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '1. This Side of Paradise', 'main', 'hoyo_mix', 298),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '1. This Side of Paradise', 'main', 'hoyo_mix', 299),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '1. This Side of Paradise', 'main', 'hoyo_mix', 300),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '1. This Side of Paradise', 'main', 'hoyo_mix', 301),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '1. This Side of Paradise', 'main', 'hoyo_mix', 302),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '1. This Side of Paradise', 'main', 'hoyo_mix', 303),
  -- 2. Ace in the Hole (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '2. Ace in the Hole', 'main', 'hoyo_mix', 304),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '2. Ace in the Hole', 'main', 'hoyo_mix', 305),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '2. Ace in the Hole', 'main', 'hoyo_mix', 306),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '2. Ace in the Hole', 'main', 'hoyo_mix', 307),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '2. Ace in the Hole', 'main', 'hoyo_mix', 308),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '2. Ace in the Hole', 'main', 'hoyo_mix', 309),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '2. Ace in the Hole', 'main', 'hoyo_mix', 310),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '2. Ace in the Hole', 'main', 'hoyo_mix', 311),
  -- 3. Hi, Dolly! (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '3. Hi, Dolly!', 'main', 'hoyo_mix', 312),
  -- 4. Golden Land (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '4. Golden Land', 'main', 'hoyo_mix', 313),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '4. Golden Land', 'main', 'hoyo_mix', 314),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '4. Golden Land', 'main', 'hoyo_mix', 315),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '4. Golden Land', 'main', 'hoyo_mix', 316),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '4. Golden Land', 'main', 'hoyo_mix', 317),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '4. Golden Land', 'main', 'hoyo_mix', 318),
  -- 5. The Big Sleep (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '5. The Big Sleep', 'main', 'hoyo_mix', 319),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '5. The Big Sleep', 'main', 'hoyo_mix', 320),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '5. The Big Sleep', 'main', 'hoyo_mix', 321),
  -- 6. Dreamwalker (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '6. Dreamwalker', 'main', 'hoyo_mix', 322),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '6. Dreamwalker', 'main', 'hoyo_mix', 323),
  -- 7. The Player on the Other Side (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '7. The Player on the Other Side', 'main', 'hoyo_mix', 324),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '7. The Player on the Other Side', 'main', 'hoyo_mix', 325),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '7. The Player on the Other Side', 'main', 'hoyo_mix', 326),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '7. The Player on the Other Side', 'main', 'hoyo_mix', 327),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '7. The Player on the Other Side', 'main', 'hoyo_mix', 328),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '7. The Player on the Other Side', 'main', 'hoyo_mix', 329),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '7. The Player on the Other Side', 'main', 'hoyo_mix', 330),
  -- 10. Realitätsprinzip (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '10. Realitätsprinzip', 'main', 'hoyo_mix', 331),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '10. Realitätsprinzip', 'main', 'hoyo_mix', 332),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '10. Realitätsprinzip', 'main', 'hoyo_mix', 333),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '10. Realitätsprinzip', 'main', 'hoyo_mix', 334),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '10. Realitätsprinzip', 'main', 'hoyo_mix', 335),
  -- 11. Lustprinzip (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '11. Lustprinzip', 'main', 'hoyo_mix', 336),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '11. Lustprinzip', 'main', 'hoyo_mix', 337),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '11. Lustprinzip', 'main', 'hoyo_mix', 338),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '11. Lustprinzip', 'main', 'hoyo_mix', 339),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '11. Lustprinzip', 'main', 'hoyo_mix', 340),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '11. Lustprinzip', 'main', 'hoyo_mix', 341),
  -- 12. Against The Day (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '12. Against The Day', 'main', 'hoyo_mix', 342),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '12. Against The Day', 'main', 'hoyo_mix', 343),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '12. Against The Day', 'main', 'hoyo_mix', 344),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '12. Against The Day', 'main', 'hoyo_mix', 345),
  -- 13. Challenge to the Reader (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '13. Challenge to the Reader', 'main', 'hoyo_mix', 346),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '13. Challenge to the Reader', 'main', 'hoyo_mix', 347),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '13. Challenge to the Reader', 'main', 'hoyo_mix', 348),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '13. Challenge to the Reader', 'main', 'hoyo_mix', 349),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '13. Challenge to the Reader', 'main', 'hoyo_mix', 350),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '13. Challenge to the Reader', 'main', 'hoyo_mix', 351),
  -- 17. The Midnight Special (Jing.W, Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '17. The Midnight Special', 'main', 'hoyo_mix', 352),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '17. The Midnight Special', 'main', 'hoyo_mix', 353),
  -- 18. Spellbound (Laetus.L)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '18. Spellbound', 'main', 'hoyo_mix', 354),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '18. Spellbound', 'main', 'hoyo_mix', 355),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Deadtalking [JL]', 'Album: The Flapper Sinthome (Part 1)', '18. Spellbound', 'main', 'hoyo_mix', 356),
  -- 19. City Upon a Hill (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '19. City Upon a Hill', 'main', 'hoyo_mix', 357),
  -- 21. Wet Dog (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '21. Wet Dog', 'main', 'hoyo_mix', 358),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '21. Wet Dog', 'main', 'hoyo_mix', 359),
  -- 24. Citizen Hanunue (TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 4' COLLATE NOCASE),
   'Drums -> Transitions -> Chime Transitions', 'KSHMR Chime Transition 02 - Down', 'Album: The Flapper Sinthome (Part 1)', '24. Citizen Hanunue', 'main', 'hoyo_mix', 360),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 4' COLLATE NOCASE),
   'Drums -> Transitions -> Chime Transitions', 'KSHMR Chime Transition 04 - Up', 'Album: The Flapper Sinthome (Part 1)', '24. Citizen Hanunue', 'main', 'hoyo_mix', 361),
  -- 25. Manifest Content of Dream (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '25. Manifest Content of Dream', 'main', 'hoyo_mix', 362),
  -- 26. Chaîne Signifiante (Jing.W, Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Keyboards', 'Piano on the Wireless', 'Album: The Flapper Sinthome (Part 1)', '26. Chaîne Signifiante', 'main', 'hoyo_mix', 363),
  -- 27. Stade du Miroir (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '27. Stade du Miroir', 'main', 'hoyo_mix', 364),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '27. Stade du Miroir', 'main', 'hoyo_mix', 365),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '27. Stade du Miroir', 'main', 'hoyo_mix', 366),
  -- 29. Return of None (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'Symphobia' COLLATE NOCASE),
   'Brass -> Brass Section -> Clusters', 'Crescendo', 'Album: The Flapper Sinthome (Part 1) | A1 and G#3 (and F2?)', '29. Return of None', 'main', 'hoyo_mix', 367),
  -- 30. If I Can Stop One Heart From Breaking (Encore) (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '30. If I Can Stop One Heart From Breaking (Encore)', 'main', 'hoyo_mix', 368),
  -- 32. Nevermore (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 1)', '32. Nevermore', 'main', 'hoyo_mix', 369),

  -- =========================================================================
  -- Album: The Flapper Sinthome (Part 2) (2024-06-21)
  -- =========================================================================
  -- 1. Dream First! (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '1. Dream First!', 'main', 'hoyo_mix', 370),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '1. Dream First!', 'main', 'hoyo_mix', 371),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '1. Dream First!', 'main', 'hoyo_mix', 372),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '1. Dream First!', 'main', 'hoyo_mix', 373),
  -- 2. Omertà (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '2. Omertà', 'main', 'hoyo_mix', 374),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '2. Omertà', 'main', 'hoyo_mix', 375),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '2. Omertà', 'main', 'hoyo_mix', 376),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '2. Omertà', 'main', 'hoyo_mix', 377),
  -- 3. Speedy Hamz (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '3. Speedy Hamz', 'main', 'hoyo_mix', 378),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '3. Speedy Hamz', 'main', 'hoyo_mix', 379),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '3. Speedy Hamz', 'main', 'hoyo_mix', 380),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '3. Speedy Hamz', 'main', 'hoyo_mix', 381),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '3. Speedy Hamz', 'main', 'hoyo_mix', 382),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '3. Speedy Hamz', 'main', 'hoyo_mix', 383),
  -- 4. The Game of Chicken (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Pads + Strings', 'Analog Shapeshifting Pad', 'Album: The Flapper Sinthome (Part 2)', '4. The Game of Chicken', 'main', 'hoyo_mix', 384),
  -- 5. Hell Is Preferable to Nihility (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '5. Hell Is Preferable to Nihility', 'main', 'hoyo_mix', 385),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '5. Hell Is Preferable to Nihility', 'main', 'hoyo_mix', 386),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Acoustic_Drum_Loops', 'KSHMR_Acoustic_Drum_Loop_12_128', 'Album: The Flapper Sinthome (Part 2) | See note, spoilers ahead', '5. Hell Is Preferable to Nihility', 'main', 'hoyo_mix', 387),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'u-he' COLLATE NOCASE AND p.name = 'Hive 2' COLLATE NOCASE),
   'Twolegs Tonekorks - Honey Monster Vol. 1', 'CH Minor Injury', 'Album: The Flapper Sinthome (Part 2) | unsure', '5. Hell Is Preferable to Nihility', 'main', 'hoyo_mix', 388),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'EDM 1 -> Sequences', 'SQ Progressive 2', 'Album: The Flapper Sinthome (Part 2)', '5. Hell Is Preferable to Nihility', 'main', 'hoyo_mix', 389),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Effects: House -> Effects', 'FX MW Rolling Wood', 'Album: The Flapper Sinthome (Part 2) | unsure', '5. Hell Is Preferable to Nihility', 'main', 'hoyo_mix', 390),
  -- 7. Polaris (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '7. Polaris', 'main', 'hoyo_mix', 391),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '7. Polaris', 'main', 'hoyo_mix', 392),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '7. Polaris', 'main', 'hoyo_mix', 393),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '7. Polaris', 'main', 'hoyo_mix', 394),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: The Flapper Sinthome (Part 2)', '7. Polaris', 'main', 'hoyo_mix', 395),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   'Factory Presets -> Classical', 'CL Angels Harp', 'Album: The Flapper Sinthome (Part 2) | Layer 1 and 3 disabled', '7. Polaris', 'main', 'hoyo_mix', 396),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   NULL, NULL, 'Album: The Flapper Sinthome (Part 2) | Plays at the start', '7. Polaris', 'main', 'hoyo_mix', 397),
  -- 8. Lodestar in Evernight (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '8. Lodestar in Evernight', 'main', 'hoyo_mix', 398),
  -- 11. Fast & Furynuts (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '11. Fast & Furynuts', 'main', 'hoyo_mix', 399),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '11. Fast & Furynuts', 'main', 'hoyo_mix', 400),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '11. Fast & Furynuts', 'main', 'hoyo_mix', 401),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '11. Fast & Furynuts', 'main', 'hoyo_mix', 402),
  -- 13. The City in the Sea (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Ambition -> Leads', 'LD Fallen', 'Album: The Flapper Sinthome (Part 2)', '13. The City in the Sea', 'main', 'hoyo_mix', 403),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Atmospherica -> Atmospheres', 'AT Wake up from Cryo', 'Album: The Flapper Sinthome (Part 2)', '13. The City in the Sea', 'main', 'hoyo_mix', 404),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'BigTone 2 -> Atmospheres', 'AT Raspy Movements', 'Album: The Flapper Sinthome (Part 2)', '13. The City in the Sea', 'main', 'hoyo_mix', 405),
  -- 14. A Star Is Born (TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Snares -> Big_Snares', 'KSHMR_Big_Snare_21', 'Album: The Flapper Sinthome (Part 2)', '14. A Star Is Born', 'main', 'hoyo_mix', 406),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'FX Elements -> Impacts -> Impacts 01 Main', 'KSHMR_Impact_with_Sweep_03', 'Album: The Flapper Sinthome (Part 2)', '14. A Star Is Born', 'main', 'hoyo_mix', 407),
  -- 16. Little Little Caesar (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '16. Little Little Caesar', 'main', 'hoyo_mix', 408),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '16. Little Little Caesar', 'main', 'hoyo_mix', 409),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '16. Little Little Caesar', 'main', 'hoyo_mix', 410),
  -- 17. Nobility of Time (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '17. Nobility of Time', 'main', 'hoyo_mix', 411),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '17. Nobility of Time', 'main', 'hoyo_mix', 412),
  -- 18. Some Like It Hot (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 1' COLLATE NOCASE),
   'KSHMR Snares -> Big Snares', 'KSHMR Big Snares 10', 'Album: The Flapper Sinthome (Part 2)', '18. Some Like It Hot', 'main', 'hoyo_mix', 413),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   '8 Bit Era -> Sequences', 'SQ FunkChip 2', 'Album: The Flapper Sinthome (Part 2) | Drums muted', '18. Some Like It Hot', 'main', 'hoyo_mix', 414),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Factory -> Sequences', 'SQ Funky Machine', 'Album: The Flapper Sinthome (Part 2) | Drums muted', '18. Some Like It Hot', 'main', 'hoyo_mix', 415),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Factory -> Sequences', 'SQ Lounge Classics 2', 'Album: The Flapper Sinthome (Part 2) | Kick & Hihats disabled', '18. Some Like It Hot', 'main', 'hoyo_mix', 416),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Funky House 2', NULL, 'Album: The Flapper Sinthome (Part 2) | To be found', '18. Some Like It Hot', 'main', 'hoyo_mix', 417),
  -- 19. No Business Like Show Business (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample: Valve Software' COLLATE NOCASE AND p.name = 'Counter-Strike' COLLATE NOCASE),
   NULL, 'C4 Ticking SFX', 'Album: The Flapper Sinthome (Part 2) | Might use a sample pack from Splice instead', '19. No Business Like Show Business', 'main', 'hoyo_mix', 418),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Rhythm Lab' COLLATE NOCASE AND p.name = 'Amen Break Vol. 2' COLLATE NOCASE),
   NULL, 'cw_amen_vinyl', 'Album: The Flapper Sinthome (Part 2)', '19. No Business Like Show Business', 'main', 'hoyo_mix', 419),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Factory -> Sequences', 'SQ Lounge Classics 2', 'Album: The Flapper Sinthome (Part 2) | Kick & Hihats disabled', '19. No Business Like Show Business', 'main', 'hoyo_mix', 420),
  -- 21. Caged Wings (Gon)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '21. Caged Wings', 'main', 'hoyo_mix', 421),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '21. Caged Wings', 'main', 'hoyo_mix', 422),
  -- 23. The Past, Present, and Eternal Show (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Disciple Samples' COLLATE NOCASE AND p.name = 'Barely Alive - Essential Samples Vol. 1' COLLATE NOCASE),
   'BRLY_ALVE_drums -> BRLY_ALVE_drum_loops', 'BRLY_ALVE_140_drum_loop_hybrid', 'Album: The Flapper Sinthome (Part 2)', '23. The Past, Present, and Eternal Show', 'main', 'hoyo_mix', 423),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Disciple Samples' COLLATE NOCASE AND p.name = 'Chime & Ace Aura - Melodic Riddim Vol. 1' COLLATE NOCASE),
   'CHIME_ACEAURA_drums -> CHIME_ACEAURA_fills', 'CHIME_drum_fill_snare_roll_02', 'Album: The Flapper Sinthome (Part 2)', '23. The Past, Present, and Eternal Show', 'main', 'hoyo_mix', 424),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Disciple Samples' COLLATE NOCASE AND p.name = 'Virtual Riot - Heavy Bass Design Vol. 2' COLLATE NOCASE),
   'loops -> Drum_Loops', 'VR_drum_loop_dramaqueen_150', 'Album: The Flapper Sinthome (Part 2)', '23. The Past, Present, and Eternal Show', 'main', 'hoyo_mix', 425),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums_Loops -> Cinematic_Drum_Loops', 'KSHMR_Cinematic_Drum_Loop_15_118_Triplet', 'Album: The Flapper Sinthome (Part 2)', '23. The Past, Present, and Eternal Show', 'main', 'hoyo_mix', 426),
  -- 24. The Strength of Sin Is the Law (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '24. The Strength of Sin Is the Law', 'main', 'hoyo_mix', 427),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '24. The Strength of Sin Is the Law', 'main', 'hoyo_mix', 428),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Disciple Samples' COLLATE NOCASE AND p.name = 'Barely Alive - Essential Samples Vol. 1' COLLATE NOCASE),
   'BRLY_ALVE_drums -> BRLY_ALVE_drum_loops', 'BRLY_ALVE_140_drum_loop_hybrid', 'Album: The Flapper Sinthome (Part 2)', '24. The Strength of Sin Is the Law', 'main', 'hoyo_mix', 429),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Disciple Samples' COLLATE NOCASE AND p.name = 'Chime & Ace Aura - Melodic Riddim Vol. 1' COLLATE NOCASE),
   'CHIME_ACEAURA_drums -> CHIME_ACEAURA_fills', 'CHIME_drum_fill_snare_roll_02', 'Album: The Flapper Sinthome (Part 2)', '24. The Strength of Sin Is the Law', 'main', 'hoyo_mix', 430),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Disciple Samples' COLLATE NOCASE AND p.name = 'Virtual Riot - Heavy Bass Design Vol. 2' COLLATE NOCASE),
   'loops -> Drum_Loops', 'VR_drum_loop_dramaqueen_150', 'Album: The Flapper Sinthome (Part 2)', '24. The Strength of Sin Is the Law', 'main', 'hoyo_mix', 431),
  -- 25. The Sting of Death Is Sin (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '25. The Sting of Death Is Sin', 'main', 'hoyo_mix', 432),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '25. The Sting of Death Is Sin', 'main', 'hoyo_mix', 433),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Album: The Flapper Sinthome (Part 2) | G4', '25. The Sting of Death Is Sin', 'main', 'hoyo_mix', 434),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'KSHMR_Top_Loops_129-200', 'KSHMR_Top_Loop_11_170', 'Album: The Flapper Sinthome (Part 2)', '25. The Sting of Death Is Sin', 'main', 'hoyo_mix', 435),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Anxiety Loop [AF]', 'Album: The Flapper Sinthome (Part 2)', '25. The Sting of Death Is Sin', 'main', 'hoyo_mix', 436),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Chords Simple [RI]', 'Album: The Flapper Sinthome (Part 2)', '25. The Sting of Death Is Sin', 'main', 'hoyo_mix', 437),
  -- 26. Im Anfang war das Wort (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '26. Im Anfang war das Wort', 'main', 'hoyo_mix', 438),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '26. Im Anfang war das Wort', 'main', 'hoyo_mix', 439),
  -- 27. Confutatis (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Hollywood Choirs' COLLATE NOCASE),
   'Womens Choir -> WOMEN vowels', 'WOMEN ah Stac', 'Album: The Flapper Sinthome (Part 2)', '27. Confutatis', 'main', 'hoyo_mix', 440),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Hollywood Choirs' COLLATE NOCASE),
   'Mens Choir -> MEN vowels', 'MEN ah', 'Album: The Flapper Sinthome (Part 2)', '27. Confutatis', 'main', 'hoyo_mix', 441),
  -- 29. Requiem Aeternam (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '29. Requiem Aeternam', 'main', 'hoyo_mix', 442),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '29. Requiem Aeternam', 'main', 'hoyo_mix', 443),
  -- 30. Lux Aeterna (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '30. Lux Aeterna', 'main', 'hoyo_mix', 444),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '30. Lux Aeterna', 'main', 'hoyo_mix', 445),
  -- 31. Hosanna in Excelsis (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '31. Hosanna in Excelsis', 'main', 'hoyo_mix', 446),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '31. Hosanna in Excelsis', 'main', 'hoyo_mix', 447),
  -- 32. Infirma Nostri Corporis (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '32. Infirma Nostri Corporis', 'main', 'hoyo_mix', 448),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '32. Infirma Nostri Corporis', 'main', 'hoyo_mix', 449),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '32. Infirma Nostri Corporis', 'main', 'hoyo_mix', 450),
  -- 33. Symphony No. 8 'A Thousand Suns' (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '33. Symphony No. 8 ''A Thousand Suns''', 'main', 'hoyo_mix', 451),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '33. Symphony No. 8 ''A Thousand Suns''', 'main', 'hoyo_mix', 452),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: The Flapper Sinthome (Part 2)', '33. Symphony No. 8 ''A Thousand Suns''', 'main', 'hoyo_mix', 453),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'KSHMR_FX_Elements -> KSHMR_Reverse_Guitars', 'KSHMR_Reverse_Guitar_04_E', 'Album: The Flapper Sinthome (Part 2)', '33. Symphony No. 8 ''A Thousand Suns''', 'main', 'hoyo_mix', 454),

  -- =========================================================================
  -- Album: Astral Theater Vol. 2 (2024-11-14)
  -- =========================================================================
  -- 1-4. The Slumbernana Song (TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2 | Chinese ver.', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 455),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2 | Japanese ver.', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 456),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2 | English ver.', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 457),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2 | Korean ver.', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 458),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample: alfo399' COLLATE NOCASE AND p.name = 'Risada do Peludão' COLLATE NOCASE),
   NULL, 'TS 0:00', 'Album: Astral Theater Vol. 2 | Laughing', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 459),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample: madsiepatsie' COLLATE NOCASE AND p.name = 'haram alert' COLLATE NOCASE),
   NULL, 'TS 0:00', 'Album: Astral Theater Vol. 2', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 460),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample: Meme Sound FX' COLLATE NOCASE AND p.name = 'Fart with reverb sound effect' COLLATE NOCASE),
   NULL, 'TS 0:00', 'Album: Astral Theater Vol. 2', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 461),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample: Neave' COLLATE NOCASE AND p.name = 'Goofy Cartoon Sounds' COLLATE NOCASE),
   NULL, 'TS 0:00, 0:13', 'Album: Astral Theater Vol. 2', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 462),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample: OmarSounds' COLLATE NOCASE AND p.name = 'Vine Boom Sound Effect' COLLATE NOCASE),
   NULL, 'TS 0:00', 'Album: Astral Theater Vol. 2', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 463),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'FL Studio' COLLATE NOCASE),
   'Packs -> Drums -> Percussion', '808 Cowbell', 'Album: Astral Theater Vol. 2', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 464),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'FL Studio' COLLATE NOCASE),
   'Packs -> Drums -> Percussion', '909 Clav', 'Album: Astral Theater Vol. 2', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 465),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'FL Studio' COLLATE NOCASE),
   'Packs -> Drums -> Snares', 'Smigen Snare 2', 'Album: Astral Theater Vol. 2', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 466),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'FL Studio' COLLATE NOCASE),
   'Packs -> Drums (ModeAudio) -> Foley', 'MA Bottle Strike 03', 'Album: Astral Theater Vol. 2 | +640 cents', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 467),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'FL Studio' COLLATE NOCASE),
   'Packs -> Drums (ModeAudio) -> SFX', 'MA Telekinetic RetroFuture FX', 'Album: Astral Theater Vol. 2', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 468),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Bass', 'BA Hipster Bass [FP]', 'Album: Astral Theater Vol. 2', '1-4. The Slumbernana Song', 'main', 'hoyo_mix', 469),
  -- 5. Ensemble Cast (TSAR & Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '5. Ensemble Cast', 'main', 'hoyo_mix', 470),
  -- 6. Alone Time (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '6. Alone Time', 'main', 'hoyo_mix', 471),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '6. Alone Time', 'main', 'hoyo_mix', 472),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '6. Alone Time', 'main', 'hoyo_mix', 473),
  -- 7. Now, Voyager (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '7. Now, Voyager', 'main', 'hoyo_mix', 474),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '7. Now, Voyager', 'main', 'hoyo_mix', 475),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '7. Now, Voyager', 'main', 'hoyo_mix', 476),
  -- 8. My Sword Stirs Starlight (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '8. My Sword Stirs Starlight', 'main', 'hoyo_mix', 477),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   NULL, NULL, 'Album: Astral Theater Vol. 2 | To be found', '8. My Sword Stirs Starlight', 'main', 'hoyo_mix', 478),
  -- 9. La Messe de l'athée (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Astral Theater Vol. 2', '9. La Messe de l''athée', 'main', 'hoyo_mix', 479),
  -- 10. Reversed Moments (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '10. Reversed Moments', 'main', 'hoyo_mix', 480),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Keyscape' COLLATE NOCASE),
   'Mini Pianos', 'Rhodes 1946 Pre-Piano', 'Album: Astral Theater Vol. 2', '10. Reversed Moments', 'main', 'hoyo_mix', 481),
  -- 11. To Naraka We Sink (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '11. To Naraka We Sink', 'main', 'hoyo_mix', 482),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: Astral Theater Vol. 2', '11. To Naraka We Sink', 'main', 'hoyo_mix', 483),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Astral Theater Vol. 2 | To be found', '11. To Naraka We Sink', 'main', 'hoyo_mix', 484),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'Symphobia' COLLATE NOCASE),
   'Brass -> Brass Section -> Clusters', 'Crescendo', 'Album: Astral Theater Vol. 2 | at least G1', '11. To Naraka We Sink', 'main', 'hoyo_mix', 485),
  -- 12. Eight Great Cold Hells (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '12. Eight Great Cold Hells', 'main', 'hoyo_mix', 486),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: Astral Theater Vol. 2', '12. Eight Great Cold Hells', 'main', 'hoyo_mix', 487),
  -- 13. Moonhowl Stampede (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '13. Moonhowl Stampede', 'main', 'hoyo_mix', 488),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '13. Moonhowl Stampede', 'main', 'hoyo_mix', 489),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '13. Moonhowl Stampede', 'main', 'hoyo_mix', 490),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', NULL, 'Album: Astral Theater Vol. 2 | To be found', '13. Moonhowl Stampede', 'main', 'hoyo_mix', 491),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Transitions -> Tambourine_Transitions', 'KSHMR_Tambourine_Transition_02', 'Album: Astral Theater Vol. 2', '13. Moonhowl Stampede', 'main', 'hoyo_mix', 492),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums_Loops -> Drum_Loops_Full -> Top_Loops', 'KSHMR_Top_Loop_11_170', 'Album: Astral Theater Vol. 2', '13. Moonhowl Stampede', 'main', 'hoyo_mix', 493),
  -- 14. Life's Suffering, An Endless Tide (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '14. Life''s Suffering, An Endless Tide', 'main', 'hoyo_mix', 494),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '14. Life''s Suffering, An Endless Tide', 'main', 'hoyo_mix', 495),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: Astral Theater Vol. 2', '14. Life''s Suffering, An Endless Tide', 'main', 'hoyo_mix', 496),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Astral Theater Vol. 2 | To be found', '14. Life''s Suffering, An Endless Tide', 'main', 'hoyo_mix', 497),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'Symphobia' COLLATE NOCASE),
   'Brass -> Brass Section -> Effects', 'Repetitions', 'Album: Astral Theater Vol. 2', '14. Life''s Suffering, An Endless Tide', 'main', 'hoyo_mix', 498),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'Symphobia' COLLATE NOCASE),
   NULL, NULL, 'Album: Astral Theater Vol. 2 | More presets', '14. Life''s Suffering, An Endless Tide', 'main', 'hoyo_mix', 499),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 4' COLLATE NOCASE),
   'Drum Loops -> Drum Loops - Main -> Orchestral Drum Loops', 'KSHMR Orchestral Drum Loop 09 - 110BPM', 'Album: Astral Theater Vol. 2', '14. Life''s Suffering, An Endless Tide', 'main', 'hoyo_mix', 500),
  -- 15. Cloudwide Voyage (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '15. Cloudwide Voyage', 'main', 'hoyo_mix', 501),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '15. Cloudwide Voyage', 'main', 'hoyo_mix', 502),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '15. Cloudwide Voyage', 'main', 'hoyo_mix', 503),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', NULL, 'Album: Astral Theater Vol. 2', '15. Cloudwide Voyage', 'main', 'hoyo_mix', 504),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', 'Dark City', 'Album: Astral Theater Vol. 2', '15. Cloudwide Voyage', 'main', 'hoyo_mix', 505),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Hip_Hop_Drum_Loops -> Hip_Hop_Top_Loops', 'KSHMR_Hip_Hop_Top_Loop_14_128', 'Album: Astral Theater Vol. 2', '15. Cloudwide Voyage', 'main', 'hoyo_mix', 506),
  -- 17. Welkin's Advent (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '17. Welkin''s Advent', 'main', 'hoyo_mix', 507),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '17. Welkin''s Advent', 'main', 'hoyo_mix', 508),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '17. Welkin''s Advent', 'main', 'hoyo_mix', 509),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Trance Two -> Arp', 'AR Sequences for BG', 'Album: Astral Theater Vol. 2 | Seq 1 played solo + chorder voice 1 turned off, Seq 2 and 3 plays in middle', '17. Welkin''s Advent', 'main', 'hoyo_mix', 510),
  -- 18. A Duel of Connecting Blades (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '18. A Duel of Connecting Blades', 'main', 'hoyo_mix', 511),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '18. A Duel of Connecting Blades', 'main', 'hoyo_mix', 512),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 03 Hybrid Cinematic (STR)', 'Hybrid Cinematic - Full Breakout Loops 03 (STR)', 'Album: Astral Theater Vol. 2 | C1, C3', '18. A Duel of Connecting Blades', 'main', 'hoyo_mix', 513),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', 'Tangarian Drums', 'Album: Astral Theater Vol. 2', '18. A Duel of Connecting Blades', 'main', 'hoyo_mix', 514),
  -- 19. Fatal Clash of Swordgraves (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '19. Fatal Clash of Swordgraves', 'main', 'hoyo_mix', 515),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '19. Fatal Clash of Swordgraves', 'main', 'hoyo_mix', 516),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Album: Astral Theater Vol. 2 | C3, C#3', '19. Fatal Clash of Swordgraves', 'main', 'hoyo_mix', 517),
  -- 20. Inner Beast Vanquished (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '20. Inner Beast Vanquished', 'main', 'hoyo_mix', 518),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '20. Inner Beast Vanquished', 'main', 'hoyo_mix', 519),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Astral Theater Vol. 2 | To be found', '20. Inner Beast Vanquished', 'main', 'hoyo_mix', 520),
  -- 21. The Epitome of Young Morals (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '21. The Epitome of Young Morals', 'main', 'hoyo_mix', 521),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '21. The Epitome of Young Morals', 'main', 'hoyo_mix', 522),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '21. The Epitome of Young Morals', 'main', 'hoyo_mix', 523),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   NULL, NULL, 'Album: Astral Theater Vol. 2 | Drums and loops', '21. The Epitome of Young Morals', 'main', 'hoyo_mix', 524),
  -- 22. Color Your Dreams (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   NULL, NULL, 'Album: Astral Theater Vol. 2 | Drums and loops', '22. Color Your Dreams', 'main', 'hoyo_mix', 525),
  -- 23. Takeoff at Dusk (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '23. Takeoff at Dusk', 'main', 'hoyo_mix', 526),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '23. Takeoff at Dusk', 'main', 'hoyo_mix', 527),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '23. Takeoff at Dusk', 'main', 'hoyo_mix', 528),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', 'Dark City', 'Album: Astral Theater Vol. 2', '23. Takeoff at Dusk', 'main', 'hoyo_mix', 529),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Astral Theater Vol. 2', '23. Takeoff at Dusk', 'main', 'hoyo_mix', 530),
  -- 24. Emperors Reverie (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '24. Emperors Reverie', 'main', 'hoyo_mix', 531),
  -- 26. Dance in a Deep Dream (Duke.Killers)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'M1' COLLATE NOCASE),
   'PROG', '01 Piano16''', 'Album: Astral Theater Vol. 2', '26. Dance in a Deep Dream', 'main', 'hoyo_mix', 532),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   'XP Dance 2 -> FX Sound', 'FX 70s FX', 'Album: Astral Theater Vol. 2', '26. Dance in a Deep Dream', 'main', 'hoyo_mix', 533),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   NULL, NULL, 'Album: Astral Theater Vol. 2 | Maybe used for other synths?', '26. Dance in a Deep Dream', 'main', 'hoyo_mix', 534),
  -- 28. Up to This (Duke.Killers, TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Image-Line' COLLATE NOCASE AND p.name = 'FLEX' COLLATE NOCASE),
   'Arksun Cityscape', 'Jam Strut', 'Album: Astral Theater Vol. 2 | Reverb turned off', '28. Up to This', 'main', 'hoyo_mix', 535),
  -- 29. Melody of Dazzling Light (Duke.Killers)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '29. Melody of Dazzling Light', 'main', 'hoyo_mix', 536),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol. 2', '29. Melody of Dazzling Light', 'main', 'hoyo_mix', 537),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   'Factory Presets -> Piano', NULL, 'Album: Astral Theater Vol. 2', '29. Melody of Dazzling Light', 'main', 'hoyo_mix', 538),

  -- =========================================================================
  -- Album: Allegory of the Cave (Part 1) (2025-02-15)
  -- =========================================================================
  -- 1. Anthem of Eras (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '1. Anthem of Eras', 'main', 'hoyo_mix', 539),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '1. Anthem of Eras', 'main', 'hoyo_mix', 540),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '1. Anthem of Eras', 'main', 'hoyo_mix', 541),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '1. Anthem of Eras', 'main', 'hoyo_mix', 542),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '1. Anthem of Eras', 'main', 'hoyo_mix', 543),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '1. Anthem of Eras', 'main', 'hoyo_mix', 544),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '1. Anthem of Eras', 'main', 'hoyo_mix', 545),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '1. Anthem of Eras', 'main', 'hoyo_mix', 546),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '1. Anthem of Eras', 'main', 'hoyo_mix', 547),
  -- 2. Under the Seat of Dawn (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '2. Under the Seat of Dawn', 'main', 'hoyo_mix', 548),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '2. Under the Seat of Dawn', 'main', 'hoyo_mix', 549),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '2. Under the Seat of Dawn', 'main', 'hoyo_mix', 550),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '2. Under the Seat of Dawn', 'main', 'hoyo_mix', 551),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '2. Under the Seat of Dawn', 'main', 'hoyo_mix', 552),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '2. Under the Seat of Dawn', 'main', 'hoyo_mix', 553),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '2. Under the Seat of Dawn', 'main', 'hoyo_mix', 554),
  -- 3. Battle Hymn of the Golden Blood (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '3. Battle Hymn of the Golden Blood', 'main', 'hoyo_mix', 555),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '3. Battle Hymn of the Golden Blood', 'main', 'hoyo_mix', 556),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '3. Battle Hymn of the Golden Blood', 'main', 'hoyo_mix', 557),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '3. Battle Hymn of the Golden Blood', 'main', 'hoyo_mix', 558),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '3. Battle Hymn of the Golden Blood', 'main', 'hoyo_mix', 559),
  -- 4. Promenade of Tides (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '4. Promenade of Tides', 'main', 'hoyo_mix', 560),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '4. Promenade of Tides', 'main', 'hoyo_mix', 561),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '4. Promenade of Tides', 'main', 'hoyo_mix', 562),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '4. Promenade of Tides', 'main', 'hoyo_mix', 563),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '4. Promenade of Tides', 'main', 'hoyo_mix', 564),
  -- 5. Living Flame (Eli.W, Yj.W, Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '5. Living Flame', 'main', 'hoyo_mix', 565),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '5. Living Flame', 'main', 'hoyo_mix', 566),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '5. Living Flame', 'main', 'hoyo_mix', 567),
  -- 6. Theomakhia (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '6. Theomakhia', 'main', 'hoyo_mix', 568),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Cinematic_Drum_Loops', 'KSHMR_Cinematic_Drum_Loop_36_128', 'Album: Allegory of the Cave (Part 1)', '6. Theomakhia', 'main', 'hoyo_mix', 569),
  -- 7. Plantlife Euthys (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '7. Plantlife Euthys', 'main', 'hoyo_mix', 570),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '7. Plantlife Euthys', 'main', 'hoyo_mix', 571),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '7. Plantlife Euthys', 'main', 'hoyo_mix', 572),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '7. Plantlife Euthys', 'main', 'hoyo_mix', 573),
  -- 8. Between Whims (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '8. Between Whims', 'main', 'hoyo_mix', 574),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '8. Between Whims', 'main', 'hoyo_mix', 575),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '8. Between Whims', 'main', 'hoyo_mix', 576),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '8. Between Whims', 'main', 'hoyo_mix', 577),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '8. Between Whims', 'main', 'hoyo_mix', 578),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '8. Between Whims', 'main', 'hoyo_mix', 579),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '8. Between Whims', 'main', 'hoyo_mix', 580),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '8. Between Whims', 'main', 'hoyo_mix', 581),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 02 Ethnic Drums', 'PERC Ethnic Ens Percussion', 'Album: Allegory of the Cave (Part 1)', '8. Between Whims', 'main', 'hoyo_mix', 582),
  -- 9. The Pastoral of the Lands (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '9. The Pastoral of the Lands', 'main', 'hoyo_mix', 583),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '9. The Pastoral of the Lands', 'main', 'hoyo_mix', 584),
  -- 10. Wandering Rhymes (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '10. Wandering Rhymes', 'main', 'hoyo_mix', 585),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '10. Wandering Rhymes', 'main', 'hoyo_mix', 586),
  -- 11. Wheel of Fate (Vinchi)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '11. Wheel of Fate', 'main', 'hoyo_mix', 587),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '11. Wheel of Fate', 'main', 'hoyo_mix', 588),
  -- 12. In Search of Prophecy (Vinchi)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '12. In Search of Prophecy', 'main', 'hoyo_mix', 589),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Allegory of the Cave (Part 1)', '12. In Search of Prophecy', 'main', 'hoyo_mix', 590),
  -- 13. Echoes of the Divine (Vinchi)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '13. Echoes of the Divine', 'main', 'hoyo_mix', 591),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '13. Echoes of the Divine', 'main', 'hoyo_mix', 592),
  -- 14. Trampled Snake (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '14. Trampled Snake', 'main', 'hoyo_mix', 593),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '14. Trampled Snake', 'main', 'hoyo_mix', 594),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 02 Ethnic Drums', 'PERC Ethnic Ens Percussion', 'Album: Allegory of the Cave (Part 1)', '14. Trampled Snake', 'main', 'hoyo_mix', 595),
  -- 15. Grapevine and Mountain Goat (Eli.W, Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '15. Grapevine and Mountain Goat', 'main', 'hoyo_mix', 596),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '15. Grapevine and Mountain Goat', 'main', 'hoyo_mix', 597),
  -- 16. Whisper of Prophecy (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '16. Whisper of Prophecy', 'main', 'hoyo_mix', 598),
  -- 17. As Written By Whom (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Hollywood Choirs' COLLATE NOCASE),
   'Womens Choir -> WOMEN vowels', 'WOMEN oh Stac', 'Album: Allegory of the Cave (Part 1)', '17. As Written By Whom', 'main', 'hoyo_mix', 599),
  -- 23. Silent Strings (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> DIGERIDOO', 'Digeridoo TM SYNC', 'Album: Allegory of the Cave (Part 1) | keys G3, C3, F3', '23. Silent Strings', 'main', 'hoyo_mix', 600),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '23. Silent Strings', 'main', 'hoyo_mix', 601),
  -- 24. Origin and Finale (Fan, Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '24. Origin and Finale', 'main', 'hoyo_mix', 602),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Allegory of the Cave (Part 1)', '24. Origin and Finale', 'main', 'hoyo_mix', 603),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Modern Mystery (STR)', 'Album: Allegory of the Cave (Part 1) | F4, A#4', '24. Origin and Finale', 'main', 'hoyo_mix', 604),
  -- 25. Where The Inscription Was (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '25. Where The Inscription Was', 'main', 'hoyo_mix', 605),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '25. Where The Inscription Was', 'main', 'hoyo_mix', 606),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '25. Where The Inscription Was', 'main', 'hoyo_mix', 607),
  -- 26. Undying Glory (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '26. Undying Glory', 'main', 'hoyo_mix', 608),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '26. Undying Glory', 'main', 'hoyo_mix', 609),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '26. Undying Glory', 'main', 'hoyo_mix', 610),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '26. Undying Glory', 'main', 'hoyo_mix', 611),
  -- 27. The Eternal Campflame (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '27. The Eternal Campflame', 'main', 'hoyo_mix', 612),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '27. The Eternal Campflame', 'main', 'hoyo_mix', 613),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '27. The Eternal Campflame', 'main', 'hoyo_mix', 614),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '27. The Eternal Campflame', 'main', 'hoyo_mix', 615),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Matt Tylel' COLLATE NOCASE AND p.name = 'Vital' COLLATE NOCASE),
   'In The Mix -> Lead', 'Distant Majestic Lead', 'Album: Allegory of the Cave (Part 1) | Not sure, but sounds close', '27. The Eternal Campflame', 'main', 'hoyo_mix', 616),
  -- 28. Beacon Smoke Residue (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '28. Beacon Smoke Residue', 'main', 'hoyo_mix', 617),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '28. Beacon Smoke Residue', 'main', 'hoyo_mix', 618),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '28. Beacon Smoke Residue', 'main', 'hoyo_mix', 619),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '28. Beacon Smoke Residue', 'main', 'hoyo_mix', 620),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '28. Beacon Smoke Residue', 'main', 'hoyo_mix', 621),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Dharma Studio' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 4 Complete Edition' COLLATE NOCASE),
   'Drum Loops -> Orchestral Drum Loops', 'KSHMR Orchestral Drum Loop 04 - 100BPM', 'Album: Allegory of the Cave (Part 1)', '28. Beacon Smoke Residue', 'main', 'hoyo_mix', 622),
  -- 29. Axe of Evernight (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '29. Axe of Evernight', 'main', 'hoyo_mix', 623),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '29. Axe of Evernight', 'main', 'hoyo_mix', 624),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '29. Axe of Evernight', 'main', 'hoyo_mix', 625),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '29. Axe of Evernight', 'main', 'hoyo_mix', 626),
  -- 30. To Gorgo (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '30. To Gorgo', 'main', 'hoyo_mix', 627),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Anxiety Loop [AF]', 'Album: Allegory of the Cave (Part 1)', '30. To Gorgo', 'main', 'hoyo_mix', 628),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Is This Trance [DRK]', 'Album: Allegory of the Cave (Part 1)', '30. To Gorgo', 'main', 'hoyo_mix', 629),
  -- 31. To All Things Strifeful (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '31. To All Things Strifeful', 'main', 'hoyo_mix', 630),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Hits', 'Big Cinematic Hits', 'Album: Allegory of the Cave (Part 1) | G4', '31. To All Things Strifeful', 'main', 'hoyo_mix', 631),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Cinematic_Drum_Loops', 'KSHMR_Cinematic_Drum_Loop_18_128', 'Album: Allegory of the Cave (Part 1)', '31. To All Things Strifeful', 'main', 'hoyo_mix', 632),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Cinematic_Drum_Loops', 'KSHMR_Cinematic_Drum_Loop_36_128', 'Album: Allegory of the Cave (Part 1)', '31. To All Things Strifeful', 'main', 'hoyo_mix', 633),
  -- 32. King Father of All (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 1)', '32. King Father of All', 'main', 'hoyo_mix', 634),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Cinematic_Drum_Loops', 'KSHMR_Cinematic_Drum_Loop_18_128', 'Album: Allegory of the Cave (Part 1)', '32. King Father of All', 'main', 'hoyo_mix', 635),

  -- =========================================================================
  -- Album: Allegory of the Cave (Part 2) (2025-03-24)
  -- =========================================================================
  -- 1. Touch of the Broken Blade (Yj.W, Shijia.Y)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '1. Touch of the Broken Blade', 'main', 'hoyo_mix', 636),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '1. Touch of the Broken Blade', 'main', 'hoyo_mix', 637),
  -- 2. A Hunt for the Divine (Shijia.Y)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '2. A Hunt for the Divine', 'main', 'hoyo_mix', 638),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '2. A Hunt for the Divine', 'main', 'hoyo_mix', 639),
  -- 4. Shattered Mortal Realms (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '4. Shattered Mortal Realms', 'main', 'hoyo_mix', 640),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WORLD PERCUSSION -> SHAKERS', 'Rainmakers + Loops BM', 'Album: Allegory of the Cave (Part 2) | A3', '4. Shattered Mortal Realms', 'main', 'hoyo_mix', 641),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WORLD PERCUSSION -> SHAKERS', 'Wood Shaker + Loops BM', 'Album: Allegory of the Cave (Part 2) | G#1 panned center and C#2 panned right', '4. Shattered Mortal Realms', 'main', 'hoyo_mix', 642),
  -- 5. Scattered Manuscripts (Zheng.L)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '5. Scattered Manuscripts', 'main', 'hoyo_mix', 643),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '5. Scattered Manuscripts', 'main', 'hoyo_mix', 644),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drums -> Tambourine_Transitions', 'KSHMR_Tambourine_Transition_07', 'Album: Allegory of the Cave (Part 2)', '5. Scattered Manuscripts', 'main', 'hoyo_mix', 645),
  -- 7. Unto Dignity (Shijia.Y)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '7. Unto Dignity', 'main', 'hoyo_mix', 646),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '7. Unto Dignity', 'main', 'hoyo_mix', 647),
  -- 10. Warmth Contained (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '10. Warmth Contained', 'main', 'hoyo_mix', 648),
  -- 11. Stories and Sweets (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '11. Stories and Sweets', 'main', 'hoyo_mix', 649),
  -- 13. In the Arms of Tomorrow (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '13. In the Arms of Tomorrow', 'main', 'hoyo_mix', 650),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Pure', 'Basic Pure', 'Album: Allegory of the Cave (Part 2)', '13. In the Arms of Tomorrow', 'main', 'hoyo_mix', 651),
  -- 14. Beneath the Sheep's Skin (Jing.W, Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '14. Beneath the Sheep''s Skin', 'main', 'hoyo_mix', 652),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '14. Beneath the Sheep''s Skin', 'main', 'hoyo_mix', 653),
  -- 15. Gift of Strife (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '15. Gift of Strife', 'main', 'hoyo_mix', 654),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '15. Gift of Strife', 'main', 'hoyo_mix', 655),
  -- 16. Coronation (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '16. Coronation', 'main', 'hoyo_mix', 656),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '16. Coronation', 'main', 'hoyo_mix', 657),
  -- 17. The Edge Awakened (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '17. The Edge Awakened', 'main', 'hoyo_mix', 658),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '17. The Edge Awakened', 'main', 'hoyo_mix', 659),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '17. The Edge Awakened', 'main', 'hoyo_mix', 660),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '17. The Edge Awakened', 'main', 'hoyo_mix', 661),
  -- 18. Ballad of Revelations (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '18. Ballad of Revelations', 'main', 'hoyo_mix', 662),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '18. Ballad of Revelations', 'main', 'hoyo_mix', 663),
  -- 19. Hymn of Dawn (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '19. Hymn of Dawn', 'main', 'hoyo_mix', 664),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '19. Hymn of Dawn', 'main', 'hoyo_mix', 665),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '19. Hymn of Dawn', 'main', 'hoyo_mix', 666),
  -- 20. Aria of the Precipice (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '20. Aria of the Precipice', 'main', 'hoyo_mix', 667),
  -- 21. Seeker of Divinity (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '21. Seeker of Divinity', 'main', 'hoyo_mix', 668),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '21. Seeker of Divinity', 'main', 'hoyo_mix', 669),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '21. Seeker of Divinity', 'main', 'hoyo_mix', 670),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '21. Seeker of Divinity', 'main', 'hoyo_mix', 671),
  -- 24. Lament on Stream of Souls (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '24. Lament on Stream of Souls', 'main', 'hoyo_mix', 672),
  -- 26. Chrysos (Jing.W, Fan, Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '26. Chrysos', 'main', 'hoyo_mix', 673),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Cinematic_Drum_Loops', 'KSHMR_Cinematic_Drum_Loop_18_128', 'Album: Allegory of the Cave (Part 2)', '26. Chrysos', 'main', 'hoyo_mix', 674),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Cinematic_Drum_Loops', 'KSHMR_Cinematic_Drum_Loop_36_128', 'Album: Allegory of the Cave (Part 2)', '26. Chrysos', 'main', 'hoyo_mix', 675),
  -- 27. Back to the Start (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive X' COLLATE NOCASE),
   NULL, NULL, 'Album: Allegory of the Cave (Part 2) | Kinda sounds like it', '27. Back to the Start', 'main', 'hoyo_mix', 676),
  -- 28. Elegy of Netherwing (Sherry.S)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '28. Elegy of Netherwing', 'main', 'hoyo_mix', 677),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '28. Elegy of Netherwing', 'main', 'hoyo_mix', 678),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '28. Elegy of Netherwing', 'main', 'hoyo_mix', 679),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '28. Elegy of Netherwing', 'main', 'hoyo_mix', 680),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '28. Elegy of Netherwing', 'main', 'hoyo_mix', 681),
  -- 30. A Moment to Offer (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '30. A Moment to Offer', 'main', 'hoyo_mix', 682),
  -- 31. Ballad of Silence (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '31. Ballad of Silence', 'main', 'hoyo_mix', 683),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '31. Ballad of Silence', 'main', 'hoyo_mix', 684),
  -- 32. Sowing of the Dragon's Fangs (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '32. Sowing of the Dragon''s Fangs', 'main', 'hoyo_mix', 685),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '32. Sowing of the Dragon''s Fangs', 'main', 'hoyo_mix', 686),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '32. Sowing of the Dragon''s Fangs', 'main', 'hoyo_mix', 687),
  -- 33. Curtain Rise, Curtain Fall (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Allegory of the Cave (Part 2)', '33. Curtain Rise, Curtain Fall', 'main', 'hoyo_mix', 688),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   NULL, NULL, 'Album: Allegory of the Cave (Part 2) | To be found', '33. Curtain Rise, Curtain Fall', 'main', 'hoyo_mix', 689),
  -- 34. Holy City's Twilight (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '34. Holy City''s Twilight', 'main', 'hoyo_mix', 690),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '34. Holy City''s Twilight', 'main', 'hoyo_mix', 691),
  -- 35. Ballad of Hope (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '35. Ballad of Hope', 'main', 'hoyo_mix', 692),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '35. Ballad of Hope', 'main', 'hoyo_mix', 693),
  -- 36. Spontaneous Poetry (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '36. Spontaneous Poetry', 'main', 'hoyo_mix', 694),
  -- 37. What Lies Before (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '37. What Lies Before', 'main', 'hoyo_mix', 695),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '37. What Lies Before', 'main', 'hoyo_mix', 696),
  -- 39. Elegy of the Nether (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '39. Elegy of the Nether', 'main', 'hoyo_mix', 697),
  -- 40. New Page (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Album: Allegory of the Cave (Part 2) | G4', '40. New Page', 'main', 'hoyo_mix', 698),
  -- 41. Boundless Strides (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '41. Boundless Strides', 'main', 'hoyo_mix', 699),
  -- 42. Gloomseeker (Zheng.L)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '42. Gloomseeker', 'main', 'hoyo_mix', 700),
  -- 43. Narration of Clouds and Snow (Zheng.L)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '43. Narration of Clouds and Snow', 'main', 'hoyo_mix', 701),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Album: Allegory of the Cave (Part 2) | C2, C4, F4', '43. Narration of Clouds and Snow', 'main', 'hoyo_mix', 702),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   NULL, NULL, 'Album: Allegory of the Cave (Part 2) | To be found', '43. Narration of Clouds and Snow', 'main', 'hoyo_mix', 703),
  -- 44. Daythunder Rhapsody (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '44. Daythunder Rhapsody', 'main', 'hoyo_mix', 704),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '44. Daythunder Rhapsody', 'main', 'hoyo_mix', 705),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage 2' COLLATE NOCASE),
   'D2 Loop Designer -> 01 All Star Loops (STR)', 'All Star - Manhattan Car Chase (STR)', 'Album: Allegory of the Cave (Part 2) | C1, F4', '44. Daythunder Rhapsody', 'main', 'hoyo_mix', 706),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   NULL, NULL, 'Album: Allegory of the Cave (Part 2) | To be found', '44. Daythunder Rhapsody', 'main', 'hoyo_mix', 707),
  -- 45. Passing of Thunder (Duke.Killers)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '45. Passing of Thunder', 'main', 'hoyo_mix', 708),
  -- 46. Sunslayer (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '46. Sunslayer', 'main', 'hoyo_mix', 709),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '46. Sunslayer', 'main', 'hoyo_mix', 710),
  -- 47. Solar Flare of Broken Wings (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '47. Solar Flare of Broken Wings', 'main', 'hoyo_mix', 711),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '47. Solar Flare of Broken Wings', 'main', 'hoyo_mix', 712),
  -- 48. Afterglow in Dust (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '48. Afterglow in Dust', 'main', 'hoyo_mix', 713),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '48. Afterglow in Dust', 'main', 'hoyo_mix', 714),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '48. Afterglow in Dust', 'main', 'hoyo_mix', 715),
  -- 49. Proi Proi (Eli.W, Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '49. Proi Proi', 'main', 'hoyo_mix', 716),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '49. Proi Proi', 'main', 'hoyo_mix', 717),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '49. Proi Proi', 'main', 'hoyo_mix', 718),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '49. Proi Proi', 'main', 'hoyo_mix', 719),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '49. Proi Proi', 'main', 'hoyo_mix', 720),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 2)', '49. Proi Proi', 'main', 'hoyo_mix', 721),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Cinematic_Drum_Loops', 'KSHMR_Cinematic_Drum_Loop_41_128', 'Album: Allegory of the Cave (Part 2)', '49. Proi Proi', 'main', 'hoyo_mix', 722),

  -- =========================================================================
  -- Album: Allegory of the Cave (Part 3) (2025-11-14)
  -- =========================================================================
  -- 2. Maze (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '2. Maze', 'main', 'hoyo_mix', 723),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '2. Maze', 'main', 'hoyo_mix', 724),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '2. Maze', 'main', 'hoyo_mix', 725),
  -- 4. Elysiae Melody (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '4. Elysiae Melody', 'main', 'hoyo_mix', 726),
  -- 5. Ode of the Verdant (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '5. Ode of the Verdant', 'main', 'hoyo_mix', 727),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '5. Ode of the Verdant', 'main', 'hoyo_mix', 728),
  -- 6. Sacred Grove (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '6. Sacred Grove', 'main', 'hoyo_mix', 729),
  -- 7. Promise of Tomorrow (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '7. Promise of Tomorrow', 'main', 'hoyo_mix', 730),
  -- 8. When Darkness Spreads (TSAR, Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '8. When Darkness Spreads', 'main', 'hoyo_mix', 731),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '8. When Darkness Spreads', 'main', 'hoyo_mix', 732),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '8. When Darkness Spreads', 'main', 'hoyo_mix', 733),
  -- 9. Infernal Blaze (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '9. Infernal Blaze', 'main', 'hoyo_mix', 734),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '9. Infernal Blaze', 'main', 'hoyo_mix', 735),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '9. Infernal Blaze', 'main', 'hoyo_mix', 736),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '9. Infernal Blaze', 'main', 'hoyo_mix', 737),
  -- 10. When The Wind Was Warm (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '10. When The Wind Was Warm', 'main', 'hoyo_mix', 738),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '10. When The Wind Was Warm', 'main', 'hoyo_mix', 739),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '10. When The Wind Was Warm', 'main', 'hoyo_mix', 740),
  -- 11. Beneath the Bubbles (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '11. Beneath the Bubbles', 'main', 'hoyo_mix', 741),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '11. Beneath the Bubbles', 'main', 'hoyo_mix', 742),
  -- 12. Frozen Tides (feat. Alkyone) (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '12. Frozen Tides (feat. Alkyone)', 'main', 'hoyo_mix', 743),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '12. Frozen Tides (feat. Alkyone)', 'main', 'hoyo_mix', 744),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '12. Frozen Tides (feat. Alkyone)', 'main', 'hoyo_mix', 745),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '12. Frozen Tides (feat. Alkyone)', 'main', 'hoyo_mix', 746),
  -- 13. Migratory Hope (feat. Alkyone) (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '13. Migratory Hope (feat. Alkyone)', 'main', 'hoyo_mix', 747),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '13. Migratory Hope (feat. Alkyone)', 'main', 'hoyo_mix', 748),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '13. Migratory Hope (feat. Alkyone)', 'main', 'hoyo_mix', 749),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '13. Migratory Hope (feat. Alkyone)', 'main', 'hoyo_mix', 750),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '13. Migratory Hope (feat. Alkyone)', 'main', 'hoyo_mix', 751),
  -- 14. Sweet Dreams and Feasts (feat. Alkyone) (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '14. Sweet Dreams and Feasts (feat. Alkyone)', 'main', 'hoyo_mix', 752),
  -- 15. The Looming Curtains (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'BigTone -> Arp', 'AR Glowflies', 'Album: Allegory of the Cave (Part 3)', '15. The Looming Curtains', 'main', 'hoyo_mix', 753),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'BigTone -> Arp', 'AR One Finger Ambient Sines', 'Album: Allegory of the Cave (Part 3)', '15. The Looming Curtains', 'main', 'hoyo_mix', 754),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'BigTone -> Arp', 'AR Transmorph', 'Album: Allegory of the Cave (Part 3)', '15. The Looming Curtains', 'main', 'hoyo_mix', 755),
  -- 16. A Journey for the Past (Eli.W, Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '16. A Journey for the Past', 'main', 'hoyo_mix', 756),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '16. A Journey for the Past', 'main', 'hoyo_mix', 757),
  -- 19. Passing the Torch (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '19. Passing the Torch', 'main', 'hoyo_mix', 758),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '19. Passing the Torch', 'main', 'hoyo_mix', 759),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '19. Passing the Torch', 'main', 'hoyo_mix', 760),
  -- 20. Conqueror's Contemplation (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '20. Conqueror''s Contemplation', 'main', 'hoyo_mix', 761),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '20. Conqueror''s Contemplation', 'main', 'hoyo_mix', 762),
  -- 21. Starlight Serenade (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '21. Starlight Serenade', 'main', 'hoyo_mix', 763),
  -- 24. Mythical Axiom (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Epic Stock Media' COLLATE NOCASE AND p.name = 'Digital Elements' COLLATE NOCASE),
   'Sci_fi -> Particles_Computer', 'Scifi Processor Computer Computing 4 Loading', 'Album: Allegory of the Cave (Part 3)', '24. Mythical Axiom', 'main', 'hoyo_mix', 764),
  -- 27. Forging Tomorrow (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '27. Forging Tomorrow', 'main', 'hoyo_mix', 765),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '27. Forging Tomorrow', 'main', 'hoyo_mix', 766),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Virtual Riot: Serum Presets for PRESET JUNKIES', 'V_RIOT_serum_arpeggio_hyperspace', 'Album: Allegory of the Cave (Part 3) | Sub disabled', '27. Forging Tomorrow', 'main', 'hoyo_mix', 767),
  -- 29. Unholy Blood (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '29. Unholy Blood', 'main', 'hoyo_mix', 768),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '01 - Orchestral', 'Bowed To Burst', 'Album: Allegory of the Cave (Part 3)', '29. Unholy Blood', 'main', 'hoyo_mix', 769),
  -- 32. Tranquil Dream (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '32. Tranquil Dream', 'main', 'hoyo_mix', 770),
  -- 33. Nameless Healing (Eli.W, Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '33. Nameless Healing', 'main', 'hoyo_mix', 771),
  -- 34. Mind and Soul (Eli.W, Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '34. Mind and Soul', 'main', 'hoyo_mix', 772),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '34. Mind and Soul', 'main', 'hoyo_mix', 773),
  -- 35. In the Name of All Worlds (Duke.Killers)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '35. In the Name of All Worlds', 'main', 'hoyo_mix', 774),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '35. In the Name of All Worlds', 'main', 'hoyo_mix', 775),
  -- 36. Remembrance of the Heart (Fan, Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '36. Remembrance of the Heart', 'main', 'hoyo_mix', 776),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '36. Remembrance of the Heart', 'main', 'hoyo_mix', 777),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '36. Remembrance of the Heart', 'main', 'hoyo_mix', 778),
  -- 38. Echoes of Dragon (Jing.W, Vinchi)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '38. Echoes of Dragon', 'main', 'hoyo_mix', 779),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '38. Echoes of Dragon', 'main', 'hoyo_mix', 780),
  -- 39. Flawless Ichor (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '39. Flawless Ichor', 'main', 'hoyo_mix', 781),
  -- 40. Golden Desires (Fan, Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '40. Golden Desires', 'main', 'hoyo_mix', 782),
  -- 41. The End of Gods (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '41. The End of Gods', 'main', 'hoyo_mix', 783),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '41. The End of Gods', 'main', 'hoyo_mix', 784),
  -- 43. Mirage (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '43. Mirage', 'main', 'hoyo_mix', 785),
  -- 44. Mirage of Regrets (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '44. Mirage of Regrets', 'main', 'hoyo_mix', 786),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '44. Mirage of Regrets', 'main', 'hoyo_mix', 787),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '44. Mirage of Regrets', 'main', 'hoyo_mix', 788),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '44. Mirage of Regrets', 'main', 'hoyo_mix', 789),
  -- 45. Tomb of Blades (feat. Alexia Evellyn) (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '45. Tomb of Blades (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 790),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '45. Tomb of Blades (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 791),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '45. Tomb of Blades (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 792),
  -- 46. Immolation of the Heavens (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '46. Immolation of the Heavens', 'main', 'hoyo_mix', 793),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '46. Immolation of the Heavens', 'main', 'hoyo_mix', 794),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '46. Immolation of the Heavens', 'main', 'hoyo_mix', 795),
  -- 47. Agony Converging into River (feat. Alexia Evellyn) (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '47. Agony Converging into River (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 796),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '47. Agony Converging into River (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 797),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '47. Agony Converging into River (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 798),
  -- 49. A World of Deep Love (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '49. A World of Deep Love', 'main', 'hoyo_mix', 799),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '49. A World of Deep Love', 'main', 'hoyo_mix', 800),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '49. A World of Deep Love', 'main', 'hoyo_mix', 801),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '49. A World of Deep Love', 'main', 'hoyo_mix', 802),
  -- 50. Era Nova (feat. Alexia Evellyn) (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '50. Era Nova (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 803),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '50. Era Nova (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 804),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '50. Era Nova (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 805),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '50. Era Nova (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 806),
  -- 51. Shatter the God's Crown (feat. Alexia Evellyn) (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '51. Shatter the God''s Crown (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 807),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '51. Shatter the God''s Crown (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 808),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '51. Shatter the God''s Crown (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 809),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '51. Shatter the God''s Crown (feat. Alexia Evellyn)', 'main', 'hoyo_mix', 810),
  -- 52. To the World (Fan, Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '52. To the World', 'main', 'hoyo_mix', 811),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Allegory of the Cave (Part 3)', '52. To the World', 'main', 'hoyo_mix', 812),

  -- =========================================================================
  -- Album: Astral Theater Vol.3
  -- =========================================================================
  -- 1. Sweat and Sunshine (Zheng.L)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '1. Sweat and Sunshine', 'main', 'hoyo_mix', 813),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '1. Sweat and Sunshine', 'main', 'hoyo_mix', 814),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '1. Sweat and Sunshine', 'main', 'hoyo_mix', 815),
  -- 2. Protean Hero (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '2. Protean Hero', 'main', 'hoyo_mix', 816),
  -- 3. Weightless Chaos (Zheng.L)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '3. Weightless Chaos', 'main', 'hoyo_mix', 817),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '3. Weightless Chaos', 'main', 'hoyo_mix', 818),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '3. Weightless Chaos', 'main', 'hoyo_mix', 819),
  -- 7. Night of the Holy Grail (Yj.W, Zheng.L)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '7. Night of the Holy Grail', 'main', 'hoyo_mix', 820),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '7. Night of the Holy Grail', 'main', 'hoyo_mix', 821),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '7. Night of the Holy Grail', 'main', 'hoyo_mix', 822),
  -- 8. Utopia (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '8. Utopia', 'main', 'hoyo_mix', 823),
  -- 9. Victory Above All (Zheng.L)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '9. Victory Above All', 'main', 'hoyo_mix', 824),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '9. Victory Above All', 'main', 'hoyo_mix', 825),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '9. Victory Above All', 'main', 'hoyo_mix', 826),
  -- 10. Pierce the Darkness (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '10. Pierce the Darkness', 'main', 'hoyo_mix', 827),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '10. Pierce the Darkness', 'main', 'hoyo_mix', 828),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '10. Pierce the Darkness', 'main', 'hoyo_mix', 829),
  -- 13. Dreamjoy Realm (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '13. Dreamjoy Realm', 'main', 'hoyo_mix', 830),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '13. Dreamjoy Realm', 'main', 'hoyo_mix', 831),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '13. Dreamjoy Realm', 'main', 'hoyo_mix', 832),
  -- 14. The Gentle Earth (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '14. The Gentle Earth', 'main', 'hoyo_mix', 833),
  -- 18. Fame and Fortune (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Pads + Strings', 'Holy of Holys Pad', 'Album: Astral Theater Vol.3', '18. Fame and Fortune', 'main', 'hoyo_mix', 834),
  -- 19. Invisible Hand (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '19. Invisible Hand', 'main', 'hoyo_mix', 835),
  -- 20. Playful Moments (Yonghui.C)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '20. Playful Moments', 'main', 'hoyo_mix', 836),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '20. Playful Moments', 'main', 'hoyo_mix', 837),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '20. Playful Moments', 'main', 'hoyo_mix', 838),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '20. Playful Moments', 'main', 'hoyo_mix', 839),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '20. Playful Moments', 'main', 'hoyo_mix', 840),
  -- 23. Dream of Gnawing (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '23. Dream of Gnawing', 'main', 'hoyo_mix', 841),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '23. Dream of Gnawing', 'main', 'hoyo_mix', 842),
  -- 24. Void Walk (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Astral Theater Vol.3', '24. Void Walk', 'main', 'hoyo_mix', 843),

  -- =========================================================================
  -- Album: Let There Be Laughter (Part 1) (2026-03-13)
  -- =========================================================================
  -- 1. Comedy Symphony (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '1. Comedy Symphony', 'main', 'hoyo_mix', 844),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '1. Comedy Symphony', 'main', 'hoyo_mix', 845),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'iLife Sound Effects' COLLATE NOCASE),
   'Foley', 'Walkie Talkie Garble', 'Album: Let There Be Laughter (Part 1)', '1. Comedy Symphony', 'main', 'hoyo_mix', 846),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'iLife Sound Effects' COLLATE NOCASE),
   'Machines', 'Record Player Scratching', 'Album: Let There Be Laughter (Part 1)', '1. Comedy Symphony', 'main', 'hoyo_mix', 847),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'iLife Sound Effects' COLLATE NOCASE),
   'Machines', 'Tape Rewinding 01', 'Album: Let There Be Laughter (Part 1)', '1. Comedy Symphony', 'main', 'hoyo_mix', 848),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'iLife Sound Effects' COLLATE NOCASE),
   'Machines', 'Tape Rewinding 02', 'Album: Let There Be Laughter (Part 1)', '1. Comedy Symphony', 'main', 'hoyo_mix', 849),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'iLife Sound Effects' COLLATE NOCASE),
   'Machines', 'Tape Rewinding 03', 'Album: Let There Be Laughter (Part 1)', '1. Comedy Symphony', 'main', 'hoyo_mix', 850),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'ARP 2600 V3' COLLATE NOCASE),
   'Sequences', 'Pop Corn', 'Album: Let There Be Laughter (Part 1)', '1. Comedy Symphony', 'main', 'hoyo_mix', 851),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Dharma Studio' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 4 Complete Edition' COLLATE NOCASE),
   'Drum Loops -> Drum Loops - Main -> Marching Snare Loops', 'KSHMR Marching Snare Loop 29 - 128BPM', 'Album: Let There Be Laughter (Part 1)', '1. Comedy Symphony', 'main', 'hoyo_mix', 852),
  -- 2. Morning, Planarcadia! (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   'NuDisco -> Arpeggio', 'AR Funky Guitar Lick 1', 'Album: Let There Be Laughter (Part 1) | Render at A2 (FL: A4), pitch up 7 semitones', '2. Morning, Planarcadia!', 'main', 'hoyo_mix', 853),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'EDM 1 -> Sequences', 'SQ Adrenaline', 'Album: Let There Be Laughter (Part 1)', '2. Morning, Planarcadia!', 'main', 'hoyo_mix', 854),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Synthwave -> Synth', 'SN 80s Superflute', 'Album: Let There Be Laughter (Part 1)', '2. Morning, Planarcadia!', 'main', 'hoyo_mix', 855),
  -- 4. Shopping Channel (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '4. Shopping Channel', 'main', 'hoyo_mix', 856),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Apple' COLLATE NOCASE AND p.name = 'iLife Sound Effects' COLLATE NOCASE),
   'Foley', 'Walkie Talkie Garble', 'Album: Let There Be Laughter (Part 1)', '4. Shopping Channel', 'main', 'hoyo_mix', 857),
  -- 5. Vital Infusion (Bojack)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '5. Vital Infusion', 'main', 'hoyo_mix', 858),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Toontrack' COLLATE NOCASE AND p.name = 'EZdrummer 2' COLLATE NOCASE),
   'EZdrummer 2 Modern', 'Basic', 'Album: Let There Be Laughter (Part 1)', '5. Vital Infusion', 'main', 'hoyo_mix', 859),
  -- 7. Where We Part Ways (Sean)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '7. Where We Part Ways', 'main', 'hoyo_mix', 860),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '7. Where We Part Ways', 'main', 'hoyo_mix', 861),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '7. Where We Part Ways', 'main', 'hoyo_mix', 862),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '7. Where We Part Ways', 'main', 'hoyo_mix', 863),
  -- 15. World's End Tavern (Duke.Killers)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '15. World''s End Tavern', 'main', 'hoyo_mix', 864),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '15. World''s End Tavern', 'main', 'hoyo_mix', 865),
  -- 19. Rare Treasure (Wandy.N)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '19. Rare Treasure', 'main', 'hoyo_mix', 866),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '19. Rare Treasure', 'main', 'hoyo_mix', 867),
  -- 20. Dark Alley (Duke.Killers)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '20. Dark Alley', 'main', 'hoyo_mix', 868),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '20. Dark Alley', 'main', 'hoyo_mix', 869),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '20. Dark Alley', 'main', 'hoyo_mix', 870),
  -- 21. The Dark Side of Light (Duke.Killers)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '21. The Dark Side of Light', 'main', 'hoyo_mix', 871),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '21. The Dark Side of Light', 'main', 'hoyo_mix', 872),
  -- 22. A Dream Among Flowers (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '22. A Dream Among Flowers', 'main', 'hoyo_mix', 873),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '22. A Dream Among Flowers', 'main', 'hoyo_mix', 874),
  -- 23. Water-Mirrored Moon (Fan)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '23. Water-Mirrored Moon', 'main', 'hoyo_mix', 875),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '23. Water-Mirrored Moon', 'main', 'hoyo_mix', 876),
  -- 24. Woe and Weal (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '24. Woe and Weal', 'main', 'hoyo_mix', 877),
  -- 25. Trigram of Incompletion (Jing.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '25. Trigram of Incompletion', 'main', 'hoyo_mix', 878),
  -- 26. Game Time! (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Dharma Studio' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 4 Complete Edition' COLLATE NOCASE),
   'Drum Loops -> Drum Loops - Main -> Breakbeat Loops', 'KSHMR Breakbeat 05 - 96BPM - Full', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 879),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   'Artist Series - 7 Skies -> Arpeggio', 'AR 80s Fantasy Movie', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 880),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   'Chiptune -> Arpeggio', 'AR Chord Fall (MW min-maj)', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 881),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   'Deep House -> Arpeggio', 'AR Chilling Squares', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 882),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   'Studio Production 1 -> Drumloop', 'DL That Hi-Hat 7 (Mod=Sample)', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 883),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 2' COLLATE NOCASE),
   'Fills -> 128BPM Short Fills', 'KSHMR Short Fill 128BPM 08', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 884),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Break_Beat_Loops', 'KSHMR_Break_Beat_Loop_07_145', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 885),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Break_Beat_Loops', 'KSHMR_Break_Beat_Loop_12_170', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 886),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   '8 Bit Era -> Bass', 'BA Modern Sid', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 887),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   '8 Bit Era -> FX', 'FX Mad LFO', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 888),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   '8 Bit Era -> Plucked', 'PL GB Bitpike', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 889),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   '16 Bit Era -> Arp', 'AR Bassline Chip-Split', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 890),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   '16 Bit Era -> Sequences', 'SQ Newsflash', 'Album: Let There Be Laughter (Part 1) | Drums muted', '26. Game Time!', 'main', 'hoyo_mix', 891),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Factory -> Organ', 'OR Organ 90s', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 892),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Future Pop -> Leads', 'LD Cream Sword', 'Album: Let There Be Laughter (Part 1)', '26. Game Time!', 'main', 'hoyo_mix', 893),
  -- 27. Up-Up-Down-Down-Left-Left-Right-Right (Yj.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'reFX' COLLATE NOCASE AND p.name = 'Nexus' COLLATE NOCASE),
   'Chiptune -> Arpeggio', 'AR Chord Fall (MW min-maj)', 'Album: Let There Be Laughter (Part 1)', '27. Up-Up-Down-Down-Left-Left-Right-Right', 'main', 'hoyo_mix', 894),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Drum_Loops_Full -> Break_Beat_Loops', 'KSHMR_Break_Beat_Loop_19_180', 'Album: Let There Be Laughter (Part 1)', '27. Up-Up-Down-Down-Left-Left-Right-Right', 'main', 'hoyo_mix', 895),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   '8 Bit Era -> Leads', 'LD Low Resolution Crunch', 'Album: Let There Be Laughter (Part 1)', '27. Up-Up-Down-Down-Left-Left-Right-Right', 'main', 'hoyo_mix', 896),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'VPS Avenger' COLLATE NOCASE),
   'Factory -> Sequences', 'SQ Trance Hero Sq 1', 'Album: Let There Be Laughter (Part 1)', '27. Up-Up-Down-Down-Left-Left-Right-Right', 'main', 'hoyo_mix', 897),
  -- 28. Soaring Beyond the Skyline (Yonghui.C)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '28. Soaring Beyond the Skyline', 'main', 'hoyo_mix', 898),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '28. Soaring Beyond the Skyline', 'main', 'hoyo_mix', 899),
  -- 36. Congealed Air (Duke.Killers)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '36. Congealed Air', 'main', 'hoyo_mix', 900),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '36. Congealed Air', 'main', 'hoyo_mix', 901),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '36. Congealed Air', 'main', 'hoyo_mix', 902),
  -- 39. A Walk in Paradise (Aolin.Huang)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '39. A Walk in Paradise', 'main', 'hoyo_mix', 903),
  -- 40. Terminal of Life (Sean)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '40. Terminal of Life', 'main', 'hoyo_mix', 904),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '40. Terminal of Life', 'main', 'hoyo_mix', 905),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '40. Terminal of Life', 'main', 'hoyo_mix', 906),
  -- 41. All for the Show (Jing.W, TSAR)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'), NULL, NULL, NULL, 'Album: Let There Be Laughter (Part 1)', '41. All for the Show', 'main', 'hoyo_mix', 907),

  -- =========================================================================
  -- Album: Unreleased Soundtrack
  -- =========================================================================
  -- Anomaly Arbitration Theme
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere 2' COLLATE NOCASE),
   'Textures Soundscape', 'Call of the North', 'Album: Unreleased Soundtrack', 'Anomaly Arbitration Theme', 'main', 'hoyo_mix', 908),
  -- First Himeko Encounter
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Pads', 'PD Defiant [BR]', 'Album: Unreleased Soundtrack', 'First Himeko Encounter', 'main', 'hoyo_mix', 909),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Plucked', 'PL Modern Drop 1 [DRK]', 'Album: Unreleased Soundtrack', 'First Himeko Encounter', 'main', 'hoyo_mix', 910),
  -- Forgotten Hall Theme
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '02 Percussive Kits -> 01 Epic Organic Drums', 'PERC Church Snares', 'Album: Unreleased Soundtrack', 'Forgotten Hall Theme', 'main', 'hoyo_mix', 911),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', 'Dark City', 'Album: Unreleased Soundtrack', 'Forgotten Hall Theme', 'main', 'hoyo_mix', 912),
  -- Shiftmation!
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample: Toby Fox' COLLATE NOCASE AND p.name = 'UNDERTALE' COLLATE NOCASE),
   NULL, 'snd_pombark', 'Album: Unreleased Soundtrack | Source is "8 week old Pomeranian puppies!"', 'Shiftmation!', 'main', 'hoyo_mix', 913),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Video_Game_FX -> Game_FX', 'KSHMR_Game_FX_04_Beam_Me_Up', 'Album: Unreleased Soundtrack', 'Shiftmation!', 'main', 'hoyo_mix', 914),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'Video_Game_FX -> Game_Music_FX', 'Game_Music_FX_06_New_Ability_Acquired!_F', 'Album: Unreleased Soundtrack', 'Shiftmation!', 'main', 'hoyo_mix', 915),
  -- Star Rabbit
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample Magic' COLLATE NOCASE AND p.name = 'Chiptune' COLLATE NOCASE),
   'drum loops', 'ct_drm128_frenchie_top', 'Album: Unreleased Soundtrack', 'Star Rabbit', 'main', 'hoyo_mix', 916),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample Magic' COLLATE NOCASE AND p.name = 'Chiptune' COLLATE NOCASE),
   'drum loops', 'ct_drm140_dillon_ful', 'Album: Unreleased Soundtrack', 'Star Rabbit', 'main', 'hoyo_mix', 917),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample Magic' COLLATE NOCASE AND p.name = 'Chiptune' COLLATE NOCASE),
   'drum loops', 'ct_drm140_karma_ful', 'Album: Unreleased Soundtrack', 'Star Rabbit', 'main', 'hoyo_mix', 918),
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sample Magic' COLLATE NOCASE AND p.name = 'Chiptune' COLLATE NOCASE),
   'synth shots -> bass', 'ct_bs_funk1_C', 'Album: Unreleased Soundtrack | +7 semitones', 'Star Rabbit', 'main', 'hoyo_mix', 919),
  -- Crises (ver. 2) (Eli.W)
  ((SELECT id FROM games WHERE title = 'Honkai: Star Rail'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', 'Dark City', 'Album: Unreleased Soundtrack', 'Crises (ver. 2)', 'main', 'hoyo_mix', 920);

-- =============================================================================
-- UPDATE statements: populate raw_source for Live Recording / non-commercial-product
-- rows. Each is keyed by (game_id, position).
-- Format: '<role> — <performer>' (em-dash).
-- =============================================================================

-- Helper: all updates target game_id of Honkai: Star Rail.
-- Out of Control
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 1 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 2 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Gon' WHERE position = 4 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 10 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Gon' WHERE position = 19 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Gon' WHERE position = 23 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Gon' WHERE position = 28 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 30 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — Anthony Lynch' WHERE position = 35 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Anthony Lynch' WHERE position = 36 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';

-- Of Snow and Ember
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 37 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 38 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — 江诗颖' WHERE position = 39 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 王皓, 张超俊, 苏美玲, 田佳, Fan' WHERE position = 40 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Daniel HOPE (Giuseppe Guarneri del Gesù, Cremona, 1742, "Wieniawski")' WHERE position = 41 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Gon' WHERE position = 42 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Reinterpret — Daniel HOPE''s team' WHERE position = 43 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 45 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 46 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — 江诗颖' WHERE position = 47 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 王皓, 张超俊, 苏美玲, 田佳, Fan' WHERE position = 48 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — Gon' WHERE position = 49 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 51 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 53 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 54 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 57 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 59 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Ming Liu' WHERE position = 60 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — 江诗颖' WHERE position = 62 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 63 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 64 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Gon' WHERE position = 65 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 66 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 67 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Ye Fan' WHERE position = 68 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 70 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Ye Fan' WHERE position = 71 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 73 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 王皓, 张超俊, 苏美玲, 田佳, Fan' WHERE position = 74 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Quartet' WHERE position = 76 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Gon' WHERE position = 77 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 81 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 王皓, 张超俊, 苏美玲, 田佳, Fan' WHERE position = 82 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 86 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 89 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 91 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 王皓, 张超俊, 苏美玲, 田佳, Fan' WHERE position = 92 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 93 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Ye Fan' WHERE position = 94 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 95 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 王皓, 张超俊, 苏美玲, 田佳, Fan' WHERE position = 96 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 99 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Gon' WHERE position = 100 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 王皓, 张超俊, 苏美玲, 田佳, Fan' WHERE position = 101 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yiying Zhang' WHERE position = 103 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 104 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 105 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 106 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Gon' WHERE position = 107 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 王皓, 张超俊, 苏美玲, 田佳, Fan' WHERE position = 108 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 113 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 119 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Gon' WHERE position = 120 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — Jonathan Steingard' WHERE position = 121 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Gon' WHERE position = 125 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — Jonathan Steingard' WHERE position = 126 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';

-- Svah Sanishyu
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 129 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 130 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 131 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Paigu — 李承颖' WHERE position = 132 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 133 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 王皓, 张超俊, 苏美玲, 田佳, Fan' WHERE position = 134 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 137 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 138 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 139 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 140 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 141 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 144 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 145 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Gon' WHERE position = 146 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 151 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 152 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Daruan — Wenqing Shi' WHERE position = 153 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 154 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Paigu — 李承颖' WHERE position = 155 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 王皓, 张超俊, 苏美玲, 田佳, Fan' WHERE position = 156 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 160 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 161 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Daruan — Wenqing Shi' WHERE position = 162 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 163 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Paigu — 李承颖' WHERE position = 164 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 165 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — Fan' WHERE position = 166 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 170 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Jiajia Shi' WHERE position = 171 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 172 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 175 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 196 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 197 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 198 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 201 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 202 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 205 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 213 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Hua Wang' WHERE position = 214 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — 申依静' WHERE position = 217 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Matouqin — Haitao Li' WHERE position = 219 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 222 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Matouqin — Haitao Li' WHERE position = 223 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 225 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Matouqin — Haitao Li' WHERE position = 226 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — 申依静' WHERE position = 231 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 234 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Matouqin — Haitao Li' WHERE position = 236 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 237 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — 申依静' WHERE position = 238 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guqin — Jingyu Fang' WHERE position = 239 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 240 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 244 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 245 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 246 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 舞乐蝉歌艺术工作室' WHERE position = 247 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 248 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 249 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 优素, Eli.W' WHERE position = 250 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guqin — Jingyu Fang' WHERE position = 251 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';

-- Astral Theater Vol. 1
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 252 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Hua Wang' WHERE position = 255 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Hua Wang' WHERE position = 258 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 姚徐依' WHERE position = 259 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guqin — Jingyu Fang' WHERE position = 261 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 264 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — 姚徐依' WHERE position = 265 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 268 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 269 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 270 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Rui Liu' WHERE position = 272 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 273 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 278 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: First Violin — Yiying Zhang' WHERE position = 279 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Second Violin — 张慧' WHERE position = 280 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yizhu Mao' WHERE position = 281 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 282 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guitar — Yi Chen' WHERE position = 287 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 288 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yi Chen' WHERE position = 293 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Bass — ET' WHERE position = 294 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Bass — ET' WHERE position = 295 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Drums — Patrick' WHERE position = 296 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';

-- The Flapper Sinthome (Part 1)
UPDATE usages SET raw_source = 'Live Recording: Trumpet — 李晓川' WHERE position = 298 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trombone — 曹侃' WHERE position = 299 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — 黄李玮' WHERE position = 300 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sax — Shihai Li' WHERE position = 301 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 302 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 303 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — Vane, GANNIX, Fan' WHERE position = 304 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — 李晓川' WHERE position = 305 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trombone — 曹侃' WHERE position = 306 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sax — Shihai Li' WHERE position = 307 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — 黄李玮' WHERE position = 308 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — 张皑皓' WHERE position = 309 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 310 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 311 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 312 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — 李晓川' WHERE position = 313 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trombone — 曹侃' WHERE position = 314 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — 张皑皓' WHERE position = 315 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sax — Shihai Li' WHERE position = 316 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — 黄李玮' WHERE position = 317 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 318 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — 张皑皓' WHERE position = 319 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — 黄李玮' WHERE position = 320 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 321 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — 张皑皓' WHERE position = 322 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — 黄李玮' WHERE position = 323 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — 李晓川' WHERE position = 324 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trombone — 曹侃' WHERE position = 325 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sax — Shihai Li' WHERE position = 326 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harp — 黄李玮' WHERE position = 327 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — 张皑皓' WHERE position = 328 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 329 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 330 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — 李晓川' WHERE position = 331 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trombone — 曹侃' WHERE position = 332 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Clarinet — Dan Wu' WHERE position = 333 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flute — Xiaohua Cheng' WHERE position = 334 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 335 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trombone — 曹侃' WHERE position = 336 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Clarinet — Dan Wu' WHERE position = 337 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sax — Shihai Li' WHERE position = 338 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — 张皑皓' WHERE position = 339 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 340 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 341 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — 李晓川' WHERE position = 342 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trombone — 曹侃' WHERE position = 343 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — 张皑皓' WHERE position = 344 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 345 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — 李晓川' WHERE position = 346 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trombone — 曹侃' WHERE position = 347 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sax — Shihai Li' WHERE position = 348 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — 张皑皓' WHERE position = 349 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Drums — Patrick' WHERE position = 350 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 351 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bass — Hento' WHERE position = 352 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Big Band' WHERE position = 353 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — 李晓川' WHERE position = 354 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sax — Shihai Li' WHERE position = 355 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Weiqing Tang, Jia Tian, 张怡, Jing Zhang, ...' WHERE position = 357 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bass — Hento' WHERE position = 358 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Drums — Patrick' WHERE position = 359 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 362 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Xiaonan Xu' WHERE position = 364 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sax — Shihai Li' WHERE position = 365 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: String Quartet — Rui Liu, 王大毛, 李纪泽, 张平' WHERE position = 366 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal — Chevy' WHERE position = 368 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 369 AND game_id = (SELECT id FROM games WHERE title = 'Honkai: Star Rail') AND source_family = 'hoyo_mix';
