-- | selecting all rows and columns |------------------------------------------
SELECT
    *
FROM
    users
;

-- | selecting specific columns |----------------------------------------------
SELECT
    id,
    first_name,
    last_name
FROM
    users
;

-- | Using Aliases |-----------------------------------------------------------
/*
Sometimes we can use aliases when we want to shorten names of table, column,
etc.
In some cases we need to alias columns when we have table joins. We will
discuss about this topic in topic: `relations`.
*/
SELECT
    *
FROM
    jedi_courses courses
;

-- | Using Aliases on Column |-------------------------------------------------
SELECT
    id,
    title,
    description AS detail
FROM
    jedi_courses
;
