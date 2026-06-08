select
    customer_id,
    count(order_id) as total_orders,
    sum(quantity * price_in_dollars) as lifetime_value
from {{ ref('int_orders_enriched') }}
group by customer_id
