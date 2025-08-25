
UPDATE books SET availability = TRUE;

SELECT * FROM books;

UPDATE books SET availability=FALSE
	WHERE id in (2,3,4);

/*see most popular books*/
SELECT title, COUNT (title) as times_borrowed
FROM books
JOIN checkout on books.id = checkout.book_id
GROUP BY title
ORDER BY times_borrowed DESC; 

/*see active patrons*/
SELECT name, COUNT (name) as times_borrowed
FROM patrons
JOIN checkout on patrons.id = checkout.patron_id
GROUP BY name
ORDER BY times_borrowed DESC; 

/*see patrons who haven't returned books*/
SELECT books.id,books.title, checkout.checkout_date, patrons.name, patrons.contact_info
FROM checkout 
JOIN books on checkout.book_id = books.id
JOIN patrons on checkout.patron_id = patrons.id
WHERE checkout.return_date IS NULL
ORDER BY checkout_date;

/*see avaliable books */
SELECT id, title, author, category 
FROM books
	WHERE availability IS TRUE;



