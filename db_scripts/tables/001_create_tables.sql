CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collection_set_name VARCHAR(100) NOT NULL,
    release_date DATE,
    total_cards_in_collection INTEGER
);

CREATE TABLE tbl_types (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_stages (
    id SERIAL PRIMARY KEY,
    stage_name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INTEGER,
    name_stage VARCHAR(100),
    info TEXT,
    attack TEXT,
    damage VARCHAR(50),
    weak VARCHAR(50),
    resis VARCHAR(50),
    retreat VARCHAR(50),
    collection_id INTEGER REFERENCES tbl_collections(id) ON DELETE CASCADE,
    type_id INTEGER REFERENCES tbl_types(id) ON DELETE SET NULL,
    stage_id INTEGER REFERENCES tbl_stages(id) ON DELETE SET NULL
);
