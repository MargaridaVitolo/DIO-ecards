-- Create tbl_types table for Pokemon card types
CREATE TABLE IF NOT EXISTS tbl_types (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(20) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

