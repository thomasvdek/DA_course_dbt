  SELECT
      products_id,
      date_date,
      orders_id,
      revenue,
      quantity,
      purchase_price,
      ROUND(s.quantity*p.purchase_price,2) AS purchase_cost,
      ROUND(s.revenue - s.quantit  FROM {{ ref('stg_gz_raw_data__sales') }} s
y*p.purchase_price, 2) AS margin
  LEFT JOIN {{ ref('stg_gz_raw_data__product') }} p
      USING (products_id)