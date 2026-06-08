select
    o.order_id,
    o.customer_id,
    o.product_id,
    o.quantity,
    p.price_in_dollars,
    o.quantity * p.price_in_dollars as revenue,
    o.order_date
from {{ ref('stg_orders') }} o
left join {{ ref('stg_products') }} p
    on o.product_id = p.product_id