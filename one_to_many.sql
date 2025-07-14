CREATE TABLE authors (
    author_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

INSERT INTO authors (author_id, name) VALUES
(1, 'George Orwell'),
(2, 'J.K. Rowling'),
(3, 'Stephen King'),
(4, 'Agatha Christie'),
(5, 'Mark Twain'),
(6, 'Jane Austen'),
(7, 'Ernest Hemingway'),
(8, 'Isaac Asimov'),
(9, 'Leo Tolstoy'),
(10, 'Haruki Murakami'),
(11, 'Jules Verne');

INSERT INTO books (book_id, title, author_id) VALUES
(1, '1984', 1),
(2, 'Animal Farm', 1),
(3, 'Harry Potter and the Sorcerers Stone', 2),
(4, 'Harry Potter and the Chamber of Secrets', 2),
(5, 'The Shining', 3),
(6, 'It', 3),
(7, 'Murder on the Orient Express', 4),
(8, 'Adventures of Huckleberry Finn', 5),
(9, 'Pride and Prejudice', 6),
(10, 'The Old Man and the Sea', 7),
(11, 'Foundation', 8),
(12, 'War and Peace', 9),
(13, 'Kafka on the Shore', 10);

-- all books and the author
-- Only authors that DO NOT have a book in the list


