-- various simple SELECT statements

SELECT * FROM cats; 

SELECT cat_name FROM cats; 

SELECT age FROM cats; 

SELECT cat_id FROM cats; 

SELECT cat_name, age FROM cats; 

SELECT cat_id, cat_name, age FROM cats; 

SELECT age, breed, cat_name, cat_id FROM cats; 

SELECT cat_id, cat_name, age, breed FROM cats; 

-- using WHERE to specify entries (case insensitive for strings/text)

SELECT * FROM cats WHERE age = 4; 

SELECT * FROM cats WHERE cat_name = 'Egg'; 

SELECT * FROM cats WHERE cat_name = 'egG'; 

SELECT cat_name, age FROM cats WHERE breed='Tabby'; 

SELECT cat_id, age FROM cats WHERE cat_id = age; 

SELECT * FROM cats WHERE cat_id = age; 

-- using aliases to represent columns

SELECT cat_id AS id, cat_name FROM cats;
 
SELECT cat_name AS 'cat name', breed AS 'kitty breed' FROM cats;

-- update some entries

UPDATE cats SET breed = 'Shorthair' WHERE breed = 'Tabby'; 

UPDATE cats SET age = 14 WHERE cat_name = 'Misty'; 

-- delete some entries

DELETE FROM cats WHERE name = 'Egg';

DELETE FROM cats WHERE age = 4;

-- delete all entries from table

DELETE FROM cats;
