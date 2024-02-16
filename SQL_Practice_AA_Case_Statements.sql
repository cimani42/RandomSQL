/*
CASE STATEMENTS -
	ALLOWS USER TO SPECIFY CONDITIONS AND WHAT YOU WOULD LIKE RETURNED WHEN THE CONDITION IS MET. 
	-- Useful when categorizing and listing
*/

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age > 30 THEN 'OLD' -- SPECIFY THE CONDITION HERE 
--		ELSE 'YOUNG' 
--END	-- SIGNAL THE END OF THE CONDITIONS AFTER INITIALISING WITH 'CASE'
--FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
--WHERE Age IS NOT NULL 
--ORDER BY Age
---- USING CASE WILL CREATE AN ADDITIONAL COLUMN TO THE TABLE WHEN RETUNRED. 

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age > 30 THEN 'OLD' 
--	WHEN Age BETWEEN 27 AND 30 THEN 'YOUNG'
--		ELSE 'BABY'
--END	
--FROM SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeDemographics
--WHERE Age IS NOT NULL 
--ORDER BY Age
---- IF THERE ARE MULTIPLE CRITERIA THAT MEET THE CASE CONDITIONS, THE FIRST ONE WILL BE RETURNED. 
---- I.E., THE FIRST WHEN CASE WILL BE RETURNED. 
--		-- WHEN Age > 30 THEN 'OLD'
--		-- WHEN AGE > 32 THEN 'SUPER OLD' 
--				-- THE ABOVE WOULD RETURN OLD ONLY FOR FIELDS THAT MATCH CRITERIA. 

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salary' THEN Salary + (Salary*.10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary*.05)
	WHEN JobTitle = ' HR' THEN Salary + (Salary*.0000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM SQL_AlexTheAnalyst_Tutorial.DBO.EmployeeDemographics
	JOIN SQL_AlexTheAnalyst_Tutorial.dbo.EmployeeSalary
		ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID