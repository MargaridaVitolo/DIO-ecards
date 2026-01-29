-- Create tbl_collections table for Pokemon TCG card collections
CREATE TABLE IF NOT EXISTS tbl_collections (
    id SERIAL PRIMARY KEY,
    collections_set_name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    total_cards_in_collection INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
