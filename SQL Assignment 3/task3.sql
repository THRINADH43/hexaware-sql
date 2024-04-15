-- 3.1
SELECT avg(balance) as Avg_balance
FROM Accounts;


-- 3.2
SELECT *
FROM Accounts
ORDER BY balance DESC
LIMIT 10;


-- 3.3
SELECT SUM(amount) AS total_deposits
FROM Transactions
WHERE transaction_type = 'deposit'
AND transaction_date = '2024-04-01';


-- 3.4
SELECT MIN(DOB) AS oldest_customer_dob, MAX(DOB) AS newest_customer_dob
FROM Customers1;


-- 3.5
SELECT t.*, a.account_type
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id;


-- 3.6
SELECT c.*, a.account_id,a.account_type,a.balance
FROM Customers1 c
JOIN Accounts a ON c.customer_id = a.customer_id;



-- 3.7
SELECT c.*, t.transaction_id, t.transaction_type, t.amount, t.transaction_date
FROM Customers1 c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id
WHERE a.account_id = 1;



-- 3.8
SELECT c.customer_id, c.first_name, c.last_name, COUNT(a.account_id) AS num_accounts
FROM Customers1 c
JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id,c.first_name, c.last_name
HAVING COUNT(a.account_id) > 1;


-- 3.9
SELECT total_deposits,total_withdrawals,(total_deposits-total_withdrawals) as difference FROM (
	SELECT account_id, SUM(CASE WHEN transaction_type = 'deposit' THEN amount ELSE 0 END) AS total_deposits,
    SUM(CASE WHEN transaction_type = 'withdrawal' THEN amount ELSE 0 END) AS total_withdrawals
	FROM Transactions
	GROUP BY account_id
) as Subquery;


-- 3.10
WITH DailyBalances AS (
  SELECT account_id, transaction_date, SUM(CASE WHEN transaction_type = 'deposit' THEN amount ELSE -amount END) AS daily_balance
  FROM Transactions
  GROUP BY account_id, transaction_date
)
SELECT a.account_id,AVG(daily_balance) AS avg_daily_balance
FROM DailyBalances d
INNER JOIN Accounts a ON d.account_id = a.account_id
WHERE transaction_date BETWEEN '2024-04-01' AND '2024-04-03'
GROUP BY a.account_id;


-- 3.11
SELECT account_type, SUM(balance) AS total_balance
FROM Accounts
GROUP BY account_type;


-- 3.12
SELECT account_id, COUNT(*) AS num_transactions
FROM Transactions
GROUP BY account_id
ORDER BY num_transactions DESC;


-- 13
WITH CustomerBalances AS (
    SELECT c.customer_id, c.first_name, c.last_name, a.account_type, SUM(a.balance) AS total_balance
    FROM Customers c
    JOIN Accounts a ON c.customer_id = a.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, a.account_type
)
SELECT customer_id, first_name, last_name, account_type, total_balance
FROM CustomerBalances
WHERE total_balance IN (
    SELECT MAX(total_balance)
    FROM CustomerBalances
);


-- 14
SELECT *
FROM Transactions t1
WHERE EXISTS (
  SELECT 1
  FROM Transactions t2
  WHERE t1.transaction_id <> t2.transaction_id
    AND t1.account_id = t2.account_id
    AND t1.transaction_date = t2.transaction_date
    AND t1.amount = t2.amount
)
