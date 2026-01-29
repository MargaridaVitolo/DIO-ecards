-- Create tbl_collections table for Pokemon TCG card collections
CREATE TABLE IF NOT EXISTS tbl_collections (
    id SERIAL PRIMARY KEY,
    collections_set_name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    total_cards_in_collection INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
GO

-- Create tbl_types table for Pokemon card types
CREATE TABLE IF NOT EXISTS tbl_types (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(20) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

GO

-- Create tbl_stages table for Pokemon card stages
CREATE TABLE IF NOT EXISTS tbl_stages (
    id SERIAL PRIMARY KEY,
    stage_name VARCHAR(15) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

GO

-- Create tbl_cards table for Pokemon TCG cards
CREATE TABLE IF NOT EXISTS tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INTEGER NOT NULL,
    name VARCHAR(100) NOT NULL,
    type_id INTEGER NOT NULL,
    stage_id INTEGER,
    info TEXT,
    attack VARCHAR(100),
    damage INTEGER,
    weak VARCHAR(50),
    resis VARCHAR(50),
    retreat INTEGER,
    card_number_in_collection VARCHAR(20),
    collection_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (collection_id) REFERENCES tbl_collections(id) ON DELETE CASCADE,
    FOREIGN KEY (type_id) REFERENCES tbl_types(id) ON DELETE RESTRICT,
    FOREIGN KEY (stage_id) REFERENCES tbl_stages(id) ON DELETE RESTRICT
);

-- Create index for better query performance
CREATE INDEX IF NOT EXISTS idx_tbl_cards_collection_id ON tbl_cards(collection_id);
CREATE INDEX IF NOT EXISTS idx_tbl_cards_type_id ON tbl_cards(type_id);
CREATE INDEX IF NOT EXISTS idx_tbl_cards_stage_id ON tbl_cards(stage_id);
CREATE INDEX IF NOT EXISTS idx_tbl_cards_name ON tbl_cards(name);
GO

