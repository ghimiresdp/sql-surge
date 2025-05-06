-- add payment records to all the orders
-- check re-running the same query if unique constraint fails for order_id (should fail next time)
INSERT INTO
    e_payments (order_id, amount)
SELECT
    o.id,
    sum(i.purchase_price * i.quantity)
FROM
    e_orders o
    JOIN e_order_items i ON i.order_id = o.id
GROUP BY
    o.id;
