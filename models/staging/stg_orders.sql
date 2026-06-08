with 

source as (

    select * from {{ source('raw', 'raw_orders') }}

),

orders as (
    select
        order_id,
        customer_id,
        product_id,
        quantity,
        order_date,
        initcap(status) as order_status
    from source
)

select * from orders