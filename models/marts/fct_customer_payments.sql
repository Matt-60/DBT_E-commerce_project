select
    customer_id,
    lifetime_value
from {{ ref('int_customer_payments') }}