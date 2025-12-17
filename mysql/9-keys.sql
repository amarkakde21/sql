-- keys
-- unique key : unique values set on one or more columns
-- accept one null value
-- can be used as foreign key in another table
-- a table can have more than one unique key
CREATE TABLE TABLE_NAME(
    COLUMN_NAME DATA_TYPE UNIQUE,
    ...
);
-- unique keys on existing columns
ALTER TABLE TABLE_NAME
ADD CONSTRAINT CONSTRAINT_NAME
UNIQUE (COLUMN_NAME);

-- drop unique key
ALTER TABLE TABLE_NAME 
DROP CONSTRAINT CONSTRAINT_NAME;

-- primary key : unique, not null and only one in table, 900 bytes
CREATE TABLE TABLE_NAME(
    COLUMN_NAME DATA_TYPE,
    ...
    PRIMARY KEY(COLUMN_NAME)
);

-- add constraint to existing table
ALTER TABLE TABLE_NAME
ADD CONSTRAINT PRIMARY KEY (COLUMN_NAME);

-- drop primary key
ALTER TABLE TABLE_NAME DROP PRIMARY KEY;

-- foreign key : column or combinantion of columns in a table
-- whose value match the values of primary key
CREATE TABLE TABLE_NAME(
    COLUMN_NAME DATA_TYPE,
    ...
    CONSTRAINT CONSTRAINT_NAME
    FOREIGN KEY (COLUMN_NAME)
    REFERENCES TABLE_NAME(COLUMN_NAME)
);

-- creating foreign key on existing columns
ALTER TABLE TABLE_NAME
ADD CONSTRAINT CONSTRAINT_NAME
FOREIGN KEY (COLUMN_NAME)
REFERENCES TABLE_NAME(COLUMN_NAME);

-- drop foreign key
ALTER TABLE TABLE_NAME 
DROP CONSTRAINT CONSTRAINT_NAME;


