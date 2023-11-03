
-- Task 2:Write a SQL query to retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.

SELECT p.name AS product_name, oi.quantity, (oi.quantity * oi.unit_price) AS total_amount
FROM Order_Items oi
INNER JOIN Products p ON oi.product_id = p.product_id
ORDER BY oi.order_id ASC;