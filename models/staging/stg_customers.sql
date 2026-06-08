with 

source as (

    select * from {{ source('raw', 'raw_customers') }}

),

customers as (

    select
        customer_id,
        first_name || ' ' || last_name as full_name,
        lower(email) as email,
        city,
        country,
        created_at as customer_created_at

    from source

)

select * from customers