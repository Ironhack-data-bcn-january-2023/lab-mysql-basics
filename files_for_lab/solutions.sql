USE bank;
-- Query 1
select client_id
	from client
    where district_id = 1
    limit 5;

-- Query 2
select client_id
	from client
    where district_id = 72
    ORDER by client_id desc
    limit 1;
    
-- Query 3
select amount
	from loan
    ORDER by amount asc
    limit 3;
    
-- Query 4
select distinct status
	from loan
    ORDER by status asc;
    
-- QUERY 5
select loan_id
	from loan
    ORDER by payments desc
    limit 1;
    
-- QUERY 6
select account_id, amount
	from loan
    order by account_id asc
    limit 5;
    
-- QUERY 7
select account_id
	from loan
    where duration = 60
    order by amount asc
    limit 5;

-- QUERY 8
select distinct k_symbol
	from `order`;
    
 -- QUERY 9
 select order_id
	from `order`
    where account_id = 34;
    
 -- QUERY 10
 select distinct account_id
	from  `order`
where order_id between 29540 and 29560;

 -- QUERY 11
 select amount
	from `order`
where account_to = 30067122;

 -- QUERY 12
 select trans_id, `date`, `type`, amount
	from trans
    where account_id = 793
    order by `date` desc
    limit 10;
    
 -- QUERY 13
 select COUNT(district_id)
	from client
    where district_id < 10
	group by district_id
    order by district_id asc
    limit 10; 
    
 -- QUERY 14
 select `type`, COUNT(type)
	from card
    group by `type`;
    
 -- QUERY 15
 select account_id, SUM(amount) 
	from loan
	group by account_id
    order by SUM(amount) desc
    limit 10;
    
 -- QUERY 16
 select `date`, COUNT(`date`)
	from loan
    where date < '930907'
    group by `date`
    order by `date` desc
    limit 5;
    
 -- QUERY 17
 select `date`, duration, COUNT(`date`)
 from loan
 where date like "9712%"
 group by duration, `date` 
 order by `date` and duration; 
 
  -- QUERY 18
  select account_id, `type`, sum(amount) as total_amount
	from trans
    where account_id = 396	
    group by type