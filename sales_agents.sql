-- Provide a query showing only the Employees who are Sales Agents.

SELECT CONCAT(FirstName, ' ' , LastName) AS EmployeeName, Title
FROM Employee
WHERE Title = 'Sales Support Agent'