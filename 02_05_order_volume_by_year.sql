SELECT
  EXTRACT(YEAR FROM created_at) AS order_year,
  COUNT(*) AS order_count
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY order_year
ORDER BY order_year;
