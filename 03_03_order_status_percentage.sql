SELECT
  status,
  COUNT(*) AS total_orders,
  ROUND(COUNT(*)*100.0/SUM(COUNT(*)) OVER(),2)
   AS order_percentage
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY total_orders DESC;
