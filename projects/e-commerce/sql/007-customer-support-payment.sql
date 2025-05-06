-- customer-support
-- Bob has just reported that he has already paid the amount for the order
-- he has put, but it is found that the record is not yet updated in the
-- portal. He wants to update the payment status to be `paid`. His order
-- id is: `40000000-0000-4000-8000-000000000002`
UPDATE e_payments
SET
    status = 'paid'
WHERE
    status = 'pending' -- this condition guards the query to affect row only once even if query is run multiple times
    AND order_id = '40000000-0000-4000-8000-000000000002';
