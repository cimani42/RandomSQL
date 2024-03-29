/*
UNIONS - COMBINING TWO OR MORE TABLES FOR ONE OUTPUT. 

	JOINS WORK USING A COMMON COLUM BETWEEN TABLES.
	UNIONS SELECT ALL DATA FROM BOTH TABLES; EACH COLUMN IS RETURNED

*/

SELECT *
FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
	FULL OUTER JOIN SQL_AlexTheAnalyst_Tutorial.dbo.WareHouseEmployeeDemographics
		ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID 


SELECT * 
FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
UNION
SELECT *
FROM SQL_AlexTheAnalyst_Tutorial.dbo.WareHouseEmployeeDemographics
-- THIS 'UNION' SYNTAX WILL REMOVE ALL THE DUPLICATES PRESENT BETWEEN THE TABLE WHEN QUERIED. 
-- IF YOU WANT TO SHOW THE DATA AS IS, THEN YOU CAN USE 'UNION ALL'.


-- THE ABOVE EXAMPLE WORKS AS THE ATTRIBUTES HAVE THE SAME NAMES AND DATA TYPE. 
-- HOWEVER, UNIONS CAN OCCUR WHERE THERE ARE SIMILAR INFORMATION BETWEEN TABLES: 

SELECT EmployeeID, FristName, Age
FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeSalary
ORDER BY EmployeeID
-- HERE YOU WILL HAVE TO MAKE SURE THAT THE INFORMATION YOU ARE QUERING IS THE SAME TO UTILISE THE UNION FUNCTION. 
