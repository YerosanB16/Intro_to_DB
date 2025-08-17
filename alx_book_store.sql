CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Books(
  book_id PRIMARY KEY,
  title VARCHAR (130),
  author_id FOREIGN KEY,
  price DOUBLE,
  publication_date DATE,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
CREATE TABLE Authors(
  author_id PRIMARY KEY,
  author_name varchar (215)
);
CREATE TABLE Customers(
  customer_id PRIMARY KEY,
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT
);
CREATE TABLE Orders(
  order_id PRIMARY KEY,
  customer_id Foreign Key,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customers
);
CREATE TABLE Order_Details(
  orderdetailid PRIMARY KEY,
  order_id FOREIGN KEY,
  book_id FOREIGN KEY,
  quantity DOUBLE,
  FOREIGN KEY (order_id) REFERENCES Orders,
  FOREIGN KEY (book_id) REFERENCES Books
)