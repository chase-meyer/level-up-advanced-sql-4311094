SELECT sql FROM sqlite_schema;

SELECT 
  e.firstName AS 'First Name',
  e.lastName AS 'Last Name',
  s.salesId AS 'Sales ID',
  s.salesAmount 'Sales Amount',
  s.soldDate 'Sell Date'
FROM employee e 
LEFT JOIN sales s ON 
  e.employeeId = s.employeeId;

SELECT 
  e.employeeId AS 'Employee ID',
  e.firstName AS 'First Name',
  e.lastName AS 'Last Name',
  e.title AS 'Employee Title',
  e.startDate AS 'Employee Start Date'
FROM employee e 
LEFT JOIN sales s ON 
  e.employeeId = s.employeeId
WHERE e.title IS 'Sales Person' AND 
  s.salesId IS NULL;