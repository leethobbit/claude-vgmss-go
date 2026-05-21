-- Source: reference/HOYO-MiX Sound Sources - Genshin Impact.csv (rows 3313-5480)
-- Genshin Impact part 3 of 4. Albums 14-18 of HOYO-MiX's Genshin Impact catalog.
-- The 'games' row for Genshin Impact is created by part 1 (file 0032).
-- Albums covered (7):
--   * Fountain of Belleau (Discs 1-4)
--   * Pelagic Primaevality (Discs 1-3)
--   * Jadeite Redolence (Discs 1-2)
--   * Cantus Aeternus (Discs 1-3)
--   * The Shimmering Voyage Vol. 4 (Discs 1-3)
--   * Land of Tleyaoyotl (Discs 1-3)
--   * Eternal Sun, Eternal Want (Discs 1-3) -- sub-album of Land of Tleyaoyotl
-- Live Recording rows: product_id NULL, raw_source populated via individual UPDATEs at end of file.
-- Credited Piano Performance treated like Live Recording (product_id NULL + UPDATE).
-- Recording Studio multi-line annotation blocks are dropped (album-level metadata, not usages).
-- Composer notes in this range reference only already-known composers; no new composer UPDATEs.

INSERT OR IGNORE INTO manufacturers (name) VALUES
  ('Bizzi'),
  ('Schiedmayer'),
  ('Steinway & Sons'),
  ('Arturia'),
  ('Heavyocity'),
  ('Native Instruments'),
  ('EastWest'),
  ('Splice Sounds'),
  ('Best Service'),
  ('Spectrasonics'),
  ('Soniccouture');

INSERT OR IGNORE INTO products (manufacturer_id, name, type) VALUES
  ((SELECT id FROM manufacturers WHERE name = 'Bizzi'              COLLATE NOCASE), 'Goermans-Taskin',                       'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Schiedmayer'        COLLATE NOCASE), '5.5-Octave Celesta',                    'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Steinway & Sons'    COLLATE NOCASE), 'Steinway D-274',                        'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Arturia'            COLLATE NOCASE), 'Pigments',                              'Synth'),
  ((SELECT id FROM manufacturers WHERE name = 'Heavyocity'         COLLATE NOCASE), 'Damage',                                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'Noire',                                 'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Native Instruments' COLLATE NOCASE), 'Ashlight',                              'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'EastWest'           COLLATE NOCASE), 'Symphonic Orchestra',                   'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Splice Sounds'      COLLATE NOCASE), 'Sounds of KSHMR Vol. 3',                'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Best Service'       COLLATE NOCASE), 'Ethno World Instruments',               'Sample Library'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Omnisphere',                            'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Spectrasonics'      COLLATE NOCASE), 'Trilian',                               'Instrument'),
  ((SELECT id FROM manufacturers WHERE name = 'Soniccouture'       COLLATE NOCASE), 'Spotlight Collection: Balinese Gamelan', 'Sample Library');

INSERT INTO usages
  (game_id, product_id, path_bank, preset, notes, examples, category, source_family, position)
VALUES
  -- =========================================================================
  -- Album: Fountain of Belleau (2023-10-02)
  -- Disc 1: Chanson of Justice and Impartiality
  -- =========================================================================
  -- 1. Fontaine
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Fontaine', 'main', 'hoyo_mix', 1),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Fontaine', 'main', 'hoyo_mix', 2),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Fontaine', 'main', 'hoyo_mix', 3),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Fontaine', 'main', 'hoyo_mix', 4),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Fontaine', 'main', 'hoyo_mix', 5),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Bizzi' COLLATE NOCASE AND p.name = 'Goermans-Taskin' COLLATE NOCASE),
   NULL, NULL, 'Album: Fountain of Belleau', '1. Fontaine', 'main', 'hoyo_mix', 6),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Schiedmayer' COLLATE NOCASE AND p.name = '5.5-Octave Celesta' COLLATE NOCASE),
   NULL, NULL, 'Album: Fountain of Belleau', '1. Fontaine', 'main', 'hoyo_mix', 7),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Fountain of Belleau', '1. Fontaine', 'main', 'hoyo_mix', 8),
  -- 2. Le Souvenir avec le crepuscule
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Le Souvenir avec le crepuscule', 'main', 'hoyo_mix', 9),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Le Souvenir avec le crepuscule', 'main', 'hoyo_mix', 10),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Le Souvenir avec le crepuscule', 'main', 'hoyo_mix', 11),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Le Souvenir avec le crepuscule', 'main', 'hoyo_mix', 12),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Le Souvenir avec le crepuscule', 'main', 'hoyo_mix', 13),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Le Souvenir avec le crepuscule', 'main', 'hoyo_mix', 14),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Le Souvenir avec le crepuscule', 'main', 'hoyo_mix', 15),
  -- 3. Ballad of Many Waters
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. Ballad of Many Waters', 'main', 'hoyo_mix', 16),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. Ballad of Many Waters', 'main', 'hoyo_mix', 17),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. Ballad of Many Waters', 'main', 'hoyo_mix', 18),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. Ballad of Many Waters', 'main', 'hoyo_mix', 19),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. Ballad of Many Waters', 'main', 'hoyo_mix', 20),
  -- 4. City of Mellifluous Glory
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. City of Mellifluous Glory', 'main', 'hoyo_mix', 21),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. City of Mellifluous Glory', 'main', 'hoyo_mix', 22),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. City of Mellifluous Glory', 'main', 'hoyo_mix', 23),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. City of Mellifluous Glory', 'main', 'hoyo_mix', 24),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. City of Mellifluous Glory', 'main', 'hoyo_mix', 25),
  -- 5. Leisurely Days in Fontaine
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Leisurely Days in Fontaine', 'main', 'hoyo_mix', 26),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Leisurely Days in Fontaine', 'main', 'hoyo_mix', 27),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Leisurely Days in Fontaine', 'main', 'hoyo_mix', 28),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Leisurely Days in Fontaine', 'main', 'hoyo_mix', 29),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Leisurely Days in Fontaine', 'main', 'hoyo_mix', 30),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Leisurely Days in Fontaine', 'main', 'hoyo_mix', 31),
  -- 6. Poesy of Chrysolite
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '6. Poesy of Chrysolite', 'main', 'hoyo_mix', 32),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '6. Poesy of Chrysolite', 'main', 'hoyo_mix', 33),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '6. Poesy of Chrysolite', 'main', 'hoyo_mix', 34),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '6. Poesy of Chrysolite', 'main', 'hoyo_mix', 35),
  -- 7. Luminescence of Eventide
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '7. Luminescence of Eventide', 'main', 'hoyo_mix', 36),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '7. Luminescence of Eventide', 'main', 'hoyo_mix', 37),
  -- 8. Coruscating Street
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '8. Coruscating Street', 'main', 'hoyo_mix', 38),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '8. Coruscating Street', 'main', 'hoyo_mix', 39),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '8. Coruscating Street', 'main', 'hoyo_mix', 40),
  -- 9. Dreams'' Swirling Whispers
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '9. Dreams'' Swirling Whispers', 'main', 'hoyo_mix', 41),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '9. Dreams'' Swirling Whispers', 'main', 'hoyo_mix', 42),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '9. Dreams'' Swirling Whispers', 'main', 'hoyo_mix', 43),
  -- 10. La nuit silencieuse et paisible
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '10. La nuit silencieuse et paisible', 'main', 'hoyo_mix', 44),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '10. La nuit silencieuse et paisible', 'main', 'hoyo_mix', 45),
  -- 11. Quand la lumiere resplendira
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '11. Quand la lumiere resplendira', 'main', 'hoyo_mix', 46),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '11. Quand la lumiere resplendira', 'main', 'hoyo_mix', 47),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '11. Quand la lumiere resplendira', 'main', 'hoyo_mix', 48),
  -- 12. Symposion of Spectacle
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '12. Symposion of Spectacle', 'main', 'hoyo_mix', 49),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '12. Symposion of Spectacle', 'main', 'hoyo_mix', 50),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '12. Symposion of Spectacle', 'main', 'hoyo_mix', 51),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '12. Symposion of Spectacle', 'main', 'hoyo_mix', 52),
  -- 13. Harmonia of Polysynodie
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '13. Harmonia of Polysynodie', 'main', 'hoyo_mix', 53),
  -- 14. Pluie sur la ville
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '14. Pluie sur la ville', 'main', 'hoyo_mix', 54),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '14. Pluie sur la ville', 'main', 'hoyo_mix', 55),
  -- 15. Le fleuve secret
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '15. Le fleuve secret', 'main', 'hoyo_mix', 56),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '15. Le fleuve secret', 'main', 'hoyo_mix', 57),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '15. Le fleuve secret', 'main', 'hoyo_mix', 58),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '15. Le fleuve secret', 'main', 'hoyo_mix', 59),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '15. Le fleuve secret', 'main', 'hoyo_mix', 60),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '15. Le fleuve secret', 'main', 'hoyo_mix', 61),
  -- 16. Cakes and Ale for the Exiled
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '16. Cakes and Ale for the Exiled', 'main', 'hoyo_mix', 62),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '16. Cakes and Ale for the Exiled', 'main', 'hoyo_mix', 63),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '16. Cakes and Ale for the Exiled', 'main', 'hoyo_mix', 64),
  -- 17. Romaritime Recollection
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '17. Romaritime Recollection', 'main', 'hoyo_mix', 65),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '17. Romaritime Recollection', 'main', 'hoyo_mix', 66),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '17. Romaritime Recollection', 'main', 'hoyo_mix', 67),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '17. Romaritime Recollection', 'main', 'hoyo_mix', 68),
  -- 18. Pilot''s Rest
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '18. Pilot''s Rest', 'main', 'hoyo_mix', 69),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '18. Pilot''s Rest', 'main', 'hoyo_mix', 70),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '18. Pilot''s Rest', 'main', 'hoyo_mix', 71),
  -- 19. Limpide est le sanglot d''eau
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '19. Limpide est le sanglot d''eau', 'main', 'hoyo_mix', 72),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '19. Limpide est le sanglot d''eau', 'main', 'hoyo_mix', 73),
  -- 20. Clair de lune
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '20. Clair de lune', 'main', 'hoyo_mix', 74),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '20. Clair de lune', 'main', 'hoyo_mix', 75),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '20. Clair de lune', 'main', 'hoyo_mix', 76),
  -- 21. Spring Song
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '21. Spring Song', 'main', 'hoyo_mix', 77),
  -- 22. Where All Waters Converge
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '22. Where All Waters Converge', 'main', 'hoyo_mix', 78),
  -- 23. Raven Gloss of Darkness
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '23. Raven Gloss of Darkness', 'main', 'hoyo_mix', 79),
  -- 24. Le spectacle doit continuer
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '24. Le spectacle doit continuer', 'main', 'hoyo_mix', 80),
  -- 25. The Oratrice''s Verdict
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '25. The Oratrice''s Verdict', 'main', 'hoyo_mix', 81),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '25. The Oratrice''s Verdict', 'main', 'hoyo_mix', 82),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '25. The Oratrice''s Verdict', 'main', 'hoyo_mix', 83),
  -- 26. Searching for Clues
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '26. Searching for Clues', 'main', 'hoyo_mix', 84),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '26. Searching for Clues', 'main', 'hoyo_mix', 85),
  -- 27. Sensational Sentence
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '27. Sensational Sentence', 'main', 'hoyo_mix', 86),
  -- 28. Deductive Rendition (no usage rows in source)
  -- 29. Contemporary Testimony (no usage rows in source)
  -- 30. Je sais le nom de l''etranger !
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '30. Je sais le nom de l''etranger !', 'main', 'hoyo_mix', 87),
  -- 31. Caliginous Hearthfire
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '31. Caliginous Hearthfire', 'main', 'hoyo_mix', 88),
  -- =========================================================================
  -- Disc 2: Arioso of Belle Epoque
  -- =========================================================================
  -- 1. Il Nome della Rosula
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Il Nome della Rosula', 'main', 'hoyo_mix', 89),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Il Nome della Rosula', 'main', 'hoyo_mix', 90),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Il Nome della Rosula', 'main', 'hoyo_mix', 91),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Il Nome della Rosula', 'main', 'hoyo_mix', 92),
  -- 2. Il Crepuscolo di Poisson
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Il Crepuscolo di Poisson', 'main', 'hoyo_mix', 93),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Il Crepuscolo di Poisson', 'main', 'hoyo_mix', 94),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Il Crepuscolo di Poisson', 'main', 'hoyo_mix', 95),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Il Crepuscolo di Poisson', 'main', 'hoyo_mix', 96),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Il Crepuscolo di Poisson', 'main', 'hoyo_mix', 97),
  -- 3. Ann''s Quiescent Residence
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. Ann''s Quiescent Residence', 'main', 'hoyo_mix', 98),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. Ann''s Quiescent Residence', 'main', 'hoyo_mix', 99),
  -- 4. Cruising in the Balmy Breeze
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. Cruising in the Balmy Breeze', 'main', 'hoyo_mix', 100),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. Cruising in the Balmy Breeze', 'main', 'hoyo_mix', 101),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. Cruising in the Balmy Breeze', 'main', 'hoyo_mix', 102),
  -- 5. Rippling Wavelet
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Rippling Wavelet', 'main', 'hoyo_mix', 103),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Rippling Wavelet', 'main', 'hoyo_mix', 104),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Rippling Wavelet', 'main', 'hoyo_mix', 105),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Rippling Wavelet', 'main', 'hoyo_mix', 106),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Rippling Wavelet', 'main', 'hoyo_mix', 107),
  -- 6. Cerulean Tour
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '6. Cerulean Tour', 'main', 'hoyo_mix', 108),
  -- 7. Across the Meadows
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '7. Across the Meadows', 'main', 'hoyo_mix', 109),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '7. Across the Meadows', 'main', 'hoyo_mix', 110),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '7. Across the Meadows', 'main', 'hoyo_mix', 111),
  -- 8. Cobalt Remembrance
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '8. Cobalt Remembrance', 'main', 'hoyo_mix', 112),
  -- 9. Susurrating Holt
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '9. Susurrating Holt', 'main', 'hoyo_mix', 113),
  -- 10. Clement Rillet
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '10. Clement Rillet', 'main', 'hoyo_mix', 114),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '10. Clement Rillet', 'main', 'hoyo_mix', 115),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '10. Clement Rillet', 'main', 'hoyo_mix', 116),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '10. Clement Rillet', 'main', 'hoyo_mix', 117),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '10. Clement Rillet', 'main', 'hoyo_mix', 118),
  -- 11. Reve d''alouette
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '11. Reve d''alouette', 'main', 'hoyo_mix', 119),
  -- 12. Que le vent soit doux
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '12. Que le vent soit doux', 'main', 'hoyo_mix', 120),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '12. Que le vent soit doux', 'main', 'hoyo_mix', 121),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '12. Que le vent soit doux', 'main', 'hoyo_mix', 122),
  -- 13. Ondulations du rythme
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '13. Ondulations du rythme', 'main', 'hoyo_mix', 123),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '13. Ondulations du rythme', 'main', 'hoyo_mix', 124),
  -- 14. Expectation for Exploration
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '14. Expectation for Exploration', 'main', 'hoyo_mix', 125),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '14. Expectation for Exploration', 'main', 'hoyo_mix', 126),
  -- 15. Peripatetic Peregrination
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '15. Peripatetic Peregrination', 'main', 'hoyo_mix', 127),
  -- 16. Langage des fleurs
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '16. Langage des fleurs', 'main', 'hoyo_mix', 128),
  -- 17. Demain, des l''aube
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '17. Demain, des l''aube', 'main', 'hoyo_mix', 129),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '17. Demain, des l''aube', 'main', 'hoyo_mix', 130),
  -- 18. Les murmures des flots
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '18. Les murmures des flots', 'main', 'hoyo_mix', 131),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '18. Les murmures des flots', 'main', 'hoyo_mix', 132),
  -- 19. Gloomy Drizzle
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '19. Gloomy Drizzle', 'main', 'hoyo_mix', 133),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '19. Gloomy Drizzle', 'main', 'hoyo_mix', 134),
  -- 20. Quo Vadis
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '20. Quo Vadis', 'main', 'hoyo_mix', 135),
  -- 21. Vespers of Pluviose
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '21. Vespers of Pluviose', 'main', 'hoyo_mix', 136),
  -- 22. Lustrous Stars
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '22. Lustrous Stars', 'main', 'hoyo_mix', 137),
  -- 23. Sombre of the White Spring
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '23. Sombre of the White Spring', 'main', 'hoyo_mix', 138),
  -- 24. Floating Into Distance
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '24. Floating Into Distance', 'main', 'hoyo_mix', 139),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '24. Floating Into Distance', 'main', 'hoyo_mix', 140),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '24. Floating Into Distance', 'main', 'hoyo_mix', 141),
  -- 25. Les Nuits
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '25. Les Nuits', 'main', 'hoyo_mix', 142),
  -- 26. Nocturnal Illumination
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '26. Nocturnal Illumination', 'main', 'hoyo_mix', 143),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '26. Nocturnal Illumination', 'main', 'hoyo_mix', 144),
  -- 27. Intricate Ruse
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '27. Intricate Ruse', 'main', 'hoyo_mix', 145),
  -- 28. Qui me freine a un tel moment
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '28. Qui me freine a un tel moment', 'main', 'hoyo_mix', 146),
  -- 29. Nymphs'' Tea Party
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '29. Nymphs'' Tea Party', 'main', 'hoyo_mix', 147),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '29. Nymphs'' Tea Party', 'main', 'hoyo_mix', 148),
  -- 30. Dream Through the Looking-Glass
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '30. Dream Through the Looking-Glass', 'main', 'hoyo_mix', 149),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '30. Dream Through the Looking-Glass', 'main', 'hoyo_mix', 150),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '30. Dream Through the Looking-Glass', 'main', 'hoyo_mix', 151),
  -- =========================================================================
  -- Disc 3: Chapelloise of Trickling Springs
  -- =========================================================================
  -- 1. Melody of Merusea
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Melody of Merusea', 'main', 'hoyo_mix', 152),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Melody of Merusea', 'main', 'hoyo_mix', 153),
  -- 2. Miraculous Whisper
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Miraculous Whisper', 'main', 'hoyo_mix', 154),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Miraculous Whisper', 'main', 'hoyo_mix', 155),
  -- 3. La cite en la mer
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. La cite en la mer', 'main', 'hoyo_mix', 156),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. La cite en la mer', 'main', 'hoyo_mix', 157),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. La cite en la mer', 'main', 'hoyo_mix', 158),
  -- 4. Passage of an Era
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. Passage of an Era', 'main', 'hoyo_mix', 159),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. Passage of an Era', 'main', 'hoyo_mix', 160),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. Passage of an Era', 'main', 'hoyo_mix', 161),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. Passage of an Era', 'main', 'hoyo_mix', 162),
  -- 5. Fading Anticipation
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Fading Anticipation', 'main', 'hoyo_mix', 163),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Fading Anticipation', 'main', 'hoyo_mix', 164),
  -- 6. Tranquil Plains
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '6. Tranquil Plains', 'main', 'hoyo_mix', 165),
  -- 7. Ebb and Flow
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '7. Ebb and Flow', 'main', 'hoyo_mix', 166),
  -- 8. Throughout the Flow of Years
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '8. Throughout the Flow of Years', 'main', 'hoyo_mix', 167),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '8. Throughout the Flow of Years', 'main', 'hoyo_mix', 168),
  -- 9. Oath of Many Waters
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '9. Oath of Many Waters', 'main', 'hoyo_mix', 169),
  -- 10. Following the Torrent
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '10. Following the Torrent', 'main', 'hoyo_mix', 170),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '10. Following the Torrent', 'main', 'hoyo_mix', 171),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '10. Following the Torrent', 'main', 'hoyo_mix', 172),
  -- 11. Surging Reminiscence
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '11. Surging Reminiscence', 'main', 'hoyo_mix', 173),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '11. Surging Reminiscence', 'main', 'hoyo_mix', 174),
  -- 12. Diaphanous Dream
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '12. Diaphanous Dream', 'main', 'hoyo_mix', 175),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '12. Diaphanous Dream', 'main', 'hoyo_mix', 176),
  -- 13. Shade of Flowers
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '13.  Shade of Flowers', 'main', 'hoyo_mix', 177),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '13.  Shade of Flowers', 'main', 'hoyo_mix', 178),
  -- 14. Les etoiles semblent s''estomper
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '14. Les etoiles semblent s''estomper', 'main', 'hoyo_mix', 179),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '14. Les etoiles semblent s''estomper', 'main', 'hoyo_mix', 180),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '14. Les etoiles semblent s''estomper', 'main', 'hoyo_mix', 181),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '14. Les etoiles semblent s''estomper', 'main', 'hoyo_mix', 182),
  -- 15. Calamitous Tides (no usage rows in source)
  -- 16. Ann''s Anapausis
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '16. Ann''s Anapausis', 'main', 'hoyo_mix', 183),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '16. Ann''s Anapausis', 'main', 'hoyo_mix', 184),
  -- 17. Marcescent Floret
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '17. Marcescent Floret', 'main', 'hoyo_mix', 185),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '17. Marcescent Floret', 'main', 'hoyo_mix', 186),
  -- 18. All in the Golden Afternoon
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '18. All in the Golden Afternoon', 'main', 'hoyo_mix', 187),
  -- 19. Withered Wreath of Flowers
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '19. Withered Wreath of Flowers', 'main', 'hoyo_mix', 188),
  -- 20. Ancient Reverberation
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '20. Ancient Reverberation', 'main', 'hoyo_mix', 189),
  -- 21. The Shadow Out of Time
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '21. The Shadow Out of Time', 'main', 'hoyo_mix', 190),
  -- 22. Till All the Seas (no usage rows in source)
  -- 23. The Vision and the Voice (no usage rows in source)
  -- 24. Revelatio Finalis (no usage rows in source)
  -- 25. Ex Favilla Incendi
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '25. Ex Favilla Incendi', 'main', 'hoyo_mix', 191),
  -- 26. Sequestered Springs (no usage rows in source)
  -- 27. Le dormeur du val (no usage rows in source)
  -- 28. Trail of Shadows (no usage rows in source)
  -- 29. Path of Desolation (no usage rows in source)
  -- 30. Obscure Obsession
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '30. Obscure Obsession', 'main', 'hoyo_mix', 192),
  -- =========================================================================
  -- Disc 4: La bataille de Fontaine
  -- =========================================================================
  -- 1. Rondeau des fleurs et des rapieres
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Rondeau des fleurs et des rapieres', 'main', 'hoyo_mix', 193),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Rondeau des fleurs et des rapieres', 'main', 'hoyo_mix', 194),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Rondeau des fleurs et des rapieres', 'main', 'hoyo_mix', 195),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Rondeau des fleurs et des rapieres', 'main', 'hoyo_mix', 196),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Rondeau des fleurs et des rapieres', 'main', 'hoyo_mix', 197),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Rondeau des fleurs et des rapieres', 'main', 'hoyo_mix', 198),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '1. Rondeau des fleurs et des rapieres', 'main', 'hoyo_mix', 199),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Schiedmayer' COLLATE NOCASE AND p.name = '5.5-Octave Celesta' COLLATE NOCASE),
   NULL, NULL, 'Album: Fountain of Belleau', '1. Rondeau des fleurs et des rapieres', 'main', 'hoyo_mix', 200),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Steinway & Sons' COLLATE NOCASE AND p.name = 'Steinway D-274' COLLATE NOCASE),
   NULL, NULL, 'Album: Fountain of Belleau', '1. Rondeau des fleurs et des rapieres', 'main', 'hoyo_mix', 201),
  -- 2. Lamentation et Triomphe
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Lamentation et Triomphe', 'main', 'hoyo_mix', 202),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '2. Lamentation et Triomphe', 'main', 'hoyo_mix', 203),
  -- 3. Virelai des marees
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '3. Virelai des marees', 'main', 'hoyo_mix', 204),
  -- 4. Aubade of Coppelia
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. Aubade of Coppelia', 'main', 'hoyo_mix', 205),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '4. Aubade of Coppelia', 'main', 'hoyo_mix', 206),
  -- 5. Envoi of Coppelius
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Fountain of Belleau', '5. Envoi of Coppelius', 'main', 'hoyo_mix', 207),
  -- =========================================================================
  -- Album: Pelagic Primaevality (2024-02-26)
  -- Disc 1: Les grandes eaux qu''elle avait veillees
  -- =========================================================================
  -- 1. Mellow Alize
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '1. Mellow Alize', 'main', 'hoyo_mix', 208),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '1. Mellow Alize', 'main', 'hoyo_mix', 209),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '1. Mellow Alize', 'main', 'hoyo_mix', 210),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '1. Mellow Alize', 'main', 'hoyo_mix', 211),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '1. Mellow Alize', 'main', 'hoyo_mix', 212),
  -- 2. Lumidouce''s Repose
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '2. Lumidouce''s Repose', 'main', 'hoyo_mix', 213),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '2. Lumidouce''s Repose', 'main', 'hoyo_mix', 214),
  -- 3. Toast to Coast
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '3. Toast to Coast', 'main', 'hoyo_mix', 215),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '3. Toast to Coast', 'main', 'hoyo_mix', 216),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '3. Toast to Coast', 'main', 'hoyo_mix', 217),
  -- 4. Willow of Sorrow
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '4. Willow of Sorrow', 'main', 'hoyo_mix', 218),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '4. Willow of Sorrow', 'main', 'hoyo_mix', 219),
  -- 5. Loch''s Revitalization
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '5. Loch''s Revitalization', 'main', 'hoyo_mix', 220),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '5. Loch''s Revitalization', 'main', 'hoyo_mix', 221),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '5. Loch''s Revitalization', 'main', 'hoyo_mix', 222),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '5. Loch''s Revitalization', 'main', 'hoyo_mix', 223),
  -- 6. Neath the Fountain
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '6. Neath the Fountain', 'main', 'hoyo_mix', 224),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '6. Neath the Fountain', 'main', 'hoyo_mix', 225),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '6. Neath the Fountain', 'main', 'hoyo_mix', 226),
  -- 7. Les fumees blanches
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '7. Les fumees blanches', 'main', 'hoyo_mix', 227),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '7. Les fumees blanches', 'main', 'hoyo_mix', 228),
  -- 8. Songe de la plus haute tour
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '8. Songe de la plus haute tour', 'main', 'hoyo_mix', 229),
  -- 9. Magick Without Tears
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '9. Magick Without Tears', 'main', 'hoyo_mix', 230),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '9. Magick Without Tears', 'main', 'hoyo_mix', 231),
  -- 10. Veiled in Shadows
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '10. Veiled in Shadows', 'main', 'hoyo_mix', 232),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '10. Veiled in Shadows', 'main', 'hoyo_mix', 233),
  -- 11. Narcissus Without Water (no usage rows in source)
  -- 12. Ordeals, Rituals, Laws (no usage rows in source)
  -- 13. Lonely Melody of Yore
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'Pigments' COLLATE NOCASE),
   'Pigments 3.0 -> Pad-> Atmosphere', 'Cave of Swallows', 'Album: Pelagic Primaevality', '13. Lonely Melody of Yore', 'main', 'hoyo_mix', 234),
  -- 14. La mer, la mere
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '14. La mer, la mere', 'main', 'hoyo_mix', 235),
  -- 15. Les voici ! Voici le duo !
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '15. Les voici ! Voici le duo !', 'main', 'hoyo_mix', 236),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '15. Les voici ! Voici le duo !', 'main', 'hoyo_mix', 237),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '15. Les voici ! Voici le duo !', 'main', 'hoyo_mix', 238),
  -- 16. Incontro: Bellezza e Rosula
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '16. Incontro: Bellezza e Rosula', 'main', 'hoyo_mix', 239),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '16. Incontro: Bellezza e Rosula', 'main', 'hoyo_mix', 240),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '16. Incontro: Bellezza e Rosula', 'main', 'hoyo_mix', 241),
  -- 17. Beneath Light and Shadow
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '17. Beneath Light and Shadow', 'main', 'hoyo_mix', 242),
  -- 18. Retribution, Served Cold (no usage rows in source)
  -- 19. La derniere opportunite (no usage rows in source)
  -- 20. Les muets
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '20. Les muets', 'main', 'hoyo_mix', 243),
  -- 21. L''envers et l''endroit
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '21. L''envers et l''endroit', 'main', 'hoyo_mix', 244),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '21. L''envers et l''endroit', 'main', 'hoyo_mix', 245),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '21. L''envers et l''endroit', 'main', 'hoyo_mix', 246),
  -- 22. Prophetie of Predestination
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '22. Prophetie of Predestination', 'main', 'hoyo_mix', 247),
  -- 23. Le commencement de la fin
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '23. Le commencement de la fin', 'main', 'hoyo_mix', 248),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '23. Le commencement de la fin', 'main', 'hoyo_mix', 249),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '23. Le commencement de la fin', 'main', 'hoyo_mix', 250),
  -- 24. Comme il vous plaira
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '24. Comme il vous plaira', 'main', 'hoyo_mix', 251),
  -- 25. The Last Rose of the Sinner
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '25. The Last Rose of the Sinner', 'main', 'hoyo_mix', 252),
  -- 26. Crepuscule des idoles
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '26. Crepuscule des idoles', 'main', 'hoyo_mix', 253),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '26. Crepuscule des idoles', 'main', 'hoyo_mix', 254),
  -- 27. Clio''s Memoirs
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '27. Clio''s Memoirs', 'main', 'hoyo_mix', 255),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '27. Clio''s Memoirs', 'main', 'hoyo_mix', 256),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '27. Clio''s Memoirs', 'main', 'hoyo_mix', 257),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '27. Clio''s Memoirs', 'main', 'hoyo_mix', 258),
  -- 28. Thelxie''s Murmurs (no usage rows in source)
  -- 29. Rainbow Cradlesong
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '29. Rainbow Cradlesong', 'main', 'hoyo_mix', 259),
  -- 30. Coral Coronation
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '30. Coral Coronation', 'main', 'hoyo_mix', 260),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '30. Coral Coronation', 'main', 'hoyo_mix', 261),
  -- 31. Dream Anamnesis
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '31. Dream Anamnesis', 'main', 'hoyo_mix', 262),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '31. Dream Anamnesis', 'main', 'hoyo_mix', 263),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '31. Dream Anamnesis', 'main', 'hoyo_mix', 264),
  -- 32. A Narcissus Lullaby
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '32. A Narcissus Lullaby', 'main', 'hoyo_mix', 265),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '32. A Narcissus Lullaby', 'main', 'hoyo_mix', 266),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '32. A Narcissus Lullaby', 'main', 'hoyo_mix', 267),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '32. A Narcissus Lullaby', 'main', 'hoyo_mix', 268),
  -- =========================================================================
  -- Disc 2: Galliard of Brass and Iron
  -- =========================================================================
  -- 1. Clockwork Waltz
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '1. Clockwork Waltz', 'main', 'hoyo_mix', 269),
  -- 2. The Rotating Realm
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '2. The Rotating Realm', 'main', 'hoyo_mix', 270),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '2. The Rotating Realm', 'main', 'hoyo_mix', 271),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '2. The Rotating Realm', 'main', 'hoyo_mix', 272),
  -- 3. Welcome to the Industry
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '3. Welcome to the Industry', 'main', 'hoyo_mix', 273),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Heavyocity' COLLATE NOCASE AND p.name = 'Damage' COLLATE NOCASE),
   '01 Rhythmic Suites -> Loop Menus', 'LPS Epic Organic Elements 01', 'Album: Pelagic Primaevality | F4, F#4, G4, B4', '3. Welcome to the Industry', 'main', 'hoyo_mix', 274),
  -- 4. Sting Like a Bee! (no usage rows in source)
  -- 5. Le duc sous l''eau
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '5. Le duc sous l''eau', 'main', 'hoyo_mix', 275),
  -- 6. Crystal Curtains
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Noire' COLLATE NOCASE),
   'NOIRE Felt -> Particles', 'Gamelan Grand Felt', 'Album: Pelagic Primaevality', '6. Crystal Curtains', 'main', 'hoyo_mix', 276),
  -- 7. Submerged Meditation (no usage rows in source)
  -- 8. Whale''s Whisper
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '8. Whale''s Whisper', 'main', 'hoyo_mix', 277),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '8. Whale''s Whisper', 'main', 'hoyo_mix', 278),
  -- 9. No Trespassing (no usage rows in source)
  -- 10. Restoration Through Labor
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '10. Restoration Through Labor', 'main', 'hoyo_mix', 279),
  -- 11. To Each What He Deserves (no usage rows in source)
  -- 12. Rhythm of Inquiry
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '12. Rhythm of Inquiry', 'main', 'hoyo_mix', 280),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '12. Rhythm of Inquiry', 'main', 'hoyo_mix', 281),
  -- 13. Crystalline Path (no usage rows in source)
  -- 14. Refractions of Silence (no usage rows in source)
  -- 15. Un nouvel espoir
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '15. Un nouvel espoir', 'main', 'hoyo_mix', 282),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '15. Un nouvel espoir', 'main', 'hoyo_mix', 283),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '15. Un nouvel espoir', 'main', 'hoyo_mix', 284),
  -- 16. Comedy of Errors
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '16. Comedy of Errors', 'main', 'hoyo_mix', 285),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '16. Comedy of Errors', 'main', 'hoyo_mix', 286),
  -- 17. The Faded Idyll
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '17. The Faded Idyll', 'main', 'hoyo_mix', 287),
  -- 18. Resonance of Longing
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '18. Resonance of Longing', 'main', 'hoyo_mix', 288),
  -- 19. The Drifting Beauty
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '19. The Drifting Beauty', 'main', 'hoyo_mix', 289),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '19. The Drifting Beauty', 'main', 'hoyo_mix', 290),
  -- 20. Huldra''s Retreat
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '20. Huldra''s Retreat', 'main', 'hoyo_mix', 291),
  -- 21. Vestige of Belleau
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '21. Vestige of Belleau', 'main', 'hoyo_mix', 292),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '21. Vestige of Belleau', 'main', 'hoyo_mix', 293),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '21. Vestige of Belleau', 'main', 'hoyo_mix', 294),
  -- 22. Whispering Dewdrops
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '22. Whispering Dewdrops', 'main', 'hoyo_mix', 295),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '22. Whispering Dewdrops', 'main', 'hoyo_mix', 296),
  -- 23. A Sweet Dream in Fontaine
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '23. A Sweet Dream in Fontaine', 'main', 'hoyo_mix', 297),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '23. A Sweet Dream in Fontaine', 'main', 'hoyo_mix', 298),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '23. A Sweet Dream in Fontaine', 'main', 'hoyo_mix', 299),
  -- 24. Moonlit Tides
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '24. Moonlit Tides', 'main', 'hoyo_mix', 300),
  -- 25. Sink Into Slumber
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '25. Sink Into Slumber', 'main', 'hoyo_mix', 301),
  -- 26. Floating Lullaby
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '26. Floating Lullaby', 'main', 'hoyo_mix', 302),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '26. Floating Lullaby', 'main', 'hoyo_mix', 303),
  -- 27. Gymnopedies of Lune
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '27. Gymnopedies of Lune', 'main', 'hoyo_mix', 304),
  -- 28. Par les soirs bleus d''ete
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '28. Par les soirs bleus d''ete', 'main', 'hoyo_mix', 305),
  -- 29. Les rivieres aeriennes
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '29. Les rivieres aeriennes', 'main', 'hoyo_mix', 306),
  -- 30. Aloft the Realm of Gears (no usage rows in source)
  -- 31. Truncated Verse
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '31. Truncated Verse', 'main', 'hoyo_mix', 307),
  -- 32. Les tenebres et l''oubli (no usage rows in source)
  -- 33. Chordal Past (no usage rows in source)
  -- 34. Le secret cache
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '34. Le secret cache', 'main', 'hoyo_mix', 308),
  -- =========================================================================
  -- Disc 3: Ad Consummationem Aquarum
  -- =========================================================================
  -- 1. Eschatologia Iudicata
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '1. Eschatologia Iudicata', 'main', 'hoyo_mix', 309),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '1. Eschatologia Iudicata', 'main', 'hoyo_mix', 310),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Pelagic Primaevality', '1. Eschatologia Iudicata', 'main', 'hoyo_mix', 311),
  -- 2. Silhouette of Catastrophe (no usage rows in source)
  -- =========================================================================
  -- Album: Jadeite Redolence (2024-03-27)
  -- Disc 1: Enthralled by the Spring Breeze
  -- =========================================================================
  -- 1. What a Delightful Scenery
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '1. What a Delightful Scenery', 'main', 'hoyo_mix', 312),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '1. What a Delightful Scenery', 'main', 'hoyo_mix', 313),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '1. What a Delightful Scenery', 'main', 'hoyo_mix', 314),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '1. What a Delightful Scenery', 'main', 'hoyo_mix', 315),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '1. What a Delightful Scenery', 'main', 'hoyo_mix', 316),
  -- 2. Through Clouds and Rivers
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '2. Through Clouds and Rivers', 'main', 'hoyo_mix', 317),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '2. Through Clouds and Rivers', 'main', 'hoyo_mix', 318),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '2. Through Clouds and Rivers', 'main', 'hoyo_mix', 319),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '2. Through Clouds and Rivers', 'main', 'hoyo_mix', 320),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '2. Through Clouds and Rivers', 'main', 'hoyo_mix', 321),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '2. Through Clouds and Rivers', 'main', 'hoyo_mix', 322),
  -- 3. A Nice Day at the Port
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '3. A Nice Day at the Port', 'main', 'hoyo_mix', 323),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '3. A Nice Day at the Port', 'main', 'hoyo_mix', 324),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '3. A Nice Day at the Port', 'main', 'hoyo_mix', 325),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '3. A Nice Day at the Port', 'main', 'hoyo_mix', 326),
  -- 4. The Jadeite Reflection
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '4. The Jadeite Reflection', 'main', 'hoyo_mix', 327),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '4. The Jadeite Reflection', 'main', 'hoyo_mix', 328),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '4. The Jadeite Reflection', 'main', 'hoyo_mix', 329),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '4. The Jadeite Reflection', 'main', 'hoyo_mix', 330),
  -- 5. Springtide of Qiaoying
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '5. Springtide of Qiaoying', 'main', 'hoyo_mix', 331),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '5. Springtide of Qiaoying', 'main', 'hoyo_mix', 332),
  -- 6. Verdant Longings
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '6. Verdant Longings', 'main', 'hoyo_mix', 333),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '6. Verdant Longings', 'main', 'hoyo_mix', 334),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '6. Verdant Longings', 'main', 'hoyo_mix', 335),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '6. Verdant Longings', 'main', 'hoyo_mix', 336),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '6. Verdant Longings', 'main', 'hoyo_mix', 337),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '6. Verdant Longings', 'main', 'hoyo_mix', 338),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '6. Verdant Longings', 'main', 'hoyo_mix', 339),
  -- 7. Camellia Night
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '7. Camellia Night', 'main', 'hoyo_mix', 340),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '7. Camellia Night', 'main', 'hoyo_mix', 341),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '7. Camellia Night', 'main', 'hoyo_mix', 342),
  -- 8. Brocade Dreams
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '8. Brocade Dreams', 'main', 'hoyo_mix', 343),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '8. Brocade Dreams', 'main', 'hoyo_mix', 344),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '8. Brocade Dreams', 'main', 'hoyo_mix', 345),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '8. Brocade Dreams', 'main', 'hoyo_mix', 346),
  -- 9. The Journey of Tea Leaves
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '9. The Journey of Tea Leaves', 'main', 'hoyo_mix', 347),
  -- 10. Creeks of Nostalgia
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '10. Creeks of Nostalgia', 'main', 'hoyo_mix', 348),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '10. Creeks of Nostalgia', 'main', 'hoyo_mix', 349),
  -- 11. Whispering Mountains
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '11. Whispering Mountains', 'main', 'hoyo_mix', 350),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '11. Whispering Mountains', 'main', 'hoyo_mix', 351),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '11. Whispering Mountains', 'main', 'hoyo_mix', 352),
  -- 12. Melody of Morning Dew
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '12. Melody of Morning Dew', 'main', 'hoyo_mix', 353),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '12. Melody of Morning Dew', 'main', 'hoyo_mix', 354),
  -- 13. Teaplucker''s Joy
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. Teaplucker''s Joy', 'main', 'hoyo_mix', 355),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. Teaplucker''s Joy', 'main', 'hoyo_mix', 356),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. Teaplucker''s Joy', 'main', 'hoyo_mix', 357),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. Teaplucker''s Joy', 'main', 'hoyo_mix', 358),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. Teaplucker''s Joy', 'main', 'hoyo_mix', 359),
  -- 14. The Absent Hermit
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '14. The Absent Hermit', 'main', 'hoyo_mix', 360),
  -- 15. On a Remote Trail
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '15. On a Remote Trail', 'main', 'hoyo_mix', 361),
  -- 16. Mountains of Mist
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '16. Mountains of Mist', 'main', 'hoyo_mix', 362),
  -- 17. A Jade-Like Ode
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '17. A Jade-Like Ode', 'main', 'hoyo_mix', 363),
  -- 18. Nightcap at Nightfall
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '18. Nightcap at Nightfall', 'main', 'hoyo_mix', 364),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '18. Nightcap at Nightfall', 'main', 'hoyo_mix', 365),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '18. Nightcap at Nightfall', 'main', 'hoyo_mix', 366),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '18. Nightcap at Nightfall', 'main', 'hoyo_mix', 367),
  -- 19. A Mild Tale Untold
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '19. A Mild Tale Untold', 'main', 'hoyo_mix', 368),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '19. A Mild Tale Untold', 'main', 'hoyo_mix', 369),
  -- 20. Dweller of Bamboo Groves
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence | to do: add vsl harp', '20. Dweller of Bamboo Groves', 'main', 'hoyo_mix', 370),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '20. Dweller of Bamboo Groves', 'main', 'hoyo_mix', 371),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '20. Dweller of Bamboo Groves', 'main', 'hoyo_mix', 372),
  -- 21. Herb Gatherer''s Dream
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '21. Herb Gatherer''s Dream', 'main', 'hoyo_mix', 373),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '21. Herb Gatherer''s Dream', 'main', 'hoyo_mix', 374),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '21. Herb Gatherer''s Dream', 'main', 'hoyo_mix', 375),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '21. Herb Gatherer''s Dream', 'main', 'hoyo_mix', 376),
  -- 22. Her Silhouette
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '22. Her Silhouette', 'main', 'hoyo_mix', 377),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '22. Her Silhouette', 'main', 'hoyo_mix', 378),
  -- 23. A Jolly Trick
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '23. A Jolly Trick', 'main', 'hoyo_mix', 379),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '23. A Jolly Trick', 'main', 'hoyo_mix', 380),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '23. A Jolly Trick', 'main', 'hoyo_mix', 381),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '23. A Jolly Trick', 'main', 'hoyo_mix', 382),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '23. A Jolly Trick', 'main', 'hoyo_mix', 383),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '23. A Jolly Trick', 'main', 'hoyo_mix', 384),
  -- 24. Pleasure of Rural Life
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Pleasure of Rural Life', 'main', 'hoyo_mix', 385),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Pleasure of Rural Life', 'main', 'hoyo_mix', 386),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Pleasure of Rural Life', 'main', 'hoyo_mix', 387),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Pleasure of Rural Life', 'main', 'hoyo_mix', 388),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Pleasure of Rural Life', 'main', 'hoyo_mix', 389),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Pleasure of Rural Life', 'main', 'hoyo_mix', 390),
  -- 25. The Rime of the Ancient Bargeman
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '25. The Rime of the Ancient Bargeman', 'main', 'hoyo_mix', 391),
  -- 26. The Rime of the Ancient Bargeman (II)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '26. The Rime of the Ancient Bargeman (II)', 'main', 'hoyo_mix', 392),
  -- 27. Chenyu Fisherman''s Song
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '27. Chenyu Fisherman''s Song', 'main', 'hoyo_mix', 393),
  -- 28. Chenyu Fisherman''s Song (II)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '28. Chenyu Fisherman''s Song (II)', 'main', 'hoyo_mix', 394),
  -- =========================================================================
  -- Disc 2: Clouds Over Lingmeng
  -- =========================================================================
  -- 1. Guhua''s Legacy
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '1. Guhua''s Legacy', 'main', 'hoyo_mix', 395),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '1. Guhua''s Legacy', 'main', 'hoyo_mix', 396),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '1. Guhua''s Legacy', 'main', 'hoyo_mix', 397),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '1. Guhua''s Legacy', 'main', 'hoyo_mix', 398),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '1. Guhua''s Legacy', 'main', 'hoyo_mix', 399),
  -- 2. Xuanlian''s Wavering Light
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '2. Xuanlian''s Wavering Light', 'main', 'hoyo_mix', 400),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '2. Xuanlian''s Wavering Light', 'main', 'hoyo_mix', 401),
  -- 3. Night''s Whispering Breath
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '3. Night''s Whispering Breath', 'main', 'hoyo_mix', 402),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '3. Night''s Whispering Breath', 'main', 'hoyo_mix', 403),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '3. Night''s Whispering Breath', 'main', 'hoyo_mix', 404),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '3. Night''s Whispering Breath', 'main', 'hoyo_mix', 405),
  -- 4. Into the Yonder and Water
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '4. Into the Yonder and Water', 'main', 'hoyo_mix', 406),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '4. Into the Yonder and Water', 'main', 'hoyo_mix', 407),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '4. Into the Yonder and Water', 'main', 'hoyo_mix', 408),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '4. Into the Yonder and Water', 'main', 'hoyo_mix', 409),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '4. Into the Yonder and Water', 'main', 'hoyo_mix', 410),
  -- 5. Ancient Slumber
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '5. Ancient Slumber', 'main', 'hoyo_mix', 411),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '5. Ancient Slumber', 'main', 'hoyo_mix', 412),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '5. Ancient Slumber', 'main', 'hoyo_mix', 413),
  -- 6. Jade Chimes
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '6. Jade Chimes', 'main', 'hoyo_mix', 414),
  -- 7. Spring''s Tender Sigh
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '7. Spring''s Tender Sigh', 'main', 'hoyo_mix', 415),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '7. Spring''s Tender Sigh', 'main', 'hoyo_mix', 416),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '7. Spring''s Tender Sigh', 'main', 'hoyo_mix', 417),
  -- 8. Creek''s Shade
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '8. Creek''s Shade', 'main', 'hoyo_mix', 418),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '8. Creek''s Shade', 'main', 'hoyo_mix', 419),
  -- 9. Embracing a Misty Sheen
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '9. Embracing a Misty Sheen', 'main', 'hoyo_mix', 420),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '9. Embracing a Misty Sheen', 'main', 'hoyo_mix', 421),
  -- 10. Through Ancient Veils
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '10. Through Ancient Veils', 'main', 'hoyo_mix', 422),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '10. Through Ancient Veils', 'main', 'hoyo_mix', 423),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '10. Through Ancient Veils', 'main', 'hoyo_mix', 424),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '10. Through Ancient Veils', 'main', 'hoyo_mix', 425),
  -- 11. Amidst Foggy Mountains
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '11. Amidst Foggy Mountains', 'main', 'hoyo_mix', 426),
  -- 12. Dusk''s Descent
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '12. Dusk''s Descent', 'main', 'hoyo_mix', 427),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '12. Dusk''s Descent', 'main', 'hoyo_mix', 428),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '12. Dusk''s Descent', 'main', 'hoyo_mix', 429),
  -- 13. When the Herb Fades
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. When the Herb Fades', 'main', 'hoyo_mix', 430),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. When the Herb Fades', 'main', 'hoyo_mix', 431),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. When the Herb Fades', 'main', 'hoyo_mix', 432),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. When the Herb Fades', 'main', 'hoyo_mix', 433),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. When the Herb Fades', 'main', 'hoyo_mix', 434),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '13. When the Herb Fades', 'main', 'hoyo_mix', 435),
  -- 14. Trace of Grace
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '14. Trace of Grace', 'main', 'hoyo_mix', 436),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '14. Trace of Grace', 'main', 'hoyo_mix', 437),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '14. Trace of Grace', 'main', 'hoyo_mix', 438),
  -- 15. Distant Gleam of Lingshu
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '15. Distant Gleam of Lingshu', 'main', 'hoyo_mix', 439),
  -- 16. Garden of Jade
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '16. Garden of Jade', 'main', 'hoyo_mix', 440),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '16. Garden of Jade', 'main', 'hoyo_mix', 441),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '16. Garden of Jade', 'main', 'hoyo_mix', 442),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '16. Garden of Jade', 'main', 'hoyo_mix', 443),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '16. Garden of Jade', 'main', 'hoyo_mix', 444),
  -- 17. Shaded Valley''s Repose
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '17. Shaded Valley''s Repose', 'main', 'hoyo_mix', 445),
  -- 18. Isolated Pine
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '18. Isolated Pine', 'main', 'hoyo_mix', 446),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '18. Isolated Pine', 'main', 'hoyo_mix', 447),
  -- 19. Fujin''s Chant
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '19. Fujin''s Chant', 'main', 'hoyo_mix', 448),
  -- 20. Retaining Clouds
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '20. Retaining Clouds', 'main', 'hoyo_mix', 449),
  -- 21. Past Yearning
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '21. Past Yearning', 'main', 'hoyo_mix', 450),
  -- 22. With the Wind, Flowing Epoch (no usage rows in source)
  -- 23. Thoughts Straying as Clouds
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '23. Thoughts Straying as Clouds', 'main', 'hoyo_mix', 451),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '23. Thoughts Straying as Clouds', 'main', 'hoyo_mix', 452),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '23. Thoughts Straying as Clouds', 'main', 'hoyo_mix', 453),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '23. Thoughts Straying as Clouds', 'main', 'hoyo_mix', 454),
  -- 24. Moonlit Lanterns
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Moonlit Lanterns', 'main', 'hoyo_mix', 455),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Moonlit Lanterns', 'main', 'hoyo_mix', 456),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Moonlit Lanterns', 'main', 'hoyo_mix', 457),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Moonlit Lanterns', 'main', 'hoyo_mix', 458),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Moonlit Lanterns', 'main', 'hoyo_mix', 459),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Moonlit Lanterns', 'main', 'hoyo_mix', 460),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Moonlit Lanterns', 'main', 'hoyo_mix', 461),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '24. Moonlit Lanterns', 'main', 'hoyo_mix', 462),
  -- 25. Breaking the Miasma (no usage rows in source)
  -- 26. Mountainborn Gale
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '26. Mountainborn Gale', 'main', 'hoyo_mix', 463),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '26. Mountainborn Gale', 'main', 'hoyo_mix', 464),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '26. Mountainborn Gale', 'main', 'hoyo_mix', 465),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '26. Mountainborn Gale', 'main', 'hoyo_mix', 466),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '26. Mountainborn Gale', 'main', 'hoyo_mix', 467),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Jadeite Redolence', '26. Mountainborn Gale', 'main', 'hoyo_mix', 468),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Percussion -> CymGong', '37 Chinese Tam Tam', 'Album: Jadeite Redolence', '26. Mountainborn Gale', 'main', 'hoyo_mix', 469),
  -- =========================================================================
  -- Album: Cantus Aeternus (2024-05-14)
  -- Disc 1: Versi di Petrichor
  -- =========================================================================
  -- 1. Regali teneri
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '1. Regali teneri', 'main', 'hoyo_mix', 470),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '1. Regali teneri', 'main', 'hoyo_mix', 471),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '1. Regali teneri', 'main', 'hoyo_mix', 472),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '1. Regali teneri', 'main', 'hoyo_mix', 473),
  -- 2. Giorno per giorno
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '2. Giorno per giorno', 'main', 'hoyo_mix', 474),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '2. Giorno per giorno', 'main', 'hoyo_mix', 475),
  -- 3. Ed e subito sera
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '3. Ed e subito sera', 'main', 'hoyo_mix', 476),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '3. Ed e subito sera', 'main', 'hoyo_mix', 477),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '3. Ed e subito sera', 'main', 'hoyo_mix', 478),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '3. Ed e subito sera', 'main', 'hoyo_mix', 479),
  -- 4. La vita e sogno
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '4. La vita e sogno', 'main', 'hoyo_mix', 480),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '4. La vita e sogno', 'main', 'hoyo_mix', 481),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '4. La vita e sogno', 'main', 'hoyo_mix', 482),
  -- 5. Once a Land of Amoene
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '5. Once a Land of Amoene', 'main', 'hoyo_mix', 483),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '5. Once a Land of Amoene', 'main', 'hoyo_mix', 484),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '5. Once a Land of Amoene', 'main', 'hoyo_mix', 485),
  -- 6. Storia Humana
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '6. Storia Humana', 'main', 'hoyo_mix', 486),
  -- 7. Faded Banquet
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '7. Faded Banquet', 'main', 'hoyo_mix', 487),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '7. Faded Banquet', 'main', 'hoyo_mix', 488),
  -- 8. Here Be Dragons
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '8. Here Be Dragons', 'main', 'hoyo_mix', 489),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '8. Here Be Dragons', 'main', 'hoyo_mix', 490),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '8. Here Be Dragons', 'main', 'hoyo_mix', 491),
  -- 9. Splendorous Heritage
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '9. Splendorous Heritage', 'main', 'hoyo_mix', 492),
  -- 10. Aqueous Grief
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '10. Aqueous Grief', 'main', 'hoyo_mix', 493),
  -- 11. Dissolved Dawn
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '11. Dissolved Dawn', 'main', 'hoyo_mix', 494),
  -- 12. Metres of Boethius
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '12. Metres of Boethius', 'main', 'hoyo_mix', 495),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '12. Metres of Boethius', 'main', 'hoyo_mix', 496),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '12. Metres of Boethius', 'main', 'hoyo_mix', 497),
  -- 13. Fortuna Variabilis
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '13. Fortuna Variabilis', 'main', 'hoyo_mix', 498),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '13. Fortuna Variabilis', 'main', 'hoyo_mix', 499),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '13. Fortuna Variabilis', 'main', 'hoyo_mix', 500),
  -- 14. Doxology in the Deep (no usage rows in source)
  -- 15. Unfinished Ideal (no usage rows in source)
  -- 16. Consolation of Many Waters (no usage rows in source)
  -- 17. Submerged Trumpet
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '17. Submerged Trumpet', 'main', 'hoyo_mix', 501),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '17. Submerged Trumpet', 'main', 'hoyo_mix', 502),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '17. Submerged Trumpet', 'main', 'hoyo_mix', 503),
  -- =========================================================================
  -- Disc 2: Sumphonia Capitolii
  -- =========================================================================
  -- 1. The Oracle''s Finale
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '1. The Oracle''s Finale', 'main', 'hoyo_mix', 504),
  -- 2. Deplorable Capital
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '2. Deplorable Capital', 'main', 'hoyo_mix', 505),
  -- 3. Pledge of Peace
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '3. Pledge of Peace', 'main', 'hoyo_mix', 506),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '3. Pledge of Peace', 'main', 'hoyo_mix', 507),
  -- 4. Tranquil Eternity
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '4. Tranquil Eternity', 'main', 'hoyo_mix', 508),
  -- 5. Harmonious Capitolium
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '5. Harmonious Capitolium', 'main', 'hoyo_mix', 509),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '5. Harmonious Capitolium', 'main', 'hoyo_mix', 510),
  -- 6. Discordia Neglecta (no usage rows in source)
  -- 7. Alucinatio Gloriosa
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '7. Alucinatio Gloriosa', 'main', 'hoyo_mix', 511),
  -- 8. Year of Tribulation
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '8. Year of Tribulation', 'main', 'hoyo_mix', 512),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '8. Year of Tribulation', 'main', 'hoyo_mix', 513),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '8. Year of Tribulation', 'main', 'hoyo_mix', 514),
  -- 9. Gathering Tempest
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '9. Gathering Tempest', 'main', 'hoyo_mix', 515),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '9. Gathering Tempest', 'main', 'hoyo_mix', 516),
  -- 10. Glory and Decay
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '10. Glory and Decay', 'main', 'hoyo_mix', 517),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '10. Glory and Decay', 'main', 'hoyo_mix', 518),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '10. Glory and Decay', 'main', 'hoyo_mix', 519),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '10. Glory and Decay', 'main', 'hoyo_mix', 520),
  -- 11. Whisper of Domus Aurea
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '11. Whisper of Domus Aurea', 'main', 'hoyo_mix', 521),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '11. Whisper of Domus Aurea', 'main', 'hoyo_mix', 522),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '11. Whisper of Domus Aurea', 'main', 'hoyo_mix', 523),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '11. Whisper of Domus Aurea', 'main', 'hoyo_mix', 524),
  -- 12. Tears of Days Past (no usage rows in source)
  -- 13. Locus Amoenus (no usage rows in source)
  -- 14. Tuba Mirum (no usage rows in source)
  -- 15. Rex Tremendae (no usage rows in source)
  -- 16. Dies Irae (no usage rows in source)
  -- 17. Confutatis (no usage rows in source)
  -- 18. Lacrimosa (no usage rows in source)
  -- =========================================================================
  -- Disc 3: Balemoon Rising
  -- =========================================================================
  -- 1. Requiem Resonantia
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '1. Requiem Resonantia', 'main', 'hoyo_mix', 525),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '1. Requiem Resonantia', 'main', 'hoyo_mix', 526),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '1. Requiem Resonantia', 'main', 'hoyo_mix', 527),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '1. Requiem Resonantia', 'main', 'hoyo_mix', 528),
  -- 2. Chorus Cinericius
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '2. Chorus Cinericius', 'main', 'hoyo_mix', 529),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '2. Chorus Cinericius', 'main', 'hoyo_mix', 530),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '2. Chorus Cinericius', 'main', 'hoyo_mix', 531),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '2. Chorus Cinericius', 'main', 'hoyo_mix', 532),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '2. Chorus Cinericius', 'main', 'hoyo_mix', 533),
  -- 3. Sequentia Sequelarum
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '3. Sequentia Sequelarum', 'main', 'hoyo_mix', 534),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '3. Sequentia Sequelarum', 'main', 'hoyo_mix', 535),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '3. Sequentia Sequelarum', 'main', 'hoyo_mix', 536),
  -- 4. Absolutio Absoluta Absolutissime
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '4. Absolutio Absoluta Absolutissime', 'main', 'hoyo_mix', 537),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '4. Absolutio Absoluta Absolutissime', 'main', 'hoyo_mix', 538),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '4. Absolutio Absoluta Absolutissime', 'main', 'hoyo_mix', 539),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '4. Absolutio Absoluta Absolutissime', 'main', 'hoyo_mix', 540),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '4. Absolutio Absoluta Absolutissime', 'main', 'hoyo_mix', 541),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Cantus Aeternus', '4. Absolutio Absoluta Absolutissime', 'main', 'hoyo_mix', 542),
  -- =========================================================================
  -- Album: The Shimmering Voyage Vol.4 (2024-07-26)
  -- Disc 1: Summertime Excursion
  -- =========================================================================
  -- 1. Snuggy Breeze
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '1. Snuggy Breeze', 'main', 'hoyo_mix', 543),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '1. Snuggy Breeze', 'main', 'hoyo_mix', 544),
  -- 2. Romantic Encounter
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '2. Romantic Encounter', 'main', 'hoyo_mix', 545),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '2. Romantic Encounter', 'main', 'hoyo_mix', 546),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '2. Romantic Encounter', 'main', 'hoyo_mix', 547),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '2. Romantic Encounter', 'main', 'hoyo_mix', 548),
  -- 3. Tender Is the Night
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '3. Tender Is the Night', 'main', 'hoyo_mix', 549),
  -- 4. Tipsy Sips
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '4. Tipsy Sips', 'main', 'hoyo_mix', 550),
  -- 5. Glorious Metropole
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '5. Glorious Metropole', 'main', 'hoyo_mix', 551),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '5. Glorious Metropole', 'main', 'hoyo_mix', 552),
  -- 6. Honorable Landscape
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '6. Honorable Landscape', 'main', 'hoyo_mix', 553),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '6. Honorable Landscape', 'main', 'hoyo_mix', 554),
  -- 7. The Land of Heart''s Desire
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '7. The Land of Heart''s Desire', 'main', 'hoyo_mix', 555),
  -- 8. Down by the Forgotten Gardens
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '8. Down by the Forgotten Gardens', 'main', 'hoyo_mix', 556),
  -- 9. Twilight Wanderings
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '9. Twilight Wanderings', 'main', 'hoyo_mix', 557),
  -- 10. Leisure in Painting
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '10. Leisure in Painting', 'main', 'hoyo_mix', 558),
  -- 11. Morning Song in the Forest
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '11. Morning Song in the Forest', 'main', 'hoyo_mix', 559),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '11. Morning Song in the Forest', 'main', 'hoyo_mix', 560),
  -- 12. The Parade of Flying Squirrels
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. The Parade of Flying Squirrels', 'main', 'hoyo_mix', 561),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. The Parade of Flying Squirrels', 'main', 'hoyo_mix', 562),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. The Parade of Flying Squirrels', 'main', 'hoyo_mix', 563),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. The Parade of Flying Squirrels', 'main', 'hoyo_mix', 564),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage Vol.4', '12. The Parade of Flying Squirrels', 'main', 'hoyo_mix', 565),
  -- 13. The Songs of the Wrens
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '13. The Songs of the Wrens', 'main', 'hoyo_mix', 566),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '13. The Songs of the Wrens', 'main', 'hoyo_mix', 567),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '13. The Songs of the Wrens', 'main', 'hoyo_mix', 568),
  -- 14. Gentle Breeze Through the Pines (no usage rows in source)
  -- 15. Tales From the Hills
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '15. Tales From the Hills', 'main', 'hoyo_mix', 569),
  -- 16. Patches of Sunlight
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Arturia' COLLATE NOCASE AND p.name = 'Pigments' COLLATE NOCASE),
   'Pigments 3.0 -> Keys -> Lofi Keys', 'Broken Children Keyboard', 'Album: The Shimmering Voyage Vol.4', '16. Patches of Sunlight', 'main', 'hoyo_mix', 570),
  -- 17. The Hour Before the Dawn (no usage rows in source)
  -- 18. Per Amica Silentia Lunae
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '18. Per Amica Silentia Lunae', 'main', 'hoyo_mix', 571),
  -- 19. Pathfinder of Darkness
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '19. Pathfinder of Darkness', 'main', 'hoyo_mix', 572),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: The Shimmering Voyage Vol.4', '19. Pathfinder of Darkness', 'main', 'hoyo_mix', 573),
  -- 20. Benediction of Dreams
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '20. Benediction of Dreams', 'main', 'hoyo_mix', 574),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '20. Benediction of Dreams', 'main', 'hoyo_mix', 575),
  -- 21. Benedictio Somnii
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '21. Benedictio Somnii', 'main', 'hoyo_mix', 576),
  -- 22. Tread the Tide
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '22. Tread the Tide', 'main', 'hoyo_mix', 577),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '22. Tread the Tide', 'main', 'hoyo_mix', 578),
  -- 23. Summer Souvenir
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '23. Summer Souvenir', 'main', 'hoyo_mix', 579),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '23. Summer Souvenir', 'main', 'hoyo_mix', 580),
  -- 24. Teegesellschaft of the Hexenzirkel
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '24. Teegesellschaft of the Hexenzirkel', 'main', 'hoyo_mix', 581),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '24. Teegesellschaft of the Hexenzirkel', 'main', 'hoyo_mix', 582),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '24. Teegesellschaft of the Hexenzirkel', 'main', 'hoyo_mix', 583),
  -- 25. Everlasting Promise (no usage rows in source)
  -- 26. Meeting and Passing
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '26. Meeting and Passing', 'main', 'hoyo_mix', 584),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '26. Meeting and Passing', 'main', 'hoyo_mix', 585),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '26. Meeting and Passing', 'main', 'hoyo_mix', 586),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: The Shimmering Voyage Vol.4', '26. Meeting and Passing', 'main', 'hoyo_mix', 587),
  -- =========================================================================
  -- Disc 2: Romance Without Words
  -- =========================================================================
  -- 1. La nuit fantastique
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '1. La nuit fantastique', 'main', 'hoyo_mix', 588),
  -- 2. Unforeseen Peril
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '2. Unforeseen Peril', 'main', 'hoyo_mix', 589),
  -- 3. Pas de deux di Rosula e Candela
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '3. Pas de deux di Rosula e Candela', 'main', 'hoyo_mix', 590),
  -- 4. Pendente Lite
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '4. Pendente Lite', 'main', 'hoyo_mix', 591),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '4. Pendente Lite', 'main', 'hoyo_mix', 592),
  -- 5. Whale Dream
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '5. Whale Dream', 'main', 'hoyo_mix', 593),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '5. Whale Dream', 'main', 'hoyo_mix', 594),
  -- 6. Surging Calamity
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '6. Surging Calamity', 'main', 'hoyo_mix', 595),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '6. Surging Calamity', 'main', 'hoyo_mix', 596),
  -- 7. Oracle of Deep Waters
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '7. Oracle of Deep Waters', 'main', 'hoyo_mix', 597),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '7. Oracle of Deep Waters', 'main', 'hoyo_mix', 598),
  -- 8. La tristezza della Rosula
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '8. La tristezza della Rosula', 'main', 'hoyo_mix', 599),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '8. La tristezza della Rosula', 'main', 'hoyo_mix', 600),
  -- 9. La confession interrompue
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '9. La confession interrompue', 'main', 'hoyo_mix', 601),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '9. La confession interrompue', 'main', 'hoyo_mix', 602),
  -- 10. Lightless Dissonance
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '10. Lightless Dissonance', 'main', 'hoyo_mix', 603),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '10. Lightless Dissonance', 'main', 'hoyo_mix', 604),
  -- 11. La comedie ni humaine ni divine
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '11. La comedie ni humaine ni divine', 'main', 'hoyo_mix', 605),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '11. La comedie ni humaine ni divine', 'main', 'hoyo_mix', 606),
  -- 12. Tout est bien qui finit bien
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Tout est bien qui finit bien', 'main', 'hoyo_mix', 607),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Tout est bien qui finit bien', 'main', 'hoyo_mix', 608),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Tout est bien qui finit bien', 'main', 'hoyo_mix', 609),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Tout est bien qui finit bien', 'main', 'hoyo_mix', 610),
  -- 13. Sheaths of Void (no usage rows in source)
  -- 14. Le ciel clair qu''elle avait songe
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '14. Le ciel clair qu''elle avait songe', 'main', 'hoyo_mix', 611),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '14. Le ciel clair qu''elle avait songe', 'main', 'hoyo_mix', 612),
  -- 15. Callirhoe''s Prayer
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '15. Callirhoe''s Prayer', 'main', 'hoyo_mix', 613),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '15. Callirhoe''s Prayer', 'main', 'hoyo_mix', 614),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '15. Callirhoe''s Prayer', 'main', 'hoyo_mix', 615),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '15. Callirhoe''s Prayer', 'main', 'hoyo_mix', 616),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '15. Callirhoe''s Prayer', 'main', 'hoyo_mix', 617),
  -- 16. Revealed Retribution
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '16. Revealed Retribution', 'main', 'hoyo_mix', 618),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '16. Revealed Retribution', 'main', 'hoyo_mix', 619),
  -- 17. I Got Reincarnated as an Onikabuto... And Flipped the World Upside Down (Instrumental)
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '17. I Got Reincarnated as an Onikabuto... And Flipped the World Upside Down (Instrumental)', 'main', 'hoyo_mix', 620),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '17. I Got Reincarnated as an Onikabuto... And Flipped the World Upside Down (Instrumental)', 'main', 'hoyo_mix', 621),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '17. I Got Reincarnated as an Onikabuto... And Flipped the World Upside Down (Instrumental)', 'main', 'hoyo_mix', 622),
  -- 18. Twice-Told Tales
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '18. Twice-Told Tales', 'main', 'hoyo_mix', 623),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '18. Twice-Told Tales', 'main', 'hoyo_mix', 624),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '18. Twice-Told Tales', 'main', 'hoyo_mix', 625),
  -- 19. Constant Trajectory
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '19. Constant Trajectory', 'main', 'hoyo_mix', 626),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '19. Constant Trajectory', 'main', 'hoyo_mix', 627),
  -- 20. When the Axles Break
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '20. When the Axles Break', 'main', 'hoyo_mix', 628),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '20. When the Axles Break', 'main', 'hoyo_mix', 629),
  -- 21. Makurakotoba of Dew
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '21. Makurakotoba of Dew', 'main', 'hoyo_mix', 630),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '21. Makurakotoba of Dew', 'main', 'hoyo_mix', 631),
  -- =========================================================================
  -- Disc 3: Curiosites Esthetiques
  -- =========================================================================
  -- 1. Shrouded Honor
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '1. Shrouded Honor', 'main', 'hoyo_mix', 632),
  -- 2. Glacial Castigation
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '2. Glacial Castigation', 'main', 'hoyo_mix', 633),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '2. Glacial Castigation', 'main', 'hoyo_mix', 634),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '2. Glacial Castigation', 'main', 'hoyo_mix', 635),
  -- 3. All Passed With the Rain
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '3. All Passed With the Rain', 'main', 'hoyo_mix', 636),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '3. All Passed With the Rain', 'main', 'hoyo_mix', 637),
  -- 4. La condotta della Rosula
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '4. La condotta della Rosula', 'main', 'hoyo_mix', 638),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '4. La condotta della Rosula', 'main', 'hoyo_mix', 639),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '4. La condotta della Rosula', 'main', 'hoyo_mix', 640),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '4. La condotta della Rosula', 'main', 'hoyo_mix', 641),
  -- 5. Weaving Nishiki
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '5. Weaving Nishiki', 'main', 'hoyo_mix', 642),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '5. Weaving Nishiki', 'main', 'hoyo_mix', 643),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '5. Weaving Nishiki', 'main', 'hoyo_mix', 644),
  -- 6. Balemoon''s Chastisement
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '6. Balemoon''s Chastisement', 'main', 'hoyo_mix', 645),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '6. Balemoon''s Chastisement', 'main', 'hoyo_mix', 646),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '6. Balemoon''s Chastisement', 'main', 'hoyo_mix', 647),
  -- 7. The Last Promise
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '7. The Last Promise', 'main', 'hoyo_mix', 648),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '7. The Last Promise', 'main', 'hoyo_mix', 649),
  -- 8. Secret Orders of the Sands
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '8. Secret Orders of the Sands', 'main', 'hoyo_mix', 650),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '8. Secret Orders of the Sands', 'main', 'hoyo_mix', 651),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '8. Secret Orders of the Sands', 'main', 'hoyo_mix', 652),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '8. Secret Orders of the Sands', 'main', 'hoyo_mix', 653),
  -- 9. Madrigale della Candela
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '9. Madrigale della Candela', 'main', 'hoyo_mix', 654),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '9. Madrigale della Candela', 'main', 'hoyo_mix', 655),
  -- 10. Beautiful, Delightful Vision
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '10. Beautiful, Delightful Vision', 'main', 'hoyo_mix', 656),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '10. Beautiful, Delightful Vision', 'main', 'hoyo_mix', 657),
  -- 11. Timeless Warmth
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '11. Timeless Warmth', 'main', 'hoyo_mix', 658),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '11. Timeless Warmth', 'main', 'hoyo_mix', 659),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '11. Timeless Warmth', 'main', 'hoyo_mix', 660),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '11. Timeless Warmth', 'main', 'hoyo_mix', 661),
  -- 12. Hidden Sillage
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Hidden Sillage', 'main', 'hoyo_mix', 662),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Hidden Sillage', 'main', 'hoyo_mix', 663),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Hidden Sillage', 'main', 'hoyo_mix', 664),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Hidden Sillage', 'main', 'hoyo_mix', 665),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Hidden Sillage', 'main', 'hoyo_mix', 666),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Hidden Sillage', 'main', 'hoyo_mix', 667),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '12. Hidden Sillage', 'main', 'hoyo_mix', 668),
  -- 13. A la recherche des grandes eaux
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '13. A la recherche des grandes eaux', 'main', 'hoyo_mix', 669),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '13. A la recherche des grandes eaux', 'main', 'hoyo_mix', 670),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '13. A la recherche des grandes eaux', 'main', 'hoyo_mix', 671),
  -- 14. The Song Burning in the Embers
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '14. The Song Burning in the Embers', 'main', 'hoyo_mix', 672),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '14. The Song Burning in the Embers', 'main', 'hoyo_mix', 673),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '14. The Song Burning in the Embers', 'main', 'hoyo_mix', 674),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '14. The Song Burning in the Embers', 'main', 'hoyo_mix', 675),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '14. The Song Burning in the Embers', 'main', 'hoyo_mix', 676),
  -- 15. Starlight Voyage
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '15. Starlight Voyage', 'main', 'hoyo_mix', 677),
  -- 16. Dreams of the Ancient Realm
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '16. Dreams of the Ancient Realm', 'main', 'hoyo_mix', 678),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '16. Dreams of the Ancient Realm', 'main', 'hoyo_mix', 679),
  -- 17. Memories of a Lost Castle
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '17. Memories of a Lost Castle', 'main', 'hoyo_mix', 680),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '17. Memories of a Lost Castle', 'main', 'hoyo_mix', 681),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '17. Memories of a Lost Castle', 'main', 'hoyo_mix', 682),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '17. Memories of a Lost Castle', 'main', 'hoyo_mix', 683),
  -- 18. Astral Yearning
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '18. Astral Yearning', 'main', 'hoyo_mix', 684),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '18. Astral Yearning', 'main', 'hoyo_mix', 685),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '18. Astral Yearning', 'main', 'hoyo_mix', 686),
  -- 19. Dragon and Determination
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '19. Dragon and Determination', 'main', 'hoyo_mix', 687),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '19. Dragon and Determination', 'main', 'hoyo_mix', 688),
  -- 20. Night of the Sacred Flame
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '20. Night of the Sacred Flame', 'main', 'hoyo_mix', 689),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '20. Night of the Sacred Flame', 'main', 'hoyo_mix', 690),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '20. Night of the Sacred Flame', 'main', 'hoyo_mix', 691),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '20. Night of the Sacred Flame', 'main', 'hoyo_mix', 692),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: The Shimmering Voyage Vol.4', '20. Night of the Sacred Flame', 'main', 'hoyo_mix', 693),
  -- =========================================================================
  -- Album: Land of Tleyaoyotl (2024-09-04)
  -- Disc 1: Altar of Ardor Ablaze
  -- =========================================================================
  -- 1. Natlan
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Natlan', 'main', 'hoyo_mix', 694),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Natlan', 'main', 'hoyo_mix', 695),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Natlan', 'main', 'hoyo_mix', 696),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Natlan', 'main', 'hoyo_mix', 697),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Natlan', 'main', 'hoyo_mix', 698),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Natlan', 'main', 'hoyo_mix', 699),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Natlan', 'main', 'hoyo_mix', 700),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Natlan', 'main', 'hoyo_mix', 701),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Natlan', 'main', 'hoyo_mix', 702),
  -- 2. Jubilation of Calcine
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Jubilation of Calcine', 'main', 'hoyo_mix', 703),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Jubilation of Calcine', 'main', 'hoyo_mix', 704),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Jubilation of Calcine', 'main', 'hoyo_mix', 705),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Jubilation of Calcine', 'main', 'hoyo_mix', 706),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Jubilation of Calcine', 'main', 'hoyo_mix', 707),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Jubilation of Calcine', 'main', 'hoyo_mix', 708),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Jubilation of Calcine', 'main', 'hoyo_mix', 709),
  -- 3. Scarlet Song
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. Scarlet Song', 'main', 'hoyo_mix', 710),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. Scarlet Song', 'main', 'hoyo_mix', 711),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. Scarlet Song', 'main', 'hoyo_mix', 712),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. Scarlet Song', 'main', 'hoyo_mix', 713),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. Scarlet Song', 'main', 'hoyo_mix', 714),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. Scarlet Song', 'main', 'hoyo_mix', 715),
  -- 4. Thanks for the Fire
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Thanks for the Fire', 'main', 'hoyo_mix', 716),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Thanks for the Fire', 'main', 'hoyo_mix', 717),
  -- 5. After So Many Words
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '5. After So Many Words', 'main', 'hoyo_mix', 718),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '5. After So Many Words', 'main', 'hoyo_mix', 719),
  -- 6. Undanced Dance
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '6. Undanced Dance', 'main', 'hoyo_mix', 720),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '6. Undanced Dance', 'main', 'hoyo_mix', 721),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '6. Undanced Dance', 'main', 'hoyo_mix', 722),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '6. Undanced Dance', 'main', 'hoyo_mix', 723),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '6. Undanced Dance', 'main', 'hoyo_mix', 724),
  -- 7. A Night of Their Own
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '7. A Night of Their Own', 'main', 'hoyo_mix', 725),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '7. A Night of Their Own', 'main', 'hoyo_mix', 726),
  -- 8. Campa timoyetzticah, Cempaxochitl?
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '8. Campa timoyetzticah, Cempaxochitl?', 'main', 'hoyo_mix', 727),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '8. Campa timoyetzticah, Cempaxochitl?', 'main', 'hoyo_mix', 728),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '8. Campa timoyetzticah, Cempaxochitl?', 'main', 'hoyo_mix', 729),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '8. Campa timoyetzticah, Cempaxochitl?', 'main', 'hoyo_mix', 730),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '8. Campa timoyetzticah, Cempaxochitl?', 'main', 'hoyo_mix', 731),
  -- 9. Halls of Hueyteotl
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '9. Halls of Hueyteotl', 'main', 'hoyo_mix', 732),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '9. Halls of Hueyteotl', 'main', 'hoyo_mix', 733),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Land of Tleyaoyotl', '9. Halls of Hueyteotl', 'main', 'hoyo_mix', 734),
  -- 10. Bequeathed to the Beloved
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '10. Bequeathed to the Beloved', 'main', 'hoyo_mix', 735),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '10. Bequeathed to the Beloved', 'main', 'hoyo_mix', 736),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '10. Bequeathed to the Beloved', 'main', 'hoyo_mix', 737),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '10. Bequeathed to the Beloved', 'main', 'hoyo_mix', 738),
  -- 11. Descendants of Ahkantenal
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '11. Descendants of Ahkantenal', 'main', 'hoyo_mix', 739),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '11. Descendants of Ahkantenal', 'main', 'hoyo_mix', 740),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '11. Descendants of Ahkantenal', 'main', 'hoyo_mix', 741),
  -- 12. Arcana of Zipacna
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '12. Arcana of Zipacna', 'main', 'hoyo_mix', 742),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '12. Arcana of Zipacna', 'main', 'hoyo_mix', 743),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '12. Arcana of Zipacna', 'main', 'hoyo_mix', 744),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '12. Arcana of Zipacna', 'main', 'hoyo_mix', 745),
  -- 13. Beat of Boulders
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '13. Beat of Boulders', 'main', 'hoyo_mix', 746),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Splice Sounds' COLLATE NOCASE AND p.name = 'Sounds of KSHMR Vol. 3' COLLATE NOCASE),
   'FX_Elements -> Scratches', 'KSHMR_Vinyl_Scratch_01_89', 'Album: Land of Tleyaoyotl', '13. Beat of Boulders', 'main', 'hoyo_mix', 747),
  -- 14. Baba we Twasali
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '14. Baba we Twasali', 'main', 'hoyo_mix', 748),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '14. Baba we Twasali', 'main', 'hoyo_mix', 749),
  -- 15. The Heights of Rumikunamanta
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '15. The Heights of Rumikunamanta', 'main', 'hoyo_mix', 750),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '15. The Heights of Rumikunamanta', 'main', 'hoyo_mix', 751),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '15. The Heights of Rumikunamanta', 'main', 'hoyo_mix', 752),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '15. The Heights of Rumikunamanta', 'main', 'hoyo_mix', 753),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '15. The Heights of Rumikunamanta', 'main', 'hoyo_mix', 754),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Land of Tleyaoyotl | note G5 in the intro', '15. The Heights of Rumikunamanta', 'main', 'hoyo_mix', 755),
  -- 16. Whirl of Chalchiuhtlicue
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '16. Whirl of Chalchiuhtlicue', 'main', 'hoyo_mix', 756),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '16. Whirl of Chalchiuhtlicue', 'main', 'hoyo_mix', 757),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '16. Whirl of Chalchiuhtlicue', 'main', 'hoyo_mix', 758),
  -- 17. Sifu Moto
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '17. Sifu Moto', 'main', 'hoyo_mix', 759),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '17. Sifu Moto', 'main', 'hoyo_mix', 760),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '17. Sifu Moto', 'main', 'hoyo_mix', 761),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '17. Sifu Moto', 'main', 'hoyo_mix', 762),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '17. Sifu Moto', 'main', 'hoyo_mix', 763),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '17. Sifu Moto', 'main', 'hoyo_mix', 764),
  -- 18. Cuicatl of Kongamato
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '18. Cuicatl of Kongamato', 'main', 'hoyo_mix', 765),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> DIGERIDOO', 'Digeridoo TM SYNC', 'Album: Land of Tleyaoyotl | D#5', '18. Cuicatl of Kongamato', 'main', 'hoyo_mix', 766),
  -- 19. Makani ''olu''olu
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '19. Makani ''olu''olu', 'main', 'hoyo_mix', 767),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '19. Makani ''olu''olu', 'main', 'hoyo_mix', 768),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '19. Makani ''olu''olu', 'main', 'hoyo_mix', 769),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '19. Makani ''olu''olu', 'main', 'hoyo_mix', 770),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '19. Makani ''olu''olu', 'main', 'hoyo_mix', 771),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '19. Makani ''olu''olu', 'main', 'hoyo_mix', 772),
  -- 20. Reverie of Pua Aloalo
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '20. Reverie of Pua Aloalo', 'main', 'hoyo_mix', 773),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '20. Reverie of Pua Aloalo', 'main', 'hoyo_mix', 774),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '20. Reverie of Pua Aloalo', 'main', 'hoyo_mix', 775),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '20. Reverie of Pua Aloalo', 'main', 'hoyo_mix', 776),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '20. Reverie of Pua Aloalo', 'main', 'hoyo_mix', 777),
  -- 21. Dazzling Moon of Metztli (no usage rows in source)
  -- 22. Chimes on the Blue Shore
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '22. Chimes on the Blue Shore', 'main', 'hoyo_mix', 778),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '22. Chimes on the Blue Shore', 'main', 'hoyo_mix', 779),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '22. Chimes on the Blue Shore', 'main', 'hoyo_mix', 780),
  -- 23. Rainbow Leis
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '23. Rainbow Leis', 'main', 'hoyo_mix', 781),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '23. Rainbow Leis', 'main', 'hoyo_mix', 782),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '23. Rainbow Leis', 'main', 'hoyo_mix', 783),
  -- 24. Promises by the Spring
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '24. Promises by the Spring', 'main', 'hoyo_mix', 784),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '24. Promises by the Spring', 'main', 'hoyo_mix', 785),
  -- 25. Moment of Solace
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '25. Moment of Solace', 'main', 'hoyo_mix', 786),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '25. Moment of Solace', 'main', 'hoyo_mix', 787),
  -- 26. Blazing Proclamation
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '26. Blazing Proclamation', 'main', 'hoyo_mix', 788),
  -- 27. Ode of Resurrection: Doxology
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '27. Ode of Resurrection: Doxology', 'main', 'hoyo_mix', 789),
  -- 28. Ode of Resurrection: Excerpt
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '28. Ode of Resurrection: Excerpt', 'main', 'hoyo_mix', 790),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '28. Ode of Resurrection: Excerpt', 'main', 'hoyo_mix', 791),
  -- 29. ...Times Come Again No More
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '29. ...Times Come Again No More', 'main', 'hoyo_mix', 792),
  -- 30. Realm of Ethereal Murk
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '30. Realm of Ethereal Murk', 'main', 'hoyo_mix', 793),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '30. Realm of Ethereal Murk', 'main', 'hoyo_mix', 794),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Ashlight' COLLATE NOCASE),
   'Atmosphere', 'Abuse of Confidence', 'Album: Land of Tleyaoyotl', '30. Realm of Ethereal Murk', 'main', 'hoyo_mix', 795),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Ashlight' COLLATE NOCASE),
   'Effect', 'Monsoon Utopia', 'Album: Land of Tleyaoyotl | Grain disabled', '30. Realm of Ethereal Murk', 'main', 'hoyo_mix', 796),
  -- 31. Blaze of Fervent Night (no usage rows in source)
  -- 32. Inheritance of an Ancient Name
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '32. Inheritance of an Ancient Name', 'main', 'hoyo_mix', 797),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '32. Inheritance of an Ancient Name', 'main', 'hoyo_mix', 798),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '32. Inheritance of an Ancient Name', 'main', 'hoyo_mix', 799),
  -- 33. Metaphor for Calamity
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '33. Metaphor for Calamity', 'main', 'hoyo_mix', 800),
  -- 34. Introduction to a Little Friend
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '34. Introduction to a Little Friend', 'main', 'hoyo_mix', 801),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '34. Introduction to a Little Friend', 'main', 'hoyo_mix', 802),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '34. Introduction to a Little Friend', 'main', 'hoyo_mix', 803),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '34. Introduction to a Little Friend', 'main', 'hoyo_mix', 804),
  -- 35. A Distant Farewell
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '35. A Distant Farewell', 'main', 'hoyo_mix', 805),
  -- =========================================================================
  -- Disc 2: Saurian-Scorched Soil of Strife
  -- =========================================================================
  -- 1. Chasing Flames Like Strings
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Chasing Flames Like Strings', 'main', 'hoyo_mix', 806),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Chasing Flames Like Strings', 'main', 'hoyo_mix', 807),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Chasing Flames Like Strings', 'main', 'hoyo_mix', 808),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Chasing Flames Like Strings', 'main', 'hoyo_mix', 809),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Chasing Flames Like Strings', 'main', 'hoyo_mix', 810),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Land of Tleyaoyotl', '1. Chasing Flames Like Strings', 'main', 'hoyo_mix', 811),
  -- 2. Flower Writing
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Flower Writing', 'main', 'hoyo_mix', 812),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Flower Writing', 'main', 'hoyo_mix', 813),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Flower Writing', 'main', 'hoyo_mix', 814),
  -- 3. Dream of Tranquility
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. Dream of Tranquility', 'main', 'hoyo_mix', 815),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. Dream of Tranquility', 'main', 'hoyo_mix', 816),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. Dream of Tranquility', 'main', 'hoyo_mix', 817),
  -- 4. Feast and Bounty
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Feast and Bounty', 'main', 'hoyo_mix', 818),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Feast and Bounty', 'main', 'hoyo_mix', 819),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Feast and Bounty', 'main', 'hoyo_mix', 820),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Feast and Bounty', 'main', 'hoyo_mix', 821),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Feast and Bounty', 'main', 'hoyo_mix', 822),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Feast and Bounty', 'main', 'hoyo_mix', 823),
  -- 5. Chirping of Canyons
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '5. Chirping of Canyons', 'main', 'hoyo_mix', 824),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '5. Chirping of Canyons', 'main', 'hoyo_mix', 825),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Ashlight' COLLATE NOCASE),
   'Atmosphere', 'Abuse of Confidence', 'Album: Land of Tleyaoyotl', '5. Chirping of Canyons', 'main', 'hoyo_mix', 826),
  -- 6. When Rain Clouds Gather
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '6. When Rain Clouds Gather', 'main', 'hoyo_mix', 827),
  -- 7. Fog of the Seasons
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '7. Fog of the Seasons', 'main', 'hoyo_mix', 828),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '7. Fog of the Seasons', 'main', 'hoyo_mix', 829),
  -- 8. Quetzal''s Yearning
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '8. Quetzal''s Yearning', 'main', 'hoyo_mix', 830),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '8. Quetzal''s Yearning', 'main', 'hoyo_mix', 831),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '8. Quetzal''s Yearning', 'main', 'hoyo_mix', 832),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '8. Quetzal''s Yearning', 'main', 'hoyo_mix', 833),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '8. Quetzal''s Yearning', 'main', 'hoyo_mix', 834),
  -- 9. Delightful Whimsy
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '9. Delightful Whimsy', 'main', 'hoyo_mix', 835),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '9. Delightful Whimsy', 'main', 'hoyo_mix', 836),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> DIGERIDOO', 'Digeridoo TM', 'Album: Land of Tleyaoyotl', '9. Delightful Whimsy', 'main', 'hoyo_mix', 837),
  -- 10. Eventide Chant
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '10. Eventide Chant', 'main', 'hoyo_mix', 838),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '10. Eventide Chant', 'main', 'hoyo_mix', 839),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '10. Eventide Chant', 'main', 'hoyo_mix', 840),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '10. Eventide Chant', 'main', 'hoyo_mix', 841),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '10. Eventide Chant', 'main', 'hoyo_mix', 842),
  -- 11. Silent Voices of the Night
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '11. Silent Voices of the Night', 'main', 'hoyo_mix', 843),
  -- 12. Dust of Dusklands
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '12. Dust of Dusklands', 'main', 'hoyo_mix', 844),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '12. Dust of Dusklands', 'main', 'hoyo_mix', 845),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '12. Dust of Dusklands', 'main', 'hoyo_mix', 846),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '12. Dust of Dusklands', 'main', 'hoyo_mix', 847),
  -- 13. Flute of Uilacapitztli
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '13. Flute of Uilacapitztli', 'main', 'hoyo_mix', 848),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '13. Flute of Uilacapitztli', 'main', 'hoyo_mix', 849),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '13. Flute of Uilacapitztli', 'main', 'hoyo_mix', 850),
  -- 14. A Harvest of Dreams
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '14. A Harvest of Dreams', 'main', 'hoyo_mix', 851),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '14. A Harvest of Dreams', 'main', 'hoyo_mix', 852),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '14. A Harvest of Dreams', 'main', 'hoyo_mix', 853),
  -- 15. Until the Morning After
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '15. Until the Morning After', 'main', 'hoyo_mix', 854),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Ashlight' COLLATE NOCASE),
   'Atmosphere', 'Abuse of Confidence', 'Album: Land of Tleyaoyotl', '15. Until the Morning After', 'main', 'hoyo_mix', 855),
  -- 16. The Nocturnal Firmament''s Luster
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '16. The Nocturnal Firmament''s Luster', 'main', 'hoyo_mix', 856),
  -- 17. Shedding Twilight
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '17. Shedding Twilight', 'main', 'hoyo_mix', 857),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '17. Shedding Twilight', 'main', 'hoyo_mix', 858),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '17. Shedding Twilight', 'main', 'hoyo_mix', 859),
  -- 18. Above the Glorious Crown
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '18. Above the Glorious Crown', 'main', 'hoyo_mix', 860),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '18. Above the Glorious Crown', 'main', 'hoyo_mix', 861),
  -- 19. Cozy in the Light
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '19. Cozy in the Light', 'main', 'hoyo_mix', 862),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '19. Cozy in the Light', 'main', 'hoyo_mix', 863),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '19. Cozy in the Light', 'main', 'hoyo_mix', 864),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '19. Cozy in the Light', 'main', 'hoyo_mix', 865),
  -- 20. Where the Breeze Stills
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '20. Where the Breeze Stills', 'main', 'hoyo_mix', 866),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '20. Where the Breeze Stills', 'main', 'hoyo_mix', 867),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '20. Where the Breeze Stills', 'main', 'hoyo_mix', 868),
  -- 21. Moon of Hanan Pacha
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '21. Moon of Hanan Pacha', 'main', 'hoyo_mix', 869),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '21. Moon of Hanan Pacha', 'main', 'hoyo_mix', 870),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '21. Moon of Hanan Pacha', 'main', 'hoyo_mix', 871),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '21. Moon of Hanan Pacha', 'main', 'hoyo_mix', 872),
  -- 22. The Sea and the Bells
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '22. The Sea and the Bells', 'main', 'hoyo_mix', 873),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '22. The Sea and the Bells', 'main', 'hoyo_mix', 874),
  -- 23. The Nights'' Wish
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '23. The Nights'' Wish', 'main', 'hoyo_mix', 875),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '23. The Nights'' Wish', 'main', 'hoyo_mix', 876),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '23. The Nights'' Wish', 'main', 'hoyo_mix', 877),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '23. The Nights'' Wish', 'main', 'hoyo_mix', 878),
  -- 24. Striving for the Wind
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '24. Striving for the Wind', 'main', 'hoyo_mix', 879),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '24. Striving for the Wind', 'main', 'hoyo_mix', 880),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '24. Striving for the Wind', 'main', 'hoyo_mix', 881),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '24. Striving for the Wind', 'main', 'hoyo_mix', 882),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '24. Striving for the Wind', 'main', 'hoyo_mix', 883),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '24. Striving for the Wind', 'main', 'hoyo_mix', 884),
  -- 25. Glow of Nawpa Pacha
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '25. Glow of Nawpa Pacha', 'main', 'hoyo_mix', 885),
  -- 26. Whistles of Monetoo
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '26. Whistles of Monetoo', 'main', 'hoyo_mix', 886),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '26. Whistles of Monetoo', 'main', 'hoyo_mix', 887),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '26. Whistles of Monetoo', 'main', 'hoyo_mix', 888),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '26. Whistles of Monetoo', 'main', 'hoyo_mix', 889),
  -- 27. Foundry of the Golden
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '27. Foundry of the Golden', 'main', 'hoyo_mix', 890),
  -- 28. Ravine''s Calcination
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '28. Ravine''s Calcination', 'main', 'hoyo_mix', 891),
  -- 29. Land of Tecalco (no usage rows in source)
  -- 30. House of Cinders
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '30. House of Cinders', 'main', 'hoyo_mix', 892),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '30. House of Cinders', 'main', 'hoyo_mix', 893),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '30. House of Cinders', 'main', 'hoyo_mix', 894),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '30. House of Cinders', 'main', 'hoyo_mix', 895),
  -- 31. Reminiscent of the Stolen Flame
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '31. Reminiscent of the Stolen Flame', 'main', 'hoyo_mix', 896),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '31. Reminiscent of the Stolen Flame', 'main', 'hoyo_mix', 897),
  -- 32. Breath of Blazing Earth
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Omnisphere' COLLATE NOCASE),
   'Guitars', 'Elegant Picking', 'Album: Land of Tleyaoyotl', '32. Breath of Blazing Earth', 'main', 'hoyo_mix', 898),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Spectrasonics' COLLATE NOCASE AND p.name = 'Trilian' COLLATE NOCASE),
   'Bass Instruments', 'Chapman Stick - Full Range', 'Album: Land of Tleyaoyotl', '32. Breath of Blazing Earth', 'main', 'hoyo_mix', 899),
  -- 33. Smoke of Fallen Flames (no usage rows in source)
  -- 34. Arduous Path (no usage rows in source)
  -- 35. A Long Way Gone
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '35. A Long Way Gone', 'main', 'hoyo_mix', 900),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '35. A Long Way Gone', 'main', 'hoyo_mix', 901),
  -- 36. Dirge of Soul and of Dust (no usage rows in source)
  -- 37. Delving Into the Hidden (no usage rows in source)
  -- =========================================================================
  -- Disc 3: Battles of Natlan
  -- =========================================================================
  -- 1. Anthem of the Savannah
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 902),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 903),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 904),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 905),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 906),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 907),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 908),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 909),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 910),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 911),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 912),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Land of Tleyaoyotl', '1. Anthem of the Savannah', 'main', 'hoyo_mix', 913),
  -- 2. Venture of Tonalamatl
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Venture of Tonalamatl', 'main', 'hoyo_mix', 914),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Venture of Tonalamatl', 'main', 'hoyo_mix', 915),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Venture of Tonalamatl', 'main', 'hoyo_mix', 916),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Venture of Tonalamatl', 'main', 'hoyo_mix', 917),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Venture of Tonalamatl', 'main', 'hoyo_mix', 918),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Venture of Tonalamatl', 'main', 'hoyo_mix', 919),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Venture of Tonalamatl', 'main', 'hoyo_mix', 920),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '2. Venture of Tonalamatl', 'main', 'hoyo_mix', 921),
  -- 3. A Dance in Fire
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 922),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 923),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 924),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 925),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 926),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 927),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 928),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 929),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 930),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 931),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Best Service' COLLATE NOCASE AND p.name = 'Ethno World Instruments' COLLATE NOCASE),
   'WOODWIND AND BRASS -> DIGERIDOO', 'Digeridoo TM', 'Album: Land of Tleyaoyotl', '3. A Dance in Fire', 'main', 'hoyo_mix', 932),
  -- 4. Grim Is the Night
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Grim Is the Night', 'main', 'hoyo_mix', 933),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Grim Is the Night', 'main', 'hoyo_mix', 934),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '4. Grim Is the Night', 'main', 'hoyo_mix', 935),
  -- 5. Lightning Racing
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '5. Lightning Racing', 'main', 'hoyo_mix', 936),
  -- 6. Chasing the Rainbow
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Land of Tleyaoyotl', '6. Chasing the Rainbow', 'main', 'hoyo_mix', 937),
  -- =========================================================================
  -- Sub-album: Eternal Sun, Eternal Want (within Land of Tleyaoyotl)
  -- Disc 1: Canto General of Cliff and Glen
  -- =========================================================================
  -- 1. Prismatic Proverbs
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '1. Prismatic Proverbs', 'main', 'hoyo_mix', 938),
  -- 2. Soothing of Soul and Sand
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '2. Soothing of Soul and Sand', 'main', 'hoyo_mix', 939),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '2. Soothing of Soul and Sand', 'main', 'hoyo_mix', 940),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '2. Soothing of Soul and Sand', 'main', 'hoyo_mix', 941),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Eternal Sun, Eternal Want', '2. Soothing of Soul and Sand', 'main', 'hoyo_mix', 942),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Soniccouture' COLLATE NOCASE AND p.name = 'Spotlight Collection: Balinese Gamelan' COLLATE NOCASE),
   NULL, 'Balinese Gamelan 1.5', 'Album: Eternal Sun, Eternal Want', '2. Soothing of Soul and Sand', 'main', 'hoyo_mix', 943),
  -- 3. Springtime in a Mirror
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Springtime in a Mirror', 'main', 'hoyo_mix', 944),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Springtime in a Mirror', 'main', 'hoyo_mix', 945),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Springtime in a Mirror', 'main', 'hoyo_mix', 946),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Springtime in a Mirror', 'main', 'hoyo_mix', 947),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Springtime in a Mirror', 'main', 'hoyo_mix', 948),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Soniccouture' COLLATE NOCASE AND p.name = 'Spotlight Collection: Balinese Gamelan' COLLATE NOCASE),
   NULL, 'Balinese Gamelan 1.5', 'Album: Eternal Sun, Eternal Want', '3. Springtime in a Mirror', 'main', 'hoyo_mix', 949),
  -- 4. Night''s Crown of Flowers
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '4. Night''s Crown of Flowers', 'main', 'hoyo_mix', 950),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '4. Night''s Crown of Flowers', 'main', 'hoyo_mix', 951),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '4. Night''s Crown of Flowers', 'main', 'hoyo_mix', 952),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '4. Night''s Crown of Flowers', 'main', 'hoyo_mix', 953),
  -- 5. A Fragment of Night
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '5. A Fragment of Night', 'main', 'hoyo_mix', 954),
  -- 6. Choir''s Cypher
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '6. Choir''s Cypher', 'main', 'hoyo_mix', 955),
  -- 7. Where the Mists Enshroud
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '7. Where the Mists Enshroud', 'main', 'hoyo_mix', 956),
  -- 8. Cloud of Thirteen Katuns
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '8. Cloud of Thirteen Katuns', 'main', 'hoyo_mix', 957),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '8. Cloud of Thirteen Katuns', 'main', 'hoyo_mix', 958),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '8. Cloud of Thirteen Katuns', 'main', 'hoyo_mix', 959),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '8. Cloud of Thirteen Katuns', 'main', 'hoyo_mix', 960),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '8. Cloud of Thirteen Katuns', 'main', 'hoyo_mix', 961),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '8. Cloud of Thirteen Katuns', 'main', 'hoyo_mix', 962),
  -- 9. Tanyolche''s Memories
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '9. Tanyolche''s Memories', 'main', 'hoyo_mix', 963),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '9. Tanyolche''s Memories', 'main', 'hoyo_mix', 964),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '9. Tanyolche''s Memories', 'main', 'hoyo_mix', 965),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Soniccouture' COLLATE NOCASE AND p.name = 'Spotlight Collection: Balinese Gamelan' COLLATE NOCASE),
   NULL, 'Balinese Gamelan 1.5', 'Album: Eternal Sun, Eternal Want', '9. Tanyolche''s Memories', 'main', 'hoyo_mix', 966),
  -- 10. Touring the Dawn
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '10. Touring the Dawn', 'main', 'hoyo_mix', 967),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '10. Touring the Dawn', 'main', 'hoyo_mix', 968),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '10. Touring the Dawn', 'main', 'hoyo_mix', 969),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '10. Touring the Dawn', 'main', 'hoyo_mix', 970),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '10. Touring the Dawn', 'main', 'hoyo_mix', 971),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '10. Touring the Dawn', 'main', 'hoyo_mix', 972),
  -- 11. Hanging in the Heart of the Wind
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '11. Hanging in the Heart of the Wind', 'main', 'hoyo_mix', 973),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '11. Hanging in the Heart of the Wind', 'main', 'hoyo_mix', 974),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '11. Hanging in the Heart of the Wind', 'main', 'hoyo_mix', 975),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Ashlight' COLLATE NOCASE),
   'Atmosphere', 'Abuse of Confidence', 'Album: Eternal Sun, Eternal Want', '11. Hanging in the Heart of the Wind', 'main', 'hoyo_mix', 976),
  -- 12. Bells in Bloom
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '12. Bells in Bloom', 'main', 'hoyo_mix', 977),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '12. Bells in Bloom', 'main', 'hoyo_mix', 978),
  -- 13. Beyond the Flute''s Whispers
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '13. Beyond the Flute''s Whispers', 'main', 'hoyo_mix', 979),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '13. Beyond the Flute''s Whispers', 'main', 'hoyo_mix', 980),
  -- 14. Frosted Hue of Stars (no usage rows in source)
  -- 15. Starcaller''s Wishes (no usage rows in source)
  -- 16. Hushed Canopy of Night
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '16. Hushed Canopy of Night', 'main', 'hoyo_mix', 981),
  -- 17. Once Upon a Time in the Vale
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '17. Once Upon a Time in the Vale', 'main', 'hoyo_mix', 982),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '17. Once Upon a Time in the Vale', 'main', 'hoyo_mix', 983),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '17. Once Upon a Time in the Vale', 'main', 'hoyo_mix', 984),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '17. Once Upon a Time in the Vale', 'main', 'hoyo_mix', 985),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '17. Once Upon a Time in the Vale', 'main', 'hoyo_mix', 986),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '17. Once Upon a Time in the Vale', 'main', 'hoyo_mix', 987),
  -- 18. Homeward Bound (no usage rows in source)
  -- 19. Malinalco''s Dusk
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '19. Malinalco''s Dusk', 'main', 'hoyo_mix', 988),
  -- 20. Mountain''s Hymn
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '20. Mountain''s Hymn', 'main', 'hoyo_mix', 989),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '20. Mountain''s Hymn', 'main', 'hoyo_mix', 990),
  -- 21. Dance of the Brown Deer
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '21. Dance of the Brown Deer', 'main', 'hoyo_mix', 991),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '21. Dance of the Brown Deer', 'main', 'hoyo_mix', 992),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '21. Dance of the Brown Deer', 'main', 'hoyo_mix', 993),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '21. Dance of the Brown Deer', 'main', 'hoyo_mix', 994),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Soniccouture' COLLATE NOCASE AND p.name = 'Spotlight Collection: Balinese Gamelan' COLLATE NOCASE),
   NULL, 'Balinese Gamelan 1.5', 'Album: Eternal Sun, Eternal Want', '21. Dance of the Brown Deer', 'main', 'hoyo_mix', 995),
  -- 22. When the Breeze Ceases
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '22. When the Breeze Ceases', 'main', 'hoyo_mix', 996),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '22. When the Breeze Ceases', 'main', 'hoyo_mix', 997),
  -- 23. Rain of an Ancient Dream (no usage rows in source)
  -- 24. All the Pretty Courses
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '24. All the Pretty Courses', 'main', 'hoyo_mix', 998),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '24. All the Pretty Courses', 'main', 'hoyo_mix', 999),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '24. All the Pretty Courses', 'main', 'hoyo_mix', 1000),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '24. All the Pretty Courses', 'main', 'hoyo_mix', 1001),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '24. All the Pretty Courses', 'main', 'hoyo_mix', 1002),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '24. All the Pretty Courses', 'main', 'hoyo_mix', 1003),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '24. All the Pretty Courses', 'main', 'hoyo_mix', 1004),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '24. All the Pretty Courses', 'main', 'hoyo_mix', 1005),
  -- 25. Salute of Eagles
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '25. Salute of Eagles', 'main', 'hoyo_mix', 1006),
  -- 26. Idle Hours
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '26. Idle Hours', 'main', 'hoyo_mix', 1007),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '26. Idle Hours', 'main', 'hoyo_mix', 1008),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '26. Idle Hours', 'main', 'hoyo_mix', 1009),
  -- 27. Feathered Moonlight
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '27. Feathered Moonlight', 'main', 'hoyo_mix', 1010),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '27. Feathered Moonlight', 'main', 'hoyo_mix', 1011),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '27. Feathered Moonlight', 'main', 'hoyo_mix', 1012),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '27. Feathered Moonlight', 'main', 'hoyo_mix', 1013),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '27. Feathered Moonlight', 'main', 'hoyo_mix', 1014),
  -- =========================================================================
  -- Disc 2: Echo of Tonatiuh and Uctokah
  -- =========================================================================
  -- 1. Fading Dawn (no usage rows in source)
  -- 2. Afterglow of the Sky
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '2. Afterglow of the Sky', 'main', 'hoyo_mix', 1015),
  -- 3. Sigh, the Breath of Yore
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Sigh, the Breath of Yore', 'main', 'hoyo_mix', 1016),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Sigh, the Breath of Yore', 'main', 'hoyo_mix', 1017),
  -- 4. For an Unmarked Grave (no usage rows in source)
  -- 5. A Dream Yet to Come
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '5. A Dream Yet to Come', 'main', 'hoyo_mix', 1018),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Ashlight' COLLATE NOCASE),
   'Atmosphere', 'Abuse of Confidence', 'Album: Eternal Sun, Eternal Want', '5. A Dream Yet to Come', 'main', 'hoyo_mix', 1019),
  -- 6. Hidden Path Above the Savannah
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '6. Hidden Path Above the Savannah', 'main', 'hoyo_mix', 1020),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '6. Hidden Path Above the Savannah', 'main', 'hoyo_mix', 1021),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '6. Hidden Path Above the Savannah', 'main', 'hoyo_mix', 1022),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '6. Hidden Path Above the Savannah', 'main', 'hoyo_mix', 1023),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '6. Hidden Path Above the Savannah', 'main', 'hoyo_mix', 1024),
  -- 7. Someone Walked These Paths (no usage rows in source)
  -- 8. Ashes of Presumption (no usage rows in source)
  -- 9. The Fading Voices of Cinder (no usage rows in source)
  -- 10. Comfort in Visions
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '10. Comfort in Visions', 'main', 'hoyo_mix', 1025),
  -- 11. Serpent''s Endgame (no usage rows in source)
  -- 12. Formidable Usurper
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '12. Formidable Usurper', 'main', 'hoyo_mix', 1026),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '12. Formidable Usurper', 'main', 'hoyo_mix', 1027),
  -- 13. Indisputable Commandments
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '13. Indisputable Commandments', 'main', 'hoyo_mix', 1028),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '13. Indisputable Commandments', 'main', 'hoyo_mix', 1029),
  -- 14. Dripping Gloom (no usage rows in source)
  -- 15. Eclipsed Star
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '15. Eclipsed Star', 'main', 'hoyo_mix', 1030),
  -- 16. Onset of Omens (no usage rows in source)
  -- 17. Wingless Wail (no usage rows in source)
  -- 18. Hoary Hibernation
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '18. Hoary Hibernation', 'main', 'hoyo_mix', 1031),
  -- 19. As the Feather Falls
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '19. As the Feather Falls', 'main', 'hoyo_mix', 1032),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '19. As the Feather Falls', 'main', 'hoyo_mix', 1033),
  -- 20. Unanswered Yearning
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '20. Unanswered Yearning', 'main', 'hoyo_mix', 1034),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '20. Unanswered Yearning', 'main', 'hoyo_mix', 1035),
  -- =========================================================================
  -- Disc 3: A Fiery Cross Across the Sky
  -- =========================================================================
  -- 1. Tears of a Scorching Night
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '1. Tears of a Scorching Night', 'main', 'hoyo_mix', 1036),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '1. Tears of a Scorching Night', 'main', 'hoyo_mix', 1037),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Strings -> 11 Violins -> 1 Long', '11V Harmonics', 'Album: Eternal Sun, Eternal Want', '1. Tears of a Scorching Night', 'main', 'hoyo_mix', 1038),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Native Instruments' COLLATE NOCASE AND p.name = 'Ashlight' COLLATE NOCASE),
   'Atmosphere', 'Abuse of Confidence', 'Album: Eternal Sun, Eternal Want', '1. Tears of a Scorching Night', 'main', 'hoyo_mix', 1039),
  -- 2. To the End of All Wars
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '2. To the End of All Wars', 'main', 'hoyo_mix', 1040),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '2. To the End of All Wars', 'main', 'hoyo_mix', 1041),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '2. To the End of All Wars', 'main', 'hoyo_mix', 1042),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '2. To the End of All Wars', 'main', 'hoyo_mix', 1043),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '2. To the End of All Wars', 'main', 'hoyo_mix', 1044),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'EastWest' COLLATE NOCASE AND p.name = 'Symphonic Orchestra' COLLATE NOCASE),
   'Perc -> Metals', 'Orch chimes', 'Album: Eternal Sun, Eternal Want', '2. To the End of All Wars', 'main', 'hoyo_mix', 1045),
  -- 3. Shaping the Struggle
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Shaping the Struggle', 'main', 'hoyo_mix', 1046),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Shaping the Struggle', 'main', 'hoyo_mix', 1047),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Shaping the Struggle', 'main', 'hoyo_mix', 1048),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Shaping the Struggle', 'main', 'hoyo_mix', 1049),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '3. Shaping the Struggle', 'main', 'hoyo_mix', 1050),
  -- 4. Tumaini washa moto
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '4. Tumaini washa moto', 'main', 'hoyo_mix', 1051),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '4. Tumaini washa moto', 'main', 'hoyo_mix', 1052),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '4. Tumaini washa moto', 'main', 'hoyo_mix', 1053),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '4. Tumaini washa moto', 'main', 'hoyo_mix', 1054),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '4. Tumaini washa moto', 'main', 'hoyo_mix', 1055),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '4. Tumaini washa moto', 'main', 'hoyo_mix', 1056),
  -- 5. Stage''s Coach
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '5. Stage''s Coach', 'main', 'hoyo_mix', 1057),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '5. Stage''s Coach', 'main', 'hoyo_mix', 1058),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '5. Stage''s Coach', 'main', 'hoyo_mix', 1059),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '5. Stage''s Coach', 'main', 'hoyo_mix', 1060),
  ((SELECT id FROM games WHERE title = 'Genshin Impact'), NULL, NULL, NULL, 'Album: Eternal Sun, Eternal Want', '5. Stage''s Coach', 'main', 'hoyo_mix', 1061),
  -- 6. Maze of Spirits
  ((SELECT id FROM games WHERE title = 'Genshin Impact'),
   (SELECT p.id FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id WHERE m.name = 'Soniccouture' COLLATE NOCASE AND p.name = 'Spotlight Collection: Balinese Gamelan' COLLATE NOCASE),
   NULL, 'Balinese Gamelan 1.5', 'Album: Eternal Sun, Eternal Want', '6. Maze of Spirits', 'main', 'hoyo_mix', 1062);

-- =========================================================================
-- Live Recording / Credited Piano Performance raw_source UPDATEs
-- =========================================================================
-- Fountain of Belleau, Disc 1
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 1 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 2 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 3 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 4 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 5 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 9 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 10 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 11 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 12 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 13 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 14 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 15 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 16 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 17 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 18 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 19 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — Chris Laurence' WHERE position = 20 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 21 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 22 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 23 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 24 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — Chris Laurence' WHERE position = 25 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 26 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 27 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 28 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 29 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — Chris Laurence' WHERE position = 30 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 31 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 32 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 33 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 34 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 35 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 36 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Dimeng Yuan' WHERE position = 37 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 38 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — Chris Laurence' WHERE position = 39 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yijun Jiang' WHERE position = 40 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 41 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 42 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 43 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 44 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Ziyu Che' WHERE position = 45 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 46 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 47 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Dimeng Yuan' WHERE position = 48 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 49 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 50 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 51 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — Chris Laurence' WHERE position = 52 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 53 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 54 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yutong Zhang' WHERE position = 55 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 56 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 57 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 58 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 59 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 60 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Andy Findon' WHERE position = 61 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 62 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Upright Bass — Chris Laurence' WHERE position = 63 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 64 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 65 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 66 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 67 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 68 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 69 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 70 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 71 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 72 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 73 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 74 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 75 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Baroque Guitar — Richard Durrant' WHERE position = 76 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 77 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 78 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 79 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 80 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 81 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yutong Zhang' WHERE position = 82 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 83 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 84 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Xiaonan Xu' WHERE position = 85 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 86 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 87 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 88 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Fountain of Belleau, Disc 2
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 89 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 90 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 91 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 92 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 93 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 94 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 95 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 96 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 97 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 98 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 99 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 100 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 101 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 102 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 103 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 104 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 105 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 106 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 107 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 108 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 109 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 110 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 111 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 112 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 113 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 114 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 115 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 116 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 117 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Baroque Flute — Andy Findon' WHERE position = 118 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 119 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 120 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 121 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 122 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 123 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Dimeng Yuan' WHERE position = 124 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 125 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Andy Findon' WHERE position = 126 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Piccolo — Andy Findon' WHERE position = 127 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 128 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 129 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Andy Findon' WHERE position = 130 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 131 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Baroque Guitar — Richard Durrant' WHERE position = 132 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 133 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Baroque Guitar — Richard Durrant' WHERE position = 134 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Qian Ding' WHERE position = 135 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Arcangelo Chen' WHERE position = 136 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Arcangelo Chen' WHERE position = 137 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 138 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 139 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 140 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 141 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 142 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 143 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Dimeng Yuan' WHERE position = 144 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 145 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 146 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 147 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 148 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 149 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 150 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 151 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Fountain of Belleau, Disc 3
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 152 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 153 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 154 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 155 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 156 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 157 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 158 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 159 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 160 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 161 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 162 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 163 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 164 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 165 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 166 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 167 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 168 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 169 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 170 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 171 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 172 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 173 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 174 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 175 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 176 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da gamba — Kate Conway' WHERE position = 177 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 178 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 179 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 180 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 181 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 182 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 183 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 184 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 185 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 186 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 187 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 188 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 189 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 190 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 191 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 192 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Fountain of Belleau, Disc 4
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 193 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 194 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 195 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Nigel Woodhouse' WHERE position = 196 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 197 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 198 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Lynda Sayce' WHERE position = 199 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 202 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 203 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 204 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 205 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Quartet' WHERE position = 206 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 207 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Pelagic Primaevality, Disc 1
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 208 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 209 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Xiaonan Xu' WHERE position = 210 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Ye Fan' WHERE position = 211 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yucheng Jin' WHERE position = 212 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yucheng Jin' WHERE position = 213 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yuxi Wang' WHERE position = 214 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 215 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Quartet' WHERE position = 216 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Ye Fan' WHERE position = 217 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 218 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — (see note)' WHERE position = 219 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 220 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 221 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — (see note)' WHERE position = 222 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 223 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 224 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 225 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — (see note)' WHERE position = 226 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 227 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 228 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Ziyu Che' WHERE position = 229 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 230 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 231 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 232 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 233 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 235 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 236 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Xiaonan Xu' WHERE position = 237 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yutong Zhang' WHERE position = 238 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 239 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yutong Zhang' WHERE position = 240 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 241 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 242 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da Gamba — Kate Conway' WHERE position = 243 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 244 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 245 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yucheng Jin' WHERE position = 246 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 247 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 248 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 249 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yucheng Jin' WHERE position = 250 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — (see note)' WHERE position = 251 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 252 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 253 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Xiaonan Xu' WHERE position = 254 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 255 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 256 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yucheng Jin' WHERE position = 257 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 258 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — June' WHERE position = 259 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 260 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Qian Ding' WHERE position = 261 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 262 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 263 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 264 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 265 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 266 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harmonica — Alasdair Malloy' WHERE position = 267 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Glass Harp — Alasdair Malloy' WHERE position = 268 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Pelagic Primaevality, Disc 2
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 269 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 270 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 271 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 272 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 273 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yijun Jiang' WHERE position = 275 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 277 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 278 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Xin Zhao' WHERE position = 279 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 280 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 281 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 282 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 283 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 284 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 285 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 286 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 287 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 288 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 289 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 290 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 291 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 292 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 293 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 294 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Milos Milivojevic' WHERE position = 295 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Richard Durrant' WHERE position = 296 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 297 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 298 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Qian Ding' WHERE position = 299 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 300 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 301 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 302 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola da Gamba — Kate Conway' WHERE position = 303 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Arcangelo Chen' WHERE position = 304 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 305 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yuxi Wang' WHERE position = 306 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 307 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 308 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Pelagic Primaevality, Disc 3
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 309 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 310 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — (see note)' WHERE position = 311 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Jadeite Redolence, Disc 1
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 312 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 313 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 314 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hulusi — Jiannan Gu' WHERE position = 315 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sheng — Chunxu Li' WHERE position = 316 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 317 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 318 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 319 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 320 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Nan Mei' WHERE position = 321 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 322 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 323 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 324 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hulusi — Jiannan Gu' WHERE position = 325 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Nan Mei' WHERE position = 326 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 327 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 328 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 329 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 330 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 331 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Bawu — Jiannan Gu' WHERE position = 332 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 333 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 334 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 335 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hulusi — Jiannan Gu' WHERE position = 336 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 337 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 338 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yutong Zhang' WHERE position = 339 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 340 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 341 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 342 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 343 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 344 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 345 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 346 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 347 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 348 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xun — Jiannan Gu' WHERE position = 349 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 350 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 351 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 352 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 353 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 354 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 355 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 356 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hulusi — Jiannan Gu' WHERE position = 357 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sheng — Chunxu Li' WHERE position = 358 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ruan — Wenqing Shi' WHERE position = 359 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 360 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guqin — Jingyu Fang' WHERE position = 361 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guqin — Jingyu Fang' WHERE position = 362 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 363 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 364 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sheng — Chunxu Li' WHERE position = 365 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 366 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 367 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Nan Mei' WHERE position = 368 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 369 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 370 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 371 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hulusi — Jiannan Gu' WHERE position = 372 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 373 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 374 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Hulusi — Jiannan Gu' WHERE position = 375 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sheng — Chunxu Li' WHERE position = 376 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 377 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 378 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 379 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 380 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 381 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sheng — Chunxu Li' WHERE position = 382 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 383 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ruan — Wenqing Shi' WHERE position = 384 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 385 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 386 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Xiaokui Ding' WHERE position = 387 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Xiao Meng' WHERE position = 388 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Ying Wang' WHERE position = 389 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sanxian — Guanlin Gao' WHERE position = 390 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Guofeng Wang' WHERE position = 391 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Mao He' WHERE position = 392 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Guofeng Wang' WHERE position = 393 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Mao He' WHERE position = 394 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Jadeite Redolence, Disc 2
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 395 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 396 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 397 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 398 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ruan — Wenqing Shi' WHERE position = 399 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 400 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 401 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 402 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 403 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ruan — Wenqing Shi' WHERE position = 404 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 405 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 406 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 407 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Nan Mei' WHERE position = 408 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xun — Jiannan Gu' WHERE position = 409 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guqin — Jingyu Fang' WHERE position = 410 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 411 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Nan Mei' WHERE position = 412 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 413 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 414 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 415 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 416 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 417 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 418 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 419 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 420 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 421 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 422 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 423 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 424 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 425 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 426 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 427 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 428 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 429 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 430 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 431 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Nan Mei' WHERE position = 432 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 433 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ruan — Wenqing Shi' WHERE position = 434 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 435 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 436 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Nan Mei' WHERE position = 437 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 438 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guqin — Jingyu Fang' WHERE position = 439 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 440 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 441 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 442 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xun — Jiannan Gu' WHERE position = 443 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ruan — Wenqing Shi' WHERE position = 444 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 445 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Nan Mei' WHERE position = 446 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 447 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 448 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 449 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 450 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 451 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 452 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 453 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 454 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 455 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 456 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dizi — Jiannan Gu' WHERE position = 457 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 458 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Guzheng — Qianqian He' WHERE position = 459 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 460 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Suona — Qiang Zhang' WHERE position = 461 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Da Suona — Qiang Zhang' WHERE position = 462 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 463 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 464 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Sheng — Chunxu Li' WHERE position = 465 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pipa — Wenqing Shi' WHERE position = 466 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Erhu — Jiajun Ma' WHERE position = 467 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Xiao — Jiannan Gu' WHERE position = 468 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Cantus Aeternus, Disc 1
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 470 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Churan Li' WHERE position = 471 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 472 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 473 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 474 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 475 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 476 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Churan Li' WHERE position = 477 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 478 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Mandolin — Ye Fan' WHERE position = 479 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 480 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 481 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 482 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 483 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 484 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 485 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 486 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 487 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 488 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 489 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 490 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 491 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 492 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 493 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 494 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 495 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 496 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 497 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 498 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 499 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 500 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 501 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 502 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 503 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Cantus Aeternus, Disc 2
UPDATE usages SET raw_source = 'Credited Piano Performance — Yang Lee' WHERE position = 504 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yang Lee' WHERE position = 505 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 506 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 507 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 508 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 509 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 510 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 511 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 512 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 513 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 514 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 515 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 516 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 517 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 518 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 519 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Zirong Zhu' WHERE position = 520 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 521 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 522 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 523 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Zirong Zhu' WHERE position = 524 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Cantus Aeternus, Disc 3
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 525 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 526 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 527 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Ping Zhang' WHERE position = 528 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 529 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 530 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Hui He' WHERE position = 531 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Ping Zhang' WHERE position = 532 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Children''s Choir — Sfuture Art Group' WHERE position = 533 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 534 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 535 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Children''s Choir — Sfuture Art Group' WHERE position = 536 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 537 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 538 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 539 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Dimeng Yuan' WHERE position = 540 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Children''s Choir — Sfuture Art Group' WHERE position = 541 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Alto — Huiling Zhu' WHERE position = 542 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- The Shimmering Voyage Vol.4, Disc 1
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 543 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Big Band' WHERE position = 544 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 545 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 546 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Churan Li' WHERE position = 547 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 548 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 549 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Churan Li' WHERE position = 550 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 551 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 552 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 553 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 554 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 555 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yijun Jiang' WHERE position = 556 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yang Lee' WHERE position = 557 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Ziyu Che' WHERE position = 558 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 559 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Quintet' WHERE position = 560 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 561 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 562 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 563 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Xiaokui Ding' WHERE position = 564 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 566 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 567 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Churan Li' WHERE position = 568 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 569 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Xiaokui Ding' WHERE position = 571 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 572 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 574 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Children''s Choir — Sfuture Art Group' WHERE position = 575 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 576 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 577 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 578 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 579 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 580 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 581 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 582 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Peijia You' WHERE position = 583 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 584 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 585 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — June' WHERE position = 586 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- The Shimmering Voyage Vol.4, Disc 2
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 588 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 589 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 590 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 591 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 592 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 593 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 594 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 595 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 596 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 597 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 598 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 599 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 600 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 601 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 602 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 603 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 604 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 605 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 606 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 607 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 608 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yucheng Jin' WHERE position = 609 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Wenqian Bao, Jia Tian, Jing Zhang, ...' WHERE position = 610 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 611 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 612 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 613 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 614 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yijun Jiang' WHERE position = 615 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 616 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 617 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 618 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 619 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 620 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Xin Zhao' WHERE position = 621 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Saxophone — Shengda Ji' WHERE position = 622 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 623 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 624 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Children''s Choir — Sfuture Art Group' WHERE position = 625 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 626 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 627 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 628 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 629 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 630 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 631 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- The Shimmering Voyage Vol.4, Disc 3
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 632 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 633 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 634 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Dimeng Yuan — Dimeng Yuan' WHERE position = 635 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 636 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 637 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 638 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 639 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Churan Li' WHERE position = 640 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 641 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 642 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Peijia You' WHERE position = 643 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 644 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 645 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 646 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ying Lang' WHERE position = 647 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 648 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yijun Jiang' WHERE position = 649 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 650 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 651 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 652 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Duduk — Jiali Zhang' WHERE position = 653 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 654 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 655 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 656 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 657 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 658 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 659 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 660 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Peijia You' WHERE position = 661 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 662 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 663 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 664 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Arcangelo Chen' WHERE position = 665 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Xiaokui Ding' WHERE position = 666 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 667 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lute — Ye Fan' WHERE position = 668 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 669 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Accordion — Churan Li' WHERE position = 670 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 671 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 672 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 673 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Children''s Choir — Sfuture Art Group' WHERE position = 674 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 675 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Vocal Artist — Curley G' WHERE position = 676 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 677 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 678 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 679 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 680 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 681 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 682 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ping Zhang' WHERE position = 683 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 684 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 685 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 686 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 687 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 688 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 689 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Dimeng Yuan' WHERE position = 690 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Xiaokui Ding' WHERE position = 691 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flute — Xiaohua Cheng' WHERE position = 692 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Xizheng Cheng' WHERE position = 693 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Land of Tleyaoyotl, Disc 1
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 694 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 695 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 696 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Genshin Folk Ensemble' WHERE position = 697 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 698 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kora — Genshin Folk Ensemble' WHERE position = 699 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Talking Drum — Genshin Folk Ensemble' WHERE position = 700 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tenor — Daniel Lewis' WHERE position = 701 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 702 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 703 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 704 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 705 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 706 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Genshin Folk Ensemble' WHERE position = 707 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Banjo — Genshin Folk Ensemble' WHERE position = 708 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Djembe — Genshin Folk Ensemble' WHERE position = 709 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 710 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 711 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 712 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Genshin Folk Ensemble' WHERE position = 713 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tres — Genshin Folk Ensemble' WHERE position = 714 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Additional Choir — Budapest Scoring Choir' WHERE position = 715 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 716 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 717 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 718 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Genshin Folk Ensemble' WHERE position = 719 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 720 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 721 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 722 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Djembe — Genshin Folk Ensemble' WHERE position = 723 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tres — Genshin Folk Ensemble' WHERE position = 724 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 725 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 726 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 727 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 728 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flute — Suyan Zhao' WHERE position = 729 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Danfeng Hu' WHERE position = 730 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trombone — Qingwen Hu' WHERE position = 731 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 732 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 733 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 735 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Genshin Folk Ensemble' WHERE position = 736 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Genshin Folk Ensemble' WHERE position = 737 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Gourd Drum — Genshin Folk Ensemble' WHERE position = 738 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Fula — Jiannan Gu' WHERE position = 739 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 740 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cabasa — Peijia You' WHERE position = 741 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tenor — Daniel Lewis' WHERE position = 742 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 743 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Fula — Genshin Folk Ensemble' WHERE position = 744 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Dimeng Yuan' WHERE position = 745 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Fula — Genshin Folk Ensemble' WHERE position = 746 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 748 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 749 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 750 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Big Band' WHERE position = 751 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 752 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 753 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 754 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 756 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 757 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Steel Drum — Genshin Folk Ensemble' WHERE position = 758 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 759 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 760 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 761 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Banjo — Genshin Folk Ensemble' WHERE position = 762 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Genshin Folk Ensemble' WHERE position = 763 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cajon — Genshin Folk Ensemble' WHERE position = 764 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Xin Zhao' WHERE position = 765 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 767 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Big Band' WHERE position = 768 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 769 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flute — Suyan Zhao' WHERE position = 770 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Yijun Jiang' WHERE position = 771 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Genshin Folk Ensemble' WHERE position = 772 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 773 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 774 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 775 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Genshin Folk Ensemble' WHERE position = 776 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lap Steel — Genshin Folk Ensemble' WHERE position = 777 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 778 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 779 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 780 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cajon — Genshin Folk Ensemble' WHERE position = 781 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Genshin Folk Ensemble' WHERE position = 782 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lap Steel — Genshin Folk Ensemble' WHERE position = 783 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Xin Zhao' WHERE position = 784 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lap Steel — Lei Chen' WHERE position = 785 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Genshin Folk Ensemble' WHERE position = 786 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flute — Suyan Zhao' WHERE position = 787 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Dimeng Yuan' WHERE position = 788 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 789 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 790 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 791 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Dimeng Yuan' WHERE position = 792 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 793 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 794 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 797 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 798 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 799 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Qian Ding' WHERE position = 800 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 801 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 802 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 803 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Arcangelo Chen' WHERE position = 804 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Arcangelo Chen' WHERE position = 805 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Land of Tleyaoyotl, Disc 2
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 806 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kora — Genshin Folk Ensemble' WHERE position = 807 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 808 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Additional Choir — Budapest Scoring Choir' WHERE position = 809 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Fula — Genshin Folk Ensemble' WHERE position = 810 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 812 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 813 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cabasa — Peijia You' WHERE position = 814 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 815 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 816 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 817 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 818 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 819 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tenor — Daniel Lewis' WHERE position = 820 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 821 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cajon — Genshin Folk Ensemble' WHERE position = 822 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Conga — Genshin Folk Ensemble' WHERE position = 823 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 824 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 825 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 827 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 828 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 829 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 830 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 831 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Genshin Folk Ensemble' WHERE position = 832 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 833 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 834 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 835 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Genshin Folk Ensemble' WHERE position = 836 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 838 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 839 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 840 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Additional Choir — Budapest Scoring Choir' WHERE position = 841 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cajon — Genshin Folk Ensemble' WHERE position = 842 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Dimeng Yuan' WHERE position = 843 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 844 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Jiannan Gu' WHERE position = 845 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Jiannan Gu' WHERE position = 846 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 847 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Jiannan Gu' WHERE position = 848 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Jiannan Gu' WHERE position = 849 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 850 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 851 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 852 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Genshin Folk Ensemble' WHERE position = 853 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 854 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Credited Piano Performance — Yang Lee' WHERE position = 856 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 857 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 858 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Genshin Folk Ensemble' WHERE position = 859 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 860 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kora — Genshin Folk Ensemble' WHERE position = 861 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 862 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 863 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Genshin Folk Ensemble' WHERE position = 864 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Lap Steel — Genshin Folk Ensemble' WHERE position = 865 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 866 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 867 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Genshin Folk Ensemble' WHERE position = 868 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 869 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 870 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 871 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Genshin Folk Ensemble' WHERE position = 872 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 873 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Conga — Genshin Folk Ensemble' WHERE position = 874 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 875 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 876 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 877 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Genshin Folk Ensemble' WHERE position = 878 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 879 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Genshin Folk Ensemble' WHERE position = 880 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Genshin Folk Ensemble' WHERE position = 881 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Yue Zhu' WHERE position = 882 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Viola — Yekun Fang' WHERE position = 883 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Xiaolong Chen' WHERE position = 884 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 885 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 886 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 887 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Genshin Folk Ensemble' WHERE position = 888 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Genshin Folk Ensemble' WHERE position = 889 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 890 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Whistling — Anzol' WHERE position = 891 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 892 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 893 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 894 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Ping Zhang' WHERE position = 895 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Art of Loong Orchestra' WHERE position = 896 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 897 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 900 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Genshin Folk Ensemble' WHERE position = 901 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Land of Tleyaoyotl, Disc 3
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 902 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 903 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 904 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Genshin Folk Ensemble' WHERE position = 905 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kora — Genshin Folk Ensemble' WHERE position = 906 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Talking Drum — Genshin Folk Ensemble' WHERE position = 907 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tenor — Daniel Lewis' WHERE position = 908 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 909 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Genshin Folk Ensemble' WHERE position = 910 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Banjo — Genshin Folk Ensemble' WHERE position = 911 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Genshin Folk Ensemble' WHERE position = 912 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 914 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Big Band' WHERE position = 915 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Jiannan Gu' WHERE position = 916 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Banjo — Genshin Folk Ensemble' WHERE position = 917 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Tres — Genshin Folk Ensemble' WHERE position = 918 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Genshin Folk Ensemble' WHERE position = 919 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Danfeng Hu' WHERE position = 920 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ukulele — Genshin Folk Ensemble' WHERE position = 921 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 922 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Big Band' WHERE position = 923 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 924 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 925 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Jiannan Gu' WHERE position = 926 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Kora — Genshin Folk Ensemble' WHERE position = 927 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Talking Drum — Genshin Folk Ensemble' WHERE position = 928 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 929 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Genshin Folk Ensemble' WHERE position = 930 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Djembe — Genshin Folk Ensemble' WHERE position = 931 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 933 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 934 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 935 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 936 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 937 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Eternal Sun, Eternal Want, Disc 1
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 938 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 939 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 940 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Jiannan Gu' WHERE position = 941 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 944 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 945 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 946 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Xiaokui Ding' WHERE position = 947 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — Qin Zhang' WHERE position = 948 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 950 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 951 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 952 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 953 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Ziyu Che' WHERE position = 954 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Jiannan Gu' WHERE position = 955 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Jiannan Gu' WHERE position = 956 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 957 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 958 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 959 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 960 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Jiannan Gu' WHERE position = 961 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harmonica — Genshin Folk Ensemble' WHERE position = 962 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 963 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Xiaokui Ding' WHERE position = 964 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Jiannan Gu' WHERE position = 965 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 967 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 968 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Recorder — Xiaokui Ding' WHERE position = 969 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harmonica — Xiaoguang Liu' WHERE position = 970 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 971 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Banjo — Lei Chen' WHERE position = 972 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 973 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 974 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Jiannan Gu' WHERE position = 975 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 977 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Xiaokui Ding' WHERE position = 978 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 979 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 980 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Genshin Folk Ensemble' WHERE position = 981 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 982 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 983 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harmonica — Genshin Folk Ensemble' WHERE position = 984 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 985 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 986 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Whistling — Anzol' WHERE position = 987 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Xiaokui Ding' WHERE position = 988 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 989 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 990 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 991 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Peijia You' WHERE position = 992 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Jiannan Gu' WHERE position = 993 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cabasa — Peijia You' WHERE position = 994 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 996 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 997 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 998 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 999 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 1000 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Violin — London Symphony Orchestra' WHERE position = 1001 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Peijia You' WHERE position = 1002 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Whistling — Anzol' WHERE position = 1003 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cabasa — Peijia You' WHERE position = 1004 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Electric Guitar — Peijia You' WHERE position = 1005 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 1006 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 1007 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harmonica — Genshin Folk Ensemble' WHERE position = 1008 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 1009 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — London Symphony Orchestra' WHERE position = 1010 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Genshin Folk Ensemble' WHERE position = 1011 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — London Symphony Orchestra' WHERE position = 1012 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 1013 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Genshin Folk Ensemble' WHERE position = 1014 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Eternal Sun, Eternal Want, Disc 2
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 1015 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 1016 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1017 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1018 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 1020 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1021 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 1022 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 1023 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Xiaokui Ding' WHERE position = 1024 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 1025 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1026 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 1027 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 1028 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1029 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 1030 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — London Voice' WHERE position = 1031 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1032 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 1033 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1034 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Classical Guitar — Ye Fan' WHERE position = 1035 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
-- Eternal Sun, Eternal Want, Disc 3
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1036 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Pan Flute — Jiannan Gu' WHERE position = 1037 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 1040 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1041 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 1042 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Ye Fan' WHERE position = 1043 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Native American Flute — Jiannan Gu' WHERE position = 1044 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 1046 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1047 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 1048 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Voice — Zirong Zhu' WHERE position = 1049 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Flute — Xiaohua Cheng' WHERE position = 1050 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Choir — Budapest Scoring Choir' WHERE position = 1051 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — International Master Philharmonic Orchestra' WHERE position = 1052 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 1053 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Cello — Yi Sun' WHERE position = 1054 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Quena — Jiannan Gu' WHERE position = 1055 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Ocarina — Xiaokui Ding' WHERE position = 1056 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Scoring Orchestra' WHERE position = 1057 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Orchestra — Budapest Big Band' WHERE position = 1058 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Harmonica — Genshin Folk Ensemble' WHERE position = 1059 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Acoustic Guitar — Genshin Folk Ensemble' WHERE position = 1060 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
UPDATE usages SET raw_source = 'Live Recording: Trumpet — Danfeng Hu' WHERE position = 1061 AND game_id = (SELECT id FROM games WHERE title = 'Genshin Impact') AND source_family = 'hoyo_mix';
