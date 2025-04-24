-- Pagination with limit and offset
SELECT *
FROM jedi_students
LIMIT 5 OFFSET 2;
-- cursor pagination with id (good for large db)
SELECT *
FROM jedi_students
WHERE id > 3
LIMIT 3;
