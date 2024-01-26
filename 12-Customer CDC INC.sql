use NorthwindDW
go

CREATE OR ALTER Procedure usp_InsertDimCustomer		@customerid nchar(5),
												    @customerkey int output
AS
begin
	SET NOCOUNT ON
	INSERT INTO DimCustomer(CustomerID , CompanyName , Country , Current_Country,StartDate)
	select customerid,CompanyName,Country,Country,GETDATE()
	from Northwind.dbo.Customers
	where CustomerID=@customerid
	
	set @customerkey=SCOPE_IDENTITY()
END