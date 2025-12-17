-- An index is a data structure that improves the speed 
-- of operations of a database table.
-- They are special type of lookup table pointing to data.
-- indexes can be created on one or more columns, providing the
-- basis for both rapid random lookups and efficient ordering of
-- access to records.
-- types of index
-- simple index : columns can contains null or duplicate values
-- unique index : does not allow duplicate 
-- primary key index : extension of unique index, does not allow null
-- fulltext index : make to search text easier
-- descending index : used for latest values

-- create index on table
CREATE INDEX INDEX_NAME ON TABLE_NAME(COLUMN_NAME);
-- with alter command
ALTER TABLE TABLE_NAME ADD INDEX INDEX_NAME (COLUMN_NAME,...);

-- simple and unique index
CREATE UNIQUE INDEX INDEX_NAME ON TABLE_NAME (COLUMN1,...);
-- composite index
CREATE INDEX INDEX_NAME
ON TABLE_NAME (COLUMN1,COLUMN2);

-- drop index
DROP INDEX INDEX_NAME ON TABLE_NAME;
ALTER TABLE TABLE_NAME DROP INDEX INDEX_NAME;

-- show index statement
SHOW INDEX FROM TABLE_NAME;
