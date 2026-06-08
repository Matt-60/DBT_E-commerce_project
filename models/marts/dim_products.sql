select
    product_id,
    product_name,
    category,
    price_in_dollars
from {{ ref('stg_products') }}