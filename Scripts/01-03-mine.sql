SELECT sql FROM sqlite_schema;

SELECT 
  s.salesId AS 'Sales ID',
  s.salesAmount AS 'Sales Amount',
  s.soldDate AS 'Sold Date', 
  c.firstName AS 'Customer First Name',
  c.lastName AS 'Customer Last Name',
  c.email AS 'Customer Email'
FROM sales s
FULL OUTER JOIN customer c;

-- CUSTOMERS WITH SALES DATA AND SALES WITH CUSTOMER DATA
SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM customer cus
INNER JOIN sales sls
    ON cus.customerId = sls.customerId
UNION
-- UNION WITH CUSTOMERS WHO HAVE NO SALES
SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM customer cus
LEFT JOIN sales sls
    ON cus.customerId = sls.customerId
WHERE sls.salesId IS NULL
UNION
-- UNION WITH SALES MISSING CUSTOMER DATA
SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM sales sls
LEFT JOIN customer cus
    ON cus.customerId = sls.customerId
WHERE cus.customerId IS NULL;