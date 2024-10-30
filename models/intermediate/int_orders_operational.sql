SELECT
 orders_id,
 date_date,
 margin,
 shipping_fee,
 logcost,
 ship_cost,
(margin + shipping_fee - logcost - CAST(ship_cost AS FLOAT64)) AS operational_margin 
FROM {{ ref('int_orders_margin') }}
LEFT Join {{ ref('stg_raw__ship') }}
USING(orders_id)