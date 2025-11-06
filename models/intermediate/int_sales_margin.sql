WITH sub AS (
    SELECT
      products_id,
      date_date,
      orders_id,
      revenue,
      quantity,
      purchase_price,
      ROUND(s.quantity*p.purchase_price,2) AS purchase_cost,
      ROUND(s.revenue - s.quantity*p.purchase_price, 2) AS margin,
      {{ margin_percent('s.revenue', 's.quantity * p.purchase_price') }} AS margin_percent
      FROM {{ ref('stg_gz_raw_data__sales') }} s
  LEFT JOIN {{ ref('stg_gz_raw_data__product') }} p
      USING (products_id)

)
SELECT *
, {{ margin_percent('revenue', 'purchase_cost') }} AS margin_pct_bis
FROM sub