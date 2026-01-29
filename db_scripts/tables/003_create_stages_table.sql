-- Create tbl_stages table for Pokemon card stages
CREATE TABLE IF NOT EXISTS tbl_stages (
    id SERIAL PRIMARY KEY,
    stage_name VARCHAR(15) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

