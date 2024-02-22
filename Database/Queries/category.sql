-- Category Sales Report: Show sales performance for each product category, including 
-- total revenue generated and quantity sold.

SELECT 
    Categories.name AS category_name,
    SUM(Order_Items.quantity) AS total_quantity_sold,
    SUM(Order_Items.price) AS total_revenue
FROM Order_Items
JOIN Products ON Order_Items.product_ID = Products.product_ID
JOIN Categories ON Products.category_ID = Categories.category_ID
GROUP BY Categories.name;