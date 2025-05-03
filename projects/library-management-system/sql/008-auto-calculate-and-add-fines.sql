-- add fines with loans that have due dates greater than 2025-04-15
-- and less than 2025-05-01 (assuming today is 2025-05-01).
-- the fine must be $2 each day.
-- use single query that selects loans with outstanding dues and insert rows to
-- the fines table.
INSERT INTO
    lib_fines (loan_id, amount) (
        SELECT
            id,
            (2 * ('2025-05-01' - l.due_date)) -- $2 per day fine
        FROM
            lib_loans l
        WHERE
            due_date > '2025-04-15'
            AND due_date < '2025-05-01'
    );
