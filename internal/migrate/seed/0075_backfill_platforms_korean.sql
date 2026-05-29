-- Backfill missing game platforms (NEWER VGM Korean / SoundTeMP batch + SMT albums).
--
-- 49 games had a NULL/empty platform. Main platform researched per game via web
-- search. Values matched to existing convention in the games table:
--   "Microsoft Windows" — dominant existing PC label (Korean online MMOs +
--                         late-90s/2000s package RPGs)
--   "MS-DOS"            — mid-90s Korean DOS games (new value; accurate for era)
--   "iOS" / "iOS, Android" — mobile titles
--   console labels verbatim ("PlayStation 2", "Xbox 360", "PlayStation 5", "Nintendo 3DS")
--
-- Matched by id with a `platform IS NULL OR platform = ''` guard so this only
-- fills empties and never clobbers a populated row (e.g. the Atari arcade
-- "Tempest" is untouched — only the empty War-of-Genesis "Tempest" is filled).
-- updated_at is set explicitly per the "updated_at does not auto-update" rule.
--
-- id 44 "The Roll of Genesis" (2018): platform could not be verified via web
-- search; set to "iOS, Android" per user decision (mobile assumed for the
-- 2018 Goomin Nam title).
--
-- SMT arrange albums: source-game platform applied per user decision. id 95 is a
-- franchise 25th-anniversary compilation with no single source game, so it uses
-- the existing "Album" convention.

-- === Microsoft Windows (Korean online MMOs + package RPGs) ===
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 21 AND (platform IS NULL OR platform = ''); -- 4LEAF
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 22 AND (platform IS NULL OR platform = ''); -- Ragnarok Online
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 23 AND (platform IS NULL OR platform = ''); -- Fortress 3 Paewang
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 24 AND (platform IS NULL OR platform = ''); -- Talesweaver
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 25 AND (platform IS NULL OR platform = ''); -- Seal Online
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 26 AND (platform IS NULL OR platform = ''); -- Corum Online
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 27 AND (platform IS NULL OR platform = ''); -- Flyff
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 28 AND (platform IS NULL OR platform = ''); -- RF Online
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 29 AND (platform IS NULL OR platform = ''); -- Silkroad Online
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 30 AND (platform IS NULL OR platform = ''); -- Yogurting
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 31 AND (platform IS NULL OR platform = ''); -- Granado Espada
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 32 AND (platform IS NULL OR platform = ''); -- La Tale
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 33 AND (platform IS NULL OR platform = ''); -- Xenepic Online
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 34 AND (platform IS NULL OR platform = ''); -- Street Gears
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 35 AND (platform IS NULL OR platform = ''); -- G2 Guns Gunner
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 36 AND (platform IS NULL OR platform = ''); -- Neo Steam: The Shattered Continent
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 38 AND (platform IS NULL OR platform = ''); -- Monarch: Heroes of a New Age
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 41 AND (platform IS NULL OR platform = ''); -- Tree of Savior
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 49 AND (platform IS NULL OR platform = ''); -- The Rhapsody of Zephyr
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 50 AND (platform IS NULL OR platform = ''); -- Princess Maker 3: Fairy Tales Come True
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 51 AND (platform IS NULL OR platform = ''); -- Ant Man 2
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 52 AND (platform IS NULL OR platform = ''); -- Tempest (The War of Genesis Side Story 2)
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 53 AND (platform IS NULL OR platform = ''); -- Merturl Wizard
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 54 AND (platform IS NULL OR platform = ''); -- Leithian: In the Abyss
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 55 AND (platform IS NULL OR platform = ''); -- The War of Genesis III
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 56 AND (platform IS NULL OR platform = ''); -- Arcturus: The Curse and Loss of Divinity
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 57 AND (platform IS NULL OR platform = ''); -- Magna Carta: The Phantom of Avalanche
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 58 AND (platform IS NULL OR platform = ''); -- Narsillion - Leithian Another Story
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 59 AND (platform IS NULL OR platform = ''); -- Crazy Arcade BnB Adventure
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 60 AND (platform IS NULL OR platform = ''); -- AceSaga: The Lament of a Raven
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 61 AND (platform IS NULL OR platform = ''); -- War of Chunrang
UPDATE games SET platform = 'Microsoft Windows', updated_at = datetime('now') WHERE id = 65 AND (platform IS NULL OR platform = ''); -- RUNE the First Wanderer

-- === MS-DOS (mid-90s Korean DOS games) ===
UPDATE games SET platform = 'MS-DOS', updated_at = datetime('now') WHERE id = 47 AND (platform IS NULL OR platform = ''); -- Genocide 2: Master of the Dark Communion (1995 KR DOS port)
UPDATE games SET platform = 'MS-DOS', updated_at = datetime('now') WHERE id = 48 AND (platform IS NULL OR platform = ''); -- Astrocounter of Crescents

-- === iOS (iPhone/iPad only) ===
UPDATE games SET platform = 'iOS', updated_at = datetime('now') WHERE id = 37 AND (platform IS NULL OR platform = ''); -- Deep Deep Dungeon
UPDATE games SET platform = 'iOS', updated_at = datetime('now') WHERE id = 64 AND (platform IS NULL OR platform = ''); -- MapleStory Cave Crawlers

-- === iOS, Android (mobile) ===
UPDATE games SET platform = 'iOS, Android', updated_at = datetime('now') WHERE id = 39 AND (platform IS NULL OR platform = ''); -- Qurare: Magic Library
UPDATE games SET platform = 'iOS, Android', updated_at = datetime('now') WHERE id = 40 AND (platform IS NULL OR platform = ''); -- Mabinogi Duel
UPDATE games SET platform = 'iOS, Android', updated_at = datetime('now') WHERE id = 42 AND (platform IS NULL OR platform = ''); -- Destiny Child
UPDATE games SET platform = 'iOS, Android', updated_at = datetime('now') WHERE id = 43 AND (platform IS NULL OR platform = ''); -- Ragnarok M: Eternal Love
UPDATE games SET platform = 'iOS, Android', updated_at = datetime('now') WHERE id = 44 AND (platform IS NULL OR platform = ''); -- The Roll of Genesis (unverified; mobile assumed per user)
UPDATE games SET platform = 'iOS, Android', updated_at = datetime('now') WHERE id = 45 AND (platform IS NULL OR platform = ''); -- Spiritwish
UPDATE games SET platform = 'iOS, Android', updated_at = datetime('now') WHERE id = 46 AND (platform IS NULL OR platform = ''); -- Exos Heroes

-- === Consoles ===
UPDATE games SET platform = 'PlayStation 2', updated_at = datetime('now') WHERE id = 62 AND (platform IS NULL OR platform = ''); -- Magna Carta: Crimson Stigmata / Tears of Blood
UPDATE games SET platform = 'Xbox 360',      updated_at = datetime('now') WHERE id = 63 AND (platform IS NULL OR platform = ''); -- Magna Carta II
UPDATE games SET platform = 'PlayStation 5',  updated_at = datetime('now') WHERE id = 66 AND (platform IS NULL OR platform = ''); -- Stellar Blade

-- === SMT arrange albums (source-game platform) ===
UPDATE games SET platform = 'Nintendo 3DS', updated_at = datetime('now') WHERE id = 91 AND (platform IS NULL OR platform = ''); -- Devil Summoner: Soul Hackers Arrange (Soundtrack Album) -> 3DS remake (2012)
UPDATE games SET platform = 'Nintendo 3DS', updated_at = datetime('now') WHERE id = 93 AND (platform IS NULL OR platform = ''); -- Shin Megami Tensei IV: Sound & Art Collection -> SMT IV (3DS)
UPDATE games SET platform = 'Album',        updated_at = datetime('now') WHERE id = 95 AND (platform IS NULL OR platform = ''); -- SMT 25th Anniversary Memorial Arrange (franchise compilation, no single source game)
