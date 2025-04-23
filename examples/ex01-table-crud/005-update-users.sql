-- Update first_name of user with id 1 with 'Jane'
UPDATE users
SET first_name='Jane'
WHERE id=1;


-- update multiple columns with where condition
UPDATE users
SET
 first_name='Jane',
 last_name='Dae'
WHERE id=1;
