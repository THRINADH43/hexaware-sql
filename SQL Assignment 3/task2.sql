--2.1
SELECT c.first_name, c.last_name, a.account_type, c.email
FROM Customers1 c
JOIN Accounts a ON c.customer_id = a.customer_id;


-- 2.2
SELECT c.first_name, c.last_name, t.transaction_id, t.transaction_type, t.amount, t.transaction_date
FROM Customers1 c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id;


-- 2.3
UPDATE Accounts
SET balance = balance + 1000
WHERE account_id = 1;


-- 2.4
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM Customers1;


-- 2.5
DELETE FROM Accounts
WHERE balance = 0
AND account_type = 'savings';


-- 2.6
SELECT *
FROM Customers1
WHERE address LIKE '%Oak%';


-- 2.7
SELECT balance from Accounts
WHERE account_id=1;


-- 8
SELECT * from Accounts
WHERE balance > 1000 and account_type='current'


-- 9
SELECT t.*
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
WHERE a.account_id = 1


-- 10
SELECT account_id, balance, account_type, (balance * 0.02) AS interest_accrued
FROM Accounts
WHERE account_type = 'savings';


-- 11
SELECT *
FROM Accounts
WHERE balance < 1200;


-- 12
SELECT *
FROM Customers
WHERE address NOT LIKE '%Oak%';
