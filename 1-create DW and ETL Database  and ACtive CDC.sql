--Check for DW and Create a new
DROP DATABASE IF EXISTS NorthwindDW
CREATE DATABASE NorthwindDW

--Check for ETL DB and Create a new
DROP DATABASE IF EXISTS ETL_SETTING
CREATE DATABASE ETL_SETTING

-- Start CDC 
USE Northwind
EXEC sp_cdc_enable_db
go
EXEC sys.sp_cdc_enable_table  @source_schema = N'dbo',@source_name = N'Orders',@role_name = NULL , @Supports_Net_Changes = 1
GO
EXEC sys.sp_cdc_enable_table  @source_schema = N'dbo',@source_name = N'Order Details',@role_name = NULL , @Supports_Net_Changes = 1
GO
