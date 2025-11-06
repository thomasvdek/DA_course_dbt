with 

source as (

    select * from {{ source('dbt_circle_thomas', 'sales') }}

),

renamed as (

    select
        date_date,
        product_id,
        quantity

    from source

)

select * from renamed