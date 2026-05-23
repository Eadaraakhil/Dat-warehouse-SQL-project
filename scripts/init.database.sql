/*
============================================
Create Database and Schemas
============================================
 Script Purpose:
		In tis first we use master databse and then we will create new database called 'after checking if it
		already exists. If the database exists, it is dropped and recrated. Additionally, the script sets up
		three schemas within the database: 'bronze', 'silver',and 'gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists. All data in the database
	will be prementlu deleted. processed with caution and ensure you have proper backups before running this
	scripts.
	*/


USE master;
GO

--drop and recreate the 'dataWarehouse' database--
IF EXISTS ( SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
	 ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	 DROP DATABASE DataWarehouse;
	END;
	Go

	-- Create the 'DataWarehouse' databse --

CREATE Database DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas--
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
