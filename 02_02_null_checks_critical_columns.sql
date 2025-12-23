SELECT
  COUNTIF(user_id IS NULL) AS null_user_id,
  COUNTIF(status IS NULL) AS null_status,
  COUNTIF(created_at IS NULL) AS null_created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`;
