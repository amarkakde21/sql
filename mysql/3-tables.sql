-- create table
CREATE TABLE TABLE_NAME (
    column1 datatype,
    column2 datatype,
    .
    .
    columnN datatype
);

-- AUTO_INCREMENT : automatically increments value
-- NOT NULL : 


-- creating table from existing table
CREATE TABLE NEW_TABLE_NAME AS 
SELECT [column1, column2,...columnN]
FROM EXISTING_TABLE_NAME
[WHERE CONDITION];

-- show tables with full modifier
SHOW FULL TABLES;
-- show tables in different databases
SHOW TABLES IN DATABASE_NAME;
SHOW TABLES IN DATABASE_NAME LIKE 'pattern';
SHOW TABLES FROM DATABASE_NAME;
SHOW TABLES FROM DATABASE_NAME WHERE CONDITION;

-- alter command [modify the structure of an existing table]
-- syntax: ALTER TABLE TABLE_NAME [ALTER OPTION ...];

-- show column 
SHOW COLUMNS FROM TABLE_NAME;

-- drop a column
ALTER TABLE TABLE_NAME DROP COLUMN_NAME;
-- add a column
ALTER TABLE TABLE_NAME ADD COLUMN_NAME DATA_TYPE;
-- reposition a column
ALTER TABLE TABLE_NAME ADD COLUMN_NAME DATA_TYPE FIRST; -- make it first
ALTER TABLE TABLE_NAME ADD COLUMN_NAME DATA_TYPE AFTER COLUMN_NAME; 

-- alter column definition
ALTER TABLE TABLE_NAME MODIFY COLUMN_NAME DATA_TYPE;
-- alter column's default value
ALTER TABLE TABLE_NAME ALTER COLUMN_NAME SET DEFAULT value;
-- drop default constraint
ALTER TABLE TABLE_NAME ALTER COLUMN_NAME DROP DEFAULT;
-- renaming a table
ALTER TABLE TABLE_NAME RENAME TO NEW_TABLE_NAME;
RENAME TABLE TABLE_NAME TO NEW_TABLE_NAME;
-- renaming a column
ALTER TABLE TABLE_NAME 
RENAME COLUMN old_column_name TO new_column_name;


-- cloning table
-- show create table to get a create table statement that
-- specifies the source table's structure, indexes and all
SHOW CREATE TABLE TABLE_NAME;
-- inserting data into empty table
INSERT INTO TABLE_NAME(column1,..)
SELECT (column1,..) FROM TABLE_NAME;
-- simple cloning table
CREATE TABLE NEW_TABLE_NAME SELECT * FROM TABLE_NAME;
-- shallow cloning without data
CREATE TABLE_NAME NEW_TABLE_NAME LIKE TABLE_NAME;

-- truncate table
TRUNCATE TABLE TABLE_NAME;

-- Temp tables
CREATE TEMPORARY TABLE TABLE_NAME(
    column1 DATA_TYPE,
    ...
);

-- dropping Temp tables
DROP TEMPORARY TABLE TABLE_NAME;

-- describe table
-- DESCRIBE TABLE_NAME [COLUMN_NAME | WILD];
-- SHOW COLUMNS FROM TABLE_NAME;
-- EXPLAIN TABLE_NAME;

--  lock on tables
--  read lock and write lock
--  syntax: LOCK TABLES TABLE_NAME [READ | WRITE];
--  unlock tables: UNLOCK TABLES;

-- drop table
DROP TABLE [IF EXISTS] TABLE_NAME;
