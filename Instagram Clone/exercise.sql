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


-- CHALLENGE #4

SELECT  
    username, 
    photos.id,
    photos.image_url,
    COUNT(*) AS total
FROM photos 
JOIN likes ON likes.photo_id = photos.id
JOIN users ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;


-- CHALLENGE #5

SELECT CEIL((SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)) AS AVG; 


-- CHALLENGE #6

SELECT 
    tags.tag_name, 
    COUNT(*) AS total 
FROM photo_tags
JOIN tags ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;
