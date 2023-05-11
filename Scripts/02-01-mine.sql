SELECT sql FROM sqlite_schema;

SELECT 
  e.employeeId AS 'EmployeeID',
  e.firstName AS 'First Name',
  e.lastName AS 'Last Name',
  COUNT(*) AS 'Number of Sales'
FROM employee e 
JOIN sales s ON
  e.employeeId = s.employeeId
GROUP BY e.employeeId
ORDER BY e.employeeId;