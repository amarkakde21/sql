-- create user statement
CREATE USER 'user-name'@'host-name' IDENTIFIED BY 'password';

-- host-name
-- % - can access from any ip address
-- localhost - can access from local machine only

-- expire clause on password will force the user to create new password
-- on first login
CREATE USER 'user-name'@'host-name' IDENTIFIED BY 'password'
PASSWORD EXPIRE;

-- set interval for expire to implement periodic password changes
CREATE USER 'user-name'@'host-name'
IDENTIFIED BY 'password' 
PASSWORD EXPIRE INTERVAL 25 DAY
FAILED_LOGIN_ATTEMPTS 5 PASSWORD_LOCK_TIME 1;

-- comment for additional info about user
CREATE USER 'user-name'@'host-name' COMMENT 'comment';

-- you can add attribute to user 
CREATE USER 'user-name'@'host-name' 
ATTRIBUTE '{"attr1": "val1", "attr2": "val2"}';

-- if not exists clause
CREATE USER IF NOT EXISTS 'user-name'@'host-name';

-- drop user
DROP USER [IF EXISTS] 'user-name'@'host-name';

-- create role
CREATE ROLE 'first-role', 'second-role';
-- drop role
DROP ROLE 'first-role', 'second-role';

-- current logged in users
SELECT user, host, db, command
FROM information_schema.processlist;

-- change password
-- update statement
UPDATE mysql.user
SET authentication_string = PASSWORD('password')
WHERE USER = user-name and HOST = host-name;
FLUSH PRIVILEGES;

-- set statement
SET PASSWORD FOR 'user-name'@'host-name' = 'password';
-- if you are logged in 
SET PASSWORD = 'password';

-- alter statement
ALTER USER 'user-name'@'host-name' IDENTIFIED BY 'password';

-- grant privileges to user
-- GRANT 
-- privilege1, privilege2, ...
-- ON object-type
-- TO user-or-role1, user-or-role2,...
-- [WITH GRANT OPTION]
-- [AS user
--     [WITH ROLE
--     DEFAULT
--     | NONE
--     | ALL
--     | ALL EXCEPT role [, role ] ...
--     | role [, role ] ...
-- ]
-- ]

GRANT ALL PRIVILEGES ON [DATABASE_NAME | *].[TABLE_NAME | *] TO 'user-name'@'host-name';

-- verify granted privileges to user
SHOW GRANTS FOR 'user-name'@'host-name';
-- make one user proxy of other wher both have same privileges
GRANT PROXY ON 'user-name' TO 'proxy-user';
-- list privileges
SHOW PRIVILEGES;

-- revoke 
REVOKE [PRIVILEGE1, ...] ON DATABASE_NAME.TABLE_NAME FROM 'user-name'@'host-name';
-- revoke all privileges
REVOKE ALL PRIVILEGES ON *.* FROM 'user-name'@'host-name';
-- revoke proxy privileges
REVOKE PROXY ON 'user-name' FROM 'proxy-user';
--revoke role
REVOKE 'user-role' FROM 'user-name'@'host-name';

--lock user account
CREATE USER 'user-name'@'host-name'
IDENTIFIED BY 'password' ACCOUNT LOCK;
-- lock existing account
ALTER USER 'user-name'@'host-name' ACCOUNT LOCK;
-- unlock account
CREATE USER 'user-name'@'host-name' 
IDENTIFIED BY 'password' ACCOUNT UNLOCK;
-- unlock existing account
ALTER USER 'user-name'@'host-name' ACCOUNT UNLOCK;
