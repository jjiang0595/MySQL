-- CHALLENGE #1

SELECT title, rating FROM series 
JOIN reviews ON series.id = reviews.series_id;