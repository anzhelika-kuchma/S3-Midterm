-- Detailed Order Report: report that includes customer information, order details and shipping information

SELECT 
    Orders.order_ID,
    CONCAT(Customers.first_name, ' ', Customers.last_name) AS customer_name,
    Customers.email,
    Customers.phone,
    Orders.date_and_time AS order_date,
    Order_Items.product_ID,
    Products.name AS product_name,
    Order_Items.quantity AS quantity_ordered,
    Order_Items.price AS item_price,
    Shipping_Info.shipping_method,
    Shipping_Info.shipping_cost,
    Shipping_Info.tracking_num,
    Shipping_Info.ETD
FROM Orders
JOIN Customers ON Orders.customer_ID = Customers.customer_ID
JOIN Shipping_Info ON Orders.order_ID = Shipping_Info.order_ID
JOIN Order_Items ON Orders.order_ID = Order_Items.order_ID
JOIN Products ON Order_Items.product_ID = Products.product_ID;