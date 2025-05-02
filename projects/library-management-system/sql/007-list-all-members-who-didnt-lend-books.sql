-- select all members along with number of lent books
-- and order the result by book lend count in descending order
SELECT
    m.id,
    m.email
    -- l.book_id,
    -- l.member_id
    -- count(l.book_id) lends
FROM
    lib_members m
    LEFT JOIN lib_loans l ON l.member_id = m.id
WHERE
    l.member_id IS NULL;

-- same solution with subquery
SELECT
    m.id,
    m.email
FROM
    lib_members m
WHERE
    m.id NOT IN (
        SELECT
            l.member_id
        FROM
            lib_loans l
    );
