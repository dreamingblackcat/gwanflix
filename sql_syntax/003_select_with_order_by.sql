-- Sort by column
SELECT <columns>
FROM <table>
WHERE <condition>
ORDER BY <column> <ASC|DESC>;

-- Sort by multiple columns
SELECT <columns>
FROM <table>
WHERE <condition>
ORDER BY <column1> <ASC|DESC>, <column2> <ASC|DESC>;

-- Limiting the number of rows
SELECT <columns>
FROM <table>
WHERE <condition>
ORDER BY <column1> <ASC|DESC>
LIMIT <number>;

-- Pagination: Limit and Offset
SELECT <columns>
FROM <table>
WHERE <condition>
ORDER BY <column> <ASC|DESC> LIMIT <number> OFFSET <number>;
