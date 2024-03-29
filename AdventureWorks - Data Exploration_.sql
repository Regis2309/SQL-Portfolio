--- Use AdventuresWorks 2019
USE AdventureWorks2019;
--- Select all rows from Human Resources.Employees
SELECT * FROM [AdventureWorks2019].[HumanResources].Employee
--- Select all Human resources employees who are single
Select * From HumanResources.Employee where MaritalStatus = 'S';
-- Select all Human Resources Employees who are married
Select * From HumanResources.Employee where MaritalStatus = 'M';
--- Select all Human resources employees who are male and single
Select * From HumanResources.Employee where MaritalStatus = 'S'and Gender = 'M';
--- Select all Human resources employees who are female and single
Select * From HumanResources.Employee where Gender = 'F' and MaritalStatus = 'S';
--- Select all Human resources who are female, single and borned after 1980
Select * From HumanResources.Employee where Gender = 'F' and MaritalStatus = 'S' and BirthDate > '1980-01-01';
--- Select all Human resources who are male, single and borned after 1980
Select * From HumanResources.Employee where Gender = 'M' and MaritalStatus = 'S' and BirthDate > '1980-01-01';
--- Select all Human resources who are male, single, born after 1980 who had more than 40 hours of SickLeaveHours Ordered by ASC
Select * From HumanResources.Employee where Gender = 'M' and MaritalStatus = 'S' and BirthDate > '1980-01-01' and SickLeaveHours > '40'
order by SickLeaveHours ASC
Select * From HumanResources.Employee where Gender = 'F' and MaritalStatus = 'S' and BirthDate > '1980-01-01' and SickLeaveHours > '40'
order by SickLeaveHours ASC
--- Select all columns from Humanresources.EmployeeDepartmentHistory
Select * From HumanResources.EmployeeDepartmentHistory;
--- Select all columns from Humanresources.EmployeeDepartment
Select * From HumanResources.Department;
--- INNER JOIN on all columns from Humanresources.EmployeeDepartmentHistory and HumanResources.EmployeeDepartment
Select HumanResources.EmployeeDepartmentHistory.BusinessEntityID, HumanResources.Department.GroupName From HumanResources.EmployeeDepartmentHistory 
INNER JOIN HumanResources.Department ON HumanResources.EmployeeDepartmentHistory.DepartmentID = HumanResources.Department.DepartmentID
--- Select all columns from Person.Address
Select * From Person.Address;
--- Select all columns from Person.Person
Select * From Person.Person;
--- INNER JOIN on all columns from Person.Address and Person.Person
Select Person.Address.AddressLine1, Person.Address.AddressLine2, Person.Person.BusinessEntityID From Person.Person 
INNER JOIN Person.Address ON Person.Address.rowguid = Person.Person.rowguid
--- Select all columns Person.CountryRegion
Select * From Person.CountryRegion;
--- Select all columns Person.CountryRegion Order by ModifiedDate ASC
Select * From Person.CountryRegion Order by ModifiedDate ASC
--- Select all columns Person.CountryRegion Order by CountryRegionCode DESC
Select * From Person.CountryRegion Order by CountryRegionCode DESC
--- Select all columns Production.Product
Select * From Production.Product
