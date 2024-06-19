-- Create a table
CREATE TABLE <table_name> (
  <column_name> <data_type> <constraints>,
  <column_name> <data_type> <constraints>,
  ...
  <table_constraints>
);

-- Data types
INTEGER
TEXT
REAL
BLOB

-- Constraints
PRIMARY KEY
NOT NULL
UNIQUE
FOREIGN KEY
DEFAULT
CHECK
INDEX

-- Adding new rows
INSERT INTO <table_name> (<column_name>, <column_name>, ...)
VALUES (<value>, <value>, ...);


-- Drop a table
DROP TABLE <table_name>;

-- Add a column to an existing table
ALTER TABLE <table_name> ADD COLUMN <column_name> <data_type> <constraints>;

-- Drop a column from a table
ALTER TABLE <table_name> DROP COLUMN <column_name>;
