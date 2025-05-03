-- update available copies
-- It is found that books that were previously lent was not updated in the
-- database, due to which all books are shown available.
-- write a sql query that calculates and updates available copies to the
-- `lib_books` table
UPDATE lib_books
SET
    available_copies = total_copies - (
        SELECT
            count(*)
        FROM
            lib_loans l
        WHERE
            l.book_id = isbn
            AND l.return_date IS NULL -- count if not returned
    );

/*
Explanation:
it updates each row with available copies that should be total - lent
to find the lent copies, we use sub query that counts all lent, but not
returned copies for each book.
*/
