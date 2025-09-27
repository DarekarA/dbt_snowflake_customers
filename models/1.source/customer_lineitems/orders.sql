WITH
    base_orders AS (SELECT * FROM {{ source('sf_customers', 'orders') }}),

    orders_renamed AS (
        SELECT
            O_ORDERKEY	AS ORDERKEY, 
            O_CUSTKEY	AS CUSTKEY,
            O_ORDERSTATUS	AS ORDERSTATUS,
            O_TOTALPRICE	AS TOTALPRICE,
            O_ORDERDATE	    AS ORDERDATE,
            O_ORDERPRIORITY	AS ORDERPRIORITY,
            O_CLERK	        AS CLERK,
            O_SHIPPRIORITY	AS SHIPPRIORITY,
            O_COMMENT AS O_COMMENT
        FROM base_orders
    )

    SELECT 
        *
    FROM orders_renamed