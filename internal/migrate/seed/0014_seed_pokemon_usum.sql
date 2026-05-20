-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 2550-2822
-- Pokémon Ultra Sun and Pokémon Ultra Moon (Nintendo 3DS, November 17, 2017).
-- Composers: Minako Adachi, Go Ichinose, Junichi Masuda, Tomoaki Oga.
-- Subsection headers in source:
--   row 2550 (game header)
--   rows 2551-2552 (Live Recording rows: Kunie Ito et al. Vocals; Yui & Momoko Arai String Ensemble)
--   row 2553 (Sample: GAME FREAK -> Pokémon Ultra Sun and Ultra Moon)
--   rows 2554-2776 (commercial products, no explicit Streamed/Sequenced labels in source)
--   row 2777 (Stuff to Find)
--   rows 2778-2820 (Stuff to Find entries, incl. row 2820 satirical "Pokemon Company" protest entry preserved verbatim)
--   row 2821 (Early Music (Teraleak / Freakleak - USUM Debug Build))
--   row 2822 (single Early Music entry)
-- Category mapping per task spec:
--   Live recordings + Sample + commercial product rows -> main
--   Stuff to Find rows -> stuff_to_find
--   Early Music (Teraleak) row -> unused
-- NOTE: USUM section in source ends at row 2822. Rows 2823-2880 belong to
-- "Pokémon Let's Go, Pikachu! / Eevee!" (a separate game) and are NOT included
-- in this seed. The task's stated range 2550-2880 conflates two games; this
-- file covers only USUM. Surface this so the Let's Go data is not lost.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Arturia'),
  ('Audiobro'),
  ('Heavyocity'),
  ('Scarbee'),
  ('Sonic Foundry'),
  ('Vengeance Sound'),
  ('Vir2'),
  ('Xfer Records'),
  ('8dio'),
  ('ProjectSAM'),
  ('Pokemon Company');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Arturia'                     COLLATE NOCASE), 'ARP2600 V2',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Audiobro'                    COLLATE NOCASE), 'LA Scoring Strings',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'Ethno World 5 Instruments',                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'Ethno World Instruments',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'Forest Kingdom',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 11 - Classic Orchestra',      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 13 - Choirs',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'Red Box Vol. 4 (Special and Unusual)',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'Sound Spectral',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'              COLLATE NOCASE), 'Sound Effects CD Series 1 - LIFE',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Goliath',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Hollywood Brass',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Hollywood Orchestral Woodwinds',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Ra',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Symphonic Adventures',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Symphonic Choirs',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Symphonic Orchestra',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'eLAB'                        COLLATE NOCASE), 'Xtortion',                                    'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'                  COLLATE NOCASE), 'Damage',                                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'                  COLLATE NOCASE), 'Evolve R2',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                        COLLATE NOCASE), 'Mono/Poly Legacy Collection',                 'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'KORG'                        COLLATE NOCASE), 'MS-20 Legacy Collection',                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools'        COLLATE NOCASE), 'Independence Pro',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'MOTU'                        COLLATE NOCASE), 'MachFive 3',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                    COLLATE NOCASE), 'RealGuitar',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'MusicLab'                    COLLATE NOCASE), 'RealStrat',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Absynth',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Action Strikes',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Battery 3',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Battery 4',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'FM8',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Kinetic Metal',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Kontakt Factory Library',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Maschine Drum Selection',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Massive',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Rise & Hit',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Spotlight Collection: Balinese Gamelan',      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Spotlight Collection: West Africa',           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Studio Drummer',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Pokemon Company'             COLLATE NOCASE), 'Super Music Collection',                      NULL),
  ((SELECT id FROM manufacturers WHERE name = 'ProjectSAM'                  COLLATE NOCASE), 'True Strike 1',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                     COLLATE NOCASE), 'Pre-Bass',                                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Scarbee'                     COLLATE NOCASE), 'Rickenbacker Bass',                           'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Sonic Foundry'               COLLATE NOCASE), 'George Pendergast: Essential Percussion',     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sound Ideas'                 COLLATE NOCASE), 'The General Series 6000',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Omnisphere',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Stylus RMX',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Trilian',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'Groove Agent SE',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'HALion Sonic',                                'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'HALion Sonic SE',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'Retrologue',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (Loops)',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vengeance Sound'             COLLATE NOCASE), 'Effects Vol. 1',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vienna Symphonic Library'    COLLATE NOCASE), 'Special Edition Vol. 1',                      'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Vir2'                        COLLATE NOCASE), 'Electri6ity',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Xfer Records'                COLLATE NOCASE), 'Serum',                                       'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                   COLLATE NOCASE), 'Addictive Drums',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Escape from the Planet of the Breaks',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'N.Y. CUTZ vol. 2 - Off Da Hook',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'Orchestral Flavours',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = '8dio'                        COLLATE NOCASE), 'Requiem',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                     COLLATE NOCASE), 'Unknown',                                     NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Ultra Sun and Pokémon Ultra Moon',
   'Nintendo 3DS',
   'November 17, 2017',
   'Minako Adachi, Go Ichinose, Junichi Masuda, Tomoaki Oga',
   'minako adachi, go ichinose, junichi masuda, tomoaki oga',
   NULL);

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Row 2551: Live Recording: Kunie Ito et al., Vocals -> main (product_id NULL; raw_source patched below).
  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   NULL, NULL, NULL, NULL, 'The Festival in Iki Town',
   'main', 'newer_vgm', 1),

  -- Row 2552: Live Recording: Yui & Momoko Arai, String Ensemble -> main (product_id NULL; raw_source patched below).
  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   NULL, NULL, NULL, NULL, 'Title Screen',
   'main', 'newer_vgm', 2),

  -- Row 2553: Sample: GAME FREAK -> Pokémon Ultra Sun and Ultra Moon (product_id NULL; raw_source patched below).
  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   NULL, 'Arrangement: Junichi Masuda', 'Battle! (Dusk Mane/Dawn Wings Necrozma)', 'Trimmed sections from beginning are sampled', 'Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 3),

  -- Rows 2554-2776: commercial products -> main
  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'ARP2600 V2' COLLATE NOCASE),
   'Sequences', 'CE_SQ22', NULL, 'Battle! (Dusk Mane/Dawn Wings Necrozma), Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Cellos', 'Cellos Full Spiccato', NULL, 'Battle! (Maxie/Archie)',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Violas -> Viola First Chair (Solo)', 'Vla Leg Sus', NULL, 'Escape!',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Violas', 'Vla FC Spiccato', NULL, 'Escape!, Battle! (Lysandre)',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Violins', 'Vlns Full Staccato', NULL, 'Battle! (Maxie/Archie)',
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Audiobro' COLLATE NOCASE AND p.name = 'LA Scoring Strings' COLLATE NOCASE),
   'Violins', 'Vlns Full Trills', NULL, 'Battle! (Maxie/Archie), Escape!, Battle! (Lysandre)',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World 5 Instruments' COLLATE NOCASE),
   'WOODWINDS AND BRASS -> IRISH WHISTLES', 'Overton Irish Whistle KEY High', NULL, 'Ultra Necrozma Defeated (ev5080_m / ev5080_s)',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom' COLLATE NOCASE),
   '2 Pads', 'Ancient Spirits', NULL, 'Necrozma vs. Nebby (demo13 / nj_e14)',
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Forest Kingdom' COLLATE NOCASE),
   '4 Voices', 'Ethereal Female Solo Voice', NULL, 'Various Cutscene Tracks (Unnamed)',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 11 - Classic Orchestra' COLLATE NOCASE),
   'WAV > Advanced Compact -> Timpani VS', '11-tim03-ff-e', NULL, 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 13 - Choirs' COLLATE NOCASE),
   'CLASSIC 1 -> AHH FALLS', 'AHH HI SLW', 'either this or EWQLSC', 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol. 4 (Special and Unusual)' COLLATE NOCASE),
   'CD1 -> short - sounds - special', 'radio static noise', NULL, 'Ultra Ruin',
   'main', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Sound Spectral' COLLATE NOCASE),
   'STRANGE', 'ELAB', NULL, 'Ultra Warp Ride',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 1 - LIFE' COLLATE NOCASE),
   'Track 76 - SPORTS', 'FOOTBALL SOUND', 'Crowd SFX', 'Battle Agency',
   'main', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '17-Drawbar Organ MOD', NULL, 'Kantonian Gym',
   'main', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 017-24 ORGAN', '20-Church Organ', NULL, 'Ultra Megalopolis, Title Screen, Battle! (Ultra Necrozma), Battle! (Giovanni)',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'GM Bank -> 033-40 BASS', '33-Upright Bass', NULL, 'Kantonian Gym',
   'main', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Hollywood Brass' COLLATE NOCASE),
   'Solo French Horn', '1FH KS Sus_Short C0-A#0', NULL, 'Battle! (Lysandre), Escape!',
   'main', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Hollywood Brass' COLLATE NOCASE),
   '6 French Horns -> 07 Keyswitch', '6FH KS Sus_Short C0-G#0', NULL, 'Battle! (Maxie/Archie)',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Adventures' COLLATE NOCASE),
   '02 Suspense', 'Suspense 09', 'D5', 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Instruments -> Sopranos -> SOPR fx', 'SOPR Falls', NULL, 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Multis -> Altos WB', 'ALTO WB HARD MOD', 'type ''ge tis'' into Word Builder', 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Choirs' COLLATE NOCASE),
   'Multis -> Basses WB', 'BASS WB HARD MOD', 'type ''ge tis'' into Word Builder', 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 2 Trumpets -> 5 Keysw', '2TP KS Master', NULL, 'The Battle at the Summit! (Hau), Ultra Crater',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trumpets -> 5 Keysw', '4TP KS Master', NULL, 'Battle! (Giovanni)',
   'main', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 5 Keysw', '4TB KS Master', NULL, 'Battle! (Ghetsis), Battle! (Wild Pokémon), The Battle at the Summit! (Hau), Ultra Crater',
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH Rips L', NULL, 'Battle! (Giovanni), Battle! (Ghetsis)',
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, 'Battle! (Giovanni)',
   'main', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> Solo Trumpet 1 -> 5 Keysw', 'STP KS Master', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 32),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Anvil Low', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 33),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Anvil', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 34),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', NULL, 'Battle! (Wild Pokémon), Battle! (Ghetsis), Battle! (Giovanni), Ultra Crater',
   'main', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', 'Keep for now but this may be a synth glock', 'Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', NULL, 'Ultra Megalopolis',
   'main', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Xylophone', 'Close mic for Ultra Crater', 'The Battle at the Summit! (Hau), Ultra Crater',
   'main', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Perc -> Gamelan', 'Katana Group Untuned', NULL, 'Ultra Forest',
   'main', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Koto', 'Koto KS C0-F#0', NULL, 'Gym Theme, Ultra Forest',
   'main', 'newer_vgm', 41),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Koto -> Elements', 'Koto Arp', NULL, 'Ultra Forest',
   'main', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Plucked -> Shamisen', 'Shamisen C0-E0', NULL, 'Gym Theme, Ultra Forest',
   'main', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Wind -> Dizi', 'Dizi KS C0-A#0', NULL, 'Ultra Forest',
   'main', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Wind -> Shakuhachi', 'Shakuhachi KS C0-C#1', NULL, 'Gym Theme, Ultra Forest',
   'main', 'newer_vgm', 45),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'eLAB' COLLATE NOCASE AND p.name = 'Xtortion' COLLATE NOCASE),
   'Track 24 - SYN', 'Timestamp 0:02', 'pitched up 3 semitones', 'Ultra Warp Ride',
   'main', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'eLAB' COLLATE NOCASE AND p.name = 'Xtortion' COLLATE NOCASE),
   'Track 24 - SYN', 'Timestamp 0:06', NULL, 'Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 47),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Organic  Full', NULL, 'Title Screen, Ultra Crater, The Battle at the Summit! (Hau), Battle! (Ghetsis)',
   'main', 'newer_vgm', 48),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Tech  Full', NULL, 'Battle! (Ultra Recon Squad), Battle! (Giovanni)',
   'main', 'newer_vgm', 49),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Industrial  Full', 'E2', 'Battle! (Maxie/Archie)',
   'main', 'newer_vgm', 50),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Mangled Pop  Full', 'A#4', 'Battle! (Trainer), Trainers'' Eyes Meet (Team Rainbow Rocket), Battle! (Team Rainbow Rocket), Team Rainbow Rocket Hideout',
   'main', 'newer_vgm', 51),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Single Loops', '14 LP Mang Pop (El 01) C#2 Kick', NULL, 'Ultra Warp Ride, The Battle at the Summit! (Hau), Staff Credits',
   'main', 'newer_vgm', 52),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Evolve R2' COLLATE NOCASE),
   '3 Stings and Transitions -> Odd Noise and Build Ups', 'Odd Noise', 'D3, E3', 'Ultra Beasts Appear (c04)',
   'main', 'newer_vgm', 53),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Evolve R2' COLLATE NOCASE),
   '3 Stings and Transitions -> Odd Noise and Build Ups', 'TelemiTweaks 01', 'G2', 'Escape!',
   'main', 'newer_vgm', 54),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '002: Softer Acid', 'higher mod = higher filter', 'Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 55),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '007: Dreamchord', NULL, 'Ultra Warp Ride',
   'main', 'newer_vgm', 56),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank A', '008: LickwitLines', NULL, 'Ultra Warp Ride',
   'main', 'newer_vgm', 57),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Bank B', '075: 4VCO Bass/Lead', NULL, 'The Battle at the Summit! (Hau), Staff Credits',
   'main', 'newer_vgm', 58),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'MS-20 Legacy Collection' COLLATE NOCASE),
   '-', '000: Synthetic Snore', NULL, 'Battle! (Ultra Necrozma), Ultra Warp Ride, Staff Credits',
   'main', 'newer_vgm', 59),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '04 Electric Basses -> # Alternative', 'NY Slap combi KS A-1', 'Add Waves MetaFlanger for Warp Ride', 'Ultra Warp Ride, The Battle at the Summit! (Hau), Staff Credits',
   'main', 'newer_vgm', 60),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealGuitar' COLLATE NOCASE),
   '-', 'Steel Stereo (290MB)', NULL, 'Gym Theme',
   'main', 'newer_vgm', 61),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Absynth CrossTalk', NULL, 'Ultra Warp Ride',
   'main', 'newer_vgm', 62),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'I Call You Later', NULL, 'Staff Credits',
   'main', 'newer_vgm', 63),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy', 'Whistle', NULL, 'Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 64),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Action Strikes' COLLATE NOCASE),
   'Action Strikes - Ensemble', 'Dark City', 'keyswitch D#1', 'Ultra Forest',
   'main', 'newer_vgm', 65),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 4' COLLATE NOCASE),
   '-', 'Sharp Shooter Kit', NULL, 'Battle! (Cyrus), Battle! (Maxie/Archie), Escape!',
   'main', 'newer_vgm', 66),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 4' COLLATE NOCASE),
   '-', 'Thirty Threes Kit', 'Snare Thirty Threes 4', 'Battle! (Cyrus)',
   'main', 'newer_vgm', 67),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM7 Legacy', 'Wurlitzerich', 'External compressor required', 'Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 68),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kinetic Metal' COLLATE NOCASE),
   '-', 'Gas Tank', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 69),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 4 - Organ', 'Born to C3', NULL, 'Big Wave Beach',
   'main', 'newer_vgm', 70),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Bling Bling Kit', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 71),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Band -> 7 - Drum Kits', 'Platinum Plus Kit', NULL, 'Battle Agency',
   'main', 'newer_vgm', 72),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Maschine Drum Selection' COLLATE NOCASE),
   'Digital Kits', 'Crime Kit', NULL, 'Mantine Surf',
   'main', 'newer_vgm', 73),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Maschine Drum Selection' COLLATE NOCASE),
   'Digital Kits', 'Kondensator Kit', NULL, 'Alola Photo Club, Mantine Surf',
   'main', 'newer_vgm', 74),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Factory -> Synth Lead', 'Propeller Saw', 'sounds close with FX turned off', 'Battle! (Maxie/Archie)',
   'main', 'newer_vgm', 75),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Exp. 2 -> Bass', 'Full Bass', NULL, 'Battle! (Lysandre)',
   'main', 'newer_vgm', 76),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '01 - Orchestral', 'Chaos Stairs', NULL, 'Title Screen',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '03 - Hybrid Sounds', 'Huge Drop', NULL, 'Ultra Megalopolis',
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '03 - Hybrid Sounds', 'Scary Bells', NULL, 'Team Rainbow Rocket Hideout',
   'main', 'newer_vgm', 79),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '04 - Hybrid Instrument', 'Nether Land', NULL, 'Battle! (Giovanni)',
   'main', 'newer_vgm', 80),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '05 - Percussive', 'Mahler Hammer', NULL, 'Mantine Surf',
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '06 - Into The Void', 'Noise to Sub', NULL, 'Battle Agency',
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '06 - Into The Void', 'Tape Reverse', NULL, 'Battle! (Ultra Recon Squad), The Ultra Recon Squad Appear!',
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '07 - Lifters', 'Crushed Glide', NULL, 'Ultra Crater',
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '07 - Lifters', 'Hybrid Synth', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '08 - Smooth', 'Discreet Metal', NULL, 'Alola Photo Club',
   'main', 'newer_vgm', 86),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '08 - Smooth', 'Hazy Blaze', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Down Sweep 2', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 88),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Multi Sweep 2', NULL, 'Ultra Desert',
   'main', 'newer_vgm', 89),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '10 - Pure Synth', 'Siren Sweep', NULL, 'Battle! (Team Rainbow Rocket), Battle! (Giovanni)',
   'main', 'newer_vgm', 90),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: Balinese Gamelan' COLLATE NOCASE),
   'Concert Pitch', 'CP Gangsa', 'Add manual tremolo/autopan', 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 91),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Spotlight Collection: West Africa' COLLATE NOCASE),
   '4 - Single Percussion (16)', 'Djembe 7', NULL, 'Ultra Jungle',
   'main', 'newer_vgm', 92),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Studio Drummer' COLLATE NOCASE),
   '-', 'Garage Kit - Full', 'Kick, Hats, Cowbell for Beach, Cymbal for Club', 'Alola Photo Club, Big Wave Beach',
   'main', 'newer_vgm', 93),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Pre-Bass' COLLATE NOCASE),
   '-', 'Scarbee Pre-Bass', 'Overlap notes to use legato (slide up)', 'Big Wave Beach',
   'main', 'newer_vgm', 94),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Scarbee' COLLATE NOCASE AND p.name = 'Rickenbacker Bass' COLLATE NOCASE),
   'Scarbee Rickenbacker Bass', 'Neck Pure DI', NULL, 'Ultra Jungle, Giovanni''s Theme',
   'main', 'newer_vgm', 95),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sonic Foundry' COLLATE NOCASE AND p.name = 'George Pendergast: Essential Percussion' COLLATE NOCASE),
   'Combo', 'Combo 04', NULL, 'Battle! (Cyrus)',
   'main', 'newer_vgm', 96),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'HIGH VOLTAGE SPARK, ELECTRICAL', 'ELECTRICITY, SPARK', '#6039-61-01 #6039-62-01', 'The Ultra Recon Squad Appear!',
   'main', 'newer_vgm', 97),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'TRANSISTOR RADIO: TUNING ACROSS AM BAND', 'TUNING, RADIO', '#6037-74-01', 'Ultra Ruin',
   'main', 'newer_vgm', 98),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Bells and Vibes', 'Glass Music Box', NULL, 'Alola Photo Club',
   'main', 'newer_vgm', 99),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Pluck', 'CS Octave PWM Plucks', NULL, 'Team Rainbow Rocket Hideout',
   'main', 'newer_vgm', 100),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Alternative Fuel Source', NULL, 'Battle! (Team Rainbow Rocket), Trainers'' Eyes Meet (Team Rainbow Rocket)',
   'main', 'newer_vgm', 101),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Children of Time Arp', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 102),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Cross Beat Overdriver', NULL, 'Battle! (Ultra Recon Squad)',
   'main', 'newer_vgm', 103),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Laser GunZ', NULL, 'Battle Agency',
   'main', 'newer_vgm', 104),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Planning The Revenge', NULL, 'Ultra Megalopolis, Ultra Desert',
   'main', 'newer_vgm', 105),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Ode to Mr Newman Arp', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 106),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Sidechain Gain', NULL, 'Mantine Surf',
   'main', 'newer_vgm', 107),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Trance Child', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 108),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Crushed Upbeater', 'see note', 'Battle! (Trainer)',
   'main', 'newer_vgm', 109),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Analog Synced Bells', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 110),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Bells and Vibes', 'Fairy Tale Bells', NULL, 'Ultra Desert',
   'main', 'newer_vgm', 111),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Distortion', 'Rock Harder', NULL, 'Battle! (Team Rainbow Rocket), Trainers'' Eyes Meet (Team Rainbow Rocket)',
   'main', 'newer_vgm', 112),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Ethnic World', 'Nylon Octa Harp', 'manually reversed', 'Ultra Space Wilds',
   'main', 'newer_vgm', 113),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Blade of Grass Piano', 'velocity ~75', 'The Ultra Recon Squad Appear!',
   'main', 'newer_vgm', 114),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Crush Tone Keys', NULL, 'Alola Photo Club',
   'main', 'newer_vgm', 115),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Keyboards', 'Dream Tack Piano', 'add reverb + delay', 'Ultra Megalopolis',
   'main', 'newer_vgm', 116),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Organs', 'Insects Inside the Organ', NULL, 'Alola Photo Club',
   'main', 'newer_vgm', 117),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'Platinum Sky', NULL, 'Alola Photo Club',
   'main', 'newer_vgm', 118),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Pads + Strings', 'VeloVox Fifths', 'close match for the pad, sounds layered', 'Battle! (Ultra Recon Squad)',
   'main', 'newer_vgm', 119),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Retro Land', 'Commodore Chaos', NULL, 'Team Rainbow Rocket Hideout',
   'main', 'newer_vgm', 120),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Burned Wasp Bass 2', NULL, 'Team Rainbow Rocket Hideout',
   'main', 'newer_vgm', 121),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Eighties Synth Bass', NULL, 'Battle! (Trainer), Battle! (Wild Pokémon), Battle! (Team Rainbow Rocket)',
   'main', 'newer_vgm', 122),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Bass', 'Broken OSCar Bass', NULL, 'Battle! (Ultra Recon Squad)',
   'main', 'newer_vgm', 123),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Amped Electric SuperSaw', NULL, 'Mantine Surf',
   'main', 'newer_vgm', 124),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Chaos Modular Lead', NULL, 'Team Rainbow Rocket Hideout, Battle! (Giovanni), Battle Agency',
   'main', 'newer_vgm', 125),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Happy Gaga Lead', NULL, 'Alola Photo Club',
   'main', 'newer_vgm', 126),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Bombastic 5th Stabber', NULL, 'Battle Agency',
   'main', 'newer_vgm', 127),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Funky Harpsichord', NULL, 'Ultra Jungle',
   'main', 'newer_vgm', 128),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Flaming Supersaws', NULL, 'Giovanni''s Theme',
   'main', 'newer_vgm', 129),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Hard Plastic PolyLead', 'under FX -> Common, disable Chorus Echo', 'Ultra Crater, Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 130),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Loud Raving Lunatic', NULL, 'Battle! (Ultra Recon Squad), Battle! (Team Rainbow Rocket)',
   'main', 'newer_vgm', 131),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Progressive Attitude', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 132),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Skinny Crush Anthem', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 133),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Poly', 'Slammo Synth', 'Reduce Amp Attack slightly, add autopanner', 'Battle! (Trainer)',
   'main', 'newer_vgm', 134),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Short', 'Club Europa', NULL, 'Mantine Surf',
   'main', 'newer_vgm', 135),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Short', 'Watery Gamelan Juice', NULL, 'Team Rainbow Rocket Hideout',
   'main', 'newer_vgm', 136),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Textures Soundscape', 'Cyber Flies', NULL, 'Ultra Space Wilds',
   'main', 'newer_vgm', 137),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Trilian Creative -> Bells and Vibes', 'M-Theory Chimonics 2', NULL, 'Unsettling Ambience',
   'main', 'newer_vgm', 138),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Trilian Creative -> Transition Effects', 'Cinematic Prophet Noise Swell', NULL, 'Unsettling Ambience',
   'main', 'newer_vgm', 139),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 55-Phew & Phar', '55-Phew & Phar d', NULL, 'Battle Agency',
   'main', 'newer_vgm', 140),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 69-Lowly', '69-Lowly c', NULL, 'Ultra Jungle',
   'main', 'newer_vgm', 141),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 52-Alice''s Dream', '52-Alice''s Dream Illusion 2', NULL, 'Ultra Desert',
   'main', 'newer_vgm', 142),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 66-Granular Flower', '66-Granular Flower Assimilate', NULL, 'Battle! (Ultra Recon Squad)',
   'main', 'newer_vgm', 143),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 66-Tower Zero', '68-Tower Zero Combo', NULL, 'Ultra Warp Ride',
   'main', 'newer_vgm', 144),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 81-Royal March', '81-Royal March Fuzzform', NULL, 'Battle! (Giovanni)',
   'main', 'newer_vgm', 145),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 90-Stutter', '90-Stutter Congas', NULL, 'Alola Photo Club',
   'main', 'newer_vgm', 146),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 94-Basmati', '94-Basmati HH Tamb', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 147),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Centrifuge', '135-Centrifuge HiHatShake', NULL, 'Escape!',
   'main', 'newer_vgm', 148),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Squashed', '135-Squashed', 'which loop?', 'Battle! (Trainer)',
   'main', 'newer_vgm', 149),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 151-Growl', '151-Growl No Kick', NULL, 'Battle! (Team Rainbow Rocket)',
   'main', 'newer_vgm', 150),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 151-Growl', '151-Growl TopEnd Trash', NULL, 'Team Rainbow Rocket Hideout',
   'main', 'newer_vgm', 151),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 160-Find The Exit', '160-Find The Exit Combo', NULL, 'Alola Region Theme',
   'main', 'newer_vgm', 152),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'ARP + BPM', 'Classic 303 Reso Saw', 'Turn down Glide a bit, Arpeggiator mode to ''Up''', 'Battle Agency',
   'main', 'newer_vgm', 153),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'ARP + BPM', 'Dancin'' Little Phatty', NULL, 'Alola Photo Club',
   'main', 'newer_vgm', 154),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'ARP + BPM', 'Herd of Ducks', NULL, 'Battle Agency',
   'main', 'newer_vgm', 155),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'ARP + BPM', 'Tough Tweety', NULL, 'Mantine Surf',
   'main', 'newer_vgm', 156),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Feedback Cwejman Bassliner', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 157),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Groove Agent SE' COLLATE NOCASE),
   'Beat Agent SE', 'Dancehall Kit 01', NULL, 'Staff Credits, Ultra Warp Ride, Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 158),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', '3 Osc Fooling', NULL, 'The Battle at the Summit! (Hau), Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 159),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Fast Forward', 'check notes for Dusk Mane / Dawn Wings', 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'main', 'newer_vgm', 160),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Mini Pick PWM', NULL, 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'main', 'newer_vgm', 161),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Super Phase Clavi', NULL, 'The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 162),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Tutti Pipe Organ', NULL, 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'main', 'newer_vgm', 163),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic' COLLATE NOCASE),
   'HS Factory Set', 'Wow Bass', NULL, 'The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 164),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'All Kick Drums', 'G#3, extend the release', 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'main', 'newer_vgm', 165),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Big Beat Scratch', 'also in some drumkits, but this is correct', 'Battle! (Dusk Mane/Dawn Wings Necrozma), Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 166),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Artist / Studio Set', 'Orchestral Hits', NULL, 'Battle! (Team Rainbow Rocket)',
   'main', 'newer_vgm', 167),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 013] Marimba', NULL, 'Staff Credits',
   'main', 'newer_vgm', 168),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 048] Timpani', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 169),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 049] String Ensemble 1', NULL, 'Staff Credits, The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 170),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 062] Brass Section', NULL, 'Staff Credits',
   'main', 'newer_vgm', 171),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 081] Lead 1 (Square)', NULL, 'Ultra Warp Ride, The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 172),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 082] Lead 2 (Sawtooth)', NULL, 'Ultra Warp Ride',
   'main', 'newer_vgm', 173),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 120] Reverse Cymbal', NULL, 'Mantine Surf',
   'main', 'newer_vgm', 174),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Basic Set', '[GM 129] Stereo GM Kit', 'hats', 'Alola Photo Club',
   'main', 'newer_vgm', 175),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Ambient Tonewheel Organ', 'Layered with Tutti Pipe Organ', 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'main', 'newer_vgm', 176),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Garage Kit', 'B4 ''closed triangle'' pan to the right', 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'main', 'newer_vgm', 177),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Rising Stars', NULL, 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'main', 'newer_vgm', 178),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Pro Set', 'Trancer Dancer', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 179),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Trip Set', 'Digiride', NULL, 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'main', 'newer_vgm', 180),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALion Sonic SE' COLLATE NOCASE),
   'Trip Set', 'Noise Action 1', NULL, 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'main', 'newer_vgm', 181),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'Retrologue' COLLATE NOCASE),
   'Factory -> Synth Lead', 'Become Lucky', NULL, 'Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 182),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '06-Electric Organs -> 01-High End Organs', 'Full Organ fast', NULL, 'Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 183),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08 - Mallets & co', 'Music Box', NULL, 'Pikachu Valley',
   'main', 'newer_vgm', 184),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08 - Mallets & co', 'Marimba', NULL, 'Pikachu Valley',
   'main', 'newer_vgm', 185),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '15-Tubular Bells', NULL, 'Staff Credits, The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 186),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '07-Ensemble', '56-Orchestra Hit', NULL, 'Battle! (Wild Pokémon)',
   'main', 'newer_vgm', 187),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Drums -> Straight Loops', '087-Straight Fill 02', NULL, 'Battle! (Team Rainbow Rocket)',
   'main', 'newer_vgm', 188),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Drums -> Straight Loops', '104-Straight Beat 3', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 189),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Electric -> Funky', '100-D#m Funky 2', NULL, 'Ultra Jungle',
   'main', 'newer_vgm', 190),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Electric -> Wah Wah', '120-Am-T-Wah 05', NULL, 'Big Wave Beach',
   'main', 'newer_vgm', 191),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   '2 VFX Uplifter', 'VFX1 Uplifter 004', NULL, 'Battle! (Lysandre)',
   'main', 'newer_vgm', 192),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   '2 VFX Uplifter', 'VFX1 Uplifter 063', NULL, 'Battle! (Cyrus)',
   'main', 'newer_vgm', 193),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   '2 VFX Uplifter', 'VFX1 Uplifter 078', NULL, 'Battle! (Lysandre)',
   'main', 'newer_vgm', 194),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   '2 VFX Uplifter', 'VFX1 Uplifter 087', 'could be something else', 'Battle! (Cyrus)',
   'main', 'newer_vgm', 195),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   '3 VFX Downlifter', 'VFX1 Downlifter 001', 'could be something else', 'Battle! (Maxie/Archie)',
   'main', 'newer_vgm', 196),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   '3 VFX Downlifter', 'VFX1 Downlifter 015', NULL, 'Battle! (Lysandre)',
   'main', 'newer_vgm', 197),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   '3 VFX Downlifter', 'VFX1 Downlifter 022', NULL, 'Battle! (Cyrus)',
   'main', 'newer_vgm', 198),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   '3 VFX Downlifter', 'VFX1 Downlifter 024', NULL, 'Battle! (Cyrus)',
   'main', 'newer_vgm', 199),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '11S Timpani', NULL, 'Battle! (Ghetsis), Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 200),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vienna Symphonic Library' COLLATE NOCASE AND p.name = 'Special Edition Vol. 1' COLLATE NOCASE),
   'MATRIX -> 33 Percussion', '14S Percussion', 'Belltree', 'The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 201),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Les Paul Amped', NULL, 'Ultra Warp Ride, The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 202),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Alien interface [SN]', NULL, 'Ultra Megalopolis',
   'main', 'newer_vgm', 203),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Easy Riser [FN]', NULL, 'The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 204),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Rampant 3 [LT]', NULL, 'The Ultra Recon Squad Appear!',
   'main', 'newer_vgm', 205),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'FX', 'FX Robo Chatter [SN]', NULL, 'The Ultra Recon Squad Appear!',
   'main', 'newer_vgm', 206),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD 8bitcycle [AF]', NULL, 'Ultra Crater',
   'main', 'newer_vgm', 207),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Leads', 'LD Screamy Sync Square [ASL]', NULL, 'Ultra Warp Ride',
   'main', 'newer_vgm', 208),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Automator 1 [GS]', NULL, 'Battle! (Ultra Recon Squad), The Ultra Recon Squad Appear!, Ultra Jungle',
   'main', 'newer_vgm', 209),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Automator 2 [GS]', 'very quiet, plays with SQ Masters', 'The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 210),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Automator 5 [GS]', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 211),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Bendy Hi Jack [IM]', NULL, 'Battle! (Trainer)',
   'main', 'newer_vgm', 212),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Blade [LT]', NULL, 'Battle! (Team Rainbow Rocket)',
   'main', 'newer_vgm', 213),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Happylights [GS]', NULL, 'The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 214),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Happyriser [GS]', NULL, 'Battle! (Team Rainbow Rocket)',
   'main', 'newer_vgm', 215),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Is This Trance [DRK]', NULL, 'Battle! (Team Rainbow Rocket), Battle! (Giovanni)',
   'main', 'newer_vgm', 216),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Masters [7S]', NULL, 'The Battle at the Summit! (Hau)',
   'main', 'newer_vgm', 217),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ RockThat [GS]', NULL, 'Ultra Plant',
   'main', 'newer_vgm', 218),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Seq', 'SQ Rumma [GS]', NULL, 'Battle! (Ultra Recon Squad), The Ultra Recon Squad Appear!',
   'main', 'newer_vgm', 219),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Xfer Records' COLLATE NOCASE AND p.name = 'Serum' COLLATE NOCASE),
   'Synth', 'SY ElectricLight [GS]', NULL, 'Battle! (Ultra Necrozma)',
   'main', 'newer_vgm', 220),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', NULL, 'Battle! (Wild Pokémon), Battle! (Trainer), Ultra Warp Ride, Battle! (Ultra Necrozma), Big Wave Beach, The Battle at the Summit! (Hau), Giovanni''s Theme, Battle Agency',
   'main', 'newer_vgm', 221),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Fry Pan 083', 'FP - Drums Fill', NULL, 'Battle! (Ultra Recon Squad)',
   'main', 'newer_vgm', 222),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Squirt 095', 'Squirt-Drums Fill 3', NULL, 'Battle Agency, Big Wave Beach, Alola Photo Club',
   'main', 'newer_vgm', 223),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Shout Out 2 Monkey Boy 164', 'SO2MB-Drum Fill 05', NULL, 'Big Wave Beach',
   'main', 'newer_vgm', 224),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE),
   'Shout Out 2 Monkey Boy 164', 'SO2MB-Drum Fill 09', NULL, 'Ultra Jungle',
   'main', 'newer_vgm', 225),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'N.Y. CUTZ vol. 2 - Off Da Hook' COLLATE NOCASE),
   '2fers > 088 - Steel Hop', 'Steel Hop Guitar - A', NULL, 'Gym Theme',
   'main', 'newer_vgm', 226),

  -- Row 2777: "Stuff to Find" header (no row inserted)
  -- Rows 2778-2820: Stuff to Find entries -> stuff_to_find
  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = '8dio' COLLATE NOCASE AND p.name = 'Requiem' COLLATE NOCASE),
   NULL, NULL, 'choirs', 'oga cutscene stuff',
   'stuff_to_find', 'newer_vgm', 227),

  -- Row 2779: "Arturia,?" — product unknown, routed to Unknown/Unknown sentinel with raw source preserved in notes
  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'could be used (raw source: Arturia / ?)', 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'stuff_to_find', 'newer_vgm', 228),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Hollywood Orchestral Woodwinds' COLLATE NOCASE),
   NULL, NULL, NULL, 'Ultra Beasts Appear (c04)',
   'stuff_to_find', 'newer_vgm', 229),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Perc -> Gongs', NULL, NULL, 'Gym Theme',
   'stuff_to_find', 'newer_vgm', 230),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'Mono/Poly Legacy Collection' COLLATE NOCASE),
   'Synth Soft', 'MW Travel', 'duophonic arp', 'Staff Credits',
   'stuff_to_find', 'newer_vgm', 231),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   NULL, NULL, 'trumpets', 'The Battle at the Summit! (Hau)',
   'stuff_to_find', 'newer_vgm', 232),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MOTU' COLLATE NOCASE AND p.name = 'MachFive 3' COLLATE NOCASE),
   NULL, 'not yet documented', 'one pic shows Oga using this', NULL,
   'stuff_to_find', 'newer_vgm', 233),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MusicLab' COLLATE NOCASE AND p.name = 'RealStrat' COLLATE NOCASE),
   '-', 'Strat', NULL, 'The Battle at the Summit! (Hau)',
   'stuff_to_find', 'newer_vgm', 234),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   NULL, 'not yet documented', 'one pic shows Oga using this', NULL,
   'stuff_to_find', 'newer_vgm', 235),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 4' COLLATE NOCASE),
   NULL, NULL, 'same drumkit at a few points', 'Battle! (Cyrus), Battle! (Lysandre)',
   'stuff_to_find', 'newer_vgm', 236),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   NULL, NULL, 'Oga claims this is the only synth he uses', 'Battle! (Lysandre), Battle! (Archie/Maxie)',
   'stuff_to_find', 'newer_vgm', 237),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Massive' COLLATE NOCASE),
   'Massive Exp. 2', 'Sexy', 'cld be a several-octave stack of square synths instead', 'Battle! (Lysandre)',
   'stuff_to_find', 'newer_vgm', 238),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Rise & Hit' COLLATE NOCASE),
   '05 - Percussive', NULL, NULL, 'Battle! (Wild Pokémon)',
   'stuff_to_find', 'newer_vgm', 239),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'ProjectSAM' COLLATE NOCASE AND p.name = 'True Strike 1' COLLATE NOCASE),
   NULL, NULL, 'up+down timpani roll', 'Battle! (Ghetsis)',
   'stuff_to_find', 'newer_vgm', 240),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Atmosphere Library -> Synth Bass', 'Deep FM Stereo Bass', 'legato off, increase glide time', 'Ultra Megalopolis',
   'stuff_to_find', 'newer_vgm', 241),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> ARP + BPM', 'Synthetic Juice Alarm', NULL, 'Battle! (Trainer)',
   'stuff_to_find', 'newer_vgm', 242),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Synth Mono', 'Electro Reduction', 'or something else from Synth Mono', 'Battle! (Wild Pokémon)',
   'stuff_to_find', 'newer_vgm', 243),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Mono', 'Voyager Warm Lead', 'manually reversed', 'The Ultra Recon Squad Appear!',
   'stuff_to_find', 'newer_vgm', 244),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '04-Clav Keyboards', 'Processed Clav 4', NULL, 'Staff Credits',
   'stuff_to_find', 'newer_vgm', 245),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (Archie/Maxie)',
   'stuff_to_find', 'newer_vgm', 246),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   '3 VFX Downlifter', 'VFX1 Downlifter 010', 'might be the bell at the start?', 'Battle! (Lysandre)',
   'stuff_to_find', 'newer_vgm', 247),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vengeance Sound' COLLATE NOCASE AND p.name = 'Effects Vol. 1' COLLATE NOCASE),
   NULL, NULL, NULL, 'Cutscenes',
   'stuff_to_find', 'newer_vgm', 248),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (Lysandre), Battle! (Cyrus)',
   'stuff_to_find', 'newer_vgm', 249),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Vir2' COLLATE NOCASE AND p.name = 'Electri6ity' COLLATE NOCASE),
   'AMPED', 'Stratocaster Amped', 'at beginning of loop', 'Staff Credits',
   'stuff_to_find', 'newer_vgm', 250),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Orchestral Flavours' COLLATE NOCASE),
   NULL, NULL, NULL, 'Battle! (Ghetsis)',
   'stuff_to_find', 'newer_vgm', 251),

  -- Rows 2803-2819: ?,? entries -> Unknown/Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'electric guitar', 'Battle! (Ultra Recon Squad), Battle! (Giovanni)',
   'stuff_to_find', 'newer_vgm', 252),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, '1:17 some percussive instrument', 'Team Rainbow Rocket Hideout',
   'stuff_to_find', 'newer_vgm', 253),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'synth bass + synth layer + lead synth', 'not massive unless it''s an expansion', 'Battle! (Cyrus)',
   'stuff_to_find', 'newer_vgm', 254),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'electric guitars', 'Giovanni''s Theme',
   'stuff_to_find', 'newer_vgm', 255),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'hit', 'Battle! (Champion)',
   'stuff_to_find', 'newer_vgm', 256),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Funk guitars: Probably NOT Zero-G', 'Gym Theme',
   'stuff_to_find', 'newer_vgm', 257),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'chanting (also used in SWSH DLC Dojo)', 'Ultra Jungle',
   'stuff_to_find', 'newer_vgm', 258),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Percussion', 'Ultra Plant',
   'stuff_to_find', 'newer_vgm', 259),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'shared synth VST (adachi & ichinose)', 'might be the same bass in both tracks.', 'Battle! (Ultra Necrozma), Ultra Megalopolis',
   'stuff_to_find', 'newer_vgm', 260),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Synth arp used as lead', 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'stuff_to_find', 'newer_vgm', 261),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'a lot of the other percussion elements', 'Battle! (Dusk Mane/Dawn Wings Necrozma)',
   'stuff_to_find', 'newer_vgm', 262),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'pulse bass', 'Alola Photo Club',
   'stuff_to_find', 'newer_vgm', 263),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Transition effect at the intro and end of loop', 'Mantine Surf',
   'stuff_to_find', 'newer_vgm', 264),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'Distorted synth effect 0:57', 'Mantine Surf',
   'stuff_to_find', 'newer_vgm', 265),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'french horn rip / distorted scream thing', 'also appears in ''ME! ME! ME!'' by Teddyloid', 'Unsettling Ambience',
   'stuff_to_find', 'newer_vgm', 266),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, NULL, 'synths', 'Staff Credits',
   'stuff_to_find', 'newer_vgm', 267),

  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'if this isnt omni that''d be weird', 'bass saw', 'Battle Agency',
   'stuff_to_find', 'newer_vgm', 268),

  -- Row 2820: satirical/protest entry from source, preserved verbatim
  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Pokemon Company' COLLATE NOCASE AND p.name = 'Super Music Collection' COLLATE NOCASE),
   'COWARDS', 'RELEASE IT FOR FUCK''S SAKE', 'IT''S BEEN FIVE FUCKING YEARS', 'WHAT IS THE DAMN HOLD UP',
   'stuff_to_find', 'newer_vgm', 269),

  -- Row 2821: "Early Music (Teraleak / Freakleak - USUM Debug Build)" header
  -- Row 2822: Early Music entry -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 95-Raw Meat', '95-Raw Meat', NULL, 'bgm_mj_vs10',
   'unused', 'newer_vgm', 270);

-- Patch raw_source for the non-commercial Live Recording and Sample rows.
-- These rows were inserted with product_id NULL; we stash the original col A/B descriptor here.
UPDATE usages SET raw_source = 'Live Recording: Kunie Ito et al. — Vocals'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon')
    AND position = 1;

UPDATE usages SET raw_source = 'Live Recording: Yui & Momoko Arai — String Ensemble'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon')
    AND position = 2;

UPDATE usages SET raw_source = 'Sample: GAME FREAK — Pokémon Ultra Sun and Ultra Moon'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Ultra Sun and Pokémon Ultra Moon')
    AND position = 3;
