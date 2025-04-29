SELECT
    b.id AS id,
    title,
    CONCAT(a.first_name, ' ', a.last_name) AS author
FROM
    books b
    JOIN authors a ON b.author_id = a.id
;
