CREATE TABLE persons (
    person_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE passports (
    passport_number TEXT PRIMARY KEY,
    person_id INTEGER UNIQUE NOT NULL,
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

INSERT INTO passports (person_id, passport_number) VALUES
(1, 'A123456'),
(2, 'B654321'),
(3, 'C789012'),
(4, 'D345678'),
(5, 'E901234'),
(6, 'F567890'),
(7, 'G432109'),
(8, 'H876543'),
(9, 'I210987'),
(10, 'J678901');

-- show all the people with passport
SELECT pe.*, p.passport_number FROM passports p
INNER JOIN persons pe on pe.person_id = p.person_id;

-- show all people with/without passport


