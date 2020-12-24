-- experimenting with a few aggregate functions using data/book_data.sql

-- COUNT()

SELECT COUNT(*) FROM books;
 
SELECT COUNT(author_fname) FROM books;
 
SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

-- GROUP BY

SELECT title, author_lname FROM books
GROUP BY author_lname;
 
SELECT author_lname, COUNT(*) 
FROM books GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*) 
FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books 
GROUP BY released_year;

-- MIN() and MAX()

SELECT MIN(released_year) FROM books;

SELECT MIN(pages) FROM books;

SELECT MAX(pages), title FROM books;

-- getting MIN and MAX when aggregate function is not ideal

SELECT title, pages FROM books 
WHERE pages = (SELECT Max(pages) FROM books); 

SELECT title, pages FROM books 
ORDER BY pages ASC LIMIT 1;

SELECT * FROM books 
ORDER BY pages DESC LIMIT 1;

-- using GROUP BY to enhance MIN and MAX

SELECT
  author_fname,
  author_lname,
  Max(pages)
FROM books
GROUP BY author_lname,
         author_fname;
 
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;

-- SUM()

SELECT SUM(pages) FROM books;

SELECT author_fname,
       author_lname,
       Sum(pages)
FROM books
GROUP BY
    author_lname,
    author_fname;

-- AVG()

SELECT AVG(released_year) FROM books;

SELECT AVG(stock_quantity) FROM books 
GROUP BY released_year;

SELECT author_fname, author_lname, AVG(pages) FROM books
GROUP BY author_lname, author_fname;