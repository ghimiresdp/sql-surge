/*
 If all queries inside the transaction passes, then it commits
 changes to the database, otherwise changes are reverted.
 
 ! NOTE: This code snippet requires `ex02` tables so please make sure the following tables exist.
 * authors
 * books
 */
-- begin transaction
BEGIN;
-- operations
INSERT INTO authors (first_name, last_name)
VALUES ('Krishna', 'Dharabasi');
INSERT INTO books (title, author_id, total_pages)
VALUES ('Radha', 5, 800);
--  Commit transaction
COMMIT;
