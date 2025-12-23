WITH monthly_orders AS (
  SELECT
    DATE_TRUNC(created_at, MONTH) AS order_month,
    COUNT(*) AS total_orders
  FROM `bigquery-public-data.thelook_ecommerce.orders`
  GROUP BY order_month
)

SELECT
  order_month,
  total_orders,

  LAG(total_orders) OVER (ORDER BY order_month) AS prev_month_orders,

  ROUND(
    (total_orders - LAG(total_orders) OVER (ORDER BY order_month))
    * 100.0
    / LAG(total_orders) OVER (ORDER BY order_month),
    2
  ) AS mom_growth_pct

FROM monthly_orders
ORDER BY order_month;
