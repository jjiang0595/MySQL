CREATE TABLE friends (name VARCHAR(10));

INSERT INTO friends (name) VALUES ('tom'), ('juan pablo'), ('james');

SELECT * FROM friends;

CREATE TABLE states(abbr CHAR(2));

INSERT INTO states(abbr) VALUES ('CA'), ('NY');

SELECT * FROM states;

INSERT INTO states (abbr) VALUES ('x');

SELECT * FROM states;

SELECT CHAR_LENGTH(abbr) FROM states;