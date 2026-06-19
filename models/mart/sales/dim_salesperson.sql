{{ config(tags = 'dash_sales_bi')  }}

select rank() over(order by salesperson) as ID_SALESPERSON,
salesperson
FROM {{ ref("psg_montly_sales_make")}}
group by
salesperson