SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010
AND author_lname = 'Eggers';
 
SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010
AND author_lname = 'Eggers'
AND title LIKE '%novel%';

SELECT 1 > 0 AND 8=8;

SELECT 1 > 0 AND 8=7;

SELECT title, pages FROM books 
WHERE CHAR_LENGTH(title) > 30 
AND pages > 500;