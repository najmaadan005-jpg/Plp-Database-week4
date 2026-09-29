-- Question 1
-- Display total payment amount for each payment date
SELECT paymentDate,
       SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2
-- Display customer name, country and average credit limit
SELECT customerName,
       country,
       AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- Question 3
-- Display product code, quantity ordered and total price
SELECT productCode,
       quantityOrdered,
       SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4
-- Display check number and highest amount paid
SELECT checkNumber,
       MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
