with source as (
    select * from {{ source('raw', 'raw_products') }}
),

products as (
    select
        product_id,
        product_name,
        category,
        {{ cents_to_dollars('price_in_cents') }} as price_in_dollars,
        created_at as product_created_at
    from source
)

select * from products