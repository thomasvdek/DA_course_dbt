with 

source as (

    select * from {{ source('Orni', 'consumption') }}

),

renamed as (

    select
        user_id,
        first_buy_date,
        first_product,
        nb_lessons,
        reading_time,
        nb_series,
        score_5_last_series,
        nb_sessions

    from source

)

select * from renamed