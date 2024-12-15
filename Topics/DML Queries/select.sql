USE sales;
SELECT * FROM users;

SELECT * FROM users WHERE age != 26;
SELECT * FROM users WHERE age = 25;
SELECT * FROM users WHERE age > 25;
SELECT * FROM users WHERE age < 25;
SELECT * FROM users WHERE age >= 25;
SELECT * FROM users WHERE age IS NULL;

SELECT * FROM users where name LIKE 'A%';
SELECT * FROM users where lastName LIKE '%ne';
SELECT * FROM users where lastName LIKE '%s%';


SELECT * FROM users WHERE NOT address = 'No address';

