WITH
    base_customers AS (SELECT * FROM {{ source('sf_customers', 'customer') }})

    SELECT 
        *
    FROM base_customers