{% macro generate_id(column_name) %}
    RANK() over (ORDER BY {{ column_name }})
{% endmacro %}
