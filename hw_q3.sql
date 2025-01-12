-- Use arrays to store multiple values in a single column
CREATE TABLE array_example (
    id SERIAL PRIMARY KEY,
    numbers INT[]
);

INSERT INTO array_example (numbers)
VALUES
    ('{1, 2, 3}'),
    ('{4, 5, 6}');

-- Query specific array elements
SELECT numbers[1] AS first_element FROM array_example;

-- Search for rows containing a specific number
SELECT * FROM array_example WHERE 3 = ANY(numbers);
