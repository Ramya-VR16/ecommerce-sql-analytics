-- ============================================
-- Data Quality Checks
-- Dataset: thelook_ecommerce.orders
-- Purpose: Validate data reliability before analysis
-- ============================================


-- 1. Check for NULL values in critical columns
SELECT
  COUNTIF(order_id IS NULL) AS null_order_id,
  COUNTIF(user_id IS NULL) AS null_user_id,
  COUNTIF(created_at IS NULL) AS null_created_at,
  COUNTIF(status IS NULL) AS null_status,
  COUNTIF(sale_price IS NULL) AS null_sale_price
FROM `bigquery-public-data.thelook_ecommerce.orders`;


-- 2. Check total row count (data volume sanity check)
SELECT
  COUNT(*) AS total_rows
FROM `bigquery-public-data.thelook_ecommerce.orders`;


-- 3. Check distinct order count vs row count
-- (Each order can have multiple items)
SELECT
  COUNT(DISTINCT order_id) AS distinct_orders,
  COUNT(*) AS total_rows
FROM `bigquery-public-data.thelook_ecommerce.orders`;


-- 4. Validate order status distribution
SELECT
  status,
  COUNT(*) AS order_count
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY order_count DESC;


-- 5. Check for illogical timestamps
-- (Orders should not be shipped or delivered before creation)
SELECT
  COUNTIF(shipped_at < created_at) AS shipped_before_created,
  COUNTIF(delivered_at < shipped_at) AS delivered_before_shipped
FROM `bigquery-public-data.thelook_ecommerce.orders`;


-- 6. Check sale_price validity (negative or zero values)
SELECT
  COUNTIF(sale_price <= 0) AS invalid_sale_price_count
FROM `bigquery-public-data.thelook_ecommerce.orders`;


-- 7. Check date range coverage
SELECT
  MIN(created_at) AS earliest_order_date,
  MAX(created_at) AS latest_order_date
FROM `bigquery-public-data.thelook_ecommerce.orders`;
