-- create database
CREATE DATABASE DATABASE_NAME;

-- show database
SHOW DATABASES;
SHOW DATABASES [LIKE 'pattern' | WHERE expr] 

-- create database if not exists 
CREATE DATABASE IF NOT EXISTS DATABASE_NAME;

-- create database using mysqladmin
mysqladmin -u root -p create DATABASE_NAME;

-- drop database
DROP DATABASE DATABASE_NAME;

-- droping using mysqladmin
mysqladmin -u root -p drop DATABASE_NAME;

-- select database
USE DATABASE_NAME;

-- show schemas statement
SHOW SCHEMAS;
SHOW SCHEMAS [LIKE 'pattern' | WHERE expr]

-- creating database copy
mysqldump -u root -p DATABASE_NAME > path

-- database export/backup
mysqldump -u root -p DATABASE_NAME [TABLE_NAME,...] > path
mysqldump -u root -p --all-database > database-dump.sql

-- database import/restore backup
mysql -u root -p NEW_DATABASE_NAME < backup.sql

-- tables
SHOW TABLES;
-- structure of table   
desc TABLE_NAME;

-- command for metadata
select version(); -- server versioning string
select database(); -- current database name
select user(); -- current username
show status;    --server status indicators
show variables; -- server configuration variables
