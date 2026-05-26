-- NEWER VGM SEGA/Atlus — "Section 17 - Other" sub-batch A (1986-1999 era)
--
-- Source: reference/NEWER VGM Sound Sources - SEGAAtlus.csv lines 2807-2978.
-- 24 game records, ~125 usage rows.
--
-- The CSV's "Section 17 - Other" (actually section 18 — the file has two
-- "Section 17" headers, contributor typo) is a catch-all that runs 805
-- lines and ~50 games. Splitting into three sub-batches by era:
--   - Other-a (this file): 1986-1999 arcade/console era
--   - Other-b (next):      1999-2003 Dreamcast/early PS2 + Billy Hatcher + Ollie King
--   - Other-c:             Mid-2000s DS through Metaphor 2024
--
-- Composer credits in this sub-batch (from in-CSV "(Music by:" notes):
--   - Super Valis IV — Junta Sakata
--   - Hip Jog Jog (SEGA Toys) — Hideki Naganuma
--   - Atsumare! Guru Guru Onsen — Hideki Naganuma
--
-- New manufacturers introduced this batch:
--   - Polestar Magnetics         (The X-Static Goldmine, used in Ristar
--                                 and later Ollie King)
--   - Great Attractor Studio     (Drumbase 5000, Ristar)
--   - GEM                        (S2 keyboard, The Hybrid Front)
--   - SEGA                       (SEGA's own internal sample CD library
--                                 "Contents Library Vol. 1")
--   - Optical Media International (Universe of Sounds Vol. 3, WaveRunner)
--   - Kurzweil                   (K2000 V3 etc, Eternal Champions)
--   - Masterbits                 (Climax-Collection, Hip Jog Jog)
--   - e-LAB                      (with hyphen; the Pokemon seeds use
--                                 "eLAB" without hyphen — kept distinct
--                                 per Rule 2 since the strings differ
--                                 by punctuation not just case)
--
-- New products this batch (selection — INSERT OR IGNORE on all):
--   - Yamaha RX15, DX100
--   - KORG WAVESTATION SR, 01R/W, 01/W, T2, TRINITY
--   - Roland D-550, JD-800, JV-80, JP-8000, TB-303, U-110, R-8, RSB-501,
--     SR-JV80-02 Orchestral, SR-JV80-05 World, SN-U110-02 Latin & F.X.
--     Percussions, SN-U110-11 Sound Effects
--   - E-MU Systems Proteus MPS Plus Orchestral, Proteus/3, Orbit,
--     Procussion (?)  (typo-style "Procussion (?)" preserved verbatim)
--   - Zero-G Datafile 2, Datafile 3, Phantom Horns, Funk Guitar,
--     Dance Vocals
--   - EastWest Dance/Industrial, Steve Stevens Guitar
--   - Sound Ideas Hollywood Series 4000, Series 2000, Hanna-Barbera
--     Sound FX Library
--   - Best Service Sound Cube, Gigapack, Advanced Orchestra, Dance Mega
--     Jungle/Rave
--   - AMG Terminalhead - Underfire Vol. 1
--   - Sounds Good Methods of Mayhem
--   - Ueberschall Big Beat
--   - Masterbits RAPsody, Climax-Collection Vol. 1 - Vocals
--   - Sonic Foundry ACID 1.0 Program Loops
--   - Kurzweil K2000 V3, K2VX, K2VX Program Farm Disk
--   - SEGA Contents Library Vol. 1
--   - Polestar Magnetics The X-Static Goldmine
--   - Great Attractor Studio Drumbase 5000
--   - GEM S2
--   - Optical Media International Universe of Sounds Vol. 3
--   - e-LAB Xtortion, The X-Static Sample Disc
--
-- Cross-media samples and live recordings (Eternal Champions):
--   - "Sample: Jerry Goldsmith - Ave Satani"        → raw_source
--   - "Sample: John Williams - Approaching The Stones" → raw_source
--   - "Live Recording: Tristan des Prés (Electric Guitar)" → raw_source
--
-- CSV mangling artifacts preserved per Rule 2:
--   - "Sound Ideas / Series 2000 / 2021-08-01 00:00:00" (Eternal Champions
--     row T2878) — Excel date-formatting damage on what is presumably a
--     volume/CD identifier. Preserved verbatim in path_bank.
--   - "E-MU Systems / Procussion (?)" — contributor uncertainty marker
--     attached to the product name itself. Preserved verbatim.
--   - "Roland,? (mainfacturer , product unknown)" pattern → product_id
--     NULL, raw_source = 'Roland - ?'.
--   - "Roland,SOUND Canvas SC-55, ... ,Splash Wave (1993),Link" — the
--     trailing "Link" appears to be a stray seventh column from contributor's
--     spreadsheet template. Ignored (not stored).
--
-- Conventions (same as prior batches):
--   - Per-game positions start at 1, monotonic across main and stuff_to_find.
--   - "?,?" CSV rows → product_id NULL, raw_source NULL.
--   - Quoted track titles with literal double-quotes preserved using SQL
--     doubled-quote escaping (e.g. "Hit it!" → '"Hit it!"').

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Polestar Magnetics'),
  ('Great Attractor Studio'),
  ('GEM'),
  ('SEGA'),
  ('Optical Media International'),
  ('Kurzweil'),
  ('Masterbits'),
  ('e-LAB');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'                       COLLATE NOCASE), 'RX15',                                            'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'                       COLLATE NOCASE), 'DX100',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                         COLLATE NOCASE), 'WAVESTATION SR',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                         COLLATE NOCASE), '01R/W',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                         COLLATE NOCASE), '01/W',                                            'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                         COLLATE NOCASE), 'T2',                                              'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                         COLLATE NOCASE), 'TRINITY',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'D-550',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'JD-800',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'JV-80',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'JP-8000',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'TB-303',                                          'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'U-110',                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'R-8',                                             'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'RSB-501',                                         'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'SR-JV80-02 Orchestral',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'SR-JV80-05 World',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'SN-U110-02 Latin & F.X. Percussions',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'                       COLLATE NOCASE), 'SN-U110-11 Sound Effects',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'E-MU Systems'                 COLLATE NOCASE), 'Proteus MPS Plus Orchestral',                     'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'E-MU Systems'                 COLLATE NOCASE), 'Proteus/3',                                       'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'E-MU Systems'                 COLLATE NOCASE), 'Orbit',                                           'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'E-MU Systems'                 COLLATE NOCASE), 'Procussion (?)',                                  'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                       COLLATE NOCASE), 'Datafile 2',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                       COLLATE NOCASE), 'Datafile 3',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                       COLLATE NOCASE), 'Phantom Horns',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                       COLLATE NOCASE), 'Funk Guitar',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                       COLLATE NOCASE), 'Dance Vocals',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                     COLLATE NOCASE), 'Dance/Industrial',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                     COLLATE NOCASE), 'Steve Stevens Guitar',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sound Ideas'                  COLLATE NOCASE), 'Hollywood Series 4000',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sound Ideas'                  COLLATE NOCASE), 'Series 2000',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sound Ideas'                  COLLATE NOCASE), 'Hanna-Barbera Sound FX Library',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                 COLLATE NOCASE), 'Sound Cube',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                 COLLATE NOCASE), 'Gigapack',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                 COLLATE NOCASE), 'Advanced Orchestra',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                 COLLATE NOCASE), 'Dance Mega Jungle/Rave',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'AMG'                          COLLATE NOCASE), 'Terminalhead - Underfire Vol. 1',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sounds Good'                  COLLATE NOCASE), 'Methods of Mayhem',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'                  COLLATE NOCASE), 'Big Beat',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Masterbits'                   COLLATE NOCASE), 'RAPsody',                                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Masterbits'                   COLLATE NOCASE), 'Climax-Collection Vol. 1 - Vocals',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonic Foundry'                COLLATE NOCASE), 'ACID 1.0 Program Loops',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Kurzweil'                     COLLATE NOCASE), 'K2000 V3',                                        'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Kurzweil'                     COLLATE NOCASE), 'K2VX',                                            'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Kurzweil'                     COLLATE NOCASE), 'K2VX Program Farm Disk',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'SEGA'                         COLLATE NOCASE), 'Contents Library Vol. 1',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Polestar Magnetics'           COLLATE NOCASE), 'The X-Static Goldmine',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Great Attractor Studio'       COLLATE NOCASE), 'Drumbase 5000',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'GEM'                          COLLATE NOCASE), 'S2',                                              'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Optical Media International'  COLLATE NOCASE), 'Universe of Sounds Vol. 3',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'e-LAB'                        COLLATE NOCASE), 'Xtortion',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'e-LAB'                        COLLATE NOCASE), 'The X-Static Sample Disc',                        'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('OutRun',                                              'Arcade',                '1986-09-20', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Original arcade release; only one Stuff to Find row (Yamaha RX15).'),
  ('Super Valis IV',                                      'Super Famicom',         '1992-03-27', 'Junta Sakata',    'junta sakata',    'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Uses M1 waveforms with "From the SNES SDK" note.'),
  ('Quiz Scramble Special',                               'Arcade',                '1992-05-29', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Track IDs prefixed G-6003.'),
  ('Streets of Rage 2',                                   'Sega Mega Drive',       '1992-12-15', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Sample identification: Zero-G Datafile 2 ""Hit it!"" vocal sample.'),
  ('OutRunners (Arcade)',                                 'Arcade',                '1993-05-01', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Arcade-only entry distinct from earlier OutRun.'),
  ('Run Saber',                                           'Super Famicom',         '1993-06-08', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). SNES title; uses SOUND Canvas SC-55 patches.'),
  ('The Hybrid Front',                                    'Sega Mega Drive',       '1994-07-22', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Only one source row identified — GEM S2 voice patch.'),
  ('Ristar',                                              'Sega Mega Drive',       '1995-02-16', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Introduces Polestar Magnetics ""The X-Static Goldmine"" and Great Attractor Studio ""Drumbase 5000"" sample libraries.'),
  ('Panzer Dragoon',                                      'Sega Saturn',           '1995-03-10', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Saturn launch-window title; uses Roland JD-990 and KORG 01R/W.'),
  ('Eternal Champions: Challenge from the Dark Side',     'Sega CD',               '1995-06-06', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Parent CSV header "Eternal Champions" (line 2860) groups this entry. Heavy use of cross-media samples (Jerry Goldsmith Ave Satani, John Williams) plus a "Live Recording: Tristan des Prés (Electric Guitar)" credit.'),
  ('Guardian Heroes',                                     'Sega Saturn',           '1996-01-26', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Only one source row — EastWest Dance/Industrial.'),
  ('Victory Goal ''96',                                   'Sega Saturn',           '1996-03-29', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). CSV notes hardware "Used by Jun Senoue".'),
  ('The Legend of Oasis / The Story of Thor 2',           'Sega Saturn',           '1996-04-26', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Dual JP/Western title preserved verbatim. Both Stuff to Find rows reference SEGA''s internal "Contents Library Vol. 1" sample library.'),
  ('Fighting Vipers',                                     'Sega Saturn',           '1996-08-30', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Big beat dance track "Fallen (An'' I Can''t Get Up)" sources from EastWest Dance/Industrial + Zero-G Datafile 3 vocal samples.'),
  ('Dynamite Baseball',                                   'Sega Saturn',           '1996-08-01', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Only month-precision date in CSV (August 1996).'),
  ('WaveRunner',                                          'Arcade',                '1996-10-01', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Month-precision date.'),
  ('Vatlva',                                              'Sega Saturn',           '1996-12-06', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Both Stuff to Find rows reference SEGA Contents Library Vol. 1 — same pattern as Legend of Oasis.'),
  ('Motor Raid',                                          'Arcade',                '1997-10-01', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Month-precision date. Only one source row — E-MU Orbit syn:1KeyRush patch.'),
  ('Sega Bass Fishing',                                   'Arcade',                '1997-11-01', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). All six rows reference Ueberschall Jam Box vocal samples for "Feel The Heat".'),
  ('Burning Rangers',                                     'Sega Saturn',           '1998-02-26', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Mixed KORG 01/W + Roland JD-800/JV-80 stack with Zero-G Datafile 2 vocals.'),
  ('Zombie Revenge',                                      'Arcade',                '1998-03-01', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Sega Model 3 era arcade title. Best Service Classical Choir appears in Silver Prison track. Sound Ideas Hollywood Series 4000 horror stingers used.'),
  ('Hip Jog Jog (SEGA Toys)',                             'SEGA Toys',             '1998-01-01', 'Hideki Naganuma', 'hideki naganuma', 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). SEGA Toys hardware peripheral title; year-only CSV date (1998). First Hideki Naganuma credit in Other section.'),
  ('Atsumare! Guru Guru Onsen',                           'Sega Dreamcast',        '1999-09-23', 'Hideki Naganuma', 'hideki naganuma', 'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Dreamcast online community title; Hideki Naganuma score.'),
  ('Toy Fighter',                                         'Sega Dreamcast',        '1999-09-01', NULL,              NULL,              'Source: NEWER VGM Sound Sources - SEGAAtlus.csv (Section 17 Other). Month-precision date. AMG Terminalhead + Sounds Good Methods of Mayhem + Zero-G Chemical Beats.');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                       COLLATE NOCASE), 'Chemical Beats',                                  'Sample Library');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, raw_source, examples, category, source_family, position)
VALUES
  -- G1: OutRun — 1 stuff
  ((SELECT id FROM games WHERE title = 'OutRun'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'RX15' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 1),

  -- G2: Super Valis IV — 3 main + 3 stuff = 6
  ((SELECT id FROM games WHERE title = 'Super Valis IV'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'M1' COLLATE NOCASE),
   'Waveform', '91 Saw Wave + 93 25% Pulse', 'From the SNES SDK', NULL, 'Babylon, King Gallagher', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Super Valis IV'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SN-U110-02 Latin & F.X. Percussions' COLLATE NOCASE),
   'Tones', '02-034 ORCH HIT', NULL, NULL, '-Used throughout the soundtrack-', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Super Valis IV'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'U-110' COLLATE NOCASE),
   'Patches', 'P-31: Strings', NULL, NULL, '-Used throughout the soundtrack-', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Super Valis IV'),
   NULL, NULL, NULL, 'Bass', NULL, '-Used throughout the soundtrack-', 'stuff_to_find', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Super Valis IV'),
   NULL, NULL, NULL, 'Saxophone', NULL, '-Used throughout the soundtrack-', 'stuff_to_find', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Super Valis IV'),
   NULL, NULL, NULL, 'Synth Brass', NULL, '-Used throughout the soundtrack-', 'stuff_to_find', 'newer_vgm', 6),

  -- G3: Quiz Scramble Special — 7 main
  ((SELECT id FROM games WHERE title = 'Quiz Scramble Special'),
   NULL, NULL, NULL, 'Fairlight ORCH5', 'AKAI - ?', 'G-6003_04', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Quiz Scramble Special'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Proteus MPS Plus Orchestral' COLLATE NOCASE),
   'Bank 1', '065 Rock Drums', NULL, NULL, 'G-6003_08, G-6003_09', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Quiz Scramble Special'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'T2' COLLATE NOCASE),
   'PROG', 'A01 Piano16''', NULL, NULL, 'G-6003_05', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Quiz Scramble Special'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'T2' COLLATE NOCASE),
   'PROG', 'A53 VoiceWave', NULL, NULL, 'G-6003_04', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Quiz Scramble Special'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'T2' COLLATE NOCASE),
   'PROG', 'A60 CloudNine', NULL, NULL, 'G-6003_02', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Quiz Scramble Special'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'D-550' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Quiz Scramble Special'),
   NULL, NULL, NULL, 'Brass', 'Roland - ?', 'G-6003_10', 'main', 'newer_vgm', 7),

  -- G4: Streets of Rage 2 — 1 main + 1 stuff = 2
  ((SELECT id FROM games WHERE title = 'Streets of Rage 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 2' COLLATE NOCASE),
   'Track 53 - Speech (Male) -> TS 0:14', '"Hit it!"', NULL, NULL, 'SFX', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Streets of Rage 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Polestar Magnetics' COLLATE NOCASE AND p.name = 'The X-Static Goldmine' COLLATE NOCASE),
   NULL, NULL, '"Come on, ya''ll" ', NULL, 'SFX', 'stuff_to_find', 'newer_vgm', 2),

  -- G5: OutRunners (Arcade) — 2 main
  ((SELECT id FROM games WHERE title = 'OutRunners (Arcade)'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-55' COLLATE NOCASE),
   'Capital', '019 Organ 3', 'sampled @ G6', NULL, 'Splash Wave (1993)', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'OutRunners (Arcade)'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-55' COLLATE NOCASE),
   'Capital', '038 Slap Bass 2', NULL, NULL, NULL, 'main', 'newer_vgm', 2),

  -- G6: Run Saber — 6 main
  ((SELECT id FROM games WHERE title = 'Run Saber'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SN-U110-11 Sound Effects' COLLATE NOCASE),
   NULL, '11-032 FANTASYHIT', NULL, NULL, NULL, 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Run Saber'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-55' COLLATE NOCASE),
   'Capital', '001 Piano 1', NULL, NULL, NULL, 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Run Saber'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-55' COLLATE NOCASE),
   'Capital', '002 Piano 2', NULL, NULL, NULL, 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Run Saber'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-55' COLLATE NOCASE),
   'Capital', '030 Overdrive Gt.', NULL, NULL, NULL, 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Run Saber'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-55' COLLATE NOCASE),
   'Capital', '038 Slap Bs. 2', NULL, NULL, NULL, 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Run Saber'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-55' COLLATE NOCASE),
   'Capital', '099 Crystal', NULL, NULL, NULL, 'main', 'newer_vgm', 6),

  -- G7: The Hybrid Front — 1 main
  ((SELECT id FROM games WHERE title = 'The Hybrid Front'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'GEM' COLLATE NOCASE AND p.name = 'S2' COLLATE NOCASE),
   'Single', '113-3 Voice_1', NULL, NULL, NULL, 'main', 'newer_vgm', 1),

  -- G8: Ristar — 7 main + 3 stuff = 10
  ((SELECT id FROM games WHERE title = 'Ristar'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Great Attractor Studio' COLLATE NOCASE AND p.name = 'Drumbase 5000' COLLATE NOCASE),
   'PARTITION G -> GATE KITS', NULL, 'GATE.S #32', NULL, NULL, 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Ristar'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Polestar Magnetics' COLLATE NOCASE AND p.name = 'The X-Static Goldmine' COLLATE NOCASE),
   'CD 1 -> Track 03 - HipHop + Old School', 'Timestamp 1:12', '6 Strings (Snare)', NULL, 'Round 1-1 - Shooting Ristar, Round 3-1 - Busy Flare, Round 6-1 - Crying World', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Ristar'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Polestar Magnetics' COLLATE NOCASE AND p.name = 'The X-Static Goldmine' COLLATE NOCASE),
   'CD 1 -> Track 61 - R8 Mixed Percussion 1', 'Timestamp 0:15', 'Open Cuica', NULL, 'SFX', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Ristar'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Polestar Magnetics' COLLATE NOCASE AND p.name = 'The X-Static Goldmine' COLLATE NOCASE),
   'CD 1 -> Track 61 - R8 Mixed Percussion 1', 'Timestamp 0:16', 'Mute Cuica', NULL, 'SFX', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Ristar'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Polestar Magnetics' COLLATE NOCASE AND p.name = 'The X-Static Goldmine' COLLATE NOCASE),
   'CD 2 -> Track 04 - Come On!', 'Timestamp 0:43', '"Come again?"', NULL, 'Ending 1 ~Star Humming~', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Ristar'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 2' COLLATE NOCASE),
   'Track 05', 'Timestamp 0:00', 'Drumloop', NULL, 'Round 1-1 - Shooting Ristar', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Ristar'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 2' COLLATE NOCASE),
   'Track 53', 'Timestamp 0:15', '"Hit it!"', NULL, 'Ending 1 ~Star Humming~', 'main', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Ristar'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Procussion (?)' COLLATE NOCASE),
   NULL, 'Snare', NULL, NULL, 'Pray!! Pray!! Play!!, Du-Di-Da!!, Round 5-2 - Ice Scream, Round 6-1 - Crying World, Theme of Kaiser - Greedy Game, Act Clear - Go Ahead, Round Clear 1 - Let''s Go!!, Continue - Once More...', 'stuff_to_find', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Ristar'),
   NULL, NULL, 'Hihats', 'Open and closed', NULL, 'Round 3-1 - Busy Flare, Round 5-1 - Ring Rink', 'stuff_to_find', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Ristar'),
   NULL, NULL, 'Orch Hit', NULL, NULL, 'Round 4-2 - On Parade, Round 6-2 - Lock Up!!', 'stuff_to_find', 'newer_vgm', 10),

  -- G9: Panzer Dragoon — 2 main + 2 stuff = 4
  ((SELECT id FROM games WHERE title = 'Panzer Dragoon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JD-990' COLLATE NOCASE),
   'Internal', 'I-21 Vectoring 1', NULL, NULL, 'Game Over', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Panzer Dragoon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = '01R/W' COLLATE NOCASE),
   'XSC-6S Ethnic', 'C30 Bambremoro', NULL, NULL, 'Track 6/帝國 ～Episode 3', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Panzer Dragoon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = '01R/W' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Panzer Dragoon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JD-800' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'stuff_to_find', 'newer_vgm', 4),

  -- G10: Eternal Champions: Challenge from the Dark Side — 16 main + 2 stuff = 18
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   NULL, NULL, NULL, NULL, 'Live Recording: Tristan des Prés (Electric Guitar)', '-Used Throughout the Soundtrack-', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   NULL, NULL, 'Timestamp 0:00', '"Sanguis bibimus, corpus edimus"', 'Sample: Jerry Goldsmith - Ave Satani', 'Cinekill, Dark Champion Ending', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   NULL, NULL, 'Timestamp 1:20', 'Choirs', 'Sample: John Williams - Approaching The Stones', 'Riptide''s Stage', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Proteus/3' COLLATE NOCASE),
   'Bank 0', '035 Shakuhachi', NULL, NULL, 'Xavier''s Stage', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Proteus/3' COLLATE NOCASE),
   'Bank 0', '043 Shamisen', NULL, NULL, 'Xavier''s Stage', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'WAVESTATION SR' COLLATE NOCASE),
   'RAM2 -> PERFORMANCES', '00 Pharoah''s Jig', NULL, NULL, 'Dawson''s Stage', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'WAVESTATION SR' COLLATE NOCASE),
   'RAM2 -> PERFORMANCES', '02 Spectrumize', NULL, NULL, 'Bad Endings', 'main', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'WAVESTATION SR' COLLATE NOCASE),
   'ROM4 -> PERFORMANCES', '36 WaterPhone', NULL, NULL, 'Dawson''s Stage', 'main', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'WAVESTATION SR' COLLATE NOCASE),
   'ROM7 -> PERFORMANCES', '20 Dr. Wave', NULL, NULL, 'R.A.X.''s Stage', 'main', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'WAVESTATION SR' COLLATE NOCASE),
   'ROM9 -> PERFORMANCES', '10 MC-SR Rap', NULL, NULL, 'Good Ending: Shadow, Larcen', 'main', 'newer_vgm', 10),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'WAVESTATION SR' COLLATE NOCASE),
   'ROM11 -> PERFORMANCES', '01 Deep Atmosphere', NULL, NULL, 'Jetta''s Stage, Dawson''s Stage', 'main', 'newer_vgm', 11),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'WAVESTATION SR' COLLATE NOCASE),
   'ROM11 -> PERFORMANCES', '08 Sandman', NULL, NULL, 'Bad Endings', 'main', 'newer_vgm', 12),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'WAVESTATION SR' COLLATE NOCASE),
   'ROM11 -> PERFORMANCES', '40 Stereo Waves', NULL, NULL, 'Menu Select, Dawson''s Stage', 'main', 'newer_vgm', 13),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kurzweil' COLLATE NOCASE AND p.name = 'K2000 V3' COLLATE NOCASE),
   'PROGRAM', '1 3rd World Order', NULL, NULL, 'Xavier''s Stage', 'main', 'newer_vgm', 14),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JD-990' COLLATE NOCASE),
   'Internal', 'I-68 Radio', NULL, NULL, 'Ramses'' Stage', 'main', 'newer_vgm', 15),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-1080' COLLATE NOCASE),
   'PR-D (GM)', '056 Orchestral Hit', NULL, NULL, 'Ramses'' Stage', 'main', 'newer_vgm', 16),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'Series 2000' COLLATE NOCASE),
   '2021-08-01 00:00:00', 'Traffic', 'City Heavy Traffic', NULL, 'Shadow''s Stage', 'main', 'newer_vgm', 17),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Kurzweil' COLLATE NOCASE AND p.name = 'K2000 V3' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, 'Xavier''s Stage', 'stuff_to_find', 'newer_vgm', 18),
  ((SELECT id FROM games WHERE title = 'Eternal Champions: Challenge from the Dark Side'),
   NULL, NULL, NULL, 'Alpha Juno hoover stab', '? (Sample CD)', 'Shadow''s Stage', 'stuff_to_find', 'newer_vgm', 19),

  -- G11: Guardian Heroes — 1 main
  ((SELECT id FROM games WHERE title = 'Guardian Heroes'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Dance/Industrial' COLLATE NOCASE),
   'Partition A -> VOLUME 008', 'LOOPS 22-23', 'LP-22 101', NULL, 'Indy', 'main', 'newer_vgm', 1),

  -- G12: Victory Goal '96 — 2 main
  ((SELECT id FROM games WHERE title = 'Victory Goal ''96'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = '01R/W' COLLATE NOCASE),
   NULL, NULL, 'Used by Jun Senoue', NULL, NULL, 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Victory Goal ''96'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'R-8' COLLATE NOCASE),
   NULL, NULL, 'Used by Jun Senoue', NULL, NULL, 'main', 'newer_vgm', 2),

  -- G13: The Legend of Oasis / The Story of Thor 2 — 2 stuff
  ((SELECT id FROM games WHERE title = 'The Legend of Oasis / The Story of Thor 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'SEGA' COLLATE NOCASE AND p.name = 'Contents Library Vol. 1' COLLATE NOCASE),
   'CD 7', NULL, NULL, NULL, 'SFX (N/A)', 'stuff_to_find', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'The Legend of Oasis / The Story of Thor 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'SEGA' COLLATE NOCASE AND p.name = 'Contents Library Vol. 1' COLLATE NOCASE),
   'CD 8', NULL, NULL, NULL, 'SFX (N/A)', 'stuff_to_find', 'newer_vgm', 2),

  -- G14: Fighting Vipers — 6 main + 1 stuff = 7
  ((SELECT id FROM games WHERE title = 'Fighting Vipers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Dance/Industrial' COLLATE NOCASE),
   'Partition B -> VOLUME 006', 'LOOPS-45', 'LP-45 55', NULL, 'Fallen (An'' I Can''t Get Up)', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Fighting Vipers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 3' COLLATE NOCASE),
   'Track 01 - Breakbeat progd. -> TS 0:17', '1 bar', NULL, NULL, 'Fallen (An'' I Can''t Get Up)', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Fighting Vipers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 3' COLLATE NOCASE),
   'Track 47 - JB-Style vocals -> TS 0:08', '"gimme some!"', NULL, NULL, 'Fallen (An'' I Can''t Get Up)', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Fighting Vipers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 3' COLLATE NOCASE),
   'Track 87 - Misc. vocals + FX -> TS 0:09', '"ouch!"', NULL, NULL, 'Fallen (An'' I Can''t Get Up)', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Fighting Vipers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 3' COLLATE NOCASE),
   'Track 87 - Misc. vocals + FX -> TS 0:15', '"the home of the big beat!"', NULL, NULL, 'Fallen (An'' I Can''t Get Up)', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Fighting Vipers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 3' COLLATE NOCASE),
   'Track 87 - Misc. vocals + FX -> TS 0:19', '"I can''t get up!"', '"I''ve fallen, and..."', NULL, 'Fallen (An'' I Can''t Get Up)', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Fighting Vipers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 3' COLLATE NOCASE),
   NULL, NULL, 'Cheer, Scratch', NULL, 'Fallen (An'' I Can''t Get Up)', 'stuff_to_find', 'newer_vgm', 7),

  -- G15: Dynamite Baseball — 3 main
  ((SELECT id FROM games WHERE title = 'Dynamite Baseball'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Steve Stevens Guitar' COLLATE NOCASE),
   'Partition A -> 5THS', '5THS 4M', NULL, NULL, 'Track 1', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Dynamite Baseball'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'SC-88 Map', '019 000 Organ 3', NULL, NULL, NULL, 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Dynamite Baseball'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Funk Guitar' COLLATE NOCASE),
   'Funkin'' Heavy --> BIG', 'BIG RIFF 1', NULL, NULL, 'Track 1', 'main', 'newer_vgm', 3),

  -- G16: WaveRunner — 8 main
  ((SELECT id FROM games WHERE title = 'WaveRunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Orbit' COLLATE NOCASE),
   'Bank 0', '052 syn:1KeyStak', NULL, NULL, NULL, 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'WaveRunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Orbit' COLLATE NOCASE),
   'Bank 3', '035 sfx:Groovlng', NULL, NULL, NULL, 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'WaveRunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Orbit' COLLATE NOCASE),
   'Instruments', '256 Dance Kit 1', NULL, NULL, NULL, 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'WaveRunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Steve Stevens Guitar' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'WaveRunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = '01/W' COLLATE NOCASE),
   'PROG -> Bank B', 'B99 Steam', NULL, NULL, 'Name Entry', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'WaveRunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Optical Media International' COLLATE NOCASE AND p.name = 'Universe of Sounds Vol. 3' COLLATE NOCASE),
   'Electr.Lead', NULL, NULL, NULL, NULL, 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'WaveRunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'RSB-501' COLLATE NOCASE),
   'Disk 6 -> ELECTRIC BASS', 'P2: Slap Bass2', NULL, NULL, NULL, 'main', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'WaveRunner'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-A', '125 Power Trip', NULL, NULL, NULL, 'main', 'newer_vgm', 8),

  -- G17: Vatlva — 2 stuff
  ((SELECT id FROM games WHERE title = 'Vatlva'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'SEGA' COLLATE NOCASE AND p.name = 'Contents Library Vol. 1' COLLATE NOCASE),
   'CD 7', NULL, NULL, NULL, 'SFX (N/A)', 'stuff_to_find', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Vatlva'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'SEGA' COLLATE NOCASE AND p.name = 'Contents Library Vol. 1' COLLATE NOCASE),
   'CD 8', NULL, NULL, NULL, 'SFX (N/A)', 'stuff_to_find', 'newer_vgm', 2),

  -- G18: Motor Raid — 1 main
  ((SELECT id FROM games WHERE title = 'Motor Raid'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'E-MU Systems' COLLATE NOCASE AND p.name = 'Orbit' COLLATE NOCASE),
   'Bank 0', '051 syn:1KeyRush', NULL, NULL, 'Fearless Riders (Advertise), Chase the Riders (Tutorial)', 'main', 'newer_vgm', 1),

  -- G19: Sega Bass Fishing — 6 main
  ((SELECT id FROM games WHERE title = 'Sega Bass Fishing'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Jam Box' COLLATE NOCASE),
   'Track 70', 'Timestamp 0:20', '"Yeah!"', NULL, 'Feel The Heat', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Sega Bass Fishing'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Jam Box' COLLATE NOCASE),
   'Track 71', 'Timestamp 0:05', '"Yeah!"', NULL, 'Feel The Heat', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Sega Bass Fishing'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Jam Box' COLLATE NOCASE),
   'Track 72', 'Timestamp 0:44', '"Iiiiii"', NULL, 'Feel The Heat', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Sega Bass Fishing'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Jam Box' COLLATE NOCASE),
   'Track 72', 'Timestamp 0:53', '"Feel the heat!"', NULL, 'Feel The Heat', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Sega Bass Fishing'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Jam Box' COLLATE NOCASE),
   'Track 73', 'Timestamp 0:14', '"Owwwww!"', NULL, 'Feel The Heat', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Sega Bass Fishing'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Jam Box' COLLATE NOCASE),
   'Track 73', 'Timestamp 0:30', '"Woho-wohohoooo!"', NULL, 'Feel The Heat', 'main', 'newer_vgm', 6),

  -- G20: Burning Rangers — 9 main + 3 stuff = 12
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = '01/W' COLLATE NOCASE),
   'PROG', 'A02 OrchBrass', NULL, NULL, 'Rising Pressure', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = '01/W' COLLATE NOCASE),
   'PROG', 'A29 Dance Kit', NULL, NULL, 'Rising Pressure, Anemoth', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = '01/W' COLLATE NOCASE),
   'PROG', 'B39 Timpani', NULL, NULL, 'Heartbreaking Encounter, Anemoth', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JD-800' COLLATE NOCASE),
   NULL, 'I-35: Throaty Clav', NULL, NULL, 'Request for an Immediate Rescue', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JD-800' COLLATE NOCASE),
   NULL, 'I-53: Ac Piano 1', NULL, NULL, 'Rising Pressure, Anemoth', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-80' COLLATE NOCASE),
   'Preset A', 'A56 Velo Harmnix', NULL, NULL, 'Welcome Back!', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-80' COLLATE NOCASE),
   'Preset B', 'B13 Harp', NULL, NULL, 'Request for an Immediate Rescue, Burning Hearts ~Short Track~', 'main', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 2' COLLATE NOCASE),
   'Track 84', 'Timestamp 0:06', '"Let''s go!"', NULL, 'We Are Burning Rangers', 'main', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 2' COLLATE NOCASE),
   'Track 88', 'Timestamp 0:26', '"Get up!"', NULL, 'We Are Burning Rangers', 'main', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   NULL, NULL, NULL, 'Flute arp', 'E-MU Systems - ?', 'Heartbreaking Encounter', 'stuff_to_find', 'newer_vgm', 10),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   NULL, NULL, NULL, 'Power snare', 'E-MU Systems - ?', 'Rising Pressure', 'stuff_to_find', 'newer_vgm', 11),
  ((SELECT id FROM games WHERE title = 'Burning Rangers'),
   NULL, NULL, NULL, 'Drumloop', 'Zero-G - ?', 'Heartbreaking Encounter', 'stuff_to_find', 'newer_vgm', 12),

  -- G21: Zombie Revenge — 5 main + 1 stuff = 6
  ((SELECT id FROM games WHERE title = 'Zombie Revenge'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Classical Choir' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, NULL, 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Zombie Revenge'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE),
   'Native Map', '061 024 F.Horn Rip', NULL, NULL, 'Silver Prison', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Zombie Revenge'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-02 Orchestral' COLLATE NOCASE),
   'XP-X', '024 Agitato Vcs1', NULL, NULL, 'Silver Prison', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Zombie Revenge'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'Hollywood Series 4000' COLLATE NOCASE),
   '4003-91-01', 'HORROR, STINGER', 'MUSICAL HORROR STINGER 01', NULL, 'Silver Prison', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Zombie Revenge'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'Hollywood Series 4000' COLLATE NOCASE),
   '4003-91-02', 'HORROR, STINGER', 'MUSICAL HORROR STINGER 02', NULL, 'Silver Prison', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Zombie Revenge'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'e-LAB' COLLATE NOCASE AND p.name = 'Xtortion' COLLATE NOCASE),
   NULL, NULL, NULL, NULL, '-Used throughout the soundtrack-', 'stuff_to_find', 'newer_vgm', 6),

  -- G22: Hip Jog Jog (SEGA Toys) — 7 main
  ((SELECT id FROM games WHERE title = 'Hip Jog Jog (SEGA Toys)'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Sound Cube' COLLATE NOCASE),
   'CD 3 -> ROBOTS', 'VERSUCH', NULL, NULL, 'Lv. 4 Club ROBO', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Hip Jog Jog (SEGA Toys)'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Sound Cube' COLLATE NOCASE),
   'CD 3 -> VOX_D_I', 'DANCE_2', NULL, NULL, 'Lv. 2 Club WAVE, Lv. 4 Club ROBO', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Hip Jog Jog (SEGA Toys)'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Sound Cube' COLLATE NOCASE),
   'CD 3 -> VOX_S_Z', 'YEAH', NULL, NULL, 'Lv. 1 Club Jam', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Hip Jog Jog (SEGA Toys)'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'e-LAB' COLLATE NOCASE AND p.name = 'The X-Static Sample Disc' COLLATE NOCASE),
   'Track 13 -> TS 0:24', 'SAMPLES FROM X2', 'Bass', NULL, 'Lv. 1 Club Jam, Ending', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Hip Jog Jog (SEGA Toys)'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'Climax-Collection Vol. 1 - Vocals' COLLATE NOCASE),
   'Track 25 - Michael Flexig -> TS 0:00', 'Ah', NULL, NULL, 'Lv. 2 Club WAVE', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Hip Jog Jog (SEGA Toys)'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'RAPsody' COLLATE NOCASE),
   'Track 27 - Heey Hoo AD -> TS 0:38', 'Come on, let go ...', NULL, NULL, 'Lv. 1 Club Jam', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Hip Jog Jog (SEGA Toys)'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Masterbits' COLLATE NOCASE AND p.name = 'RAPsody' COLLATE NOCASE),
   'Track 32 - Male Adlib 1 -> TS 0:00', 'Check the beat!', NULL, NULL, '-Used throughout the soundtrack-', 'main', 'newer_vgm', 7),

  -- G23: Atsumare! Guru Guru Onsen — 4 main + 3 stuff = 7
  ((SELECT id FROM games WHERE title = 'Atsumare! Guru Guru Onsen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Sound Cube' COLLATE NOCASE),
   'CD 3 -> VOX_D_I', 'HY', 'Raised 2 semitones', NULL, 'Theme of Girl', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Atsumare! Guru Guru Onsen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Sound Cube' COLLATE NOCASE),
   'CD 3 -> VOX_J_R', 'OH_2', 'Raised 2 semitones', NULL, 'Theme of Girl', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Atsumare! Guru Guru Onsen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 2' COLLATE NOCASE),
   'Track 08 - Breakbeat Live -> TS 0:38', '2 Bars', 'Detuned', NULL, 'Theme of Girl', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Atsumare! Guru Guru Onsen'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Datafile 2' COLLATE NOCASE),
   'Track 90 - Speech (Male) -> TS 0:13', '"Everybody reach, reach to the top..."', NULL, NULL, 'Theme of J.J.', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Atsumare! Guru Guru Onsen'),
   NULL, NULL, NULL, 'Ethnic Kit', 'Roland - ?', 'Various', 'stuff_to_find', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Atsumare! Guru Guru Onsen'),
   NULL, NULL, NULL, 'Funky Guitar Riffs', NULL, 'Theme of J.J.', 'stuff_to_find', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Atsumare! Guru Guru Onsen'),
   NULL, NULL, NULL, 'Vocal', NULL, 'Theme of Nakai-san', 'stuff_to_find', 'newer_vgm', 7),

  -- G24: Toy Fighter — 7 main + 4 stuff = 11
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AMG' COLLATE NOCASE AND p.name = 'Terminalhead - Underfire Vol. 1' COLLATE NOCASE),
   'Track 11 - Funky Crunch Gate Corner(M/S)', 'Sample 2', NULL, NULL, 'Stage 7 (Toy King)', 'main', 'newer_vgm', 1),
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sounds Good' COLLATE NOCASE AND p.name = 'Methods of Mayhem' COLLATE NOCASE),
   'Track 02 - Analoops 1 -> Sample 5', 'ANALOOP 03 140 E S', NULL, NULL, 'Stage 1', 'main', 'newer_vgm', 2),
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sounds Good' COLLATE NOCASE AND p.name = 'Methods of Mayhem' COLLATE NOCASE),
   'Track 48 - Gain Control 1 -> Sample 3', 'FEEDBACK 03 S', NULL, NULL, 'Stage 1', 'main', 'newer_vgm', 3),
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Chemical Beats' COLLATE NOCASE),
   'Track 23 -> Sample 3', NULL, NULL, NULL, 'Results', 'main', 'newer_vgm', 4),
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Chemical Beats' COLLATE NOCASE),
   'Track 28 -> Sample 2', NULL, NULL, NULL, 'Stage 1', 'main', 'newer_vgm', 5),
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Chemical Beats' COLLATE NOCASE),
   'Track 28 -> Sample 3', NULL, NULL, NULL, 'Stage 1', 'main', 'newer_vgm', 6),
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Chemical Beats' COLLATE NOCASE),
   'Track 31 -> Sample 3', NULL, NULL, NULL, 'Results', 'main', 'newer_vgm', 7),
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Sound Cube' COLLATE NOCASE),
   'CD 2 ', NULL, NULL, NULL, 'Track 01', 'stuff_to_find', 'newer_vgm', 8),
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Chemical Beats' COLLATE NOCASE),
   NULL, NULL, 'Drum Loops', NULL, 'Stage 6', 'stuff_to_find', 'newer_vgm', 9),
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Chemical Beats' COLLATE NOCASE),
   NULL, NULL, 'FX Loops', NULL, 'Track 02', 'stuff_to_find', 'newer_vgm', 10),
  ((SELECT id FROM games WHERE title = 'Toy Fighter'),
   NULL, NULL, NULL, 'Banjo Phrases', '? (Sounds Good Product) - ?', 'Stage 2', 'stuff_to_find', 'newer_vgm', 11);
