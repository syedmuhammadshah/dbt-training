{{ config(materialized='view') }}

SELECT c.customer_id,
    c.full_name,
    c.email_address,
    s.order_id,
    s.order_date,
    s.total_amount
FROM {{ ref('transform_customer') }} c
JOIN raw.sales s ON c.customer_id = s.customer_id
ORDER BY c.customer_id