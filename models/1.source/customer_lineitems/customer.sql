WITH
    base_customers AS (SELECT * FROM {{ source('sf_customers', 'customers') }}),

    SELECT 
        *
    FROM customers