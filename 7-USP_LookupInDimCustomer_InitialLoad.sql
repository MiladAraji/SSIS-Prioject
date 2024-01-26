Use NorthwindDW
GO

Create Or ALter Procedure USP_LookupInDimCustomer_InitialLoad	 @Orderdate datetime,
																 @customerId NCHAR(5),
																 @customerkey int output
AS
Begin
	Set Nocount On
	DECLARE @maxdate DATETIME ='2050-12-29 23:59:59' 
	IF	@Orderdate < (SELECT MIN(startdate) FROM DimCustomer WHERE Customerid=@customerId)
		select @customerkey=min(custmerkey)  FROM DimCustomer WHERE customerid=@customerId
	ELSE
		SELECT @customerkey=Custmerkey
		FROM DimCustomer
		Where @Orderdate between StartDate and ISNULL(EndDate , @maxdate)
		and CustomerID=@customerId



END