-- Counting the number of rows in the table
SELECT COUNT(*)
FROM <table>;

-- Finding a row with max value in a column
SELECT MAX(<column>)
FROM <table>;

-- Finding a row with min value in a column
SELECT MIN(<column>)
FROM <table>;

-- Finding the sum of values in a column
SELECT SUM(<column>)
FROM <table>;

-- Finding the average value in a column
SELECT AVG(<column>)
FROM <table>;

-- Grouping rows by a column
SELECT <column>, COUNT(*)
FROM <table>
GROUP BY <column>;

-- Grouping rows by a column and ordering by count
SELECT <column>, COUNT(*)
FROM <table>
GROUP BY <column>
ORDER BY COUNT(*) <ASC|DESC>;

-- Grouping with filters
SELECT <column>, COUNT(*)
FROM <table>
WHERE <condition>


-- Grouping with aggregate filters
SELECT <column>, COUNT(*)
FROM <table>
GROUP BY <column>
HAVING <aggregate_condition>;
