SELECT SUM(quantity * unit_price) AS total_revenue
FROM sales;

SELECT
  product,
  SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

SELECT
  customer_country,
  SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY customer_country
ORDER BY revenue DESC;

SELECT
  customer_id,
  SUM(quantity * unit_price) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1;


