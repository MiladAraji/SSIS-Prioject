use NorthwindDW
go

CREATE OR ALTER Procedure usp_InsertDimemployee  	@employeeid nchar(5),
												    @employeekey int output
AS
begin
	SET NOCOUNT ON
	INSERT INTO DimEmployee(EmployeeID , FirstName , LastName)
	select EmployeeID , FirstName , LastName
	from Northwind.dbo.Employees
	where EmployeeID=@employeeid
	
	set @employeeid=SCOPE_IDENTITY()
END