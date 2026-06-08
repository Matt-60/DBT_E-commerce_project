select
    payment_id,
    amount_in_dollars
from {{ ref('stg_payments') }}
where payment_status = 'Success'
  and amount_in_dollars <= 0