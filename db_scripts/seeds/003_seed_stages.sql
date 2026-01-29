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