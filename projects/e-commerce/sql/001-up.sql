BEGIN;

-- crate table categories
CREATE TABLE IF NOT EXISTS e_categories (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    name VARCHAR(64) UNIQUE,
    description VARCHAR(512) NULL
);

-- create table products
CREATE TABLE IF NOT EXISTS e_products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    name VARCHAR(128) UNIQUE,
    description VARCHAR(512) NULL,
    category_id UUID REFERENCES e_categories (id),
    price NUMERIC(10, 2),
    stock INTEGER CHECK (stock >= 0)
);

CREATE TABLE IF NOT EXISTS e_customers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    email VARCHAR(64) UNIQUE,
    name VARCHAR(64),
    address VARCHAR(64),
    created_at TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE IF NOT EXISTS e_orders (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    customer_id UUID REFERENCES e_customers (id),
    order_date TIMESTAMP DEFAULT current_timestamp,
    status VARCHAR(32) DEFAULT 'pending'
);

CREATE TABLE IF NOT EXISTS e_order_items (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    order_id UUID REFERENCES e_orders (id),
    product_id UUID REFERENCES e_products (id),
    quantity INTEGER CHECK (quantity > 0),
    purchase_price NUMERIC(10, 2)
);

CREATE TABLE IF NOT EXISTS e_payments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    order_id UUID REFERENCES e_orders (id) UNIQUE,
    payment_date TIMESTAMP DEFAULT current_timestamp,
    amount NUMERIC(10, 2),
    status VARCHAR(32) DEFAULT 'pending'
);

COMMIT;
