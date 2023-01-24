SELECT COUNT(*) FROM books;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT SUM(stock_quantity) FROM books;

SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_fname, author_lname;

SELECT CONCAT(author_fname, ' ', author_lname) FROM books WHERE pages = (SELECT MAX(pages) FROM books);

SELECT 
    released_year AS year, 
    COUNT(*) AS '# books', 
    AVG(pages) AS 'avg pages' 
FROM books 
GROUP BY released_year 
ORDER BY released_year;