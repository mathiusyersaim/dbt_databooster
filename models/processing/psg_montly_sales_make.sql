{{

    config(
        materialized = 'table',
        tag=['processing','sales','carmake']
    )

}}


select date_trunc('month', ddate) as DDATE,
salesperson, car_make,
 sum(sale_price-commission_rate) AS TOTALSALES,
 sum(commission_earned) as TOTALCOM
from {{ ref("stg_sales_data_2020") }}

group by
 date_trunc('month', ddate),salesperson, car_make