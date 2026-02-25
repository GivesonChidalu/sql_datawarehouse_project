/*
*******************************************************************************
WARNING: DESTRUCTIVE SCRIPT
*******************************************************************************
This script is designed for INITIAL SETUP ONLY. 
Running this will:
1. Terminate all active connections to 'DataWarehouse'.
2. PERMANENTLY DELETE the 'DataWarehouse' database and all its contents.
3. Recreate a blank environment (Bronze, Silver, Gold schemas).

DO NOT run this in a Production environment. Ensure you have proper backup unless you intend to wipe all data.
*******************************************************************************
*/


USE master;
GO

-- Drop and recreate the DataWarehouse database
IF DB_ID('DataWarehouse') IS NOT NULL
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
