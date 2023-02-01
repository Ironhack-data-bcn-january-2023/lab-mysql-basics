-- Get the id values of the first 5 clients from district_id with a value equals to 1.

-- 1
SELECT client_id
FROM bank.client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

-- In the client table, get an id value of the last client where the district_id equals to 72.
-- 2

SELECT client_id
FROM bank.client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Get the 3 lowest amounts in the loan table.
-- 3 

SELECT AMOUNT
FROM bank.loan
ORDER BY AMOUNT ASC
LIMIT 3;

-- What are the possible values for status, ordered alphabetically in ascending order in the loan table?
-- 4

SELECT 
DISTINCT status
FROM bank.loan
ORDER BY status ASC;

-- What is the loan_id of the highest payment received in the loan table?
-- 5
SELECT loan_id
FROM bank.loan
GROUP BY loan_id
ORDER BY MAX(payments) DESC
LIMIT 1;

-- What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount
-- 6
SELECT account_id, MIN(amount)
FROM bank.loan
GROUP BY account_id
ORDER BY account_id ASC
LIMIT 5;

-- What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
-- 7

SELECT account_id
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- What are the unique values of k_symbol in the order table?
-- 8

SELECT DISTINCT k_symbol
FROM bank.order
ORDER BY k_symbol ASC;

-- In the order table, what are the order_ids of the client with the account_id 34?
-- 9

SELECT order_id
FROM bank.order
WHERE account_id = 34;

-- In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
-- 10 

SELECT DISTINCT account_id
FROM bank.order
WHERE order_id BETWEEN '29540' AND '29560';

-- In the order table, what are the individual amounts that were sent to (account_to) id 30067122?
-- 11 

SELECT DISTINCT amount
FROM bank.order
WHERE account_to = '30067122';

-- In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 
-- 793 in chronological order, from newest to oldest.
-- 12
SELECT trans_id, date, type , amount
FROM bank.trans
WHERE TRUE
AND account_id = '793'
ORDER BY date DESC
LIMIT 10;

-- In the client table, of all districts with a district_id lower than 10,
--  how many clients are from each district_id? Show the results sorted by the district_id in ascending order.
-- 13

SELECT district_id, COUNT(client_id)
FROM bank.client
WHERE district_id< 10
GROUP BY district_id
ORDER BY district_id ASC;

-- In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.
-- 14

SELECT DISTINCT type , COUNT(card_id)
FROM bank.card
GROUP BY type
ORDER BY COUNT(card_id) DESC;

-- Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.
-- 15

SELECT account_id, SUM(amount)
FROM bank.loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

-- In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.
-- 16

SELECT date, COUNT(DISTINCT loan_id)
FROM bank.loan
WHERE date <930907
GROUP BY date
ORDER BY date DESC
LIMIT 5;

-- In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, 
-- both in ascending order. You can ignore days without any loans in your output.
-- 17
SELECT date as dt , duration, COUNT(loan_id)
FROM bank.loan
WHERE TRUE
	AND date IS NOT NULL
    AND date BETWEEN '971201' AND '971231'
GROUP BY duration , date
ORDER BY date ASC, duration ASC;


-- In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming).
-- Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.
-- 18

SELECT account_id, type, SUM(amount) as total_amount
FROM bank.trans
WHERE account_id = '396'
GROUP BY 1,2
ORDER BY type ASC;