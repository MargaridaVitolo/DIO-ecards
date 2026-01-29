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