-- where clause
SELECT field1,field2,...fieldN
FROM table1,table2,...tableN
WHERE CONDITION1 [AND [OR]] CONDITION2;

-- limit clause maximum number of rows from table to return 
SELECT ...
FROM ...
LIMIT NUMBER;
-- offset of the first row start from zero 
-- count of the first row start from 1
LIMIT NUMBER,NUMBER;

-- distinct clause
SELECT DISTINCT column1, column2,...columnN
FROM TABLE_NAME
WHERE CONDITION;

-- order by clause
SELECT COLUMN_LIST
FROM TABLE_NAME
[ORDER BY column1,column2,...columnN] [ASC|DESC];
--length function returns length
LENGTH(COLUMN_NAME);

-- group by clause
SELECT COLUMN_LIST
FROM TABLE_NAME
GROUP BY [CONDITION | COLUMN_NAME];

-- having clause
SELECT COLUMN_LIST, aggregate_function(column1)
FROM TABLE_NAME
GROUP BY column1,..
HAVING CONDITION;

-- any clause
SELECT COLUMN_LIST
FROM TABLE_NAME
WHERE COLUMN_NAME OPERATOR ANY (subquery);

-- exists
SELECT COLUMN_LIST
FROM TABLE_NAME
WHERE EXISTS (subquery);

UPDATE TABLE_NAME
SET CONDITION
WHERE EXISTS (subquery);

DELETE FROM TABLE_NAME
WHERE EXISTS (subquery);

-- union and union all 
-- no. of column and datatype need to be same
-- union : output without duplicate
-- union all :  output preserves duplicate rows
