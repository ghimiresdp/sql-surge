-- select join and where clause
SELECT b.id as id, b.title, b.total_pages, CONCAT(a.first_name, ' ', a.last_name) as author
FROM books b
JOIN authors a ON b.author_id=a.id
WHERE a.first_name='Alex'
;
