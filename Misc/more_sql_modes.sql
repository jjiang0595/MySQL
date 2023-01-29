SELECT @@GLOBAL.sql_mode;

DESC reviews;

INSERT INTO reviews(rating) VALUES ('hi');

SET SESSION sql_mode = '';

SELECT @@SESSION.sql_mode;

SET SESSION sql_mode = 'STRICT_TRANS_TABLE';