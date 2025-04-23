SELECT b.id as id,
    title,
    CONCAT(a.first_name, ' ', a.last_name) as author
FROM books b
    JOIN authors a ON b.author_id = a.id;
