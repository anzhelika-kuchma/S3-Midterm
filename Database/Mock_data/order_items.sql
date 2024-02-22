INSERT INTO Order_Items (order_ID, product_ID, quantity, price, discount) VALUES
(1, 1, 2, (SELECT price FROM Products WHERE product_ID = 1), 0),
(1, 4, 1, (SELECT price FROM Products WHERE product_ID = 4), 10),
(2, 2, 1, (SELECT price FROM Products WHERE product_ID = 2), 5),
(2, 6, 2, (SELECT price FROM Products WHERE product_ID = 6), 0),
(3, 3, 1, (SELECT price FROM Products WHERE product_ID = 3), 0),
(4, 5, 1, (SELECT price FROM Products WHERE product_ID = 5), 0),
(4, 8, 1, (SELECT price FROM Products WHERE product_ID = 8), 0),
(5, 7, 1, (SELECT price FROM Products WHERE product_ID = 7), 0),
(5, 10, 1, (SELECT price FROM Products WHERE product_ID = 10), 0),
(5, 12, 1, (SELECT price FROM Products WHERE product_ID = 12), 0),
(6, 13, 1, (SELECT price FROM Products WHERE product_ID = 13), 0),
(7, 15, 2, (SELECT price FROM Products WHERE product_ID = 15), 15),
(8, 16, 1, (SELECT price FROM Products WHERE product_ID = 16), 0),
(9, 17, 1, (SELECT price FROM Products WHERE product_ID = 17), 0),
(10, 18, 1, (SELECT price FROM Products WHERE product_ID = 18), 0);

