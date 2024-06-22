-- INNER JOIN
SELECT <t1_columns>, <t2_columns>
FROM <table1>
  INNER JOIN <table2>
  ON <table1>.<column> = <table2>.<column>
WHERE <condition>; -- The condition can reference columns from the joined tables.

-- Left Outer Join (also called Left Join)
SELECT <t1_columns>, <t2_columns>
FROM <table1>
  LEFT OUTER JOIN <table2>
    ON <table1>.<column> = <table2>.<column>
WHERE <condition>; -- The condition can reference columns from the joined tables.
