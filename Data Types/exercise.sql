CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(10, 2),
    quantity INT
);

SELECT CURTIME();

SELECT CURDATE();

SELECT DAY(CURDATE());

SELECT DAYOFWEEK(CURDATE());

SELECT DAYNAME(CURDATE());

SELECT DATE_FORMAT(CURDATE(), '%m/%d/%y');

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE TABLE tweets (
    content VARCHAR(180),
    username VARCHAR(15);
    created_at TIMESTAMP DEFAULT NOW();
);

INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;
 
INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;