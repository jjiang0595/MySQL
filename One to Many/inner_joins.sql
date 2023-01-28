-- EXPLICIT INNER JOINS
SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders ON customers.id = orders.customer_id;
    
SELECT * FROM orders
JOIN customers ON customers.id = orders.customer_id;