    SELECT
     marg.orders_id
     ,date_date
     ,ROUND(margin + s.shipping_fee - (s.log_cost + s.ship_cost),2) AS operational_margin
     ,quantity
     ,revenue
     ,purchase_cost
     ,margin
     ,s.shipping_fee
     ,s.log_cost
     ,s.ship_cost
 FROM {{ref("int_orders_margin")}} AS marg
 LEFT JOIN {{ ref('stg_gz_raw_data__ship') }} s
     USING(orders_id)
 ORDER BY orders_id DESC

