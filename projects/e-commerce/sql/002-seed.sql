BEGIN;

-- insert into categories
-- Note: we will be manually providing uuid values for the ease of query
INSERT INTO
    e_categories (id, name, description)
VALUES
    (
        '10000000-0000-4000-8000-000000000001',
        'Electronics',
        'Devices, gadgets, and accessories'
    ),
    (
        '10000000-0000-4000-8000-000000000002',
        'Books',
        'Fiction, non-fiction, and educational materials'
    ),
    (
        '10000000-0000-4000-8000-000000000003',
        'Clothing',
        'Men’s and women’s apparel'
    ),
    (
        '10000000-0000-4000-8000-000000000004',
        'Home & Kitchen',
        'Appliances, decor, and essentials'
    );

-- insert into products
INSERT INTO
    e_products (id, name, description, category_id, price, stock)
VALUES
    -- Electronics
    (
        '20000000-0000-4000-8000-000000000001',
        'Wireless Mouse',
        'Bluetooth mouse with ergonomic design',
        '10000000-0000-4000-8000-000000000001',
        19.99,
        100
    ),
    (
        '20000000-0000-4000-8000-000000000002',
        'Smartphone',
        '5G-enabled smartphone with AMOLED display',
        '10000000-0000-4000-8000-000000000001',
        499.99,
        50
    ),
    -- Books
    (
        '20000000-0000-4000-8000-000000000003',
        'Atomic Habits',
        'Self-help book by James Clear',
        '10000000-0000-4000-8000-000000000002',
        11.99,
        200
    ),
    (
        '20000000-0000-4000-8000-000000000004',
        'Clean Code',
        'Book on software craftsmanship by Robert C. Martin',
        '10000000-0000-4000-8000-000000000002',
        29.99,
        150
    ),
    -- Clothing
    (
        '20000000-0000-4000-8000-000000000005',
        'Cotton T-Shirt',
        'Unisex plain cotton T-shirt',
        '10000000-0000-4000-8000-000000000003',
        9.99,
        300
    ),
    (
        '20000000-0000-4000-8000-000000000006',
        'Jeans',
        'Slim fit blue denim jeans',
        '10000000-0000-4000-8000-000000000003',
        39.99,
        120
    ),
    -- Home & Kitchen
    (
        '20000000-0000-4000-8000-000000000007',
        'Air Fryer',
        'Oil-less digital air fryer',
        '10000000-0000-4000-8000-000000000004',
        89.99,
        75
    ),
    (
        '20000000-0000-4000-8000-000000000008',
        'Blender',
        'Multi-speed kitchen blender',
        '10000000-0000-4000-8000-000000000004',
        49.99,
        60
    );

-- add customers
INSERT INTO
    e_customers (id, email, name, address)
VALUES
    (
        '30000000-0000-4000-8000-000000000001',
        'alice@example.com',
        'Alice Johnson',
        '123 Maple Street, NY'
    ),
    (
        '30000000-0000-4000-8000-000000000002',
        'bob@example.com',
        'Bob Smith',
        '456 Oak Avenue, CA'
    ),
    (
        '30000000-0000-4000-8000-000000000003',
        'charlie@example.com',
        'Charlie Rose',
        '789 Pine Road, TX'
    ),
    (
        '30000000-0000-4000-8000-000000000004',
        'diana@example.com',
        'Diana Prince',
        '321 Elm Street, FL'
    );

-- orders
INSERT INTO
    e_orders (id, customer_id, order_date, status)
VALUES
    (
        '40000000-0000-4000-8000-000000000001',
        '30000000-0000-4000-8000-000000000001',
        NOW() - INTERVAL '7 days',
        'delivered'
    ),
    (
        '40000000-0000-4000-8000-000000000002',
        '30000000-0000-4000-8000-000000000002',
        NOW() - INTERVAL '3 days',
        'shipped'
    ),
    (
        '40000000-0000-4000-8000-000000000003',
        '30000000-0000-4000-8000-000000000003',
        NOW() - INTERVAL '1 day',
        'processing'
    ),
    (
        '40000000-0000-4000-8000-000000000004',
        '30000000-0000-4000-8000-000000000004',
        NOW(),
        'pending'
    );

-- order items
INSERT INTO
    e_order_items (id, order_id, product_id, quantity, purchase_price)
VALUES
    -- Order 1 (Alice) - Wireless Mouse, Clean Code
    (
        '50000000-0000-4000-8000-000000000001',
        '40000000-0000-4000-8000-000000000001',
        '20000000-0000-4000-8000-000000000001',
        2,
        19.99
    ),
    (
        '50000000-0000-4000-8000-000000000002',
        '40000000-0000-4000-8000-000000000001',
        '20000000-0000-4000-8000-000000000004',
        1,
        29.99
    ),
    -- Order 2 (Bob) - Cotton T-Shirt
    (
        '50000000-0000-4000-8000-000000000003',
        '40000000-0000-4000-8000-000000000002',
        '20000000-0000-4000-8000-000000000005',
        3,
        9.99
    ),
    -- Order 3 (Charlie) - Air Fryer
    (
        '50000000-0000-4000-8000-000000000004',
        '40000000-0000-4000-8000-000000000003',
        '20000000-0000-4000-8000-000000000007',
        1,
        89.99
    ),
    -- Order 4 (Diana) - Atomic Habits
    (
        '50000000-0000-4000-8000-000000000005',
        '40000000-0000-4000-8000-000000000004',
        '20000000-0000-4000-8000-000000000003',
        2,
        11.99
    );

--  We won't seed payments now. there will be a task to process payments
COMMIT;
