SELECT 
    o.date_date,
    COUNT(o.orders_id) AS nb_transactions,
    ROUND(SUM(m.revenue),2) AS revenue,
    ROUND(AVG(m.revenue),2) AS average_basket,
    ROUND(SUM(o.margin),2) AS margin,
    ROUND(SUM(o.operational_margin),2) AS operational_margin
FROM {{ ref('int_orders_operational') }} AS o
LEFT JOIN {{ ref('int_orders_margin') }} AS m
USING(orders_id)
GROUP BY o.date_date
ORDER BY o.date_date