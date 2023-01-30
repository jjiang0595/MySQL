-- CHALLENGE #1

SELECT * FROM users ORDER BY created_at LIMIT 5;


-- CHALLENGE #2

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users 
GROUP BY day
ORDER BY total DESC
LIMIT 2;
