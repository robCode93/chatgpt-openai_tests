USE books_database;

-- insert new authors
INSERT INTO authors (first_name, last_name)
VALUES
("F. Scott", "Fitzgerald"),
("Harper", "Lee"),
("Herman", "Melville"),
("Jane", "Austen"),
("J.D.", "Salinger"),
("Anne", "Frank"),
("Douglas", "Adams"),
("Virginia", "Woolf"),
("George", "Orwell"),
("J.R.R.", "Tolkien");

-- insert new publishers
INSERT INTO publishers (name)
VALUES
("Charles Scribner's Sons"),
("J. B. Lippincott & Co."),
("Richard Bentley"),
("T. Egerton, Whitehall"),
("Little, Brown and Company"),
("Pieter & Friedrich Martz"),
("Pan Books"),
("The Hogarth Press"),
("Secker & Warburg"),
("George Allen & Unwin");

-- insert new books
INSERT INTO books (title, author_id, publisher_id, publication_date, genre, description)
VALUES
("The Great Gatsby", (SELECT id FROM authors WHERE last_name = "Fitzgerald"), (SELECT id FROM publishers WHERE name = "Charles Scribner's Sons"), "1925-04-10", "Novel", "A novel about decadence and excess"),
("To Kill a Mockingbird", (SELECT id FROM authors WHERE last_name = "Lee"), (SELECT id FROM publishers WHERE name = "J. B. Lippincott & Co."), "1960-07-11", "Novel", "A novel about racial injustice"),
("Moby-Dick", (SELECT id FROM authors WHERE last_name = "Melville"), (SELECT id FROM publishers WHERE name = "Richard Bentley"), "1851-10-18", "Novel", "A novel about a sailor's quest for revenge"),
("Pride and Prejudice", (SELECT id FROM authors WHERE last_name = "Austen"), (SELECT id FROM publishers WHERE name = "T. Egerton, Whitehall"), "1813-01-28", "Novel", "A novel about manners and society"),
("The Catcher in the Rye", (SELECT id FROM authors WHERE last_name = "Salinger"), (SELECT id FROM publishers WHERE name = "Little, Brown and Company"), "1951-07-16", "Novel", "A novel about teenage rebellion"),
("The Diary of a Young Girl", (SELECT id FROM authors WHERE last_name = "Frank"), (SELECT id FROM publishers WHERE name = "Pieter & Friedrich Martz"), "1947-06-25", "Diary", "A diary about a young girl hiding from the Nazis"),
("The Hitchhiker's Guide to the Galaxy", (SELECT id FROM authors WHERE last_name = "Adams"), (SELECT id FROM publishers WHERE name = "Pan Books"), "1979-10-12", "Science Fiction", "A science fiction comedy about space travel")
