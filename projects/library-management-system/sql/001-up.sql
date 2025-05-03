BEGIN;

--  Create table lib_books
CREATE TABLE IF NOT EXISTS lib_books (
    isbn VARCHAR(13) PRIMARY KEY,
    title VARCHAR(128) NOT NULL,
    author VARCHAR(128) NOT NULL,
    genre VARCHAR(128) NOT NULL,
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
    book_id VARCHAR(13) REFERENCES lib_books (isbn),
    member_id INTEGER REFERENCES lib_members (id),
    issue_date DATE DEFAULT CURRENT_DATE,
    due_date DATE NOT NULL,
    return_date DATE NULL, -- we do not know it initially
    -- we cannot lend the same book twice at the same day
    CONSTRAINT uc_book_member_date UNIQUE (book_id, member_id, issue_date)
);

-- create table fines
CREATE TABLE lib_fines (
    id serial PRIMARY KEY,
    loan_id INTEGER REFERENCES lib_loans (id),
    amount INTEGER,
    is_paid BOOLEAN DEFAULT FALSE
);

COMMIT;
