WITH
    base_lineitems AS (SELECT * FROM {{ source('sf_customers', 'lineitems') }}),

    SELECT 
        *
    FROM base_lineitems
