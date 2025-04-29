-- select join and where clause
SELECT
    -- sometimes, we need to alias columns when we join multiple tables.
    -- in this case, both tables `books` and `authors` have column `id` so we
    -- can use alias to avoid confusion
    b.id AS book_id, -- column alias
    b.title,
    b.total_pages,
    a.id AS author_id,
    CONCAT(a.first_name, ' ', a.last_name) AS author
FROM
    books b
    JOIN authors a ON b.author_id = a.id
WHERE
    a.first_name = 'Alex'
;
