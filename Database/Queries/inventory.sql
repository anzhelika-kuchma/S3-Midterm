-- Inventory Report: Show available quantity of each product in stock, 
-- along with details like product name, description, and category.

SELECT 
    Products.product_ID,
    Products.name AS product_name,
    Products.description AS product_description,
    Products.avail_qty AS available_quantity,
    Products.price AS unit_price,
    Categories.name AS category
FROM Products
JOIN Categories ON Products.category_ID = Categories.category_ID;