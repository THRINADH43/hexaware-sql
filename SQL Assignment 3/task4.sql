-- 4.1
SELECT  c.customer_id, c.first_name, c.last_name, SUM(a.balance) AS total_balance
FROM Customers1 c
JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_balance DESC
LIMIT 1;


-- 4.2
SELECT AVG(a.balance) AS avg_balance_multiple_accounts
FROM Accounts a
INNER JOIN (
  SELECT customer_id
  FROM Accounts
  GROUP BY customer_id
  HAVING COUNT(*) > 1
) AS multi_account_customers ON a.customer_id = multi_account_customers.customer_id;


-- 4.3
SELECT t.account_id, t.transaction_id, t.transaction_type, t.amount, t.transaction_date
FROM Transactions t
JOIN (SELECT account_id, AVG(amount) AS avg_amount
    FROM Transactions
GROUP BY account_id) a ON t.account_id = a.account_id
WHERE t.amount > a.avg_amount;


-- 4.4
SELECT c.customer_id, c.first_name, c.last_name
FROM Customers1 c
LEFT JOIN Transactions t ON c.customer_id = t.account_id
WHERE t.account_id IS NULL;


-- 4.5
SELECT SUM(balance) AS total_balance
FROM Accounts
WHERE account_id NOT IN (SELECT DISTINCT account_id FROM Transactions);


-- 4.6
SELECT t.*
FROM Transactions t
JOIN (SELECT account_id
    FROM Accounts
    WHERE balance = (SELECT MIN(balance) FROM Accounts)
) a ON t.account_id = a.account_id;


-- 4.7
SELECT c.customer_id, c.first_name, c.last_name
FROM Customers1 c
INNER JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT a.account_type) > 1;


-- 4.8
SELECT account_type, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Accounts) AS percentage
FROM Accounts
GROUP BY account_type;


-- 4.9
SELECT t.*
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
WHERE a.customer_id = 1;


-- 4.10
SELECT account_type, (SELECT SUM(balance) FROM Accounts a WHERE a.account_type = Accounts.account_type) AS total_balance
FROM Accounts
GROUP BY account_type;
