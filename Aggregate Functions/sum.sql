SELECT SUM(pages)
FROM books;
 
SELECT SUM(released_year) FROM books;
 
SELECT author_lname,
       SUM(pages)
FROM books
GROUP BY
    author_lname;
 
SELECT author_lname, 
       COUNT(*), 
       SUM(pages)
FROM books
GROUP BY author_lname;