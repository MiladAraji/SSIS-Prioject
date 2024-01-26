USE Northwind
GO


SELECT O.OrderID,CONVERT(int,FORMAT(o.orderdate,'yyyyMMdd')) AS DateKey , 
	   o.EmployeeID,O.CustomerID,o.ShipVia as shipperID, 
	   (O.Freight*od.Quantity)/SUM(OD.Quantity) OVER (Partition by O.OrderId) AS Freight,
	   OD.ProductID,OD.Quantity,od.UnitPrice,
	   OD.UnitPrice*od.Quantity AS Totalsale,
	   OD.Quantity*OD.UnitPrice*OD.Discount AS Discountamount,
	   Od.Quantity*od.UnitPrice*(1-Od.Discount) AS NetAmount

FROM Orders O JOIN [Order Details] OD ON O.OrderID=OD.OrderID



