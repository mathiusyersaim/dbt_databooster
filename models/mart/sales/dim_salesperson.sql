{{ config(tags = 'dash_sales_bi')  }}

select {{ generate_id('salesperson') }} as ID_SALESPERSON,
salesperson
FROM {{ ref("psg_montly_sales_make")}}
group by
salesperson