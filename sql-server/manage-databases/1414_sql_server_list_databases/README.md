
# SQL Server Commands for Listing Databases

This repository contains example SQL commands for listing databases in SQL Server. These commands are useful for exploring and managing databases in an instance.

## Commands Included

1. **List All Databases in SQL Server**
   ```sql
   SELECT name, database_id, state_desc FROM sys.databases;
   ```

2. **List Only User-Created Databases**
   ```sql
   SELECT name FROM sys.databases WHERE database_id > 4;
   ```

3. **Use sp_databases Stored Procedure**
   ```sql
   EXEC sp_databases;
   ```

4. **Revoke Database Visibility**
   ```sql
   REVOKE VIEW ANY DATABASE FROM public;
   ```

5. **Grant Database Visibility**
   ```sql
   GRANT VIEW ANY DATABASE TO public;
   ```

## Reference

For detailed explanations of these commands, refer to the original post on SocketDaddy.com:  
[List Databases in SQL Server: Commands and Examples](https://socketdaddy.com/sql-server/list-databases-in-sql-server/?source=github&medium=example_code&campaign=readme)
