-- Customer Report: Provide information about customers, such as their names, 
-- contact details, and order history.

SELECT 
    Customers.customer_ID,
    CONCAT(Customers.first_name, ' ', Customers.last_name) AS customer_name,
    Customers.email,
    Customers.phone,
    COUNT(Orders.order_ID) AS total_orders
FROM Customers
LEFT JOIN Orders ON Customers.customer_ID = Orders.customer_ID
GROUP BY Customers.customer_ID;