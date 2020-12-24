-- logical operators using data/book_data.sql

-- equals and not equal

SELECT title FROM books WHERE released_year = 2017;
 
SELECT title FROM books WHERE released_year != 2017;
 
SELECT title, author_lname FROM books;
 
SELECT title, author_lname FROM books WHERE author_lname = 'Harris';
 
SELECT title, author_lname FROM books WHERE author_lname != 'Harris';

-- LIKE and NOT LIKE

SELECT title FROM books WHERE title LIKE 'W';
 
SELECT title FROM books WHERE title LIKE 'W%';
 
SELECT title FROM books WHERE title LIKE '%W%';
 
SELECT title FROM books WHERE title LIKE 'W%';
 
SELECT title FROM books WHERE title NOT LIKE 'W%';

-- greater than

SELECT title, released_year FROM books 
WHERE released_year > 2000 ORDER BY released_year;
 
SELECT title, released_year FROM books 
WHERE released_year >= 2000 ORDER BY released_year;

-- less than 

SELECT title, released_year FROM books
WHERE released_year < 2000;
 
SELECT title, released_year FROM books
WHERE released_year <= 2000;

-- logical AND

SELECT  
    title, 
    author_lname, 
    released_year FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010;

SELECT -10 > -20 AND 0 <= 0;

-- logical OR

SELECT title, 
       author_lname, 
       released_year, 
       stock_quantity 
FROM   books 
WHERE  author_lname = 'Eggers' OR released_year > 2010 OR stock_quantity > 100;

-- BETWEEN

SELECT title, released_year FROM books 
WHERE released_year BETWEEN 2004 AND 2015;
 
SELECT title, released_year FROM books 
WHERE released_year NOT BETWEEN 2004 AND 2015;

SELECT name, birthdt FROM people 
WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';

-- IN and NOT IN

SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT title, released_year FROM books
WHERE released_year IN (2017, 1985);

SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);

SELECT title, released_year FROM books
WHERE released_year >= 2000 
AND released_year % 2 != 0 ORDER BY released_year;

-- case statements

SELECT title, released_year,
    CASE 
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS GENRE
FROM books;
 
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;
 
SELECT title,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;
 
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
        ELSE '****'
    END AS STOCK
FROM books;
 
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books; 

