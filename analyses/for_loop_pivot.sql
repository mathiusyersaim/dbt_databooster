{% set tragets_makes = ["Toyota", "Ford", "Chevrolet", "Honda", "Nissan"] %}

select
    ddate,
    salesperson,
    {% for make in tragets_makes %}
        sum(
            case when car_make = '{{make}}' then totalsales else 0 end
        ) as sales_{{ make }}
        {% if not loop.last %},{% endif %}
    {% endfor %}
from {{ ref("psg_montly_sales_make") }}
group by ddate, salesperson
