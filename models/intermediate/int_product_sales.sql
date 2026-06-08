select
    product_id,
    count(order_id) as orders_count,
    sum(quantity) as units_sold,
    sum(revenue) as revenue
from {{ ref('int_orders_enriched') }}
group by product_id