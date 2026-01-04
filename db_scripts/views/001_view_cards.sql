CREATE VIEW vw_cards_full AS
SELECT 
    c.id AS card_id,
    c.hp,
    c.name_stage,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resis,
    c.retreat,
    col.collection_set_name,
    col.release_date,
    col.total_cards_in_collection,
    t.type_name,
    s.stage_name
FROM tbl_cards c
LEFT JOIN tbl_collections col ON c.collection_id = col.id
LEFT JOIN tbl_types t ON c.type_id = t.id
LEFT JOIN tbl_stages s ON c.stage_id = s.id;
