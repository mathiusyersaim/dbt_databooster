{{ config(tags = 'dash_sales_bi')  }}

select {{ generate_id('car_make') }} as ID_CARMAKE,
car_make
FROM {{ ref("psg_montly_sales_make")}}
group by
car_make