-- 1
use bank;
select *
	from client 
	where district_id = 1
    limit 5;
    
-- 2

select max(client_id)
	from client
    where district_id = 72;
    
select amount
from loan
order by amount asc
limit 3;

-- Query 4

select distinct status
from loan
order by status asc;


-- Query 5

select loan_id, max(payments) as max
from loan
group by loan_id
order by max desc
limit 1;

-- Query 6

SELECT account_id, amount
FROM loan
ORDER BY account_id asc
LIMIT 5;

-- Query 7 What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?

select account_id
from loan
where duration = 60
order by amount asc
limit 5;

-- Query 8
SELECT DISTINCT k_symbol
FROM `order`;

-- Query 9

SELECT order_id
FROM `order`
WHERE account_id = 34;

-- Query 10

SELECT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
group by account_id;


-- Query 11

SELECT amount
FROM `order`
WHERE account_to = 30067122;

-- Query 12

SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- Query 13

SELECT district_id as district, count(client_id)
FROM client
group by district_id
HAVING district_id < 10;

-- Query 14

select type, count(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

-- Query 15

select account_id, sum(amount) as total_amount
from loan
group by account_id
order by total_amount desc
limit 10;

-- Query 16

SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < '930907'
GROUP BY date
ORDER BY date DESC;

-- Query 17

SELECT date, COUNT(DISTINCT loan_id), duration
FROM loan
GROUP BY date, duration
HAVING date LIKE ('9712%')
ORDER BY date ASC, duration ASC;

-- Query 18

SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type;
