-- statements on how to further refine selections using DISTINCT, ORDER BY, GROUP BY, LIMIT, and LIKE using data/book_data.sql

-- using DISTINCT

SELECT DISTINCT author_lname FROM books;

SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
 
SELECT DISTINCT author_fname, author_lname FROM books;

-- sorting data with ORDER BY

SELECT title FROM books ORDER BY title;  

SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT released_year FROM books ORDER BY released_year DESC;
 
SELECT released_year FROM books ORDER BY released_year ASC;

SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;

-- ORDER BY can be used with numbers, where each number represents respective field.

SELECT title, author_fname, author_lname 
FROM books ORDER BY 2;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 3;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 1;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 1 DESC;
 
SELECT author_lname, title
FROM books ORDER BY 2;
 
-- using LIMIT to limit results

SELECT title FROM books LIMIT 10;
 
SELECT * FROM books LIMIT 1;

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 5;

-- we can offset our results using LIMIT <offset>, <amount>

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5;

-- we can ran our limit to the end by specifying an arbitrarily long number.

SELECT title FROM books LIMIT 5, 123219476457;

-- use LIKE to search for certain patterns

SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
 
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
 
SELECT title FROM books WHERE  title LIKE 'the';
 
SELECT title FROM books WHERE  title LIKE '%the';
 
SELECT title FROM books WHERE title LIKE '%the%';

-- using wildcards and escape characters

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
 
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
 
(235)234-0987 LIKE '(___)___-____'
 
SELECT title FROM books;
 
SELECT title FROM books WHERE title LIKE '%\%%'
 
SELECT title FROM books WHERE title LIKE '%\_%'