USE bank;

-- Query 1:
SELECT client_id
	FROM client
    WHERE district_id = 1
    LIMIT 5;
    
-- Query 2:
SELECT client_id
	FROM client
    WHERE district_id = 72
    ORDER BY client_id DESC
    LIMIT 1;
    
-- Query 3:
SELECT amount
	FROM loan
    ORDER BY amount ASC 
    LIMIT 3;
    
-- Query 4:
SELECT DISTINCT status
	FROM loan
    GROUP BY status
    ORDER BY status ASC;
    
-- Query 5:
SELECT loan_id, MAX(payments) as max
	FROM loan
    GROUP BY loan_id
    ORDER BY max DESC
    LIMIT 1;
    
-- Query 6: What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount
SELECT account_id, amount
	FROM loan
    ORDER BY account_id ASC
    LIMIT 5;
    
-- Query 7: What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
SELECT account_id, MIN(amount) as min
	from loan
    WHERE duration = 60
    GROUP BY account_id
    ORDER BY min ASC
    LIMIT 5;
    
-- Query 8: What are the unique values of k_symbol in the order table?
SELECT DISTINCT k_symbol
	FROM `order`
    GROUP BY k_symbol
    ORDER BY k_symbol ASC;

-- Query 9: In the order table, what are the order_ids of the client with the account_id 34?
SELECT order_id
	FROM `order`
    WHERE account_id = 34;
    
-- Query 10: In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
SELECT DISTINCT account_id
	FROM `order`
    WHERE order_id BETWEEN 29540 AND 29560;

-- Query 11: In the order table, what are the individual amounts that were sent to (account_to) id 30067122?
SELECT amount
	FROM `order`
    WHERE account_to = 30067122;
    
-- Query 12: In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.
SELECT trans_id, date, type, amount
	FROM trans
    WHERE account_id = 793
    ORDER BY date DESC
    LIMIT 10;
    
-- Query 13: In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? Show the results sorted by the district_id in ascending order.
SELECT district_id, COUNT(DISTINCT client_id) as count
	FROM client
    WHERE district_id < 10
    GROUP BY district_id
    ORDER BY district_id ASC;

-- Query 14: In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.
SELECT type, COUNT(type) as count
	FROM card
    GROUP BY type
    ORDER BY count DESC;

-- Query 15: Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.
SELECT account_id, SUM(amount) as sum
	FROM loan
    GROUP BY account_id
    ORDER BY sum DESC
    LIMIT 10;
    
-- Query 16: In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.
SELECT date, COUNT(loan_id) as count
	FROM loan
	WHERE date < 930907
    GROUP BY date
    ORDER BY date DESC;
    
-- Query 17: In the loan table, for each day in December 1997, count the number of loans issued 
-- for each unique loan duration, ordered by date and duration, both in ascending order. 
-- You can ignore days without any loans in your output.
SELECT date, duration, COUNT(loan_id) as count
	FROM loan
	GROUP BY date, duration
    HAVING date
		LIKE ("9712%")
	ORDER BY duration ASC, date ASC;
    
-- Query 18: In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, 
-- PRIJEM = Incoming). Your output should have the account_id, the type and the sum of amount, named as total_amount. 
-- Sort alphabetically by type.

SELECT account_id, type, SUM(amount) as total_amount
	FROM trans
    WHERE account_id = 396
    GROUP BY type
    ORDER BY type ASC;

	