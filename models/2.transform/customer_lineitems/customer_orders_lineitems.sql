{{ config(materialized='table') }}

WITH

customer AS (SELECT * FROM {{ ref('customer') }}),
orders AS (SELECT * FROM   {{ ref('orders') }}  ),
line_items AS (SELECT * FROM   {{ ref('lineitems') }}  ),

customer_orders_lineitems_combined AS (
    SELECT
        *
    FROM customer
    LEFT JOIN orders
    ON customer.C_CUSTKEY = orders.CUSTKEY
    LEFT JOIN line_items
    ON orders.ORDERKEY = line_items.L_ORDERKEY
)
SELECT 
    *
FROM customer_orders_lineitems_combined
LIMIT 1000