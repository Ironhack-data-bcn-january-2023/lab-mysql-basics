USE bank;

 -- QUERY 01
SELECT client_id from client
	where district_id = 1
    limit 5;

 -- QUERY 02
SELECT client_id from client
	where district_id = 72
    ORDER BY client_id DESC 
    LIMIT 1;
    
 -- QUERY 03
SELECT amount from loan
	ORDER BY amount ASC 
    LIMIT 3;

 -- QUERY 
SELECT loan_id from loan
	ORDER BY payments DESC
    LIMIT 1;
    
 -- QUERY 
SELECT account_id, 
	amount from loan
		ORDER BY account_id ASC
        LIMIT 5;
        
 -- QUERY 
SELECT account_id from loan
	WHERE duration = 60
	ORDER BY amount ASC
        LIMIT 5;
        
 -- QUERY 
SELECT DISTINCT k_symbol from `order`;

--  QUERY
select order_id from `order`
where account_id = 34;

 -- QUERY 
select distinct account_id from `order`
	WHERE order_id BETWEEN 29540 AND 29561;

 -- QUERY 11   
SELECT DISTINCT amount from `order`
WHERE account_to = 30067122;

 -- QUERY 12
SELECT trans_id, `date`, `type`, amount from trans
	ORDER BY account_id = 793 DESC
    limit 10;
    
 -- QUERY 13  
SELECT district_id, count(client_id) from client
	where district_id < 10
    GROUP BY district_id
    ORDER BY district_id ASC;
    
-- QUERY 14
SELECT distinct `type`, count(`type`) as freq from card
	group by `type`
	ORDER BY freq DESC;
 
 -- QUERY 15
 SELECT account_id, sum(amount) as sum_ from loan
 group by account_id
 order by sum_ DESC
 LIMIT 10;
 
 -- QUERY 16
 SELECT `date`, count(loan_id) from loan
	where `date` < 930907
	group by `date`
	order by `date` DESC;
 
--  QUERY 17 
SELECT `date`, duration, COUNT(loan_id) from loan
	where true
    and `date` is not null 
    AND `date` BETWEEN '971201' AND '971231'
    group by `date` 
    order by `date` asc, duration asc; 

-- QUERY 18
SELECT account_id, sum(amount) as total_amount, `type` from trans
where true 
and account_id = 396 
and (`type` = 'VYDAJ' 
or `type` = 'PRIJEM')
group by `type`;
