-- create query to create table, index, view 
CREATE [TABLE TABLE_NAME | INDEX INDEX_NAME | VIEW VIEW_NAME];
-- insert query
INSERT INTO TABLE_NAME (column1, column2,...)
VALUES (value1,value2,...);
-- update query
UPDATE TABLE_NAME
SET column1=value1, column2=value2,...
WHERE CONDITION;
--alter query 
ALTER TABLE TABLE_NAME
[ADD | DROP ] COLUMN_NAME DATA_TYPE;
-- delete query
DELETE FROM TABLE_NAME WHERE CONDITION;

-- constraints
-- column level constraints
-- table level constraints
-- NOT NULL Constraint
-- UNIQUE Constraint[ can have one or more unique constraint ]
-- PRIMARY KEY [can have only a single primary key ]
-- FOREIGN KEY
-- CHECK Constraint
-- DEFAULT Constraint

-- INDEX
CREATE INDEX INDEX_NAME ON TABLE_NAME (COLUMN_NAME);
-- AUTO_INCREMENT Constraint


-- Inserting Data Into a Table Using Another Table
-- insert ... select statement
INSERT INTO TABLE_NAME [(column1, column2,...columnN)]
SELECT column1, column2,...columnN
FROM TABLE_NAME2
[WHERE CONDITION];
-- insert ... table statement
INSERT INTO TABLE_NAME TABLE TABLE_NAME2;

-- select statement
SELECT field1, field2,...fieldN
FROM TABLE_NAME, TABLE_NAME1...
[WHERE CONDITION]
[OFFSET M][LIMIT N]
-- delete statement
DELETE FROM TABLE_NAME [WHERE CONDITION];
-- replace statement
REPLACE INTO TABLE_NAME (column1,...)
VALUES (value1,...)

-- insert ignore statement
-- allows to insert valid data into a table anf ignores the rows with invalid 
-- data
INSERT IGNORE INTO TABLE_NAME (column1,column2,...)
VALUES (value1,value2,...)

-- insert on duplicate key update
INSERT INTO TABLE_NAME (column1,column2,...)
VALUES (value1, value2,...)
ON DUPLICATE KEY UPDATE column1=value1,column2=value2;

