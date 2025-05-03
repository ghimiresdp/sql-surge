-- select popular books by number of loans and sort them descending
-- according to the number of books lent.
SELECT
    b.isbn,
    b.title,
    b.author,
    b.genre,
    count(l.id) loans
FROM
    lib_books b
    LEFT JOIN lib_loans l ON l.book_id = b.isbn
GROUP BY
    b.isbn
ORDER BY
    loans DESC;
