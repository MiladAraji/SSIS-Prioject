USE ETL_SETTING
GO
/****** Object:  StoredProcedure [dbo].[USP_TruncateAllStagingTable]    Script Date: 4/13/2023 1:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER   PROC [dbo].[USP_TruncateAllStagingTable]
AS
 BEGIN
	TRUNCATE TABLE [ETL Settings].[dbo].[Order Details_Deleted]
	TRUNCATE TABLE [ETL Settings].[dbo].[Order Details_Inserted]
	TRUNCATE TABLE [ETL Settings].[dbo].[Order Details_Updated]
	TRUNCATE TABLE [ETL Settings].[dbo].[Orders_Deleted]
	TRUNCATE TABLE [ETL Settings].[dbo].[Orders_Inserted]
	TRUNCATE TABLE [ETL Settings].[dbo].[Orders_Updated]
 END
