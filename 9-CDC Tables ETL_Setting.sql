USE ETL_SETTING
GO

DROP TABLE IF EXISTS [Orders_Deleted]
CREATE TABLE [dbo].[Orders_Deleted](
									[OrderID] [int] NOT NULL,
									[CustomerID] [nchar](5) NULL,
									[EmployeeID] [int] NULL,
									[OrderDate] [datetime] NULL,
									[RequiredDate] [datetime] NULL,
									[ShippedDate] [datetime] NULL,
									[ShipVia] [int] NULL,
									[Freight] [money] DEFAULT ((0)) NULL,
									[ShipName] [nvarchar](40) NULL,
									[ShipAddress] [nvarchar](60) NULL,
									[ShipCity] [nvarchar](15) NULL,
									[ShipRegion] [nvarchar](15) NULL,
									[ShipPostalCode] [nvarchar](10) NULL,
									[ShipCountry] [nvarchar](15) NULL)

DROP TABLE IF EXISTS [Orders_Updated]
CREATE TABLE [dbo].[Orders_Updated](
									[OrderID] [int] NOT NULL,
									[CustomerID] [nchar](5) NULL,
									[EmployeeID] [int] NULL,
									[OrderDate] [datetime] NULL,
									[RequiredDate] [datetime] NULL,
									[ShippedDate] [datetime] NULL,
									[ShipVia] [int] NULL,
									[Freight] [money] DEFAULT ((0)) NULL,
									[ShipName] [nvarchar](40) NULL,
									[ShipAddress] [nvarchar](60) NULL,
									[ShipCity] [nvarchar](15) NULL,
									[ShipRegion] [nvarchar](15) NULL,
									[ShipPostalCode] [nvarchar](10) NULL,
									[ShipCountry] [nvarchar](15) NULL)

DROP TABLE IF EXISTS [Orders_Inserted]
CREATE TABLE [dbo].[Orders_Inserted](
									[OrderID] [int] NOT NULL,
									[CustomerID] [nchar](5) NULL,
									[EmployeeID] [int] NULL,
									[OrderDate] [datetime] NULL,
									[RequiredDate] [datetime] NULL,
									[ShippedDate] [datetime] NULL,
									[ShipVia] [int] NULL,
									[Freight] [money] DEFAULT ((0)) NULL,
									[ShipName] [nvarchar](40) NULL,
									[ShipAddress] [nvarchar](60) NULL,
									[ShipCity] [nvarchar](15) NULL,
									[ShipRegion] [nvarchar](15) NULL,
									[ShipPostalCode] [nvarchar](10) NULL,
									[ShipCountry] [nvarchar](15) NULL)

-----------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS [Order Details_Deleted]
CREATE TABLE [dbo].[Order Details_Deleted](
											[OrderID] [int] NOT NULL,
											[ProductID] [int] NOT NULL,
											[UnitPrice] [money] NOT NULL,
											[Quantity] [smallint] NOT NULL,
											[Discount] [real] NOT NULL
										  )


DROP TABLE IF EXISTS [Order Details_Updated]
CREATE TABLE [dbo].[Order Details_Updated](
											[OrderID] [int] NOT NULL,
											[ProductID] [int] NOT NULL,
											[UnitPrice] [money] NOT NULL,
											[Quantity] [smallint] NOT NULL,
											[Discount] [real] NOT NULL
										  )

DROP TABLE IF EXISTS [Order Details_Inserted]
CREATE TABLE [dbo].[Order Details_Inserted](
											[OrderID] [int] NOT NULL,
											[ProductID] [int] NOT NULL,
											[UnitPrice] [money] NOT NULL,
											[Quantity] [smallint] NOT NULL,
											[Discount] [real] NOT NULL
										  )


