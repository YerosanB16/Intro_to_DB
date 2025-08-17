CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Books(
  book_id primary key,
  title varchar (130),
  author_id foreign key,
  price DOUBLE,
  publication_date DATE,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
CREATE TABLE Authors(
  author_id primary key,
  author_name varchar (215)
);
CREATE TABLE Customers(
  customer_id Primary Key,
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT
);
CREATE TABLE Orders(
  order_id Primary Key,
  customer_id Foreign Key,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customers
);
CREATE TABLE Order_Details(
  orderdetailid Primary Key,
  order_id Foreign Key,
  book_id Foreign Key,
  quantity DOUBLE,
  FOREIGN KEY (order_id) REFERENCES Orders,
  FOREIGN KEY (book_id) REFERENCES Books
)