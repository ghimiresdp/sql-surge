-- Generate report for the most recent order of Alice.
SELECT
    c.name AS customer_name, --Name of a customer
    c.address AS customer_address, -- address of a customer
    o.id AS order_id, -- order id
    o.order_date, -- order date
    o.status, -- order status
    sum(i.purchase_price * i.quantity) AS total_amount, -- total amount
    string_agg(p.name, ', ') AS products -- items separated by comma
FROM
    e_orders o
    JOIN e_order_items i ON i.order_id = o.id
    JOIN e_customers c ON o.customer_id = c.id
    JOIN e_products p ON i.product_id = p.id
WHERE
    c.name ILIKE '%alice%'
GROUP BY
    o.id,
    c.name,
    c.address;

/*
-- example output

| customer_name | customer_address     | ... | status    | total_amount | products          |
| ------------- | -------------------- | ... | --------- | ------------ | ----------------- |
| Alice Johnson | 123 Maple Street, NY | ... | delivered | 69.97        | Wireless Mouse,.. |

*/
