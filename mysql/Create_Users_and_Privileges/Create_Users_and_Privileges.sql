
-- 1. Creating a New User
CREATE USER 'john_doe'@'localhost' IDENTIFIED BY 'SecurePass123!';

-- 2. Granting Privileges to the User
GRANT SELECT, INSERT ON my_database.* TO 'john_doe'@'localhost';

-- 3. Applying the Privileges
FLUSH PRIVILEGES;

-- 4. Viewing Granted Privileges
SHOW GRANTS FOR 'john_doe'@'localhost';

-- 5. Revoking Privileges
REVOKE INSERT ON my_database.* FROM 'john_doe'@'localhost';

-- 6. Dropping a User
DROP USER 'john_doe'@'localhost';
