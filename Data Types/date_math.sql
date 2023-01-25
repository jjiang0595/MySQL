SELECT * FROM people;
 
SELECT DATEDIFF(NOW(), birthdate) FROM people;
 
SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;
 
SELECT birthdt FROM people;
 
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 12 YEAR) FROM people;
 
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;
 
SELECT name, birthdate, birthdate + INTERVAL 21 FROM people;
 
SELECT name, birthdate, YEAR(birthdate + INTERVAL 21 YEAR) AS will_be_21 FROM people;