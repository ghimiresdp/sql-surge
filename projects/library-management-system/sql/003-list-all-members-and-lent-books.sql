-- select all members along with lent books
SELECT
    m.id,
    m.email,
    l.book_id,
    l.issue_date,
    l.return_date
FROM
    lib_members m
    JOIN lib_loans l ON l.member_id = m.id;
