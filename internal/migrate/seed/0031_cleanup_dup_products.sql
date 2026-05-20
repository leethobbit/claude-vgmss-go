-- Data-quality cleanup: consolidate duplicate manufacturers and products
-- introduced across Pokémon (NEWER VGM) and SoundTeMP seed batches.
-- Surveyed manually from the populated DB on 2026-05-20.
--
-- Pattern per merge:
--   1. UPDATE usages SET product_id = <canonical> WHERE product_id = <loser>
--   2. DELETE the loser product
-- For manufacturer merges with internal product-name conflicts:
--   1a. First consolidate the conflicting product (as above)
--   1b. Then UPDATE the remaining loser products to point at the winner manufacturer
--   1c. DELETE the loser manufacturer

-- =============================================================================
-- Product-level consolidations
-- =============================================================================

-- Roland: SC-88Pro → SOUND Canvas SC-88 Pro
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Roland' COLLATE NOCASE
       AND p.name = 'SOUND Canvas SC-88 Pro' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Roland' COLLATE NOCASE
       AND p.name = 'SC-88Pro' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Roland' COLLATE NOCASE
       AND p.name = 'SC-88Pro' COLLATE NOCASE);

-- Best Service: ProSamples Vol. 55 - Cult Sampler → Retro Sampler
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Best Service' COLLATE NOCASE
       AND p.name = 'ProSamples Vol. 55 - Retro Sampler' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Best Service' COLLATE NOCASE
       AND p.name = 'ProSamples Vol. 55 - Cult Sampler' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Best Service' COLLATE NOCASE
       AND p.name = 'ProSamples Vol. 55 - Cult Sampler' COLLATE NOCASE);

-- Best Service: Red Box Vol. 4 (Special and Unusual) → Red Box Vol.4 (Special and Unusual)
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Best Service' COLLATE NOCASE
       AND p.name = 'Red Box Vol.4 (Special and Unusual)' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Best Service' COLLATE NOCASE
       AND p.name = 'Red Box Vol. 4 (Special and Unusual)' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Best Service' COLLATE NOCASE
       AND p.name = 'Red Box Vol. 4 (Special and Unusual)' COLLATE NOCASE);

-- Best Service: Orchestral Colors → Orchestral Colours
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Best Service' COLLATE NOCASE
       AND p.name = 'Orchestral Colours' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Best Service' COLLATE NOCASE
       AND p.name = 'Orchestral Colors' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Best Service' COLLATE NOCASE
       AND p.name = 'Orchestral Colors' COLLATE NOCASE);

-- Audio Modeling: SWAM Flute → SWAM Flutes
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Audio Modeling' COLLATE NOCASE
       AND p.name = 'SWAM Flutes' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Audio Modeling' COLLATE NOCASE
       AND p.name = 'SWAM Flute' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Audio Modeling' COLLATE NOCASE
       AND p.name = 'SWAM Flute' COLLATE NOCASE);

-- Discovery Firm: Sound Effects CD Series - 6 - Nature → Sound Effects CD Series 6 - NATURE
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Discovery Firm' COLLATE NOCASE
       AND p.name = 'Sound Effects CD Series 6 - NATURE' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Discovery Firm' COLLATE NOCASE
       AND p.name = 'Sound Effects CD Series - 6 - Nature' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Discovery Firm' COLLATE NOCASE
       AND p.name = 'Sound Effects CD Series - 6 - Nature' COLLATE NOCASE);

-- Native Instruments: Drum Lab → Drumlab
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Native Instruments' COLLATE NOCASE
       AND p.name = 'Drumlab' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Native Instruments' COLLATE NOCASE
       AND p.name = 'Drum Lab' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Native Instruments' COLLATE NOCASE
       AND p.name = 'Drum Lab' COLLATE NOCASE);

-- Spectrasonics: Distorted Reality 2 → Distorted Reality II
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Spectrasonics' COLLATE NOCASE
       AND p.name = 'Distorted Reality II' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Spectrasonics' COLLATE NOCASE
       AND p.name = 'Distorted Reality 2' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Spectrasonics' COLLATE NOCASE
       AND p.name = 'Distorted Reality 2' COLLATE NOCASE);

-- Spectrasonics: Liquid Grooves S.A.G.E Xpander → Liquid Grooves S.A.G.E. Xpander
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Spectrasonics' COLLATE NOCASE
       AND p.name = 'Liquid Grooves S.A.G.E. Xpander' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Spectrasonics' COLLATE NOCASE
       AND p.name = 'Liquid Grooves S.A.G.E Xpander' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Spectrasonics' COLLATE NOCASE
       AND p.name = 'Liquid Grooves S.A.G.E Xpander' COLLATE NOCASE);

-- Yamaha: MOTIF Rack → MOTIF-RACK
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Yamaha' COLLATE NOCASE
       AND p.name = 'MOTIF-RACK' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Yamaha' COLLATE NOCASE
       AND p.name = 'MOTIF Rack' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Yamaha' COLLATE NOCASE
       AND p.name = 'MOTIF Rack' COLLATE NOCASE);

-- YMCK: Magical8bitplug → Magical 8bit Plug
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'YMCK' COLLATE NOCASE
       AND p.name = 'Magical 8bit Plug' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'YMCK' COLLATE NOCASE
       AND p.name = 'Magical8bitplug' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'YMCK' COLLATE NOCASE
       AND p.name = 'Magical8bitplug' COLLATE NOCASE);

-- Zero-G: Escape from Planet of the Breaks → Escape from the Planet of the Breaks
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Zero-G' COLLATE NOCASE
       AND p.name = 'Escape from the Planet of the Breaks' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Zero-G' COLLATE NOCASE
       AND p.name = 'Escape from Planet of the Breaks' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Zero-G' COLLATE NOCASE
       AND p.name = 'Escape from Planet of the Breaks' COLLATE NOCASE);

-- Zero-G: Orchestral Flavours (short) → Creative Essentials Vol. 30 Orchestral Flavours
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Zero-G' COLLATE NOCASE
       AND p.name = 'Creative Essentials Vol. 30 Orchestral Flavours' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Zero-G' COLLATE NOCASE
       AND p.name = 'Orchestral Flavours' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Zero-G' COLLATE NOCASE
       AND p.name = 'Orchestral Flavours' COLLATE NOCASE);

-- UVI: PlugSound Pro (04-Synth and co) → PlugSound Pro (04-Synths and co)
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'UVI' COLLATE NOCASE
       AND p.name = 'PlugSound Pro (04-Synths and co)' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'UVI' COLLATE NOCASE
       AND p.name = 'PlugSound Pro (04-Synth and co)' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'UVI' COLLATE NOCASE
       AND p.name = 'PlugSound Pro (04-Synth and co)' COLLATE NOCASE);

-- Modartt: PianoTeq 3 → Pianoteq 3 (rename only; different from Pianoteq 6)
UPDATE products SET name = 'Pianoteq 3'
 WHERE id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Modartt' COLLATE NOCASE
       AND p.name = 'PianoTeq 3' COLLATE NOCASE);

-- =============================================================================
-- Manufacturer-level consolidations
-- =============================================================================

-- Image Line → Image-Line. Both have `3xOsc`; merge that product first.
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Image-Line' COLLATE NOCASE
       AND p.name = '3xOsc' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Image Line' COLLATE NOCASE
       AND p.name = '3xOsc' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Image Line' COLLATE NOCASE
       AND p.name = '3xOsc' COLLATE NOCASE);

-- Then move the remaining Image Line product(s) onto Image-Line
UPDATE products
   SET manufacturer_id = (SELECT id FROM manufacturers WHERE name = 'Image-Line' COLLATE NOCASE)
 WHERE manufacturer_id = (SELECT id FROM manufacturers WHERE name = 'Image Line' COLLATE NOCASE);
DELETE FROM manufacturers WHERE name = 'Image Line' COLLATE NOCASE;

-- Yellow Tools → MAGiX / Yellow Tools. Both have `Independence Pro`; merge first.
UPDATE usages SET product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'MAGiX / Yellow Tools' COLLATE NOCASE
       AND p.name = 'Independence Pro' COLLATE NOCASE)
 WHERE product_id = (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Yellow Tools' COLLATE NOCASE
       AND p.name = 'Independence Pro' COLLATE NOCASE);
DELETE FROM products WHERE id IN (
    SELECT p.id FROM products p
      JOIN manufacturers m ON m.id = p.manufacturer_id
     WHERE m.name = 'Yellow Tools' COLLATE NOCASE
       AND p.name = 'Independence Pro' COLLATE NOCASE);

-- Then move remaining Yellow Tools products (e.g. Pure Drums) to MAGiX / Yellow Tools
UPDATE products
   SET manufacturer_id = (SELECT id FROM manufacturers WHERE name = 'MAGiX / Yellow Tools' COLLATE NOCASE)
 WHERE manufacturer_id = (SELECT id FROM manufacturers WHERE name = 'Yellow Tools' COLLATE NOCASE);
DELETE FROM manufacturers WHERE name = 'Yellow Tools' COLLATE NOCASE;

-- Vengeance → Vengeance Sound. No name conflicts.
UPDATE products
   SET manufacturer_id = (SELECT id FROM manufacturers WHERE name = 'Vengeance Sound' COLLATE NOCASE)
 WHERE manufacturer_id = (SELECT id FROM manufacturers WHERE name = 'Vengeance' COLLATE NOCASE);
DELETE FROM manufacturers WHERE name = 'Vengeance' COLLATE NOCASE;
