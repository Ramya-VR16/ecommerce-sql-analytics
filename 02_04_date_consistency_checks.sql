SELECT
  COUNT(*) AS total_orders,
  COUNTIF(shipped_at < created_at) AS shipped_before_created,
  COUNTIF(delivered_at < shipped_at) AS delivered_before_shipped
FROM `bigquery-public-data.thelook_ecommerce.orders`;
