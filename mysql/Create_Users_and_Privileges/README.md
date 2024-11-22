
# MySQL User Management Example SQL Script

This repository contains a sample SQL script to demonstrate creating users, granting privileges, and managing user permissions in MySQL. This script is based on the guide published on [SocketDaddy.com](https://bit.ly/411feee).

## Purpose

The purpose of this script is to provide a practical example of how to:
1. Create a new MySQL user.
2. Grant specific privileges to a user.
3. View and manage user privileges.
4. Revoke privileges from a user.
5. Drop (delete) a MySQL user.

## Script Details

The script contains the following SQL operations:

1. **Creating a New User**:
   ```sql
   CREATE USER 'john_doe'@'localhost' IDENTIFIED BY 'SecurePass123!';
   ```

2. **Granting Privileges**:
   ```sql
   GRANT SELECT, INSERT ON my_database.* TO 'john_doe'@'localhost';
   ```

3. **Applying Privileges**:
   ```sql
   FLUSH PRIVILEGES;
   ```

4. **Viewing Granted Privileges**:
   ```sql
   SHOW GRANTS FOR 'john_doe'@'localhost';
   ```

5. **Revoking Privileges**:
   ```sql
   REVOKE INSERT ON my_database.* FROM 'john_doe'@'localhost';
   ```

6. **Dropping a User**:
   ```sql
   DROP USER 'john_doe'@'localhost';
   ```

## Usage

1. Download the SQL file: [SocketDaddy_Create_Users_and_Privileges.sql](Create_Users_and_Privileges.sql)
2. Execute the script using a MySQL client, such as `mysql` or a GUI tool like MySQL Workbench.

   Example:
   ```bash
   mysql -u root -p < Create_Users_and_Privileges.sql
   ```

## Learn More

For a detailed explanation of each command and additional insights, refer to the original guide on [SocketDaddy.com](https://bit.ly/411feee).

## Licensing

This script is provided under the [MIT License](LICENSE). You are free to use, modify, and distribute it with proper attribution.
