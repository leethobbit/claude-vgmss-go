-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 706-879
-- Pokémon Black 2 and Pokémon White 2 (Nintendo DS, June 23, 2012).
-- Composers: Go Ichinose, Hitomi Sato, Teruo Taniguchi.
-- Subsection headers in source: row 707 (Streamed Tracks), 723 (Sequenced Tracks),
-- 832 (annotation: all other instruments ripped from previous Pokémon titles),
-- 857 (Stuff to Find), 875 (Unused, but used as inspiration),
-- 877 (Early Music (Teraleak / Freakleak)).
-- Per task spec: Streamed Tracks + Sequenced Tracks (incl. previously-ripped block) -> main;
-- Stuff to Find -> stuff_to_find; "Unused, but used as inspiration" + "Early Music" -> unused.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('MAGiX / Yellow Tools'),
  ('Native Instruments'),
  ('Sound Ideas'),
  ('Steinberg'),
  ('UVI'),
  ('XLN Audio'),
  ('Nine Volt Audio'),
  ('Optical Media International'),
  ('Lennar Digital');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'Red Box Vol.2 (Human)',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'Red Box Vol.4 (Special and Unusual)',         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'                COLLATE NOCASE), 'ProSamples Vol. 27 - Dancefloor Bass',        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Discovery Firm'              COLLATE NOCASE), 'Sound Effects CD Series 4 - WAR',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Symphonic Adventures',                        'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Symphonic Orchestra',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Goliath',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'                    COLLATE NOCASE), 'Ra',                                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Lennar Digital'              COLLATE NOCASE), 'Sylenth1',                                    'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools'        COLLATE NOCASE), 'Independence Pro',                            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Absynth',                                     'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'FM8',                                         'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Kontakt Factory Library',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments'          COLLATE NOCASE), 'Battery 3',                                   'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Nine Volt Audio'             COLLATE NOCASE), 'Taiko 1',                                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Optical Media International' COLLATE NOCASE), 'Universe of Sounds: Sonic Images Vol. 1',     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Sound Ideas'                 COLLATE NOCASE), 'The General Series 6000',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Metamorphosis S.A.G.E. Xpander',              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Omnisphere',                                  'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Stylus RMX',                                  'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'               COLLATE NOCASE), 'Trilian',                                     'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinberg'                   COLLATE NOCASE), 'HALionOne',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (02-Fretted)',                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (03-Drums and Percs)',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (04-Synths and co)',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (05-General MIDI)',             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (06-Orchestral)',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                         COLLATE NOCASE), 'PlugSound Pro (Loops)',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'XLN Audio'                   COLLATE NOCASE), 'Addictive Drums',                             'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'World Pack',                                  'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'                      COLLATE NOCASE), 'ProSamples Vol. 9 - Future Beats 2',          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Unknown'                     COLLATE NOCASE), 'Unknown',                                     NULL);

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Black 2 and Pokémon White 2',
   'Nintendo DS',
   'June 23, 2012',
   'Go Ichinose, Hitomi Sato, Teruo Taniguchi',
   'go ichinose, hitomi sato, teruo taniguchi',
   'All other documented instruments were ripped from previous Pokémon titles (per source CSV annotation, row 832).');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Streamed Tracks (rows 708-722) -> main
  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Adventures' COLLATE NOCASE),
   '05 Small Instruments', 'Small Instruments 3', 'D5', 'Title Screen',
   'main', 'newer_vgm', 1),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 2 Trumpets -> 5 Keysw', '2TP KS Master', NULL, 'Title Screen',
   'main', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 5 Keysw', '6FH KS Master', NULL, 'Title Screen',
   'main', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Woodwinds -> Solo Oboe -> 5 Keysw', 'SOB KS Master', NULL, 'Title Screen',
   'main', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 18 Violins -> 5 Keysw', '18V KS Master', NULL, 'Title Screen',
   'main', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '20 Cymbal', NULL, 'Title Screen',
   'main', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> CymGong', '21 French Cymbal', NULL, 'Title Screen',
   'main', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Glock', NULL, 'Title Screen',
   'main', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Triangle 2', NULL, 'Title Screen',
   'main', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 2 Short', '6FH Shrt Script 1', NULL, 'Title Screen',
   'main', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH Rips S', NULL, 'Title Screen',
   'main', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Violas -> 3 Effects', 'VAS Trem', NULL, 'Title Screen',
   'main', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 3 Effects', '11V 5th Slide Up', NULL, 'Title Screen',
   'main', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', '3 Snares', NULL, 'Title Screen',
   'main', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', NULL, 'Title Screen',
   'main', 'newer_vgm', 15),

  -- Sequenced Tracks (rows 724-831) -> main.
  -- Row 724: Live Recording: GAME FREAK — Koffing and the Toxics Vocals (non-commercial; raw_source patched below).
  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   NULL, NULL, NULL, 'Confirmed by Hitomi Sato', 'Virbank City Gym',
   'main', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 11 - Classic Orchestra' COLLATE NOCASE),
   'Advanced Compact -> Gran Casa', '11gc01-hit-f', 'EQ and Compression', 'Floccesy Ranch',
   'main', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol.2 (Human)' COLLATE NOCASE),
   'CD3 -> _footsteps', 'spirits hour', 'Timestamp 0:14 (Grandfather Clock)', 'Strange House',
   'main', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol.2 (Human)' COLLATE NOCASE),
   'CD3 -> _footsteps', 'spirits hour', 'Timestamp 0:35 (Wind and Rockingchair)', 'Strange House',
   'main', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Red Box Vol.4 (Special and Unusual)' COLLATE NOCASE),
   'CD5 -> synth atmospheres', 'torture chamber', 'Timestamp 0:35 (Scream + Siren)', 'Strange House',
   'main', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Choir Bank -> Soloists', 'Fem Vox Oh', NULL, 'Pokestar Studios: Purified, Pokestar Studios: Fear, Humilau City Gym',
   'main', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Electric Guitar', 'Blues chug power chrd', NULL, 'Battle! (N)',
   'main', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Electric Guitar', 'Blues Crunch VS', 'Velocity ~60, also requires specific EQ', 'Battle! (N)',
   'main', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Electric Guitar', 'Pink Strat', NULL, 'Hugh''s Theme, Battle! (Rival), Battle! (Iris), Battle! (Sinnoh Champion)',
   'main', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Goliath' COLLATE NOCASE),
   'Synth Leads', 'Organic Lead MOD', 'Modulation = 127', 'Marine Tube',
   'main', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Wind -> Pan Flute', 'Pan Flute KS C0-D#0', NULL, 'Floccesy Town, Mistralton City Gym, White Treehollow',
   'main', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Americas -> Plucked -> 1890 Wburn Guitar', 'Washbrn GTR KS C0-D#0', NULL, 'Lentimas Town',
   'main', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Perc -> Gamelan', 'Pamade Untuned', NULL, 'Reversal Mountain (Pokémon White), Battle! (Champion Iris)',
   'main', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Ra' COLLATE NOCASE),
   'Far East -> Perc -> Gongs', 'Chinese Gong 34 Inches', 'See note', 'Battle! (Champion Iris), Opelucid City Gym, Absorption, Confrontation, Battle! (Black/White Kyurem), Battle! (Ghetsis)',
   'main', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 4 Trombones -> 3 Effects', '4TB Mute Fltr Cres Fst', NULL, 'Awakening',
   'main', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 2 Short', '6FH Shrt Script 1', NULL, 'Battle! (Black Kyurem/White Kyurem)',
   'main', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Brass -> 6 French Horns -> 3 Effects', '6FH Rips S', NULL, 'Battle! (Black Kyurem/White Kyurem), Infiltrating the Plasma Frigate!',
   'main', 'newer_vgm', 32),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 10 Violas -> 3 Effects', 'VAS Trem', 'Phrase in Title Screen used as sample in Kyurem', 'Battle! (Black Kyurem/White Kyurem)',
   'main', 'newer_vgm', 33),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 3 Effects', '11V 5th Slide UP Hrd', 'Phrase in Title Screen used as sample in Kyurem', 'Battle! (Black Kyurem/White Kyurem)',
   'main', 'newer_vgm', 34),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Large String Ens', '50 Piece Str Sec Fst', 'See note', 'Immortalized at Pokéstar Studios!',
   'main', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> Solo Contrabass -> 1 Long', 'SCB Sus Vib', 'Close + Stage Mic, sample left channel only, cut + slight EQ, Vel 127', 'Immortalized at Pokéstar Studios!',
   'main', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', '3 Snares', NULL, 'Battle! (Black Kyurem/White Kyurem)',
   'main', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Drums', 'Timp Hits LR', NULL, 'Awakening',
   'main', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'All Anvils', 'A1 (needs to be EQ''d)', 'Pokestar Studios: Invasion',
   'main', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch Chimes', 'There are two samples; one goes unused', 'Humilau City',
   'main', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Wood', 'Woodblock symphony', NULL, 'Humilau City',
   'main', 'newer_vgm', 41),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '017 Power Set 2', 'Snare', 'Battle! (Rival), PWT Final Round!',
   'main', 'newer_vgm', 42),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '01 Acoustic Drum Kits', 'GM Percussion Kit 1 & Reverb', 'Woodblock', 'Floccesy Town',
   'main', 'newer_vgm', 43),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '06 Electric Guitars', 'Electric Guitar Long & Chorus 1', NULL, 'Virbank City, Castelia Sewers',
   'main', 'newer_vgm', 44),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '06 Electric Guitars', 'Power Chords Combi Default', NULL, 'Battle! (Gym Leader—Kanto Version), Battle! (Champion—Kanto Version), Battle! (Champion—Hoenn Version), PWT Final Round!',
   'main', 'newer_vgm', 45),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '09 Tonal Percussion', 'Chimes Metal China', 'E3', 'Marine Tube',
   'main', 'newer_vgm', 46),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '19 Synthesizers', 'Reso Bass', NULL, 'Battle! (Champion—Kanto Version), Battle! (Gym Leader—Kanto Version), Battle! (Champion—Hoenn Version), Humilau City',
   'main', 'newer_vgm', 47),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 27 - Andrea -> Sample 1', 'Give me what I need', NULL, 'Nimbasa City Gym: Stage',
   'main', 'newer_vgm', 48),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 27 - Andrea -> Sample 2', 'come close to me', '"...yeah"', 'Nimbasa City Gym: Runway',
   'main', 'newer_vgm', 49),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 27 - Andrea -> Sample 5', 'Yeah yeah', NULL, 'Nimbasa City Gym: Runway',
   'main', 'newer_vgm', 50),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 30 - Andrea -> Sample 6', 'Do do do', NULL, 'Nimbasa City Gym: Runway',
   'main', 'newer_vgm', 51),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 48 - Mike Skinner -> Sample 12', 'Trip start in ...', '"5 - 4 - 3 - 2 - 1"', 'Battle! (Colress)',
   'main', 'newer_vgm', 52),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 52 - Darlene Dixon -> Sample 19', 'Are you ready 3', NULL, 'Trainers'' Eyes Meet (Beauty)',
   'main', 'newer_vgm', 53),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Midi Mark Productions' COLLATE NOCASE AND p.name = 'Vocal Bytes Vol. 3' COLLATE NOCASE),
   'Track 56 - Darlene Dixon -> Sample 14', 'Ahh', NULL, 'Trainers'' Eyes Meet (Beauty)',
   'main', 'newer_vgm', 54),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy -> Drums', '808 Kick 2', NULL, 'Shadow Triad''s Theme',
   'main', 'newer_vgm', 55),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy -> Drums', 'Normal Snare', NULL, 'Shadow Triad''s Theme',
   'main', 'newer_vgm', 56),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy -> Drums', 'Open Metal HH', NULL, 'Shadow Triad''s Theme',
   'main', 'newer_vgm', 57),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy -> Guitar', 'Bad FM', NULL, 'Shadow Triad''s Theme, Driftveil Gym',
   'main', 'newer_vgm', 58),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy -> Mallet Instruments', '12 O'' Clock', 'Two notes, C#-1 and D#0, are overlaid', 'The Frozen City',
   'main', 'newer_vgm', 59),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy -> Synth Lead', 'Binary Lead', NULL, 'Fusion',
   'main', 'newer_vgm', 60),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy -> Synth Lead', 'Square Pad With Flange', NULL, 'Castelia Sewers, Driftveil City Gym, Battle! (Champion Iris), Battle! (Gym Leader—Johto Version), etc.',
   'main', 'newer_vgm', 61),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Absynth' COLLATE NOCASE),
   'Absynth Legacy -> Synth Misc', 'Adrian''s Filter Bank', NULL, 'Marine Tube',
   'main', 'newer_vgm', 62),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'FM8' COLLATE NOCASE),
   'FM7 Legacy', 'DJ Handy', NULL, 'Battle! (Champion Iris), Battle! (Gym Leader—Sinnoh Version), etc',
   'main', 'newer_vgm', 63),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 1 - VSL Strings', 'Harp', NULL, 'Theme of Despair, Coalescence, Confrontation',
   'main', 'newer_vgm', 64),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'CHAIR, ROCKING', 'CHAIRROCKING', '#6010-80-01', 'Strange House',
   'main', 'newer_vgm', 65),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'HAM RADIO: TUNING', 'RADIO, HAM', '#6032-87-01', 'Plasma Frigate Control Room',
   'main', 'newer_vgm', 66),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'HIGH VOLTAGE SPARK, ELECTRICAL', 'ELECTRICITY, SPARK', '#6039-61-01', 'Nimbasa City Gym: Stage',
   'main', 'newer_vgm', 67),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'RATTLE, SHORT, MUSIC, PERCUSSION', 'COWBELL', '#6027-16-01', 'Floccesy Ranch',
   'main', 'newer_vgm', 68),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'SMALL BRASS BELL: SHORT RING', 'BELL, HAND', '#6010-26-02', 'Join Avenue Raffle Prize',
   'main', 'newer_vgm', 69),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'SQUEAK, WOOD', 'SQUEAKWOOD', '#6038-52-01', 'Strange House',
   'main', 'newer_vgm', 70),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Sound Ideas' COLLATE NOCASE AND p.name = 'The General Series 6000' COLLATE NOCASE),
   'STONE DRAGGING ON STONE, GRIND', 'TOMBSTONE', '#6040-75-01', 'Strange House',
   'main', 'newer_vgm', 71),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Metamorphosis S.A.G.E. Xpander' COLLATE NOCASE),
   '140-149', '145-Fizz a', NULL, 'Castelia Sewers',
   'main', 'newer_vgm', 72),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Distortion', 'Aggressive Tendencies', NULL, 'Battle! (Team Plasma), Battle! (Champion—Hoenn Version)',
   'main', 'newer_vgm', 73),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Hits and Bits', 'Aggresitronic Beamz', NULL, 'Battle! (Colress)',
   'main', 'newer_vgm', 74),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Hits and Bits', 'Asian Supremacy', NULL, 'Battle! (Colress)',
   'main', 'newer_vgm', 75),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 57-Isle', '57-Isle a', NULL, 'Cheren''s Theme',
   'main', 'newer_vgm', 76),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 83-Breakers', '83-Breakers b', NULL, 'Driftveil City Gym',
   'main', 'newer_vgm', 77),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 117-ProgHouse', '117-ProgHouse a', NULL, 'Battle! (Gym Leader—Sinnoh Version)',
   'main', 'newer_vgm', 78),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 120-Jiggle', '120-Jiggle a', NULL, 'Join Avenue',
   'main', 'newer_vgm', 79),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 123-Festivo', '123-Festivo a', NULL, 'Humilau City Gym',
   'main', 'newer_vgm', 80),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 125-Pound for Pound', '125-Pound for Pound a', NULL, 'Colress''s Theme',
   'main', 'newer_vgm', 81),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Classic Stylus -> 138-Miami', '138-Miami a', NULL, 'Battle! (Gym Leader—Johto Version)',
   'main', 'newer_vgm', 82),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Cabasa', '123-Cabasa 2', 'Layered together, with AD1 Startup Kit', 'Carnival Ludicolo Musical!',
   'main', 'newer_vgm', 83),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Congas', '155-Congas 1', 'Layered together, with AD1 Startup Kit', 'Carnival Ludicolo Musical!',
   'main', 'newer_vgm', 84),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'Groove Elements -> Cowbells', '123-Agogo 2', 'Layered together, with AD1 Startup Kit', 'Carnival Ludicolo Musical!',
   'main', 'newer_vgm', 85),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 58-Motion Century', '58-Motion Century Combo b', NULL, 'Nimbasa City Gym: Runway, Nimbasa City Gym: Stage',
   'main', 'newer_vgm', 86),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 58-Motion Century', '58-Motion Century Vocal Slicer', NULL, 'Nimbasa City Gym: Stage',
   'main', 'newer_vgm', 87),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 70-Eden', '70-Eden Combo', NULL, 'Trainers'' Eyes Meet (Beauty)',
   'main', 'newer_vgm', 88),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 72-Liquid Frame', '72-Liquid Frame Combo', NULL, 'Castelia City Gym',
   'main', 'newer_vgm', 89),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 85-BumGums', '85-BumGums Combo a', NULL, 'Trainers'' Eyes Meet (Beauty)',
   'main', 'newer_vgm', 90),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 100-Nasty Mutation', '100-Nasty Mutation Combo a', NULL, 'The PWT',
   'main', 'newer_vgm', 91),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 103-Earthquake', '103-Earthquake Combo ', NULL, 'Reversal Mountain (Pokémon White)',
   'main', 'newer_vgm', 92),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 106-King Kong', '106-King Kong Combo', NULL, 'Battle! (Champion—Hoenn Version)',
   'main', 'newer_vgm', 93),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 109-War of the Thips', '109-War of the Thips', NULL, 'Battle! (Colress)',
   'main', 'newer_vgm', 94),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Elephant Boy', '125-Elephant Boy Combo 1', NULL, 'Battle! (Champion Iris)',
   'main', 'newer_vgm', 95),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Elephant Boy', '125-Elephant Boy Claps', 'Note F2, Added compression, EQ and reverb', 'Nimbasa City Gym: Runway, Nimbasa City Gym: Stage',
   'main', 'newer_vgm', 96),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Elephant Boy', '125-Elephant Boy Hi Hat', 'Added compression and reverb', 'Nimbasa City Gym: Runway, Nimbasa City Gym: Stage',
   'main', 'newer_vgm', 97),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 125-Elephant Boy', '125-Elephant Boy Lo HH', 'Note F#1, Added compression and reverb', 'Nimbasa City Gym: Runway, Nimbasa City Gym: Stage',
   'main', 'newer_vgm', 98),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Hysteria', '135-Hysteria Combo a', 'See note for the Waves effects required', 'Shadow Triad''s Theme, Battle! (Champion—Johto Version)',
   'main', 'newer_vgm', 99),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 135-Yellow Funk', '135-Yellow Funk Combo 1', NULL, 'Battle! (Gym Leader—Hoenn Version)',
   'main', 'newer_vgm', 100),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Stylus RMX' COLLATE NOCASE),
   'RMX Grooves -> 140-Encripted', '140-Encripted Combo', NULL, 'Marine Tube',
   'main', 'newer_vgm', 101),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass - Electric Picked', 'Rock P-Bass Pick - Full Range', NULL, 'Virbank City Gym',
   'main', 'newer_vgm', 102),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Synth Bass', 'Bang Street', NULL, 'Nimbasa City Gym: Runway, Nimbasa City Gym: Stage',
   'main', 'newer_vgm', 103),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Drum Content', 'R&B Kit', 'E0 Snare, add reverb', 'Nimbasa City Gym: Runway, Nimbasa City Gym: Stage',
   'main', 'newer_vgm', 104),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'GM Drum Content', 'Rock Kit', 'Ride cymbal and bell', 'Battle! (Rival)',
   'main', 'newer_vgm', 105),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinberg' COLLATE NOCASE AND p.name = 'HALionOne' COLLATE NOCASE),
   'Studio Set', 'T9 Analog Kit', NULL, 'Battle! (Rival), PWT Final Round!, Battle! (Team Plasma)',
   'main', 'newer_vgm', 106),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '01-Acoustic Pianos -> 01-Grand Piano', 'Classical Grand 2', NULL, 'Battle! (Rival), Infiltrating the Plasma Frigate!, etc.',
   'main', 'newer_vgm', 107),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (02-Fretted)' COLLATE NOCASE),
   '04-Electric Bass -> 04-Fend. Jazz Bass', 'Fend. Slap 1 Pull', 'New sample for Marine Tube (lowest note, EQ''d)', 'Battle! (Rival), PWT Final Round!, Marine Tube',
   'main', 'newer_vgm', 108),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '01-Acoustic Drums -> Jazz Kits', 'Complete Jazz Kit', 'Snare, velocity 90', 'Carnival Ludicolo Musical!',
   'main', 'newer_vgm', 109),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (03-Drums and Percs)' COLLATE NOCASE),
   '03-Stylistic Kits -> 03-Groove Kits', 'Groove Kit 09', 'Snare, add Reverb and Compression', 'Ending Theme',
   'main', 'newer_vgm', 110),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Voices', 'Childrens Ohs sus', 'velocity >=100', 'Marine Tube, Battle! (N)',
   'main', 'newer_vgm', 111),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> Electronica', 'Chemical House', 'Snare', 'Battle! (Rival)',
   'main', 'newer_vgm', 112),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Big)', 'Live on Stage', NULL, 'Confrontation, Virbank City Gym',
   'main', 'newer_vgm', 113),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'XLN Audio' COLLATE NOCASE AND p.name = 'Addictive Drums' COLLATE NOCASE),
   'Kits -> PopRock (Medium)', 'Startup', 'Also used for the two snare samples', 'Pokestar Studios: Retreat, Battle! (Ghetsis), Battle! (N)',
   'main', 'newer_vgm', 114),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '082 032 DoublSaw', 'Check notes', 'Battle! (Champion Iris), Black Tower, Unova Link, Battle! (Gym Leader—Hoenn Version)',
   'main', 'newer_vgm', 115),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '082 032 DoublSaw', 'Check notes', 'Battle! (Gym Leader), Rival''s Theme, Battle! (Rival), Battle! (Team Plasma), Colress''s Theme, Unova Link, Battle! (Regirock/Regice/Registeel), Battle! (Champion Iris), etc.',
   'main', 'newer_vgm', 116),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 28', '16_28_09', 'EQ Clap', 'Castelia Sewers',
   'main', 'newer_vgm', 117),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 2', '30_02_01', 'Orchestra hit (Major)', 'Nimbasa City Gym: Stage',
   'main', 'newer_vgm', 118),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 3', '30_03_01', 'Orchestra hit (Minor)', 'Battle! (Champion—Sinnoh Version)',
   'main', 'newer_vgm', 119),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 3', '30_03_03', 'Orchestra hit (Minor)', 'Battle! (Champion—Sinnoh Version)',
   'main', 'newer_vgm', 120),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 3', '30_03_05', 'Orchestra hit (Minor)', 'Battle! (Champion—Sinnoh Version)',
   'main', 'newer_vgm', 121),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE),
   'Track 3', '30_03_07', 'Orchestra hit (Minor)', 'Battle! (Champion—Sinnoh Version)',
   'main', 'newer_vgm', 122),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'World Pack' COLLATE NOCASE),
   'World Pack Instruments -> Afrolatin Brazzilian 1', 'Cuica 3B', NULL, 'Carnival Ludicolo Musical!',
   'main', 'newer_vgm', 123),

  -- Ripped-from-previous-Pokémon block (rows 833-856) — still main, just sourced from earlier titles
  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 27 - Dancefloor Bass' COLLATE NOCASE),
   'Multisampled Bass', '27A-BSE01B', 'From Pokémon Black/White', 'Battle! (Team Plasma)',
   'main', 'newer_vgm', 124),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 51 - Classic Orchestra 2' COLLATE NOCASE),
   'French Horns', '51F-FRH01-B0', 'From Pokémon Diamond/Pearl', 'Battle! (Azelf/Mesprit/Uxie)',
   'main', 'newer_vgm', 125),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE),
   'Partition A -> CELLO SECTIO', '55F-CL01-C#1', 'From Pokémon Diamond/Pearl', 'Battle! (Azelf/Mesprit/Uxie)',
   'main', 'newer_vgm', 126),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 19 - Pop Brass' COLLATE NOCASE),
   'Partition A -> VOLUME 002 -> 3TP SUS', 'T3SSFC#3, T3SSFC#4, T3SSFB4', 'From Pokémon Diamond/Pearl', 'Battle! (Azelf/Mesprit/Uxie)',
   'main', 'newer_vgm', 127),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '015 000 Tubular-bel2', 'From Pokémon Diamond/Pearl', 'Battle! (Azelf/Mesprit/Uxie)',
   'main', 'newer_vgm', 128),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '022 000 French Acc', 'From Pokémon Diamond/Pearl', 'Battle! (Azelf/Mesprit/Uxie)',
   'main', 'newer_vgm', 129),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '017 Power Set 2', 'From Pokémon Diamond/Pearl', 'Battle! (Gym Leader—Sinnoh Version)',
   'main', 'newer_vgm', 130),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Enhanced Set', '017 000 Perky Spin', 'From Pokémon Diamond/Pearl', 'Battle! (Azelf/Mesprit/Uxie), Medal Box: Medal Box Upgraded!',
   'main', 'newer_vgm', 131),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'KORG' COLLATE NOCASE AND p.name = 'TRINITY Pro' COLLATE NOCASE),
   'Combinations -> Bank A', 'A105 POP U Wit'' This', 'From Pokémon Diamond/Pearl', 'Battle! (Azelf/Mesprit/Uxie)',
   'main', 'newer_vgm', 132),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '13 Orchestral Brass (KHSO)', 'KHSO Trombones Staccato', 'From Pokémon Black/White', 'PWT Final Round!',
   'main', 'newer_vgm', 133),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE AND p.name = 'Independence Pro' COLLATE NOCASE),
   '14 Orchestral Strings (KHSO)', 'KHSO All Strings Spc Up', 'From Pokémon Black/White', 'Theme of Invasion, Assault! Opelucid City, Coalescence, Absorption',
   'main', 'newer_vgm', 134),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'GM Kit', NULL, 'Battle! (Rival)',
   'main', 'newer_vgm', 135),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'Pop Kit', 'Bass drum', 'White Treehollow',
   'main', 'newer_vgm', 136),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Battery 3' COLLATE NOCASE),
   '01 - Acoustic Kits', 'Rock Kit', NULL, 'Battle! (Rival)',
   'main', 'newer_vgm', 137),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Kontakt Factory Library' COLLATE NOCASE),
   'Orchestral -> 5 - Orchestral Percussion', 'Tambourine', 'From Pokémon Black/White', 'Floccesy Ranch',
   'main', 'newer_vgm', 138),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Nine Volt Audio' COLLATE NOCASE AND p.name = 'Taiko 1' COLLATE NOCASE),
   'Instrument', 'TO BE FILLED', 'From Pokémon Black/White', 'Battle! (Ghetsis)',
   'main', 'newer_vgm', 139),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '04-Synth Bass -> R''n B - Funk', 'Elastik', 'From Pokémon Black/White', 'Shadow Triad''s Theme',
   'main', 'newer_vgm', 140),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (05-General MIDI)' COLLATE NOCASE),
   '02-Pitched Percussions', '10-Glockenspiel', 'From Pokémon Black/White', 'PWT Final Round!',
   'main', 'newer_vgm', 141),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Strings Solo', 'Cello sus', NULL, 'Various',
   'main', 'newer_vgm', 142),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (06-Orchestral)' COLLATE NOCASE),
   'Woodwinds Solo', 'Flute sus', NULL, 'PWT Final Round!',
   'main', 'newer_vgm', 143),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '082 032 DoublSaw', 'from Pokémon Diamond/Pearl (Check Notes)', 'Battle! Colress',
   'main', 'newer_vgm', 144),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'QY70' COLLATE NOCASE),
   'EuroBt1', '028 127 Dance Kit [Notes C2 and D2]', 'from Pokémon Diamond/Pearl (Check Notes)', 'Battle! (Champion—Sinnoh Version)',
   'main', 'newer_vgm', 145),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 31', '16_31_03', 'Windchimes, cut and crossfaded sample', 'Marine Tube, Join Avenue Meet and Greet!, The Frozen City etc.',
   'main', 'newer_vgm', 146),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'ProSamples Vol. 9 - Future Beats 2' COLLATE NOCASE),
   'Loop 15 154BPM', '09g02pls', NULL, 'Battle! (Team Plasma)',
   'main', 'newer_vgm', 147),

  -- Stuff to Find (rows 858-874) -> stuff_to_find
  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Discovery Firm' COLLATE NOCASE AND p.name = 'Sound Effects CD Series 4 - WAR' COLLATE NOCASE),
   NULL, 'vocal syllable eeh + military siren', 're - military: Kaeru Cafe war and disaster!!', 'Battle! (Team Plasma)',
   'stuff_to_find', 'newer_vgm', 148),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE),
   '12-Urban Instruments -> 07-Vinyl', '?', 'maybe', 'N''s Castle',
   'stuff_to_find', 'newer_vgm', 149),

  -- Row 860: "Zero-G?,Altered States?" — manufacturer/product uncertain, treated as Unknown sentinel
  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   'GLASSLOOP2', 'synth pad', 'Seemingly uses GLASSLOOP2 layered with something else (raw source: Zero-G? / Altered States?)', 'Castelia City Gym',
   'stuff_to_find', 'newer_vgm', 150),

  -- Row 861: empty mfr/product
  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'lead', 'unused', 'Marine Tube',
   'stuff_to_find', 'newer_vgm', 151),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'meow synth', NULL, 'Humilau City, Battle! (Gym Leader—Hoenn Version) ',
   'stuff_to_find', 'newer_vgm', 152),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'sine synth', NULL, 'Battle! (Colress), Marine Tube, Pokestar Studios: Retreat, Battle! (Champion—Sinnoh Version)',
   'stuff_to_find', 'newer_vgm', 153),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'percussion hit', 'unedited version also used as SFX in game alongside another variant', 'Battle! (Ghetsis)',
   'stuff_to_find', 'newer_vgm', 154),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Optical Media International' COLLATE NOCASE AND p.name = 'Universe of Sounds: Sonic Images Vol. 1' COLLATE NOCASE),
   'Partition B -> ORCH.EFFECTS', 'ORCH.EFFECTS', 'F   O.EFFECT', 'Coalescence, Absorption, Confrontation',
   'stuff_to_find', 'newer_vgm', 155),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Lennar Digital' COLLATE NOCASE AND p.name = 'Sylenth1' COLLATE NOCASE),
   '-', 'Init', 'modified -> increased voices + noise turned on', 'Xtransceiver (Game Start!), Xtransceiver (Game Won!)',
   'stuff_to_find', 'newer_vgm', 156),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Brass Hit', 'also in the japanese Platinum trailer ???', 'Fusion',
   'stuff_to_find', 'newer_vgm', 157),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Elesa Gym Kick', 'Has added reverb', 'Nimbasa Gym, Battle! (Gym Leader—Hoenn Version)',
   'stuff_to_find', 'newer_vgm', 158),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'sfx', 'Seems like Sound Ideas stuff', 'this area in the game uses a bunch of sfx',
   'stuff_to_find', 'newer_vgm', 159),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Orchestra hit #2', NULL, 'Absorption, Confrontation',
   'stuff_to_find', 'newer_vgm', 160),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Bass drum impact sound #1', NULL, 'Absorption',
   'stuff_to_find', 'newer_vgm', 161),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Bass drum impact sound #2', NULL, 'Fusion, Absorption, Confrontation',
   'stuff_to_find', 'newer_vgm', 162),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Extremely loud noise echo (????)', 'Most likely not a single sample', 'Awakening',
   'stuff_to_find', 'newer_vgm', 163),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Unknown' COLLATE NOCASE AND p.name = 'Unknown' COLLATE NOCASE),
   NULL, 'Ambient wind / forest SFX', NULL, 'tree hollow areas',
   'stuff_to_find', 'newer_vgm', 164),

  -- "Unused, but used as inspiration" (row 876) -> unused
  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Omnisphere Library -> Organs', 'Insects Inside the Organ', 'May have inspired sequenced granular effect', 'Battle! (Colress)',
   'unused', 'newer_vgm', 165),

  -- Early Music (Teraleak / Freakleak) (rows 878-879) -> unused (closest available category)
  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Vocals -> Computer', 'C#m-Boy Robot', NULL, 'Virbank City Gym (Pre-Recorded Vocals)',
   'unused', 'newer_vgm', 166),

  ((SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (Loops)' COLLATE NOCASE),
   'Vocals -> Natural', 'Am-Ha Ha', NULL, 'Virbank City Gym (Pre-Recorded Vocals)',
   'unused', 'newer_vgm', 167);

-- Patch raw_source for the non-commercial Live Recording row (position 16).
-- That row was inserted with product_id NULL; we stash the original col A/B descriptor here.
UPDATE usages SET raw_source = 'Live Recording: GAME FREAK — Koffing and the Toxics Vocals'
  WHERE game_id = (SELECT id FROM games WHERE title = 'Pokémon Black 2 and Pokémon White 2')
    AND position = 16;
