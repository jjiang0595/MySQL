-- CHALLENGE #1

SELECT title, rating FROM series 
JOIN reviews ON series.id = reviews.series_id;

-- CHALLENGE #2

SELECT 
    title,
    ROUND(AVG(rating), 2) AS avg_rating 
FROM series 
JOIN reviews ON series.id = reviews.series_id GROUP BY series_id ORDER BY AVG(rating);

