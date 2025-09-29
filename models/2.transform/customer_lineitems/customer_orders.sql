{{ config(materialized='table') }}

WITH

customer AS (SELECT * FROM {{ ref('customer') }}),
orders AS (SELECT * FROM   {{ ref('orders') }}  ),

customer_orders_combined AS (
    SELECT
        *
    FROM customer
    LEFT JOIN orders
    ON customer.C_CUSTKEY = orders.CUSTKEY
)
SELECT 
    *
FROM customer_orders_combined
LIMIT 1000