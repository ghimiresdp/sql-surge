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
CREATE TABLE IF NOT EXISTS lib_members(
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL,
    phone VARCHAR(32),
    join_date DATE DEFAULT CURRENT_DATE
);
