SELECT c.customer_id,
    c.full_name,
    c.email_address,
    s.order_id,
    s.order_date,
    s.total_amount,
    {{ get_date_parts('order_date') }} as extract_date
FROM {{ ref('transform_customer') }} c
JOIN dbt_smuhammadshah.sales s 
    ON c.customer_id = s.customer_id
ORDER BY 
    c.customer_id