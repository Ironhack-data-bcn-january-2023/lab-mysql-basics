USE publications;

SELECT authors.au_id, au_lname, au_fname,
	title, publishers.pub_name from titles
	JOIN titleauthor
	ON titles.title_id = titleauthor.title_id
    JOIN authors
	ON titleauthor.au_id = authors.au_id
	JOIN publishers
	ON titles.pub_id = publishers.pub_id;
