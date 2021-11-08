CREATE TABLE person(
id SERIAL PRIMARY KEY,
name VARCHAR(40),
age FLOAT,
height_cm FLOAT,
city VARCHAR (30),
favorite_color VARCHAR(30)
);

INSERT INTO person (name, age, height_cm, city, favorite_color)
VALUES('Vivian Morris', 19, 177, 'Hudson', 'yellow'),
('Celia Ray', 25, 182, 'Bronx', 'red'),
('Aunt Peg', 39, 172, 'Manhattan', 'orange'),
('Olive', 44, 165, 'Manhattan', 'green'),
('Edna Parker Watson', 54, 162, 'London', 'gold');

--by height from tallest to shortest
SELECT height_cm, COUNT(*)
FROM person
GROUP BY height_cm 
ORDER BY height_cm DESC;

--by height from shortest to tallest
SELECT height_cm, COUNT(*)
FROM person
GROUP BY height_cm 
ORDER BY height_cm;

--by age from oldest to youngest
SELECT age, COUNT(*)
FROM person
GROUP BY age
ORDER BY age DESC;

--age is greater than 20
SELECT * FROM person WHERE age > 20;

--age is 18
SELECT * FROM person WHERE age = 18;

--age is less than 20 and older than 30
SELECT * FROM person WHERE age NOT BETWEEN 20 AND 30;

--age not 27
SELECT * FROM person WHERE age != 27;

--favorite color is not red
SELECT * FROM person WHERE favorite_color != 'red';

--favorite color is not red or blue
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';

--favorite color is orange or green
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';

--favorite color is orange, green, or blue
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

--favorite color is yellow or purple
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');