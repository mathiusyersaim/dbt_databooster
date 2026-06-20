select * 

from (
    select * 
    from {{ ref("stg_sales_data_2020") }}
) t

{% if target.name != 'dev' %}
LIMIT 10
{% endif %}