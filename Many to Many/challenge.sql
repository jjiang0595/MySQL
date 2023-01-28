-- CHALLENGE #1

SELECT title, rating FROM series 
JOIN reviews ON series.id = reviews.series_id;

-- CHALLENGE #2

SELECT 
    title,
    ROUND(AVG(rating), 2) AS avg_rating 
FROM series 
JOIN reviews ON series.id = reviews.series_id GROUP BY series_id ORDER BY AVG(rating);

-- CHALLENGE #3

SELECT 
    first_name,
    last_name,
    rating 
FROM reviewers 
JOIN reviews ON reviewers.id = reviews.reviewer_id;

-- CHALLENGE #4

SELECT title FROM series
LEFT JOIN reviews ON series.id = reviews.series_id WHERE rating IS NULL; 

-- CHALLENGE #5

SELECT genre, ROUND(AVG(rating), 2) AS avg_rating FROM series 
JOIN reviews ON series.id = reviews.series_id GROUP BY genre;

-- CHALLENGE #6

SELECT 
    first_name, 
    last_name, 
    COUNT(*), 
    IFNULL(MIN(rating), 0) AS MIN, 
    IFNULL(MAX(rating), 0) AS MAX, 
    IFNULL(AVG(rating), 0) AS AVG,
    IF (COUNT(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers 
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id GROUP BY first_name, last_name;