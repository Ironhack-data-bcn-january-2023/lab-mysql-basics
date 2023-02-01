USE bank;
-- Get the id values of the first 5 clients from district_id with a value equals to 1.
SELECT * FROM client 
	WHERE district_id = 1
    LIMIT 5;
    
-- In the client table, get an id value of the last client where the district_id equals to 72.

SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Get the 3 lowest amounts in the loan table.

SELECT amount
FROM loan
ORDER BY amount
LIMIT 3;

-- What are the possible values for status, ordered alphabetically in ascending order in the loan table?

SELECT DISTINCT status
FROM loan
ORDER BY status;

-- What is the loan_id of the highest payment received in the loan table?

SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

--  6) What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount

SELECT account_id, amount
FROM loan
ORDER BY amount
LIMIT 5;

-- 7) What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?

SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount
LIMIT 1;

--  8) What are the unique values of k_symbol in the order table

SELECT DISTINCT `k_symbol`
FROM `order`
ORDER BY `k_symbol`;

--  9) In the order table, what are the order_ids of the client with the account_id 34?

SELECT order_id
FROM `order`
WHERE account_id = 34;

--  10) In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?

SELECT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

-- 11) In the order table, what are the individual amounts that were sent to (account_to) id 30067122?

SELECT amount
FROM `order`
WHERE account_to = 30067122;

--  12) In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.

SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- 13 In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? Show the results sorted by the district_id in ascending order.

SELECT district_id, COUNT(*) AS num_clients
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id;

--  14) In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.

SELECT type, COUNT(*) AS num_cards
FROM card
GROUP BY type
ORDER BY num_cards DESC;

-- 15) Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.

SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

--  16) In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.

SELECT date, COUNT(*) AS num_loans
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- 17) In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order. 

SELECT date, duration, COUNT(*) AS num_loans
FROM loan
WHERE date BETWEEN 19971201 AND 19971231
GROUP BY date, duration
ORDER BY date, duration;

-- 18) In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.

SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type;

