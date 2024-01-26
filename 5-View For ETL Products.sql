USE NorthwindDW
CREATE VIEW Vw_ETLDimProduct
AS
SELECT P.ProductID , 
	       P.ProductName , 
		   C.CategoryID ,
		   C.CategoryName , 
		   CASE P.Discontinued   WHEN 0 THEN N'Active'
								 ELSE N'Unactive'
								 END AS [Status],
			S.SupplierKey

FROM Northwind.dbo.Categories C JOIN Northwind.dbo.Products P	   ON P.CategoryID=P.CategoryID
								JOIN NorthwindDW.dbo.DimSupplier S ON p.SupplierID=S.SupplierID
						
		 