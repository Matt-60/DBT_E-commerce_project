select
    product_id,
    orders_count,
    units_sold,
    revenue
from {{ ref('int_product_sales') }}