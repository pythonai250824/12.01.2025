-- Store and query JSON data
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    details JSONB
);

INSERT INTO products (details)
VALUES
    ('{"name": "Laptop", "price": 1200, "features": {"RAM": "16GB", "Storage": "512GB"}}'),
    ('{"name": "Phone", "price": 800, "features": {"RAM": "8GB", "Storage": "256GB"}}');

-- Query specific keys in the JSON
SELECT 
    details->>'name' AS product_name,
    details->'features'->>'RAM' AS ram
FROM products;
