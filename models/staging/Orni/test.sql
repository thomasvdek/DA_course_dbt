{{ config( materialized = 'table' ) }}

SELECT *
FROM {{ ref('stg_Orni__exam') }}