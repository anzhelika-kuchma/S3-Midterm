CREATE TABLE Addresses (
  address_ID SERIAL PRIMARY KEY,
  street VARCHAR,
  city VARCHAR,
  province VARCHAR,
  postal_code VARCHAR
);

CREATE TABLE Customers (
  customer_ID SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  address_ID INT REFERENCES Addresses (address_ID),
  email VARCHAR,
  phone VARCHAR
);

CREATE TABLE Categories (
  category_ID SERIAL PRIMARY KEY,
  name VARCHAR,
  description VARCHAR
);

CREATE TABLE Products (
  product_ID SERIAL PRIMARY KEY,
  name VARCHAR,
  description VARCHAR,
  avail_qty INT,
  price MONEY,
  category_ID INT REFERENCES Categories (category_ID)
);

CREATE TABLE Orders (
  order_ID SERIAL PRIMARY KEY,
  customer_ID INT REFERENCES Customers (customer_ID),
  date_and_time TIMESTAMP
  total MONEY
);

CREATE TABLE Order_Items (
  order_item_ID SERIAL PRIMARY KEY,
  order_ID INT REFERENCES Orders (order_ID),
  product_ID INT REFERENCES Products (product_ID),
  quantity INT,
  price MONEY,
  discount INT
);

CREATE TABLE Shipping_Info (
  shipping_ID SERIAL PRIMARY KEY,
  order_ID INT REFERENCES Orders (order_ID),
  shipping_method VARCHAR,
  shipping_cost MONEY,
  tracking_num VARCHAR,
  ETD DATE
);

CREATE TABLE Sales_Analytics (
  analytics_ID SERIAL PRIMARY KEY,
  data DATE,
  total_revenue MONEY,
  total_orders INT,
  average_order_value MONEY,
  total_items_sold INT,
  popular_products VARCHAR(255), --storing as comma-separated product IDs
  most_ordered_product_ID INT REFERENCES Products (product_ID)
  newCustomers INT,
  total_discount_applied MONEY,
  highest_order_amount MONEY,
  lowest_order_amount MONEY
);

CREATE TABLE Defaults (
  gst INT
);