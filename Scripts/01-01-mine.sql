SELECT firstName, lastName, employeeId, managerId
FROM employee
WHERE employeeId IN (SELECT managerId FROM employee);

SELECT firstName, lastName, employeeId, managerId
FROM employee
WHERE managerId = 34;

SELECT 
  e.firstName AS 'Employee First Name',
  e.lastName AS 'Employee Last Name',
  e.title AS 'Employee Title',
  m.firstName AS 'Manager First Name',
  m.lastName AS 'Manager Last Name'
FROM employee e
INNER JOIN employee m 
ON e.managerId = m.employeeId;