use bank;

select client_id
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
    order by amount
    limit 3;
    
select distinct status
	from loan
    order by status;
    
select loan_id
	from loan
    order by payments desc
    limit 1;
    
select account_id, amount
	from loan
    order by account_id
    limit 5;
    
select account_id
	from loan
    where duration = 60 
    order by amount
    limit 5;
    
select distinct k_symbol
	from `order`;
    
select order_id
	from `order`
    where account_id = 	34;
    
select distinct account_id
	from `order`
    where order_id >= 29540
    and order_id <= 29560;

select amount
	from `order`
    where account_to = 30067122;
    
select trans_id, `date`, `type`, amount
	from trans
    where account_id = 793
    order by `date` desc
    limit 10;

select count(district_id)
	from client
    where district_id < 10
    group by district_id
    order by district_id;
    
select `type`, count(`type`) as different_cards
	from card
    group by `type`
    order by different_cards desc
    limit 3;
    
select account_id, sum(amount) as total_amount
	from loan
    group by account_id
    order by total_amount desc
	limit 10;
    
select `date`, count(loan_id)
	from loan
    where `date` < 930907
    group by `date`
    order by `date` desc;
    
select `date`, duration, count(loan_id) as quantity
	from loan
    where date like "9712%"
    group by `date`, duration
    order by `date`, duration;
    
select account_id, `type`, sum(amount) as total_amount
	from trans
    where account_id = 396
    group by `type`;