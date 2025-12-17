-- create view
CREATE VIEW VIEW_NAME
AS
SELECT STATEMENT
FROM
TABLE_NAME;

-- replace and if not exists
CREATE OR REPLACE VIEW VIEW_NAME
AS
SELECT STATEMENT
TABLE_NAME;

-- with check option
-- to ensure all update and insert statement satisfy the 
-- condition in the query.
CREATE VIEW VIEW_NAME
AS SELECT STATEMENT 
WHERE CONDITION
WITH CHECK OPTION;

-- drop viw
DROP VIEW IF EXISTS VIEW_NAME;

-- delete rows from view
DELETE FROM VIEW_NAME WHERE CONDITION;

-- rename a view
RENAME TABLE OLD_VIEW_NAME TO NEW_VIEW_NAME;
