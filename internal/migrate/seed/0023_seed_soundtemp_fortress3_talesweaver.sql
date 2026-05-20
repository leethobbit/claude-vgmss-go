-- Source: reference/SoundTeMP Sound Sources & Information Compendium (WIP) - Sound Sources.csv rows 118-229
-- Two games:
--   Fortress 3 Paewang (2002) - SoundTeMP, Jinbae Park, Dong-Il Kwak, Seock-Jin Lee (rows 118-126)
--   Talesweaver        (2003) - Jinbae Park, Goomin Nam, Jee-Hoon Park, Sungwoon Jang, Chan-Suk Kim, Ga-Hae Kim (rows 127-229)
-- Platform not specified for either game. All usages map to category='main' (no subsection headers in this range).
-- source_family = 'soundtemp'. demo_url = NULL throughout (CSV is 6-col, no Demo column).

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Access'),
  ('Best Service'),
  ('Big Fish Audio'),
  ('EastWest'),
  ('Ensoniq'),
  ('Hollywood Edge'),
  ('ILIO'),
  ('KORG'),
  ('Native Instruments'),
  ('Nightingale Music'),
  ('Roland'),
  ('Spectrasonics'),
  ('Steinberg'),
  ('UVI'),
  ('Ueberschall'),
  ('UltimateSoundBank'),
  ('Yamaha'),
  ('Zero-G'),
  ('Unknown');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Access'             COLLATE NOCASE), 'Virus Indigo',                              'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Voice Spectral',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Brass Super Section',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'World Colours',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Big Fish Audio'     COLLATE NOCASE), 'Kitch 70''s',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Ra',                                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Stormdrum',                                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Symphonic Orchestra',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'            COLLATE NOCASE), 'MR-Rack',                                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Ensoniq'            COLLATE NOCASE), 'EXP-3 Urban Dance Project',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Hollywood Edge'     COLLATE NOCASE), 'Premiere Edition Vol. 1',                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Hollywood Edge'     COLLATE NOCASE), 'Premiere Edition Vol. 4',                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'ILIO'               COLLATE NOCASE), 'Classical Wild Takes',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'ILIO'               COLLATE NOCASE), 'Stark Raving Beats',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'ILIO'               COLLATE NOCASE), 'World Winds',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), '01/W',                                      'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), 'TRITON-RACK',                               'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), 'TR-Rack',                                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), 'EXB-PCM04 Dance Extreme',                   'Expansion'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'               COLLATE NOCASE), 'EXB-PCM06 Orchestral Collection',           'Expansion'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'FM7',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Nightingale Music'  COLLATE NOCASE), 'The Premier Collection Vol. 2',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'Fantom X7',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'JV-2080',                                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'XV-3080',                                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'XV-5080',                                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SC-8820',                                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SR-JV80-06 Dance',                          'Expansion'),
  ((SELECT id FROM manufacturers WHERE name = 'Roland'             COLLATE NOCASE), 'SR-JV80-16 Orchestral II',                  'Expansion'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Metamorphosis',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Liquid Grooves',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Distorted Reality II',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Heart of Asia',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Omnisphere',                                'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Stylus',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Stylus RMX',                                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Vocal Planet',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'          COLLATE NOCASE), 'Virtual Guitarist',                         'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                COLLATE NOCASE), 'Plugsound Volume 2 (Fretted Instruments)',  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'        COLLATE NOCASE), 'Brazil Electro',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Ueberschall'        COLLATE NOCASE), 'Disco Deluxe',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UltimateSoundBank'  COLLATE NOCASE), 'Soundscan 19: Hip Hop R''n B',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'MOTIF 6',                                   'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'MOTIF-RACK',                                'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'MOTIF XF8',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'MOTIF XS8',                                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'             COLLATE NOCASE), 'Monster Beats',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'            COLLATE NOCASE), 'Unknown',                                   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Fortress 3 Paewang',
   NULL,
   '2002',
   'SoundTeMP, Jinbae Park, Dong-Il Kwak, Seock-Jin Lee',
   'soundtemp, jinbae park, dong-il kwak, seock-jin lee',
   NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Talesweaver',
   NULL,
   '2003',
   'Jinbae Park, Goomin Nam, Jee-Hoon Park, Sungwoon Jang, Chan-Suk Kim, Ga-Hae Kim',
   'jinbae park, goomin nam, jee-hoon park, sungwoon jang, chan-suk kim, ga-hae kim',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Fortress 3 Paewang (rows 119-126)
  ((SELECT id FROM games WHERE title = 'Fortress 3 Paewang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Voice Spectral' COLLATE NOCASE),
   NULL, 'Track 86', 'Timestamp: 0:15.3', 'Gowon (The Sky)',
   'main', 'soundtemp', 1),

  ((SELECT id FROM games WHERE title = 'Fortress 3 Paewang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'ROM004', '097 Atomic Lead', NULL, 'Chat Guild',
   'main', 'soundtemp', 2),

  ((SELECT id FROM games WHERE title = 'Fortress 3 Paewang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = '01/W' COLLATE NOCASE),
   'PROG', 'A63 Tin Flute', NULL, 'Lake',
   'main', 'soundtemp', 3),

  ((SELECT id FROM games WHERE title = 'Fortress 3 Paewang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-A', '015 Monkey Skulls', NULL, 'Underthsea',
   'main', 'soundtemp', 4),

  ((SELECT id FROM games WHERE title = 'Fortress 3 Paewang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-A', '031 VS Bell Boy', 'Some altered parameters, TR-RACK?', 'Wait Guild',
   'main', 'soundtemp', 5),

  ((SELECT id FROM games WHERE title = 'Fortress 3 Paewang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-B', '045 Gliding Squares', NULL, 'Sever, Wait Exam',
   'main', 'soundtemp', 6),

  ((SELECT id FROM games WHERE title = 'Fortress 3 Paewang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 53-70 LOOPS', 'SONAR', NULL, 'Lake',
   'main', 'soundtemp', 7),

  ((SELECT id FROM games WHERE title = 'Fortress 3 Paewang'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'GM', 'G12 Koto', NULL, 'Temple',
   'main', 'soundtemp', 8),

  -- Talesweaver (rows 128-229)
  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Access' COLLATE NOCASE AND p.name = 'Virus Indigo' COLLATE NOCASE),
   NULL, 'C49 HongKongBC', NULL, 'Four Thousand Years',
   'main', 'soundtemp', 1),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Access' COLLATE NOCASE AND p.name = 'Virus Indigo' COLLATE NOCASE),
   NULL, '101 Bass', NULL, 'Four Thousand Years, Fortune Message',
   'main', 'soundtemp', 2),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Brass Super Section' COLLATE NOCASE),
   'Partition E -> TRPHARMUTE44', 'TRP HARMUTE', NULL, 'Magnolia',
   'main', 'soundtemp', 3),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Brass Super Section' COLLATE NOCASE),
   'Partition G -> BARITONSAX', 'SAXOVERBLOWN', NULL, 'Magnolia',
   'main', 'soundtemp', 4),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Voice Spectral' COLLATE NOCASE),
   NULL, 'Track 8', 'Timestamp 0:00', 'jungle jungle',
   'main', 'soundtemp', 5),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'World Colours' COLLATE NOCASE),
   'Partition F -> FLUTE GROOVE', 'FLUTE GROOVE', 'FLUTEGRV06', 'jungle jungle',
   'main', 'soundtemp', 6),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'World Colours' COLLATE NOCASE),
   'Partition F -> FLUTE+VOCAL', 'FLUTE+VOCAL', 'FLU.+VOC01', 'jungle jungle',
   'main', 'soundtemp', 7),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'World Colours' COLLATE NOCASE),
   'Partition F -> SNG+PRAYER 1', 'SNG+PRAYER 1', 'SING+PRAY1', 'jungle jungle',
   'main', 'soundtemp', 8),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Big Fish Audio' COLLATE NOCASE AND p.name = 'Kitch 70''s' COLLATE NOCASE),
   'Partition B -> 08-94.5LP #2', '94.5-02LOOPS', 'Waveform: SHAKE IT', 'Fight Master',
   'main', 'soundtemp', 9),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Wind -> Pan Flute', 'Pan Flute KS C0-D#0', NULL, 'And Don''t forget',
   'main', 'soundtemp', 10),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Stormdrum' COLLATE NOCASE),
   'Large Percussion', 'Big Hits', 'A5', 'Tower',
   'main', 'soundtemp', 11),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', NULL, 'Your Mejesty',
   'main', 'soundtemp', 12),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'EXP-3 Urban Dance Project' COLLATE NOCASE),
   'EXP030', '066 Inharmonica', NULL, 'The Takes (ESTi''s Fairytale remix), Steppers on line',
   'main', 'soundtemp', 13),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ensoniq' COLLATE NOCASE AND p.name = 'MR-Rack' COLLATE NOCASE),
   'RAM001', '049 MR Coffee', 'Seems to be modified?', 'The Takes (ESTi''s Fairytale remix)',
   'main', 'soundtemp', 14),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-01 Nature Ambiences', 'ForestAmbienceMix PE010201', NULL, 'Till the End of Infinity',
   'main', 'soundtemp', 15),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-04 Water', 'DripsSlowSmallWate PE040201', 'Probably some other clip from HEPE', '무(無)',
   'main', 'soundtemp', 16),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-17 Telephones, Cameras, Clocks', 'FutzedthroughLineB PE172001', 'Chopped', 'Reminiscence [radiomorphose edit]',
   'main', 'soundtemp', 17),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-17 Telephones, Cameras, Clocks', 'FutzedPhoneOffHook PE172601', NULL, 'What Exists In Order to Forget the Dreams of Yesterday',
   'main', 'soundtemp', 18),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-17 Telephones, Cameras, Clocks', 'FutzedOperatorMess PE173001', NULL, 'Reminiscence [radiomorphose edit]',
   'main', 'soundtemp', 19),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-17 Telephones, Cameras, Clocks', '35mmStillCameraSho PE179001', 'More camera sfx are used throughout', 'What Exists In Order to Forget the Dreams of Yesterday',
   'main', 'soundtemp', 20),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 1' COLLATE NOCASE),
   'PE-20 Electronic, Sci-Fi', 'SynthRadio1Oscilla PE202001', 'Edited in some fashion to extend it', 'Reminiscence [radiomorphose edit]',
   'main', 'soundtemp', 21),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Hollywood Edge' COLLATE NOCASE AND p.name = 'Premiere Edition Vol. 4' COLLATE NOCASE),
   'PE-50 Designed Events', 'PickupPhoneFrom PE504101', 'Chopped', 'What Exists In Order to Forget the Dreams of Yesterday',
   'main', 'soundtemp', 22),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ILIO' COLLATE NOCASE AND p.name = 'Classical Wild Takes' COLLATE NOCASE),
   'Partition A -> VOLUME 004', 'WILD TAKE 80', 'Could be Hollywood Edge''s release?', 'Christmas in the 13th Month',
   'main', 'soundtemp', 23),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ILIO' COLLATE NOCASE AND p.name = 'Stark Raving Beats' COLLATE NOCASE),
   'EXP Libraries > Stark Raving Beats', '150-All That Perc Loop', NULL, 'Tower',
   'main', 'soundtemp', 24),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ILIO' COLLATE NOCASE AND p.name = 'Stark Raving Beats' COLLATE NOCASE),
   'EXP Libraries > Stark Raving Beats', '150-All That Full Mix', NULL, 'Tower',
   'main', 'soundtemp', 25),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ILIO' COLLATE NOCASE AND p.name = 'World Winds' COLLATE NOCASE),
   'Partition A -> BANSURI', 'BANSUR.MENU1', NULL, 'Shadow Claws',
   'main', 'soundtemp', 26),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TR-Rack' COLLATE NOCASE),
   'Prog > A', 'A101 Finger Cymbal', NULL, '古代文明の扉',
   'main', 'soundtemp', 27),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-A', '065 90''s Piano', NULL, 'delight',
   'main', 'soundtemp', 28),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-A', '079 Ensemble Bell', NULL, 'So Cool, One Day, Dark Knight, Get Over',
   'main', 'soundtemp', 29),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-B', '017 Dyno Tine EP', NULL, 'Brand new spring is coming',
   'main', 'soundtemp', 30),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-B', '060 Musette', NULL, 'Steppers on line',
   'main', 'soundtemp', 31),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   'Programs -> INT-C', '028 A Leadlead', NULL, 'Aqua Pura',
   'main', 'soundtemp', 32),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRITON-RACK' COLLATE NOCASE),
   NULL, NULL, 'Triton combi strings, not sure which', 'La redoute',
   'main', 'soundtemp', 33),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'EXB-PCM04 Dance Extreme' COLLATE NOCASE),
   NULL, '005 Gospel Voice Set', NULL, 'The Place Forbidden to Visit by Adults',
   'main', 'soundtemp', 34),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'EXB-PCM06 Orchestral Collection' COLLATE NOCASE),
   NULL, '001 Maestro Strings', NULL, 'Life in Keltica',
   'main', 'soundtemp', 35),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM7' COLLATE NOCASE),
   NULL, NULL, '"Stringbell" pathing will come soon', 'The Takes (ESTi''s Fairytale remix), Four Thousand Years, F.M.7, EarCatcher - Wishing',
   'main', 'soundtemp', 36),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Nightingale Music' COLLATE NOCASE AND p.name = 'The Premier Collection Vol. 2' COLLATE NOCASE),
   NULL, 'Track 50', 'Timestamp: 0:00', 'Fight Master',
   'main', 'soundtemp', 37),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'Fantom X7' COLLATE NOCASE),
   NULL, NULL, 'Used by D.A. Undocumented usage.', NULL,
   'main', 'soundtemp', 38),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-A', '099 Steel Drums', NULL, 'autumn leaves',
   'main', 'soundtemp', 39),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-A', '108 Nylon Gtr', NULL, 'Daybreak, Song of Beach',
   'main', 'soundtemp', 40),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-B', '014 Nylon Bass', NULL, 'The Place Forbidden to Visit by Adults',
   'main', 'soundtemp', 41),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-B', '119 Harmonica', NULL, 'Steppers on line',
   'main', 'soundtemp', 42),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-C', '050 Harp', NULL, 'Aquabelle',
   'main', 'soundtemp', 43),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'JV-2080' COLLATE NOCASE),
   'PR-D', '019 HolidayCheer', NULL, 'Ice candy tree',
   'main', 'soundtemp', 44),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'XV-3080' COLLATE NOCASE),
   'PR-F', '033 XV SteelGt 1', NULL, 'Past',
   'main', 'soundtemp', 45),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'XV-3080' COLLATE NOCASE),
   'PR-F', '081 The Ganges', NULL, 'City of Trade',
   'main', 'soundtemp', 46),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'XV-5080' COLLATE NOCASE),
   'PR-F', '037 Folk Guitar', NULL, 'Four Thousand Years',
   'main', 'soundtemp', 47),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SC-8820' COLLATE NOCASE),
   'SC-8820 Map', '024 019 Rotary Org.F', NULL, 'yeah!',
   'main', 'soundtemp', 48),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SC-8820' COLLATE NOCASE),
   'SC-8820 Map', '000 037 Slap Bass 1', NULL, 'Magnolia',
   'main', 'soundtemp', 49),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '139 Loopbits x2', NULL, 'Make A Break To This',
   'main', 'soundtemp', 50),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '140 Slide Fx x2', NULL, 'A Cloudy World, Take A Step Forward',
   'main', 'soundtemp', 51),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '141 Spooky', NULL, 'Orange Garage',
   'main', 'soundtemp', 52),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-06 Dance' COLLATE NOCASE),
   NULL, '0216 Rewind', 'Waveform', 'The Takes (ESTi''s Fairytale remix)',
   'main', 'soundtemp', 53),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Roland' COLLATE NOCASE AND p.name = 'SR-JV80-16 Orchestral II' COLLATE NOCASE),
   NULL, NULL, 'Harp patch', 'A Tiny Chest Which Cannot Be Opened',
   'main', 'soundtemp', 54),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Liquid Grooves' COLLATE NOCASE),
   'Disc 1 -> Partition G -> 94 SOUL BOB', 'SLB LO-FIDRM', 'Has a chance of being Stylus RMX LG', 'Reminiscence',
   'main', 'soundtemp', 55),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Distorted Reality II' COLLATE NOCASE),
   'Partition A -> 02 70-79 BPM', 'BLASTCAPS 73', NULL, 'dark',
   'main', 'soundtemp', 56),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Distorted Reality II' COLLATE NOCASE),
   'Partition B -> 01 110-119 BPM', 'SPACEPHUNK', NULL, 'Take a step forward',
   'main', 'soundtemp', 57),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   'Disc 1 -> Partition B -> BAN-DI FLUTE', 'BAN-DI -V', NULL, 'Till the End of Infinity, Four Thousand Years, Walking on your own, jungle jungle, Tomb of Honor',
   'main', 'soundtemp', 58),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Heart of Asia' COLLATE NOCASE),
   'Disc 1 -> Partition B -> BAN-DI FLUTE', NULL, 'Check later', 'Bambooming',
   'main', 'soundtemp', 59),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 53-70 LOOPS', 'SONAR', 'Effects applied', 'keep yourself',
   'main', 'soundtemp', 60),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 53-70 LOOPS', 'MOHAVE B', NULL, 'Feliz Navidad',
   'main', 'soundtemp', 61),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis' COLLATE NOCASE),
   'Disc 1 -> Partition A -> 53-70 LOOPS', 'MOHAVE C', NULL, 'The Good Old Days',
   'main', 'soundtemp', 62),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Chime City', 'Could be Atmosphere itself', 'Philaion',
   'main', 'soundtemp', 63),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus' COLLATE NOCASE),
   NULL, '55-Phew and Phar d', NULL, 'Hotel Inside',
   'main', 'soundtemp', 64),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Bonus Spectrasonics -> Distorted Reality 090-127', '92-Ring Hop', 'Probably AKAI, path will come later', 'just climbing',
   'main', 'soundtemp', 65),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Sound Menus -> Cinematic', 'MENU - Ambient Metals', 'G4', 'Gate to an Ancient Civilization',
   'main', 'soundtemp', 66),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '51-Scuba Duba Hi-fi', NULL, 'Sea star',
   'main', 'soundtemp', 67),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '52-Alice''s Dream', NULL, 'East Green wind',
   'main', 'soundtemp', 68),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '60-Volcano Combo', NULL, 'Aqua Pura',
   'main', 'soundtemp', 69),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 70-Datalife', '70-Datalife Vibro', NULL, 'Defeat',
   'main', 'soundtemp', 70),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', NULL, NULL, 'abandoned..',
   'main', 'soundtemp', 71),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '72-Half Moon No Kick a', NULL, 'Shadow Claws',
   'main', 'soundtemp', 72),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves ->  97-Wax Wash', '97-Wax Wash Vinyl Perc', NULL, 'Life in Keltika',
   'main', 'soundtemp', 73),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '105-Perilous Vocal Slider', NULL, 'mondo E-house',
   'main', 'soundtemp', 74),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '160-Spheres DnB', 'Custom loop', '출발자(出發子)',
   'main', 'soundtemp', 75),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '160-The Call', 'Custom loop', 'Final Killer',
   'main', 'soundtemp', 76),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves', '174-World Hunt', 'Custom loop', 'Lucky Guy',
   'main', 'soundtemp', 77),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Vocal Planet' COLLATE NOCASE),
   'Disc 3 -> Partition B -> 2 DOOEEOT', 'DOOEEOT B', 'Stretched/chopped to match rhythm', 'Walking on your own',
   'main', 'soundtemp', 78),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Vocal Planet' COLLATE NOCASE),
   'Disc 3 -> Partition H -> 2 VOCAL WIND', 'A TO O SWEEP', NULL, 'Hotel Inside',
   'main', 'soundtemp', 79),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Vocal Planet' COLLATE NOCASE),
   'Disc 3 -> Partition H -> 2 VOCAL WIND', 'O-NOISE BED', NULL, 'Hotel Inside',
   'main', 'soundtemp', 80),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Vocal Planet' COLLATE NOCASE),
   'Disc 4 -> Partition H -> 1 COUNTING', 'EH COUNTING', 'E5, F5, F#5, G5 (one, two, three, four)', 'Park''s Life(Paku''s ver.)',
   'main', 'soundtemp', 81),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Virtual Guitarist' COLLATE NOCASE),
   'Virtual Electric Guitar -> Wah Wah', '8. Pedal 2', NULL, 'Orange Garage',
   'main', 'soundtemp', 82),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'Plugsound Volume 2 (Fretted Instruments)' COLLATE NOCASE),
   NULL, '018 Spanish Guitar -Full', NULL, 'Aquabelle',
   'main', 'soundtemp', 83),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Brazil Electro' COLLATE NOCASE),
   NULL, 'Fx-#448', NULL, 'Tropical Tripper',
   'main', 'soundtemp', 84),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Ueberschall' COLLATE NOCASE AND p.name = 'Disco Deluxe' COLLATE NOCASE),
   NULL, 'str120strings_classic', 'Tune 200 cents up. Low-end EQ?', 'Sentence',
   'main', 'soundtemp', 85),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UltimateSoundBank' COLLATE NOCASE AND p.name = 'Soundscan 19: Hip Hop R''n B' COLLATE NOCASE),
   'Partition A -> 06-2TIMBA 98', '2TI98PHFXLP', NULL, 'Hotel Inside',
   'main', 'soundtemp', 86),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UltimateSoundBank' COLLATE NOCASE AND p.name = 'Soundscan 19: Hip Hop R''n B' COLLATE NOCASE),
   'Partition A -> 06-2TIMBA 98', '2TI98PERLP', NULL, 'Hotel Inside',
   'main', 'soundtemp', 87),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', 'A01 PowerGrand', NULL, 'MOTIVITY',
   'main', 'soundtemp', 88),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', 'A03 Dark Grand', NULL, 'Aquabelle',
   'main', 'soundtemp', 89),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', 'A07 BalladKeys', NULL, 'Second Run',
   'main', 'soundtemp', 90),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', 'B06 Early 70''s', NULL, 'Not Ended Fantasy',
   'main', 'soundtemp', 91),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE1', 'G15 MetalMute', NULL, 'dis-apparition',
   'main', 'soundtemp', 92),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'D06 SweetFlute', NULL, 'MOTIVITY, Song of Beach, Feliz Navidad',
   'main', 'soundtemp', 93),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'PRE2', 'F15 Tamburax', NULL, 'Hotel Inside',
   'main', 'soundtemp', 94),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF 6' COLLATE NOCASE),
   'GM', 'F01 Square Ld', 'Mute 2nd voicing. Increase attack ms?', 'dis-apparition',
   'main', 'soundtemp', 95),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF-RACK' COLLATE NOCASE),
   'PRE5', '071 RezSinePad', 'Confirms rack usage', 'Hotel Inside',
   'main', 'soundtemp', 96),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF-RACK' COLLATE NOCASE),
   'GM', NULL, 'Accordion', 'And,Don''t Forget',
   'main', 'soundtemp', 97),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF XF8' COLLATE NOCASE),
   NULL, NULL, 'Used by D.A. Undocumented usage.', NULL,
   'main', 'soundtemp', 98),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'MOTIF XS8' COLLATE NOCASE),
   NULL, NULL, 'Used by D.A. Undocumented usage.', NULL,
   'main', 'soundtemp', 99),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Monster Beats' COLLATE NOCASE),
   'Beat Loops', 'Book em a 155 4', NULL, 'Final Killer',
   'main', 'soundtemp', 100),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Monster Beats' COLLATE NOCASE),
   'Beat Loops', 'Book em b 155 8', 'Fx variants might be used as well', 'Final Killer',
   'main', 'soundtemp', 101),

  ((SELECT id FROM games WHERE title = 'Talesweaver'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Monster Beats' COLLATE NOCASE),
   'Beat Loops', 'Book em c 155 4', NULL, 'Final Killer',
   'main', 'soundtemp', 102);
