CREATE TABLE sales (
    order_id INTEGER PRIMARY KEY,
    order_date DATE,
    customer_id TEXT,
    customer_country TEXT,
    product TEXT,
    category TEXT,
    quantity INTEGER,
    unit_price REAL
);
