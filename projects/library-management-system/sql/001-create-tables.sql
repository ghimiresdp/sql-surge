BEGIN;

--  Create table lib_books
CREATE TABLE IF NOT EXISTS lib_books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(128) UNIQUE NOT NULL,
    author VARCHAR(128) NOT NULL,
    genre VARCHAR(128) NOT NULL,
    isbn VARCHAR(13) NOT NULL,
    total_copies INTEGER DEFAULT 0,
    available_copies INTEGER DEFAULT 0
);

-- create table members
CREATE TABLE IF NOT EXISTS lib_members (
    id SERIAL PRIMARY KEY,
    email VARCHAR(128) UNIQUE NOT NULL,
    name VARCHAR(128) NOT NULL,
    phone VARCHAR(32),
    join_date DATE DEFAULT CURRENT_DATE
);

-- create table loan
CREATE TABLE lib_loans (
    id SERIAL PRIMARY KEY,
    book_id INTEGER REFERENCES lib_books (id),
    member_id INTEGER REFERENCES lib_members (id),
    issue_date DATE DEFAULT CURRENT_DATE,
    due_date DATE NOT NULL,
    return_date DATE NULL -- we do not know it initially
);

-- create table fines
CREATE TABLE lib_fines (
    id serial PRIMARY KEY,
    loan_id INTEGER REFERENCES lib_loans (id),
    amount INTEGER,
    is_paid BOOLEAN DEFAULT FALSE
);

COMMIT;
