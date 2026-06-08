with source as (
    select * from {{ source('raw', 'raw_payments') }}
),

payments as (
    select
        payment_id,
        order_id,
        initcap(replace(payment_method, '_', ' ')) as payment_method,
        {{ cents_to_dollars('amount_in_cents') }} as amount_in_dollars,
        payment_date,
        initcap(status) as payment_status
    from source
)

select * from payments