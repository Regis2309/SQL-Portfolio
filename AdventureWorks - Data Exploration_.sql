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

