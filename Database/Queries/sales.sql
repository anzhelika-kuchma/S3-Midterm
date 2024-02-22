-- Sales Report: Show total revenue, total orders, total items sold, and total discount 
-- applied over a certain period.

SELECT 
    SUM(total_revenue) AS total_revenue,
    COUNT(order_ID) AS total_orders,
    SUM(total_items_sold) AS total_items_sold,
    SUM(total_discount_applied) AS total_discount_applied
FROM Orders
JOIN Sales_Analytics ON Orders.order_ID = Sales_Analytics.analytics_ID
WHERE date_and_time BETWEEN '02-01-2024' AND '02-22-2024';
