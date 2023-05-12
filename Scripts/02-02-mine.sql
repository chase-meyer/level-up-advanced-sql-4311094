SELECT sql FROM sqlite_schema;

SELECT 
  e.employeeId,
  e.firstName,
  e.lastName,
  MIN(s.salesAmount) AS 'Smallest Sale',
  MAX(s.salesAmount) AS 'Largest Sale'
FROM employee e
JOIN sales s ON
  e.employeeId = s.employeeId
WHERE s.soldDate >= date('now','start of year')
GROUP BY e.employeeId;