
-- Basic form
SELECT <columns>
FROM <table>


-- Filtering
SELECT <columns>
FROM <table>
WHERE <condition>

-- Operators
WHERE name = 'John'
WHERE age > 30
WHERE age >= 30
WHERE age < 30
WHERE age <= 30
WHERE age <> 30
WHERE age != 30
WHERE age BETWEEN 20 AND 30
WHERE name IN ('John', 'Jane', 'Doe')
WHERE name NOT IN ('John', 'Jane', 'Doe')
WHERE name LIKE 'J%'
WHERE name LIKE '%J'
WHERE name LIKE '%J%'
WHERE name IS NULL
WHERE name IS NOT NULL

-- Logical operators
WHERE age > 30 AND name = 'John'
WHERE age > 30 OR name = 'John'
WHERE NOT age > 30

-- Expressions
SELECT name, age, age + 10
FROM people
WHERE age + 10 > 30

-- Aliases
SELECT age AS years
FROM people
