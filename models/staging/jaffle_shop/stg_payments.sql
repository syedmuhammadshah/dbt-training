select
    id as payment_id,
    order_id,
    payment_method,
    amount,
    {{ cents_to_dollars('amount', 4) }} as amount_in_dollars
from {{ source('jaffle_shop', 'raw_payments') }}