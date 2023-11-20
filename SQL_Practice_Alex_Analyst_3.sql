/*
WHERE statement: 
	limits the amount of data pulled
	specifies the date that you want to return

=, <>, <, >, And, Or, Like, Null, Not Null, In 

*/

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName <> 'Jim' 

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName =  'Jim' 

--SELECT * 
--FROM EmployeeDemographics
--WHERE Age > 31

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 30 AND Gender = 'Male'

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName Like '%S%' -- Using a wildcard to return data.

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName IS NOT NULL

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName IN ('Jim', 'Michael', 'Toby')
---- 'IN' is similar to having multiple equal statments (=)