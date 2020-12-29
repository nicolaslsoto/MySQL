# JoinUS web app

Locally host (port 8080) a very small and simple web application that lets you add user emails to a database.

http://localhost:8080

## How-to

When page is visited, simply enter an email address in order to join.

Database required (Schema provided below).

`CREATE DATABASE join_us;`

`USE join_us;`

`CREATE TABLE users (id INT AUTO_INCREMENT PRIMARY KEY, email VARCHAR(255));`


