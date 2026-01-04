INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection)
VALUES 
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

INSERT INTO tbl_types (type_name)
VALUES 
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Colorless');

INSERT INTO tbl_stages (stage_name)
VALUES 
('Basic'),
('Stage 1'),
('Stage 2');

INSERT INTO tbl_cards (hp, name_stage, info, attack, damage, weak, resis, retreat, collection_id, type_id, stage_id)
VALUES
(60, 'Bulbasaur', 'Seed Pokémon', 'Vine Whip', '20', 'Fire', 'None', '1', 1, 1, 1),
(50, 'Charmander', 'Lizard Pokémon', 'Ember', '30', 'Water', 'None', '1', 1, 2, 1),
(50, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '20', 'Lightning', 'None', '1', 1, 3, 1),
(90, 'Pikachu', 'Mouse Pokémon', 'Thunder Shock', '30', 'Fighting', 'None', '1', 2, 1, 1),
(100, 'Snorlax', 'Sleeping Pokémon', 'Body Slam', '50', 'Fighting', 'None', '3', 2, 7, 1),
(120, 'Gengar', 'Shadow Pokémon', 'Nightmare', '60', 'Darkness', 'Fighting', '2', 3, 5, 2);
