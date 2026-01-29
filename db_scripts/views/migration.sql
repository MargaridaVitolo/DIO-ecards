-- Create a view to display tbl_cards with foreign key information
CREATE OR REPLACE VIEW vw_cards_detailed AS
SELECT 
    c.id,
    c.hp,
    c.name,
    t.type_name AS type,
    s.stage_name AS stage,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resis,
    c.retreat,
    c.card_number_in_collection,
    col.collections_set_name AS collection,
    c.created_at
FROM tbl_cards c
LEFT JOIN tbl_types t ON c.type_id = t.id
LEFT JOIN tbl_stages s ON c.stage_id = s.id
LEFT JOIN tbl_collections col ON c.collection_id = col.id
ORDER BY col.collections_set_name, c.card_number_in_collection;
GO

