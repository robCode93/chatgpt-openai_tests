CREATE DATABASE books_database;

USE books_database;

CREATE TABLE books (
  book_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(100) NOT NULL,
  publisher VARCHAR(100) NOT NULL,
  publication_date DATE NOT NULL,
  genre VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  PRIMARY KEY (book_id)
);

CREATE TABLE authors (
  author_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (author_id)
);

CREATE TABLE publishers (
  publisher_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (publisher_id)
);

CREATE TABLE book_authors (
  book_id INT NOT NULL,
  author_id INT NOT NULL,
  PRIMARY KEY (book_id, author_id),
  FOREIGN KEY (book_id) REFERENCES books(book_id),
  FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE book_publishers (
  book_id INT NOT NULL,
  publisher_id INT NOT NULL,
  PRIMARY KEY (book_id, publisher_id),
  FOREIGN KEY (book_id) REFERENCES books(book_id),
  FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id)
);
