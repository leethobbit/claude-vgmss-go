-- Source: reference/NEWER VGM Sound Sources - Pokémon.csv rows 242-286
-- Pokémon Platinum (DS, 2008).
-- Composers: Go Ichinose, Junichi Masuda, Hitomi Sato, Satoshi Nohara.
-- Row 244 is the only "main" usage; rows 247-286 are the Leaked Samples subsection (unused).

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('UVI'),
  ('AKAI Professional');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'UVI'                COLLATE NOCASE), 'PlugSound Pro (01-Keyboards)',                                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'AKAI Professional'  COLLATE NOCASE), 'Sound Library Vol. 1 XL - S3000/CD3000 Samples',                 'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'AKAI Professional'  COLLATE NOCASE), 'Sound Library Vol. 2 - S1000/S1100 Samples',                     'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'ProSamples Vol. 11 - Classic Orchestra',                         'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'ProSamples Vol. 15 - Dance Drums',                               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'ProSamples Vol. 51 - Classic Orchestra 2',                       'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'ProSamples Vol. 53 - Prepared Pianos',                           'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'ProSamples Vol. 55 - Cult Sampler',                              'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'ProSamples Vol. 16 - Guitar & Bass',                             'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'ProSamples Vol. 20 - Orchestral Brass',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'ProSamples Vol. 31 - Rare Instruments',                          'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'EDIROL'             COLLATE NOCASE), 'STUDIO Canvas SD-90',                                            'Hardware'),
  ((SELECT id FROM manufacturers WHERE name = 'Yamaha'             COLLATE NOCASE), 'SY77',                                                           'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'             COLLATE NOCASE), 'Creative Essentials Vol. 16 Drum & Percussion Tools',            'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Zero-G'             COLLATE NOCASE), 'Creative Essentials Vol. 17 Bass Separates',                     'Sample Library');

INSERT INTO games (title, platform, released, composers, composers_normalized, notes) VALUES
  ('Pokémon Platinum',
   'Nintendo DS',
   'September 13, 2008',
   'Go Ichinose, Junichi Masuda, Hitomi Sato, Satoshi Nohara',
   'go ichinose, junichi masuda, hitomi sato, satoshi nohara',
   'All other instruments come from Diamond & Pearl (per source CSV annotation, row 243). Leaked Samples subsection (rows 245-286): only samples not found in-game are listed; some can be heard in prototype versions of Pokémon Diamond/Pearl.');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- Main usage (row 244)
  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'UVI' COLLATE NOCASE AND p.name = 'PlugSound Pro (01-Keyboards)' COLLATE NOCASE),
   '08-Mallets & co', 'Music Box', NULL, 'Villa Music Box: Twinleaf Tune',
   'main', 'newer_vgm', 1),

  -- Leaked Samples subsection (rows 247-286) — category='unused'
  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AKAI Professional' COLLATE NOCASE AND p.name = 'Sound Library Vol. 1 XL - S3000/CD3000 Samples' COLLATE NOCASE),
   'Partition C -> 3113 Brass#2', 'LA BRASS', 'Unused instrument, samples not found in-game', 'brass_c1_16.aif, brass_c2_16.aif, brass_c4_16.aif, brass_c5_16.aif',
   'unused', 'newer_vgm', 2),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'AKAI Professional' COLLATE NOCASE AND p.name = 'Sound Library Vol. 2 - S1000/S1100 Samples' COLLATE NOCASE),
   'Partition C -> 1035 WIND #1', 'CLARINET', 'Unused instrument, samples not found in-game', 'clarinet_a3_16.aif, clarinet_a3_22.aif, clarinet_c2_16.aif, clarinet_d2_16.aif, clarinet_d2_22.aif, clarinet_ds3_16.aif, clarinet_ds3_22.aif',
   'unused', 'newer_vgm', 3),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 11 - Classic Orchestra' COLLATE NOCASE),
   'Advanced Compact -> Snares', '11-orc06-sd', 'Unused instrument, samples not found in-game', 'oct_sne_16.aif',
   'unused', 'newer_vgm', 4),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition A -> SD 001-060', '15A-SDE021', 'Unused instrument, samples not found in-game', 'sne2_act.aif',
   'unused', 'newer_vgm', 5),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CLAP 45-88', '15C-CLP63', 'Unused instrument, samples not found in-game', 'handclup2.aif',
   'unused', 'newer_vgm', 6),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CYM 01-44', '15E-CYM04', 'Unused instrument, samples not found in-game', 'crash2.aif',
   'unused', 'newer_vgm', 7),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CYM 01-44', '15E-CYM12', 'Unused instrument, samples not found in-game', 'crash1.aif',
   'unused', 'newer_vgm', 8),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 15 - Dance Drums' COLLATE NOCASE),
   'Partition B -> CYM 01-44', '15E-CYM01', 'Unused instrument, samples not found in-game', 'minicynbal.aif',
   'unused', 'newer_vgm', 9),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 51 - Classic Orchestra 2' COLLATE NOCASE),
   'Cello Solo', '51h-cls04-A1', 'Unused instrument, samples not found in-game', 'cello1_a1_16.aif, cello2_a1_16.aif, cello3_a1_16.aif',
   'unused', 'newer_vgm', 10),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 53 - Prepared Pianos' COLLATE NOCASE),
   '01 BrilliandClassical Piano', 'Classical Piano ff +ped', 'Unused instrument, samples not found in-game', 'piano2_c0_22.aif, piano2_c1_22.aif, piano2_c2_22.aif, piano2_c3_22.aif, piano2_c4_22.aif, piano2_c5_22.aif, piano2_c6_22.aif',
   'unused', 'newer_vgm', 11),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'ProSamples Vol. 55 - Cult Sampler' COLLATE NOCASE),
   'EMU E-III', 'Sax Balzy', 'Unused instrument, samples not found in-game', 'sax_c2_16.aif, sax_c3_16.aif, sax_c4_16.aif, sax_g3_16.aif, sax1_c3_16.aif',
   'unused', 'newer_vgm', 12),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 16 - Guitar & Bass' COLLATE NOCASE),
   '08 Ander Strat', '04 Strat Pop', 'Unused instrument, samples not found in-game', 'strat_pop_e1_16.aif, strat_pop_e2_16.aif, strat_pop_e3_16.aif, strat_pop_e4_16.aif',
   'unused', 'newer_vgm', 13),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 20 - Orchestral Brass' COLLATE NOCASE),
   'PARTITION C -> VOLUME 001', 'TUBA SUS', 'Unused instrument, samples not found in-game', 'tuba_c2_16.aif, tuba_d1_16.aif, tuba_e3_16.aif',
   'unused', 'newer_vgm', 14),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 20 - Orchestral Brass' COLLATE NOCASE),
   'PARTITION C -> VOLUME 003', '4FH SUSF+', 'Unused instrument, samples not found in-game', 'f_horn_cs1_16.aif, f_horn_cs2_16.aif, f_horn_cs3_16.aif, f_horn_cs4_16.aif',
   'unused', 'newer_vgm', 15),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'ProSamples Vol. 31 - Rare Instruments' COLLATE NOCASE),
   'Alpen Horn', '31a-brs02-A1', 'Unused instrument, samples not found in-game', 'dp_a_forn_a1_16.aif, dp_a_forn_a1_22.aif, dp_a_forn_a1_24.aif',
   'unused', 'newer_vgm', 16),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set', '019 000 Organ 3', 'Unused instrument, samples not found in-game', 'org3_c2_22.aif, org3_c3_16.aif, org3_c3_22.aif, org3_c4_16.aif, org3_c4_22.aif, org3_c5_16.aif, org3_c5_22.aif, org3_c6_16.aif, org3_c6_22.aif',
   'unused', 'newer_vgm', 17),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Classical Set -> Drums', '001 Standard Set', 'Instrument used without these samples in-game', 'chinacym_16.aif, claves_16.aif, high_agogo_16.aif, low_conga_16.aif, oct_open_16.aif, sidestick_16.aif, splash_16.aif',
   'unused', 'newer_vgm', 18),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '062 000 Brass FF', 'Unused instrument, samples not found in-game', 'brass_c3_16.aif',
   'unused', 'newer_vgm', 19),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set', '109 000 Kalimba 2', 'Unused instrument, samples not found in-game', 'kalinba_c3_16.aif, kalinba1_c3_16.aif, kalinba2_c3_16.aif, kalinba3_c3_16.aif',
   'unused', 'newer_vgm', 20),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '026 Rave Set', 'Unused instrument, samples not found in-game', '808_bass_16.aif, 808_bass2_16.aif, 808_clorse_44.aif, 808_open_16.aif, 808_snare_16.aif, 808_tom_16.aif, elec_snare_22.aif',
   'unused', 'newer_vgm', 21),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Contemporary Set -> Drums', '017 Power Set 2', 'Instrument used without these samples in-game', 'power_bass_16.aif, power_bass2_16.aif, power_tom_16.aif',
   'unused', 'newer_vgm', 22),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EDIROL' COLLATE NOCASE AND p.name = 'STUDIO Canvas SD-90' COLLATE NOCASE),
   'Native -> Special 1 Set', '057 Klubb Organ', 'Unused instrument, samples not found in-game', 'org2_c2_22.aif, org2_c3_22.aif, org2_c4_22.aif, org2_c5_22.aif, org2_c6_22.aif, org2_c7_22.aif',
   'unused', 'newer_vgm', 23),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'PRESET 1 -> Bank A', 'A03 Dyno E.Pno', 'Unused instrument, samples not found in-game', 'sy_dyelep_c3_22.aif, sy_dyelep_c4_22.aif',
   'unused', 'newer_vgm', 24),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'PRESET 1 -> Bank A', 'A13 Nasty Saw', 'Unused instrument, samples not found in-game', 'sy_nasty_c3_16.aif',
   'unused', 'newer_vgm', 25),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'PRESET 1 -> Bank B', 'B07 Ice Piano', 'Unused instrument, samples not found in-game', 'sy_ice_c3_16.aif',
   'unused', 'newer_vgm', 26),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'PRESET 1 -> Bank C', 'C13 Tenor Sax', 'Unused instrument, samples not found in-game', 'sy_sax_c3_16.aif',
   'unused', 'newer_vgm', 27),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'PRESET 1 -> Bank C', 'C14 Flute', 'Unused instrument, samples not found in-game', 'sy_flute_c3_16.aif, sy_fluteflat_c3_16.aif',
   'unused', 'newer_vgm', 28),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'PRESET 1 -> Bank D', 'D07 Pan Flute', 'Unused instrument, samples not found in-game', 'sy_panflute_c3_16.aif',
   'unused', 'newer_vgm', 29),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'PRESET 2 -> Bank A', 'A12 Syn Bass', 'Unused instrument, samples not found in-game', 'sy_synbass1_c2_16.aif',
   'unused', 'newer_vgm', 30),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'PRESET 1 -> Bank D', 'D12 FullString', 'Unused instrument, samples not found in-game', 'sy_strings_c3_16.aif',
   'unused', 'newer_vgm', 31),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'FILL IN', 'FILL IN', 'Unused instrument, samples not found in-game', 'sy_synpiano_c3_16.aif',
   'unused', 'newer_vgm', 32),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Yamaha' COLLATE NOCASE AND p.name = 'SY77' COLLATE NOCASE),
   'Most likely SY77 even though name doesn''t start with SY', NULL, 'Unused instrument, samples not found in-game', 'synpiano_c2_16.aif',
   'unused', 'newer_vgm', 33),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 18', '16_18_03', 'Instrument used without these samples in-game', 'sne3_loop.aif',
   'unused', 'newer_vgm', 34),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 18', '16_18_05', 'Instrument used without these samples in-game', 'sne4_loop.aif',
   'unused', 'newer_vgm', 35),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 28', '16_28_10', 'Instrument used without these samples in-game', 'rim2_loop.aif',
   'unused', 'newer_vgm', 36),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 16 Drum & Percussion Tools' COLLATE NOCASE),
   'Track 28', '16_28_13', 'Instrument used without these samples in-game', 'sne6_loop.aif',
   'unused', 'newer_vgm', 37),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 15', '17_15_01', 'Unused instrument, samples not found in-game', 'bbass_e1_22.aif',
   'unused', 'newer_vgm', 38),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 16', '17_16_01', 'Unused instrument, samples not found in-game', 'bbass_a1_22.aif',
   'unused', 'newer_vgm', 39),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 17', '17_17_01', 'Unused instrument, samples not found in-game', 'bbass_d2_22.aif',
   'unused', 'newer_vgm', 40),

  ((SELECT id FROM games WHERE title = 'Pokémon Platinum'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Zero-G' COLLATE NOCASE AND p.name = 'Creative Essentials Vol. 17 Bass Separates' COLLATE NOCASE),
   'Track 18', '17_18_03', 'Unused instrument, samples not found in-game', 'bbass_a3_22.aif',
   'unused', 'newer_vgm', 41);
