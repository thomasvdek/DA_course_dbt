with 

source as (

    select * from {{ source('Orni', 'exam') }}

),

renamed as (

    select
        user_id,
        exam_date,
        exam_status

    from source

)

select * from renamed