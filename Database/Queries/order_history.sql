-- Order History Report: Display a list of all orders placed by customers, 
-- including details like customer name, order date, total amount, and shipping information.

SELECT 
    Orders.order_ID,
    CONCAT(Customers.first_name, ' ', Customers.last_name) AS customer_name,
    Orders.date_and_time,
    Orders.total,
    Shipping_Info.shipping_method,
    Shipping_Info.tracking_num,
    Shipping_Info.ETD
FROM Orders
JOIN Customers ON Orders.customer_ID = Customers.customer_ID
LEFT JOIN Shipping_Info ON Orders.order_ID = Shipping_Info.order_ID
ORDER BY Orders.date_and_time DESC;