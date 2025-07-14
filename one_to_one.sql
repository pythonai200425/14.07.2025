CREATE TABLE persons (
    person_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE passports (
    passport_id INTEGER PRIMARY KEY,
    person_id INTEGER UNIQUE,
    passport_number TEXT UNIQUE NOT NULL,
    FOREIGN KEY (person_id) REFERENCES persons(person_id)
);

INSERT INTO persons (person_id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'Diana'),
(5, 'Ethan'),
(6, 'Fiona'),
(7, 'George'),
(8, 'Hannah'),
(9, 'Isaac'),
(10, 'Julia');

INSERT INTO passports (passport_id, person_id, passport_number) VALUES
(1, 1, 'A123456'),
(2, 2, 'B654321'),
(3, 3, 'C789012'),
(4, 4, 'D345678'),
(5, 5, 'E901234'),
(6, 6, 'F567890'),
(7, 7, 'G432109'),
(8, 8, 'H876543'),
(9, 9, 'I210987'),
(10, 10, 'J678901');
