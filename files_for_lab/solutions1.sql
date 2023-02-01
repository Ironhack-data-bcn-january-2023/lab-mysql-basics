use bank;
SELECT client_id
	from client
    where district_id = 1
    limit 5;
    
select client_id
	from client
	where district_id = 72
		order by client_id desc
        limit 1;
    
select amount
	from loan
    order by amount asc
    limit 3;
    
select status
	from loan
    group by status
    order by status asc;
    
select loan_id
	from loan
    where payments 
		order by payments desc
        limit 1;
        
select account_id, amount
	from loan
    where account_id
		order by account_id asc
        limit 5;
        
select account_id
	from loan
    where duration = 60 
		order by amount asc
        limit 5;
     
select distinct(k_symbol)
	from `order`;
    
select order_id
	from `order`
    where account_id = 34;
    
select account_id
	from `order`
    where order_id > 29540 and order_id < 29560
		group by account_id;
        
select amount
	from `order`
    where account_to = 30067122;
    
select trans_id, `date`, `type`, amount
	from trans
    where account_id = 793
		order by `date` desc
        limit 10;
        
select district_id, count(client_id)
	from client
    where district_id < 10
		group by district_id
		order by district_id asc;
        
select type, count(type)
	from card
		group by type
		order by count(type) desc;
        
select account_id,  sum(amount)
	from loan
		group by account_id
        order by sum(amount) desc
        limit 10;
        
select `date`, count(loan_id)
	from loan
    where `date` < 930907
    group by `date`
    order by `date` asc;
    
select `date`, duration, count(loan_id)  
	from loan
    where `date` like ("9712%")
		group by `date`, duration
		order by `date`, duration asc;
    
select account_id, type, sum(amount) as total_amount
	from trans
    where account_id = 396
		group by type
		order by type asc;