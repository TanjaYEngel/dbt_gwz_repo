with 

source as (

    select * from {{ source('raw', 'bing') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key AS campaign_name,
        campgn_name,
        CAST(ads_cost AS float64) AS ads_cost,
        impression,
        click

    from source

)

select * from renamed
