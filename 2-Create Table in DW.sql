USE NorthwindDW
GO


--1)DimEmployee:  EmployeeKey , EmployeeID , FirstName , LastName
--                identity (PK)

CREATE TABLE DimEmployee (EmployeeKey INT IDENTITY NOT NULL PRIMARY KEY,
						  EmployeeID  INT          NOT NULL,
						  FirstName   NVARCHAR(50) NOT NULL,
						  LastName    NVARCHAR(50) NOT NULL)

--2)DimCustomer:  CustomerKey , CustomerID , CompanyName , Country , Current_Country
--                               BK          Type 0         Type2       Type1
CREATE TABLE DimCustomer (Custmerkey       INT IDENTITY NOT NULL PRIMARY KEY,
						   CustomerID      NVARCHAR(5) NOT NULL,
						   CompanyName     NVARCHAR(50) NOT NULL,
						   Country		   NVARCHAR(50) NOT NULL,
						   Current_Country NVARCHAR(50) NOT NULL,
					       StartDate       DATETIME NOT NULL,
						   EndDate         DATETIME)

--3) DimSupplier:  SupplierKey , SupplierID , CompanyName , Country
--                 SK             BK          Type 0         Type 1
CREATE TABLE DimSupplier (SupplierKey INT IDENTITY NOT NULL PRIMARY KEY,
						  SupplierID  INT NOT NULL,
						  CompanyName NVARCHAR(50),
						  Country     NVARCHAR(50))


--4) DimShipper:   ShipperKey , ShipperID , CompanyName
--                    SK          BK          Type 0
CREATE TABLE DimShipper (Shipperkey	 INT IDENTITY NOT NULL PRIMARY KEY,
						 ShipperID   INT NOT NULL,
						 CompnayName NVARCHAR(40) NOT NULL)

--5)DimProduct:
--P.ProductID , P.ProductName ,			 C.CategoryID ,		C.CategoryName , CASE P.Discontinued
--                       Type0              Type 1			Type 1                 WHEN 0 THEN 
--																						ELSE 'Unactive'
--																		   		   END AS [Status] ,               DS.SupplierSK
--																						 Type 1                     Type 2

CREATE TABLE DimProduct (ProductKey   INT IDENTITY NOT NULL PRIMARY KEY,
						 ProductID    INT NOT NULL,
						 ProductName  NVARCHAR(50),
						 CategoryID	  INT NOT NULL,
						 CategoryName NVARCHAR(50),
						 [Status]	  NVARCHAR(10),
						 SupplierKey  INT,
						 StartDate    DATETIME NOT NULL,
						 EndDate      DATETIME)




--6) FactOrders
CREATE TABLE FactOrders ( OrderKey       INT IDENTITY NOT NULL PRIMARY KEY,
						  OrderID        INT NOT NULL,
						  DateKey        INT NOT NULL,
						  EmployeeKey    INT NOT NULL,
						  CustomerKey    INT NOT NULL,
						  ShipperKey     INT NOT NULL,
						  Freight        MONEY NOT NULL,
						  ProductKey     INT NOT NULL,
						  Quantity       INT NOT NULL,
						  UnitPrice	     MONEY NOT NULL,
						  SaleAmout		 MONEY NOT NULL,
						  DiscountAmount REAL NOT NULL,
						  NetAMount      REAL NOT NULL)


						
