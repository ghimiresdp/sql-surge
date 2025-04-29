-- select all users and concatenate first and last names as name
-- example:  | 1  | Darth | Vader | Darth Vader |
SELECT
    id,
    first_name,
    last_name,
    CONCAT(first_name, ' ', last_name) AS full_name -- concat 2 columns
FROM
    users;

-- concat 2 columns and  use initials
-- example:  | 1  | Darth | Vader | D. Vader |
SELECT
    id,
    first_name,
    last_name,
    CONCAT( -- concatenate all params separated by comma
        UPPER(SUBSTRING(first_name, 1, 1)), -- this will give first character only
        '. ',
        last_name
    ) AS "Display Name"
FROM
    users;
