-- Product Sales Report: List top-selling products based on the total 
-- quantity sold or revenue generated.

SELECT 
    Products.product_ID,
    Products.name AS product_name,
    Products.description AS product_description,
    SUM(Order_Items.quantity) AS total_quantity_sold,
    SUM(Order_Items.price) AS total_revenue
FROM Order_Items
JOIN Products ON Order_Items.product_ID = Products.product_ID
GROUP BY Products.product_ID
ORDER BY total_quantity_sold DESC;
