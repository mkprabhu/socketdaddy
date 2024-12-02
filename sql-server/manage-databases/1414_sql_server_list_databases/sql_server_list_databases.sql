-- List all databases in SQL Server
SELECT name, database_id, state_desc FROM sys.databases;

-- List only user-created databases
SELECT name FROM sys.databases WHERE database_id > 4;

-- Use sp_databases stored procedure to list databases
EXEC sp_databases;

-- Revoke database visibility from the public role
REVOKE VIEW ANY DATABASE FROM public;

-- Grant database visibility to the public role
GRANT VIEW ANY DATABASE TO public;
