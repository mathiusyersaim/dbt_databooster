{{ config(tags = 'dash_sales_bi')  }}

select DDATE,
ID_SALESPERSON,
ID_CARMAKE,
TOTALSALES,
TOTALCOM
FROM {{ ref("psg_montly_sales_make")}} AS psgm
left join {{ ref("dim_carmake")}} as dimcm on psgm.car_make = dimcm.car_make
left join {{ ref("dim_salesperson")}} as dimsp on psgm.salesperson = dimsp.salesperson
