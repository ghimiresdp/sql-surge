-- select all users with last name skywalkers
SELECT *
FROM users u
WHERE last_name = 'Skywalker';
-- select all users and concatenate first and last names as name
SELECT id,
    CONCAT(first_name, ' ', last_name) AS name
FROM users u;
