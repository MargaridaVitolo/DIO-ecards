-- Initial seed data for tbl_collections
INSERT INTO tbl_collections (collections_set_name, release_date, total_cards_in_collection) VALUES
    ('Base Set', '1999-01-09', 102),
    ('Jungle', '1999-06-16', 64),
    ('Fossil', '1999-10-10', 62),
    ('Base Set 2', '2000-02-24', 130),
    ('Team Rocket', '2000-04-24', 82),
    ('Gym Heroes', '2000-08-31', 132),
    ('Gym Challenge', '2000-10-16', 132),
    ('Neo Genesis', '2000-12-16', 111),
    ('Neo Discovery', '2001-06-15', 75),
    ('Neo Revelation', '2001-09-21', 64),
    ('Neo Destiny', '2001-12-03', 113),
    ('Legendary Collection', '2002-03-25', 110),
    ('Expedition Base Set', '2002-08-22', 165),
    ('Aquapolis', '2003-01-16', 147),
    ('Skyridge', '2003-05-12', 144),
    ('Scarlet & Violet Base Set', '2023-04-14', 102),
    ('Scarlet & Violet 151', '2023-09-22', 102),
    ('Paldean Fates', '2024-11-22', 91);
GO

-- Insert default Pokemon types
INSERT INTO tbl_types (type_name, description) VALUES
    ('Normal', 'Normal type Pokemon'),
    ('Fire', 'Fire type Pokemon'),
    ('Water', 'Water type Pokemon'),
    ('Electric', 'Electric type Pokemon'),
    ('Grass', 'Grass type Pokemon'),
    ('Ice', 'Ice type Pokemon'),
    ('Fighting', 'Fighting type Pokemon'),
    ('Poison', 'Poison type Pokemon'),
    ('Ground', 'Ground type Pokemon'),
    ('Flying', 'Flying type Pokemon'),
    ('Psychic', 'Psychic type Pokemon'),
    ('Bug', 'Bug type Pokemon'),
    ('Rock', 'Rock type Pokemon'),
    ('Ghost', 'Ghost type Pokemon'),
    ('Dragon', 'Dragon type Pokemon'),
    ('Dark', 'Dark type Pokemon'),
    ('Steel', 'Steel type Pokemon'),
    ('Fairy', 'Fairy type Pokemon')
ON CONFLICT (type_name) DO NOTHING;
GO

-- Insert default Pokemon stages
INSERT INTO tbl_stages (stage_name, description) VALUES
    ('Basic', 'Basic Pokemon card'),
    ('Stage 1', 'First evolution stage'),
    ('Stage 2', 'Second evolution stage'),
    ('VMAX', 'Gigantamax form'),
    ('VSTAR', 'Terastallization form'),
    ('V', 'V Pokemon card'),
    ('ex', 'Powerful card with higher HP')
ON CONFLICT (stage_name) DO NOTHING;
GO

-- Initial seed data for tbl_cards
-- Charizard from Base Set (001/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (120, 'Charizard', (SELECT id FROM tbl_types WHERE type_name = 'Fire'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Fire/Flying', 'Fire Spin', 100, 'Water', 'Fighting/Grass/Steel', 1, '006/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Blastoise from Base Set (002/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Blastoise', (SELECT id FROM tbl_types WHERE type_name = 'Water'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Water', 'Hydro Pump', 80, 'Electric', 'Metal', 1, '002/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Venusaur from Base Set (003/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Venusaur', (SELECT id FROM tbl_types WHERE type_name = 'Grass'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Grass/Poison', 'Solar Beam', 60, 'Fire', 'Water/Grass/Ground', 1, '003/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Pikachu from Base Set (025/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (40, 'Pikachu', (SELECT id FROM tbl_types WHERE type_name = 'Electric'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Electric', 'Thunderbolt', 30, 'Ground', 'Flying/Steel', 1, '025/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Dragonite from Base Set (005/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Dragonite', (SELECT id FROM tbl_types WHERE type_name = 'Dragon'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Dragon/Flying', 'Dragon Rage', 100, 'Ice', 'Fire/Water/Grass/Fighting', 2, '005/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Mewtwo from Base Set (010/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (60, 'Mewtwo', (SELECT id FROM tbl_types WHERE type_name = 'Psychic'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Psychic', 'Psychic', 20, 'Psychic', 'Fighting/Grass', 1, '010/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Machamp from Base Set (008/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Machamp', (SELECT id FROM tbl_types WHERE type_name = 'Fighting'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Fighting', 'Dynamic Punch', 60, 'Flying/Psychic', 'Normal/Rock', 2, '008/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Gengar from Base Set (009/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Gengar', (SELECT id FROM tbl_types WHERE type_name = 'Ghost'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Ghost/Poison', 'Shadow Bolt', 70, 'Dark', 'Poison/Bug/Normal', 1, '009/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Alakazam from Base Set (001/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (90, 'Alakazam', (SELECT id FROM tbl_types WHERE type_name = 'Psychic'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Psychic', 'Mind Bend', 50, 'Psychic', 'Fighting/Grass', 1, '001/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Articuno from Base Set (002/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Articuno', (SELECT id FROM tbl_types WHERE type_name = 'Ice'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Ice/Flying', 'Blizzard', 90, 'Fire/Rock/Steel', 'Fighting/Ground', 2, '002/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Zapdos from Base Set (003/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Zapdos', (SELECT id FROM tbl_types WHERE type_name = 'Electric'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Electric/Flying', 'Thunderstorm', 100, 'Rock', 'Flying/Steel/Grass', 2, '003/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Moltres from Base Set (004/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Moltres', (SELECT id FROM tbl_types WHERE type_name = 'Fire'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Fire/Flying', 'Fire Spin', 90, 'Water/Rock/Ground', 'Bug/Grass/Steel/Fairy', 2, '004/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Raichu from Base Set (014/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Raichu', (SELECT id FROM tbl_types WHERE type_name = 'Electric'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Electric', 'Thunder Wave', 70, 'Ground', 'Flying/Steel/Grass', 1, '014/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Gyarados from Base Set (007/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Gyarados', (SELECT id FROM tbl_types WHERE type_name = 'Water'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Water/Flying', 'Hydro Pump', 80, 'Electric', 'Fighting/Bug/Fire', 2, '007/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Lapras from Base Set (016/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (120, 'Lapras', (SELECT id FROM tbl_types WHERE type_name = 'Water'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Water/Ice', 'Hydro Pump', 80, 'Electric', 'Fighting/Ground', 2, '016/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Arcanine from Base Set (011/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Arcanine', (SELECT id FROM tbl_types WHERE type_name = 'Fire'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Fire', 'Flame Tail', 60, 'Water/Rock/Ground', 'Bug/Grass/Steel/Fairy', 1, '011/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Exeggutor from Base Set (015/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Exeggutor', (SELECT id FROM tbl_types WHERE type_name = 'Grass'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Grass/Psychic', 'Psybeam', 60, 'Fire', 'Water/Grass/Ground', 2, '015/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Weezing from Base Set (035/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Weezing', (SELECT id FROM tbl_types WHERE type_name = 'Poison'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Poison', 'Sludge Bomb', 50, 'Psychic', 'Grass/Bug/Fairy', 1, '035/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Poliwrath from Base Set (013/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (90, 'Poliwrath', (SELECT id FROM tbl_types WHERE type_name = 'Water'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Water/Fighting', 'Whirlpool', 80, 'Electric/Grass', 'Fire', 1, '013/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Hypno from Base Set (012/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Hypno', (SELECT id FROM tbl_types WHERE type_name = 'Psychic'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Psychic', 'Psychic Pulse', 50, 'Psychic', 'Fighting/Grass', 1, '012/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Nidoking from Base Set (017/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Nidoking', (SELECT id FROM tbl_types WHERE type_name = 'Poison'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Poison/Ground', 'Earthquake', 80, 'Water/Grass/Ice', 'Poison/Bug', 2, '017/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Nidoqueen from Base Set (018/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (90, 'Nidoqueen', (SELECT id FROM tbl_types WHERE type_name = 'Poison'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Poison/Ground', 'Earthquake', 70, 'Water/Grass/Ice', 'Poison/Bug', 2, '018/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Golem from Base Set (019/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Golem', (SELECT id FROM tbl_types WHERE type_name = 'Rock'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Rock/Ground', 'Stone Edge', 80, 'Water/Grass/Ice/Fighting/Ground', 'Normal/Flying/Fire/Poison', 2, '019/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Dugtrio from Base Set (020/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (70, 'Dugtrio', (SELECT id FROM tbl_types WHERE type_name = 'Ground'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Ground', 'Earthquake', 60, 'Water/Grass/Ice', 'Poison', 1, '020/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Fearow from Base Set (021/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Fearow', (SELECT id FROM tbl_types WHERE type_name = 'Flying'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Flying', 'Peck', 50, 'Electric/Ice/Rock', 'Fighting/Bug/Grass', 1, '021/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Golbat from Base Set (022/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Golbat', (SELECT id FROM tbl_types WHERE type_name = 'Poison'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Poison/Flying', 'Wing Attack', 50, 'Electric/Psychic/Rock', 'Grass/Bug/Fairy', 1, '022/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Muk from Base Set (023/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Muk', (SELECT id FROM tbl_types WHERE type_name = 'Poison'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Poison', 'Sludge Wave', 60, 'Psychic', 'Grass/Bug/Fairy', 2, '023/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Rhydon from Base Set (024/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (100, 'Rhydon', (SELECT id FROM tbl_types WHERE type_name = 'Rock'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Rock/Ground', 'Horn Attack', 70, 'Water/Grass/Ice/Fighting/Ground', 'Normal/Flying/Fire/Poison', 3, '024/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Cloyster from Base Set (026/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (90, 'Cloyster', (SELECT id FROM tbl_types WHERE type_name = 'Water'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Water', 'Spike Cannon', 70, 'Electric/Grass', 'Ice', 1, '026/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Electrode from Base Set (027/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Electrode', (SELECT id FROM tbl_types WHERE type_name = 'Electric'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Electric', 'Rapid Spin', 70, 'Ground', 'Flying/Steel/Grass', 1, '027/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Exeggcute from Base Set (028/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (40, 'Exeggcute', (SELECT id FROM tbl_types WHERE type_name = 'Grass'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Grass/Psychic', 'Leech Seed', 20, 'Fire', 'Water/Grass/Ground', 1, '028/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Marowak from Base Set (029/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Marowak', (SELECT id FROM tbl_types WHERE type_name = 'Ground'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Ground', 'Earthquake', 60, 'Water/Grass/Ice', 'Poison', 1, '029/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Growlithe from Base Set (030/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (50, 'Growlithe', (SELECT id FROM tbl_types WHERE type_name = 'Fire'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Fire', 'Flame Tail', 30, 'Water/Rock/Ground', 'Bug/Grass/Steel/Fairy', 1, '030/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Abra from Base Set (031/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (30, 'Abra', (SELECT id FROM tbl_types WHERE type_name = 'Psychic'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Psychic', 'Psybeam', 20, 'Psychic', 'Fighting/Grass', 1, '031/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Machoke from Base Set (032/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Machoke', (SELECT id FROM tbl_types WHERE type_name = 'Fighting'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Fighting', 'Low Kick', 50, 'Flying/Psychic', 'Normal/Rock', 2, '032/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Bellsprout from Base Set (033/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (40, 'Bellsprout', (SELECT id FROM tbl_types WHERE type_name = 'Grass'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Grass/Poison', 'Vine Whip', 20, 'Fire', 'Water/Grass/Ground', 1, '033/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Tentacool from Base Set (034/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (40, 'Tentacool', (SELECT id FROM tbl_types WHERE type_name = 'Water'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Water/Poison', 'Poison Powder', 20, 'Electric/Grass', 'Fire/Ice/Poison/Bug', 1, '034/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Slowbro from Base Set (036/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (90, 'Slowbro', (SELECT id FROM tbl_types WHERE type_name = 'Water'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Water/Psychic', 'Amnesia', 50, 'Electric/Grass', 'Fire/Ice/Water/Psychic', 2, '036/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Seel from Base Set (037/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (50, 'Seel', (SELECT id FROM tbl_types WHERE type_name = 'Water'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Water', 'Aurora Beam', 30, 'Electric/Grass', 'Fire/Ice/Water', 1, '037/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Shellder from Base Set (038/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (50, 'Shellder', (SELECT id FROM tbl_types WHERE type_name = 'Water'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Water', 'Clamp', 30, 'Electric/Grass', 'Fire/Ice/Water', 1, '038/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Gastly from Base Set (039/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (30, 'Gastly', (SELECT id FROM tbl_types WHERE type_name = 'Ghost'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Ghost/Poison', 'Poison Powder', 20, 'Dark', 'Normal/Poison/Bug', 1, '039/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Haunter from Base Set (040/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (50, 'Haunter', (SELECT id FROM tbl_types WHERE type_name = 'Ghost'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Ghost/Poison', 'Night Shade', 40, 'Dark', 'Normal/Poison/Bug', 1, '040/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Onix from Base Set (041/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Onix', (SELECT id FROM tbl_types WHERE type_name = 'Rock'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Rock/Ground', 'Iron Defense', 60, 'Water/Grass/Ice/Fighting/Ground', 'Normal/Flying/Fire/Poison', 2, '041/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Drowzee from Base Set (042/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (60, 'Drowzee', (SELECT id FROM tbl_types WHERE type_name = 'Psychic'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Psychic', 'Dream Eater', 50, 'Psychic', 'Fighting/Grass', 1, '042/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Krabby from Base Set (043/102)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (50, 'Krabby', (SELECT id FROM tbl_types WHERE type_name = 'Water'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Water', 'Crab Hammer', 30, 'Electric/Grass', 'Fire/Ice/Water', 1, '043/102', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Base Set'));

-- Exeggcute II from Jungle (001/64)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (40, 'Exeggcute', (SELECT id FROM tbl_types WHERE type_name = 'Grass'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Grass/Psychic', 'Leech Seed', 20, 'Fire', 'Water/Grass/Ground', 1, '001/64', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Jungle'));

-- Scyther from Jungle (010/64)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Scyther', (SELECT id FROM tbl_types WHERE type_name = 'Bug'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Bug/Flying', 'Slash', 60, 'Fire/Rock', 'Grass/Fighting', 1, '010/64', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Jungle'));

-- Farfetch''d from Jungle (020/64)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (50, 'Farfetchd', (SELECT id FROM tbl_types WHERE type_name = 'Normal'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Normal/Flying', 'Fury Attack', 40, 'Electric/Rock', 'Grass/Bug', 1, '020/64', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Jungle'));

-- Pikachu from Jungle (025/64)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (40, 'Pikachu', (SELECT id FROM tbl_types WHERE type_name = 'Electric'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Electric', 'Thunderbolt', 30, 'Ground', 'Flying/Steel', 1, '025/64', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Jungle'));

-- Venomoth from Jungle (016/64)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (70, 'Venomoth', (SELECT id FROM tbl_types WHERE type_name = 'Bug'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Bug/Poison', 'Poison Powder', 50, 'Fire/Rock', 'Grass/Fighting/Ground', 1, '016/64', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Jungle'));

-- Beedrill from Jungle (017/64)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Beedrill', (SELECT id FROM tbl_types WHERE type_name = 'Bug'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2'), 'Pokémon Card - Bug/Poison', 'Twin Needle', 60, 'Fire/Rock', 'Grass/Fighting/Ground', 1, '017/64', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Jungle'));

-- Grimer from Fossil (004/62)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (50, 'Grimer', (SELECT id FROM tbl_types WHERE type_name = 'Poison'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Poison', 'Sludge', 30, 'Psychic', 'Grass/Bug/Fairy', 1, '004/62', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Fossil'));

-- Arbok from Fossil (023/62)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (80, 'Arbok', (SELECT id FROM tbl_types WHERE type_name = 'Poison'), (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1'), 'Pokémon Card - Poison', 'Poison Fang', 60, 'Psychic', 'Grass/Bug/Fairy', 1, '023/62', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Fossil'));

-- Aerodactyl from Fossil (016/62)
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, card_number_in_collection, collection_id) VALUES
    (60, 'Aerodactyl', (SELECT id FROM tbl_types WHERE type_name = 'Rock'), (SELECT id FROM tbl_stages WHERE stage_name = 'Basic'), 'Pokémon Card - Rock/Flying', 'Wing Attack', 50, 'Water/Grass/Ice/Fighting/Ground', 'Normal/Flying/Fire/Poison', 1, '016/62', (SELECT id FROM tbl_collections WHERE collections_set_name = 'Fossil'));
GO

