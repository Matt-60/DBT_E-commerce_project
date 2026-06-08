select
    c.customer_id,
    c.full_name,
    c.email,
    c.city,
    c.country
from {{ ref('stg_customers') }} c