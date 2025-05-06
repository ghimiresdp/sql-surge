-- fix payment statuses
-- it is found that the payment record in the previous query caused all
-- records to have `pending` status. Please change the status to paid
-- for orders that are delivered.
UPDATE e_payments
SET
    status = 'paid'
WHERE
    status = 'pending' -- this condition guards the query to affect row only once even if query is run multiple times
    AND order_id IN (
        SELECT
            o.id
        FROM
            e_orders o
        WHERE
            o.status = 'delivered'
    );
