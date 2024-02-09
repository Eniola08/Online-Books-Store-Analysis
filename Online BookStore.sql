
CREATE TABLE books (
book_id INT PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(100),
genre VARCHAR(50),
published_year INT,
price DECIMAL(8, 2)
);
INSERT INTO books (book_id, title, author, genre, published_year, price)
VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 15.99),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 12.49),
(3, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 10.00),
(4, '1984', 'George Orwell', 'Dystopian', 1949, 11.75),
(5, 'Brave New World', 'Aldous Huxley', 'Dystopian', 1932, 9.99),
(6, 'The Catcher in the Rye', 'J.D. Salinger', 'Coming of Age', 1951, 14.99),
(7, 'To the Lighthouse', 'Virginia Woolf', 'Modernist', 1927, 12.99),
(8, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Psychological Fiction', 1866, 13.25),
(9, 'The Odyssey', 'Homer', 'Epic Poetry', 1614, 9.00),
(10, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1954, 18.50),
(11, 'Moby-Dick', 'Herman Melville', 'Adventure', 1851, 14.50),
(12, 'Frankenstein', 'Mary Shelley', 'Gothic Fiction', 1818, 10.99),
(13, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 16.00),
(14, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Magical Realism', 1967,
12.99),
(15, 'Alice''s Adventures in Wonderland', 'Lewis Carroll', 'Fantasy', 1865, 8.75),
(16, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'Philosophical Fiction', 1880, 15.25),
(17, 'Gone with the Wind', 'Margaret Mitchell', 'Historical Fiction', 1936, 13.75),
(18, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Gothic Fiction', 1890, 11.99),
(19, 'Wuthering Heights', 'Emily Bronte', 'Gothic Fiction', 1847, 9.50),
(20, 'The Adventures of Tom Sawyer', 'Mark Twain', 'Adventure', 1876, 10.49),
(21, 'The Grapes of Wrath', 'John Steinbeck', 'Historical Fiction', 1939, 12.00),
(22, 'War and Peace', 'Leo Tolstoy', 'Historical Fiction', 1869, 16.99),
(23, 'Dracula', 'Bram Stoker', 'Gothic Fiction', 1897, 11.25),
(24, 'The Divine Comedy', 'Dante Alighieri', 'Epic Poetry', 1320, 9.99),
(25, 'The Chronicles of Narnia', 'C.S. Lewis', 'Fantasy', 1950, 14.25);
select * from books;

--Retrieve the titles and authors of the first 5 books from the database.
select top 5 author, title
from books

--Find the total number of books available in the 'Fiction' genre.

select count(book_id) as total_nos_fiction_books 
from books
where genre = 'Fiction';

--Calculate the average price of books in the database
select avg(price) as Average_price
from books

--Create a new column named 'discounted_price' using the AS statement, which reduces the price of each book by 10%.
select title, price,  price - (0.1* price) as discounted_price 
 from books;

 --List the titles and prices of books published after the year 2000, sorted in descending order of price
select title, price 
from books
where published_year > 2000;

--Retrieve the titles and authors of books where the author's name is either 'Jane Austen' or 'F. Scott Fitzgerald'.
select author, title 
from books
where author in ('Jane Austen', 'F. Scott Fitzgerald')

--Update the genre of books published before the year 1900 to 'Classic'
update books
set genre = 'Classic'
where published_year < 1900;

select * from books;

--Insert a new book into the database with the following details:
--Title: 'The Catcher in the Rye'
--Author: 'J.D. Salinger'
--Genre: 'Fiction'
--Published Year: 1951
--Price: 14.99

INSERT INTO books (book_id, title, author, genre, published_year, price)
VALUES (26,'The Cather in the Rye', 'J.D. Salinger', 'Fiction', 1951, 14.99);

--Rename the table 'books' to 'book_inventory'.books
sp_rename 'books', 'book_inventory';

select * from book_inventory;
