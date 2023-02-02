USE bank;

-- Q1:
SELECT district_id
FROM account
LIMIT 5;

-- Q2:
SELECT district_id, client_id
FROM client
WHERE district_id = "72"
ORDER BY district_id DESC
LIMIT 1;

-- Q3:
SELECT MIN(amount)
FROM loan;

-- Q4:
SELECT status FROM loan
	WHERE status BETWEEN "A" AND "Z"
ORDER BY status ASC;
    
-- Q5:
SELECT loan_id FROM loan
ORDER BY payments ASC
LIMIT 1;

-- Q6:
SELECT amount, account_id FROM loan
ORDER BY account_id DESC
LIMIT 5;

-- Q7:
SELECT account_id, duration, amount FROM loan
WHERE duration = "60"
ORDER BY amount DESC
LIMIT 1;

-- Q8:
SELECT DISTINCT k_symbol FROM `order`;

-- Q9:
SELECT order_id FROM `order`
WHERE account_id = "34";

-- Q10:
SELECT account_id FROM `order`
WHERE order_id >= "2940"
	AND order_id < "2960";

-- Q11:
SELECT amount FROM `order`
WHERE account_to = "30067122";

-- Q12:
SELECT trans_id, `date`, `type`, amount FROM trans
WHERE account_id = "793"
ORDER BY `date` DESC;

-- Q13:
SELECT district_id, COUNT(client_id) FROM client
WHERE district_id < "10"
GROUP BY district_id
ORDER BY district_id ASC;

-- Q14:
SELECT `type`, COUNT(card_id) FROM card
GROUP BY `type`
ORDER BY COUNT(card_id) DESC;

-- Q15: 
SELECT account_id, SUM(amount) AS A FROM loan
GROUP BY account_id
ORDER BY A DESC
LIMIT 10;

-- Q16:
SELECT COUNT(loan_id), `date` FROM loan
WHERE `date` < "930907"
GROUP BY `date`
ORDER BY `date` DESC;

-- Q17: ?
SELECT DISTINCT duration, COUNT(loan_id), `date` FROM loan
WHERE `date` IN ("december", "1997")
GROUP BY duration
ORDER BY `date`;

-- Q18: ?
SELECT SUM(amount) AS total_amount, account_id, type FROM trans
WHERE account_id = '369' AND type IN ("VYDAJ", "PRIJEM")
GROUP BY account_id
ORDER BY type ASC;














