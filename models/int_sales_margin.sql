SELECT 
 products_id,
 orders_id,
 date_date,
 revenue,
 quantity,
 purchase_price,
 CAST((revenue-quantity*purchase_price) AS float64) AS margin,
 CAST((quantity*purchase_price) AS float64) AS purchase_cost
FROM {{ ref('stg_raw__sales') }} 
LEFT JOIN {{ ref('stg_raw__product') }} 
USING(products_id)
