SELECT
  DATE_TRUNC(created_at, MONTH) AS order_month,
  COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY order_month
ORDER BY order_month;
