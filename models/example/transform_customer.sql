select id as customer_id,
    CONCAT(first_name, ' ', last_name) as full_name,
    email as email_address,
    address as biling_address
from dbt_smuhammadshah.customer
