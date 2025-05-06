-- list all order items
-- - show order, customer, and product detail too
-- - join customers table to show which customer is the order related to
-- - aggregate total amount as sum of order items of each order
-- - total items in an order
-- - do not forget to multiply price with quantity
SELECT
    i.id AS order_item_id,
    c.name AS customer_name,
    o.id AS order_id,
    o.order_date,
    o.status,
    p.name AS product_name,
    p.price AS produce_price,
    i.purchase_price,
    i.quantity,
    (i.purchase_price * i.quantity) AS total_amount
FROM
    e_order_items i
    JOIN e_products p ON i.product_id = p.id
    JOIN e_orders o ON i.order_id = o.id
    JOIN e_customers c ON o.customer_id = c.id
    --
;
