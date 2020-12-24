-- run sql code from a file
-- mysql> source <path/filename.sql>

-- create a database

CREATE DATABASE myDB;

-- create a table

CREATE TABLE my_table 
    (
        id INT AUTO_INCREMENT PRIMARY KEY, 
        person VARCHAR(255) NOT NULL DEFAULT "nameless", 
        age INT NOT NULL DEFAULT 0, 
        dob DATETIME DEFAULT NOW()
    );

-- show all databases

SHOW DATABASES;

-- show all tables

SHOW TABLES;

-- show table schema.

DESC my_table;

SHOW COLUMNS FROM my_table;

-- show working database

SELECT DATABASE();

-- select database to work with

USE myDB;

-- insert into a table

INSERT INTO my_table (person, age, dob) 
VALUES 
    ("Anakin Skywalker", "20", "1990-12-23 10:35:06"),
    ("Luke Skywalker", "1");

-- delete a table

DROP TABLE my_table;

-- delete a database

DROP DATABASE myDB;

