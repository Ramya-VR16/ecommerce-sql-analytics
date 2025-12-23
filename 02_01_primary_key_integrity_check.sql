SELECT
  COUNT(*) AS total_rows,
  COUNT(order_id) AS non_null_order_id,
  COUNT(DISTINCT order_id) AS distinct_order_id
FROM `bigquery-public-data.thelook_ecommerce.orders`;
