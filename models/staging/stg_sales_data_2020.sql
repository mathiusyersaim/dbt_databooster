select ddate::date,
    salesperson,
    customer_name,
    car_make,
    car_model,
    car_year::INTEGER AS CARYEAR,
    sale_price,
    commission_rate,
    commission_earned
from {{ source("raw_bi_car","car_sales") }}
where  ddate::date >=  '2020-01-01'
