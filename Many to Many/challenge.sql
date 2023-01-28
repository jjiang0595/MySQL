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