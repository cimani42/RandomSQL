/*
INNER JOINS, FULL/LEFT/RIGHT AND OUTER JOINS

Using a common column between tables. 
*/

-- INNER JOIN

SELECT *
FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
	INNER JOIN SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeSalary
		ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
		-- THIS WILL SHOW EVERYTHING THAT OVERLAPS FROM BOTH TABLES
		-- MISSING INFROMATION WHERE THERE ARE NOT COMMON FIELDS IN THE RELATED COLUMN

SELECT *
FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
	OUTER JOIN SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeSalary
		ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
		-- RETURNS ALL ATTRIBUTES PRESENT IN THE TABLE. 
		-- SHOULD RETURN 'NULL' WHERE FIELD IS NOT POPULATED

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
	LEFT JOIN SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeSalary
		ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
		-- LEFT REFERS TO THE FIRST TABLE PRESENT IN THE QUERY 
		-- THIS INSTACE BEING EMPLOYEE DEMOGRAPHICS
		-- QUERY RETURNS EVERYTHING PRESENT IN THE FIRST TABLE, AND ALL RELATED IN SECOND TABLE

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
	RIGHT JOIN SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeSalary
		ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
		-- RIGHT REFERS TO THE SECOND TABLE PRESENT IN THE QUERY 
		-- THIS INSTANCE IS THE EMPLYEE SALARY
		-- RETURNS QUERY FOR EVERYTHING IN THE SECOND TABLE, AND RELATED TO FIELDS IN FIRST TABLE

-- THE LEFT AND RIGHT JOINS RETURN A TABLE DEPENDENT ON THE INFORMATION PRESENT WITHIN THE COLUMN FOR EMPLOYEE ID
-- SHOULD ONE TABLE HAVE MORE CRITERIA IN THE CHOSEN COLUMN, THE QUERY WILL WILL BE DIFFERENT BETWEEN THE TWO. 
-- FOR EXAMPLE, EMPLOYEE SALARY EMPLOYEE ID HAS 6 FIELDS WHILE EMPLOYEE DEMOGRAPHICS EMPLOYEE ID HAS 30.... 

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
	INNER JOIN SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeSalary
		ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC 

SELECT JobTitle, AVG(Salary)
FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
	INNER JOIN SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeSalary
		ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle
