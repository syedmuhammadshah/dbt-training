SELECT 
    {{ dbt_utils.generate_surrogate_key(['customer_id', 'order_id']) }} AS unique_key
FROM {{ ref('stg_orders') }}
