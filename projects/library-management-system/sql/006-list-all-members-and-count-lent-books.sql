-- select all members along with number of lent books
-- and order the result by book lend count in descending order
SELECT
    m.id,
    m.email,
    count(l.book_id) lends
FROM
    lib_members m
    LEFT JOIN lib_loans l ON l.member_id = m.id
GROUP BY
    m.id
ORDER BY
    lends DESC;
