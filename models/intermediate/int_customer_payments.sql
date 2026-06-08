with orders as (

    select *
    from {{ ref('stg_orders') }}

),

payments as (

    select *
    from {{ ref('stg_payments') }}

),

customer_payments as (

    select
        o.customer_id,
        sum(
            case
                when p.payment_status = 'Success'
                then p.amount_in_dollars
                else 0
            end
        ) as lifetime_value

    from payments p
    join orders o
        on p.order_id = o.order_id

    group by o.customer_id

)

select *
from customer_payments