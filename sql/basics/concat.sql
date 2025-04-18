-- select all users and concatenate first and last names as name
SELECT id, CONCAT(first_name, ' ', last_name) AS name
FROM users u;


-- select all users and concatenate first and last names as name
-- and filter those users whose name contains k irrespective of case.
SELECT id, CONCAT(first_name, ' ', last_name) AS name
FROM users u
WHERE CONCAT(first_name, ' ', last_name) ILIKE '%k%'
;
