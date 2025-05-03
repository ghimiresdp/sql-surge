BEGIN;

-- add books
INSERT INTO
    lib_books (isbn, title, author, genre, total_copies, available_copies)
VALUES
    ('1234567890000', 'The Fault in our stars', 'John Green', 'drama', 10, 10),
    ('1234567890001', 'The Alchemist', 'Paulo Coelho', 'drama', 10, 10),
    ('1234567890002', 'Silent Patient', 'Alex Michaelides', 'thriller', 10, 10),
    ('1234567890003', 'Fury', 'Alex Michaelides', 'thriller', 10, 10),
    ('1234567890004', 'Turtles all the way down', 'John Green', 'drama', 10, 10),
    ('1234567890005', 'The Maidens', 'Alex Michaelides', 'thriller', 10, 10),
    ('1234567890006', 'Archer''s voice', 'Mia Sheridan', 'drama ', 10, 10);

-- add members
INSERT INTO
    lib_members (email, name, phone, join_date)
VALUES
    ('user1@email.com', 'User 1', '1234567891', '2025-01-01'),
    ('user2@email.com', 'User 2', '1234567892', '2025-01-02'),
    ('user3@email.com', 'User 3', '1234567893', '2025-01-03'),
    ('user4@email.com', 'User 4', '1234567894', '2025-02-01'),
    ('user5@email.com', 'User 5', '1234567895', '2025-02-02');

-- add loans
INSERT INTO
    lib_loans (book_id, member_id, issue_date, due_date)
VALUES
    -- users 1,2 fault in our stars
    ('1234567890000', 1, '2025-04-01', '2025-04-11'),
    ('1234567890000', 2, '2025-04-02', '2025-04-12'),
    -- users 1,2,3 the alchemist
    ('1234567890001', 1, '2025-04-01', '2025-04-11'),
    ('1234567890001', 2, '2025-04-03', '2025-04-12'),
    ('1234567890001', 3, '2025-04-04', '2025-04-12'),
    -- user 1,2,3,4 Silent patient
    ('1234567890002', 1, '2025-03-01', '2025-04-13'),
    ('1234567890002', 2, '2025-03-02', '2025-04-13'),
    ('1234567890002', 3, '2025-04-13', '2025-04-13'),
    ('1234567890002', 4, '2025-04-11', '2025-04-13'),
    -- user 2,4 Fury
    ('1234567890003', 2, '2025-03-01', '2025-04-13'),
    ('1234567890003', 4, '2025-05-01', '2025-04-13'),
    -- user 2 Turtles all the way down
    ('1234567890004', 2, '2025-02-20', '2025-04-13');

COMMIT;
