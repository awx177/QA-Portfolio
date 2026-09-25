
-- =========================================
-- DATABASE SCHEMA
-- =========================================

-- 1. CREATE TABLE: users
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255),
    status VARCHAR(50),
    created_at TIMESTAMP
);

-- 2. CREATE TABLE: products
CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    price NUMERIC(10, 2),
    category VARCHAR(100),
    stock INTEGER
);

-- 3. CREATE TABLE: orders
CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    status VARCHAR(50),
    total NUMERIC(10, 2),
    created_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- 4. CREATE TABLE: order_items
CREATE TABLE order_items (
    id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    price NUMERIC(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);


-- =========================================
-- TEST DATA
-- =========================================

-- 5. INSERT USERS
INSERT INTO users (id, name, email, status, created_at)
VALUES
    (1, 'John Smith', 'john@example.com', 'active', '2026-09-01 10:00:00'),
    (2, 'Anna Johnson', 'anna@example.com', 'active', '2026-09-02 11:30:00'),
    (3, 'Peter Brown', 'peter@example.com', 'inactive', '2026-09-03 09:15:00'),
    (4, 'Maria Wilson', 'maria@example.com', 'active', '2026-09-04 14:20:00'),
    (5, 'David Miller', 'david@example.com', 'active', '2026-09-05 16:45:00'),
    (6, 'Emma Davis', 'emma@example.com', 'inactive', '2026-09-06 12:10:00'),
    (7, 'James Taylor', 'james@example.com', 'active', '2026-09-07 08:50:00'),
    (8, 'Olivia Anderson', 'olivia@example.com', 'active', '2026-09-08 13:25:00'),
    (9, 'Robert Thomas', 'robert@example.com', 'inactive', '2026-09-09 17:00:00'),
    (10, 'Sophia Moore', NULL, 'active', '2026-09-10 10:40:00');


-- 6. INSERT PRODUCTS
INSERT INTO products (id, name, price, category, stock)
VALUES
    (1, 'Coffee Beans', 15.99, 'Coffee', 50),
    (2, 'Espresso Machine', 199.99, 'Coffee', 10),
    (3, 'Coffee Grinder', 79.99, 'Coffee', 15),
    (4, 'Green Tea', 8.99, 'Tea', 100),
    (5, 'Black Tea', 7.99, 'Tea', 80),
    (6, 'Tea Kettle', 49.99, 'Tea', 20),
    (7, 'Chocolate Cake', 25.50, 'Dessert', 5),
    (8, 'Cheesecake', 30.00, 'Dessert', 0),
    (9, 'Blueberry Muffin', 6.50, 'Dessert', 25),
    (10, 'Croissant', 4.50, 'Bakery', 40),
    (11, 'Baguette', 3.99, 'Bakery', 35),
    (12, 'Cinnamon Roll', 5.50, 'Bakery', 0),
    (13, 'Latte', 4.99, 'Coffee', 60),
    (14, 'Cappuccino', 5.49, 'Coffee', 45),
    (15, 'Herbal Tea', 9.50, 'Tea', 30);


-- 7. INSERT ORDERS
INSERT INTO orders (id, user_id, status, total, created_at)
VALUES
    (1, 1, 'completed', 215.98, '2026-09-11 10:00:00'),
    (2, 2, 'completed', 35.49, '2026-09-11 11:30:00'),
    (3, 3, 'cancelled', 79.99, '2026-09-12 09:20:00'),
    (4, 4, 'pending', 55.50, '2026-09-12 14:10:00'),
    (5, 5, 'completed', 30.00, '2026-09-13 16:00:00'),
    (6, 1, 'completed', 15.99, '2026-09-14 10:45:00'),
    (7, 7, 'pending', 199.99, '2026-09-14 13:30:00'),
    (8, 8, 'completed', 12.99, '2026-09-15 15:20:00'),
    (9, 9, 'cancelled', 25.50, '2026-09-16 12:00:00'),
    (10, 10, 'completed', 49.99, '2026-09-16 17:15:00');


-- 8. INSERT ORDER ITEMS
INSERT INTO order_items (id, order_id, product_id, quantity, price)
VALUES
    (1, 1, 2, 1, 199.99),
    (2, 1, 1, 1, 15.99),

    (3, 2, 13, 1, 4.99),
    (4, 2, 14, 1, 5.49),
    (5, 2, 4, 1, 8.99),

    (6, 3, 3, 1, 79.99),

    (7, 4, 7, 1, 25.50),
    (8, 4, 9, 1, 6.50),
    (9, 4, 10, 2, 4.50),

    (10, 5, 8, 1, 30.00),

    (11, 6, 1, 1, 15.99),

    (12, 7, 2, 1, 199.99),

    (13, 8, 4, 1, 8.99),
    (14, 8, 5, 1, 7.99),

    (15, 9, 7, 1, 25.50),

    (16, 10, 6, 1, 49.99);


-- =========================================
-- BASIC SELECT
-- =========================================

-- 9. Select all users
SELECT *
FROM users;

-- 10. Select all products
SELECT *
FROM products;

-- 11. Select all orders
SELECT *
FROM orders;


-- =========================================
-- WHERE
-- =========================================

-- 12. Find active users
SELECT *
FROM users
WHERE status = 'active';

-- 13. Find products with price greater than 100
SELECT *
FROM products
WHERE price > 100;

-- 14. Find products with zero stock
SELECT *
FROM products
WHERE stock = 0;

-- 15. Find completed orders
SELECT *
FROM orders
WHERE status = 'completed';


-- =========================================
-- ORDER BY
-- =========================================

-- 16. Products from the most expensive
SELECT *
FROM products
ORDER BY price DESC;

-- 17. Products from the cheapest
SELECT *
FROM products
ORDER BY price ASC;


-- =========================================
-- LIKE / IN / BETWEEN
-- =========================================

-- 18. Search users by name
SELECT *
FROM users
WHERE name LIKE '%John%';

-- 19. Find products from selected categories
SELECT *
FROM products
WHERE category IN ('Coffee', 'Tea');

-- 20. Find products within a price range
SELECT *
FROM products
WHERE price BETWEEN 50 AND 150;


-- =========================================
-- AGGREGATE FUNCTIONS
-- =========================================

-- 21. Count users
SELECT COUNT(*)
FROM users;

-- 22. Count products
SELECT COUNT(*)
FROM products;

-- 23. Average product price
SELECT AVG(price)
FROM products;

-- 24. Total order value
SELECT SUM(total)
FROM orders;


-- =========================================
-- GROUP BY
-- =========================================

-- 25. Number of products per category
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category;

-- 26. Number of orders per status
SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status;

-- 27. Average product price per category
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category;


-- =========================================
-- HAVING
-- =========================================

-- 28. Categories with more than 2 products
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category
HAVING COUNT(*) > 2;


-- =========================================
-- JOIN
-- =========================================

-- 29. Users and their orders
SELECT users.name, orders.id, orders.status, orders.total
FROM users
JOIN orders ON users.id = orders.user_id;

-- 30. Orders with users
SELECT orders.id, users.name, orders.total
FROM orders
JOIN users ON orders.user_id = users.id;

-- 31. Order items with products
SELECT order_items.order_id,
       products.name,
       order_items.quantity,
       order_items.price
FROM order_items
JOIN products
    ON order_items.product_id = products.id;


-- =========================================
-- NULL / DUPLICATE CHECKS
-- =========================================

-- 32. Find users without email
SELECT *
FROM users
WHERE email IS NULL;

-- 33. Find duplicate emails
SELECT email, COUNT(*) AS email_count
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

