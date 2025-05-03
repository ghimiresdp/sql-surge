-- select all members along with number of lent books
-- and order the result by book lend count in descending order
SELECT
    m.id,
    m.email,
    m.name
FROM
    lib_members m
    LEFT JOIN lib_loans l ON l.member_id = m.id
WHERE
    l.member_id IS NULL;

-- similar solution with subquery
SELECT
    m.id,
    m.email,
    m.name
FROM
    lib_members m
WHERE
    m.id NOT IN (
        SELECT
            l.member_id
        FROM
            lib_loans l
    );
