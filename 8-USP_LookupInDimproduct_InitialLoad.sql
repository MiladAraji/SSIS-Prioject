Use NorthwindDW
GO

Create Or ALter Procedure USP_LookupInDimProduct_InitialLoad	 @Orderdate datetime,
																 @productId NCHAR(5),
																 @productKey int output
AS
Begin
	Set Nocount On
	DECLARE @maxdate DATETIME ='2050-12-29 23:59:59' 
	IF	@Orderdate < (SELECT MIN(startdate) FROM dimproduct WHERE productid=@productId)
		select @productKey=min(productkey)  FROM dimproduct WHERE productid=@productId
	ELSE
		SELECT @productKey=productkey
		FROM dimproduct
		Where @Orderdate between StartDate and ISNULL(EndDate , @maxdate)
		and productid=@productId



END