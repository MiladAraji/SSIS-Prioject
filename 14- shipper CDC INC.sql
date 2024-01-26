USE [NorthwindDW]
GO

CREATE OR ALTER   PROCEDURE [dbo].[usp_InsertDimShipper]   @ShipperID nchar(5) ,  -- Business Key 
                                                           @ShipperKey int OUTPUT -- SK
AS
BEGIN
    SET NOCOUNT ON


	
			INSERT INTO NorthwindDW.dbo.DimShipper (ShipperID , CompnayName)
			   SELECT ShipperID , CompanyName
			   FROM Northwind.dbo.Shippers
			   WHERE ShipperID = @ShipperID

		   SET @ShipperKey = SCOPE_IDENTITY()
	

END