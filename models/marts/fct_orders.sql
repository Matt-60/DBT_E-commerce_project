select
    order_id,
    customer_id,
    product_id,
    quantity,
    price_in_dollars,
    revenue,
    order_date
from {{ ref('int_orders_enriched') }}