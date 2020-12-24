
-- an employees table, makes use of NOT NULL to prevent employees from having no name
-- also makes use of primary key to prevent employees from having the same id
-- and makes use of default to fill in a value automatically if one is not provided

CREATE TABLE employees 
    (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        last_name VARCHAR(255) NOT NULL,
        first_name VARCHAR(255) NOT NULL,
        middle_name VARCHAR(255),
        age INTEGER NOT NULL,
        current_status VARCHAR(100) NOT NULL DEFAULT 'employed'
    );

-- multiple inserts

INSERT INTO employees(first_name, last_name, age) 
VALUES
    ('Dora', 'Smith', 58),
    ('Kelsey', 'Cassidy', 26),
    ('Nicolas', 'Soto', 27);

-- another table

CREATE TABLE cats 
  ( 
     cat_id INT NOT NULL AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 

-- more inserts

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

-- view all entries in table

SELECT * FROM employees; 

