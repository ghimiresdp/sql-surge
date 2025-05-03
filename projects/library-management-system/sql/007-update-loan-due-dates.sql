-- loans have incorrect due date, please update entries of due date.
-- The due date must be 15 days after the date of loan.
UPDATE lib_loans
SET
    due_date = issue_date + INTERVAL '15 days';
