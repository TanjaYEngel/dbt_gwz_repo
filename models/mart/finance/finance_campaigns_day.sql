--# finance_campaigns_day.sql

SELECT
 c.date_date,
 (f.operational_margin - c.ads_cost) AS ads_margin,
 f.average_basket,
 f.operational_margin,
 c.ads_cost,
 c.impression AS ads_impression,
 c.click AS ads_clicks,
 f.quantity,
 f.revenue,
 f.purchase_cost,
 f.margin,
 f.shipping_fee,
 f.logcost,
 f.ship_cost
FROM {{ ref('int_campaigns_day') }} AS c
LEFT JOIN {{ ref('finance_days') }} AS f
USING(date_date)
ORDER BY date_date DESC