SELECT * FROM bank.client;
SELECT client_id, district_id
	FROM client
    WHERE district_id= "1"
	LIMIT 5;
    
SELECT client_id, district_id
	FROM client
    WHERE district_id="72"
    ORDER BY client_id DESC
    LIMIT 1;
    
SELECT loan_id
	FROM loan
    ORDER BY loan_id
    LIMIT 3;
    
SELECT status
	FROM loan
	GROUP BY status
    ORDER BY status; 	
    
SELECT loan_id, payments
	FROM loan
    ORDER BY payments DESC
    LIMIT 1;
    
SELECT account_id, amount
	FROM loanloan
    ORDER BY account_id
    LIMIT 5;

SELECT account_id
	FROM loan
    WHERE duration = "60"
    ORDER BY amount
    LIMIT 5;

SELECT * FROM bank.order AS orden;

SELECT DISTINCT k_symbol
	FROM bank.order;
    
SELECT order_id
	FROM bank.order
    WHERE account_id="34";

SELECT DISTINCT account_id
	FROM bank.order
    where order_id BETWEEN "29540" AND "29560";

SELECT SUM(amount)
	FROM bank.order 
    WHERE account_to="30067122";
    
SELECT trans_id, date, type, amount
	FROM trans
    WHERE account_id=793
    ORDER BY date DESC
    LIMIT 10;
    
SELECT district_id, COUNT(client_id) as counter
	FROM client
    WHERE district_id < "10" 
	GROUP BY district_id
	ORDER BY district_id;

SELECT type, COUNT(card_id) as counter1
	FROM card
	GROUP BY type
	ORDER BY counter1 DESC;
    
SELECT account_id, SUM(amount) as suma
	FROM loan
    GROUP BY account_id
	ORDER BY suma DESC
    LIMIT 10;

SELECT date, COUNT(loan_id) as counter2
	FROM loan
    WHERE date < "930907"
	GROUP BY date
	ORDER BY date DESC;

SELECT loan.date, duration, COUNT(loan_id) as counter3
	FROM loan
    WHERE loan.date LIKE ("9712__")
		GROUP BY loan.date, duration
	ORDER BY loan.date, duration;

SELECT account_id, type, SUM(amount) as suma1
	FROM trans
    WHERE account_id=396
    GROUP BY type
	ORDER BY type;

