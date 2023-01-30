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


-- CHALLENGE #3

SELECT username FROM users
LEFT JOIN photos ON users.id = photos.user_id WHERE photos.id IS NULL;