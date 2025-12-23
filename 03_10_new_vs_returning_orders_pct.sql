WITH first_order_per_user AS (
  SELECT
    user_id,
    MIN(created_at) AS first_order_date
  FROM `bigquery-public-data.thelook_ecommerce.orders`
  GROUP BY user_id
)

SELECT
  DATE_TRUNC(o.created_at, MONTH) AS order_month,

  ROUND(
    COUNTIF(o.created_at = f.first_order_date) * 100.0 / COUNT(*),
    2
  ) AS new_customer_order_pct,

  ROUND(
    COUNTIF(o.created_at > f.first_order_date) * 100.0 / COUNT(*),
    2
  ) AS returning_customer_order_pct

FROM `bigquery-public-data.thelook_ecommerce.orders` o
JOIN first_order_per_user f
  ON o.user_id = f.user_id

GROUP BY order_month
ORDER BY order_month;
