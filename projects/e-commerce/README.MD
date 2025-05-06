# 🛒 E-Commerce Management System - SRS (SQL Project)

> *Note:*
> This project has a bit higher complexity than the previous project
> so please make you sure that you have completed the first project:
> `library management system`.


## 1. Introduction

- **Purpose**:
  To design and implement a relational database for an e-commerce
  system that manages products, customers, orders, and payments.

- **Scope**:
  The database will store essential data for handling product listings,
  customer profiles, order processing, inventory tracking, and basic
  reporting. This project focuses on SQL-level functionality only — no
  UI/backend integration.

- **Users**:
  - Store administrators
  - Customers (as data entries)

---

## 2. Functional Requirements

### 2.1 Product Management
- Add and update product details (name, price, stock, description).
- Categorize products.
- Track stock levels.

### 2.2 Customer Management
- Register new customers.
- Update customer information (email, address, phone).
- Track customer order history.

### 2.3 Order Management
- Create orders linked to customers.
- Each order can contain multiple products (order items).
- Update order status (pending, shipped, delivered, canceled).

### 2.4 Payment Management
- Record payments for orders.
- Track payment methods (e.g., credit card, PayPal).
- Handle payment status (paid, failed, pending).

### 2.5 Reporting
- Total sales per day/month.
- Most sold products.
- Revenue per product category.
- Top spending customers.

---

## 3. Non-Functional Requirements

- Use **`UUID`**  instead of **`serial`** as primary key for each tables.
- Use **normalized** design (at least up to 3NF).
- Use **foreign keys** to enforce relationships.
- Index frequently queried fields (e.g., product ID, order date).
- Use **constraints** (e.g., non-negative stock quantity, unique emails).

> NOTE:
> Please use `gen_random_uuid ()` function to automatically generate random
> UUIDs. to know more about it, check
> <https://www.postgresql.org/docs/16/functions-uuid.html>

---

## 4. Entity-Relationship (ER) Overview

Main Tables:
- **Products**
  (`id`, `name`, `description`, `price`, `category_id`, `stock`)

- **Categories**
  (`id`, `name`, `description`)

- **Customers**
  (`id`, `name`, `email`, `address`, `created_at`)

- **Orders**
  (`id`, `customer_id`, `order_date`, `status`)

- **OrderItems**
  (`id`, `order_id`, `product_id`, `quantity`, `purchase_price`)

- **Payments**
  (`id`, `order_id`, `payment_date`, `amount`, `status`)

---

## 5. Assumptions and Constraints

- Each order must have at least one item.
- Order totals are calculated as the sum of all item prices.
- Stock decreases only when an order is confirmed/paid.
- A customer can place multiple orders; orders can have multiple products.

---

# ✅ Deliverables

- SQL Scripts to:
  - Create tables and define relationships
  - Insert sample data (products, customers, orders)
  - Perform CRUD operations
  - Run reports using SQL queries (e.g., best-seller products)

---

# 🚀 Future Enhancements (Optional)

- Add a **review/rating system** for products.
- Add **discounts/coupons** logic.
- Introduce **inventory restocking** history.
- Add **shipping tracking** and address history per order.
