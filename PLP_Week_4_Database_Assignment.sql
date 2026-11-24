-- ==============================================================
-- POWER LEARN PROJECT AFRICA (PLP)
-- WEEK 4 DATABASE ASSIGNMENT
-- Advanced SQL Queries and Aggregations
-- Student: Zakaria Adan Hussein
-- Database: sales
-- DBMS: MySQL
-- ==============================================================

USE sales;

-- QUESTION 1:
-- Total payment amount for each payment date.
-- Sort by latest payment date and show only the top five dates.

SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- QUESTION 2:
-- Average credit limit for each customer.
-- Display customer name, country, and average credit limit.

SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- QUESTION 3:
-- Total price of products ordered.
-- Calculate each row's line total as quantityOrdered * priceEach,
-- then sum those line totals for each productCode and quantityOrdered.

SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- QUESTION 4:
-- Highest payment amount for each check number.

SELECT
    checkNumber,
    MAX(amount) AS highest_payment_amount
FROM payments
GROUP BY checkNumber;


-- ==============================================================
-- END OF WEEK 4 DATABASE ASSIGNMENT
-- ==============================================================
