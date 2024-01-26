Use ETL_SETTING
GO

CREATE OR ALTER VIEW Vw_AllChangesBetween2ETL
AS
	SELECT OrderID from [dbo].[Order Details_Deleted]
	UNION ALL
	SELECT OrderID from [dbo].[Order Details_Updated]
	UNION ALL
	SELECT OrderID from [dbo].[Order Details_Inserted]
	UNION ALL
	SELECT OrderID from [dbo].[Orders_Deleted]
	UNION ALL
	SELECT OrderID from [dbo].[Orders_Updated]
	UNION ALL
	SELECT OrderID from [dbo].[Orders_Inserted]