use publications;
select titleauthor.au_id as author_id, authors.au_lname as lastname, authors.au_fname as name, titles.title_id, publishers.pub_id 
	from titles
		join titleauthor 
			on titles.title_id = titleauthor.title_id
		join publishers
			on titles.pub_id = publishers.pub_id
		join authors
			on authors.au_id = titleauthor.au_id;
            
select titleauthor.au_id as author_id, authors.au_lname as lastname, authors.au_fname as name, publishers.pub_id, COUNT(distinct titles.title) as title_count  
	from titles
		join titleauthor 
			on titles.title_id = titleauthor.title_id
		join publishers
			on titles.pub_id = publishers.pub_id
		join authors
			on authors.au_id = titleauthor.au_id
			group by authors.au_id, titles.pub_id;

select authors.au_fname as name, authors.au_lname as lastname, sum(qty) as total 
	from authors
		join titleauthor
			on authors.au_id = titleauthor.au_id
		join sales
			on titleauthor.title_id = sales.title_id
				group by authors.au_id
                order by total desc
                limit 3;
		
select authors.au_fname as name, authors.au_lname as lastname, ifnull (sum(qty),0) as total 
	from authors
		join titleauthor
			on authors.au_id = titleauthor.au_id
		join sales
			on titleauthor.title_id = sales.title_id
				group by authors.au_id
                order by total desc
                ;
		


select 