{% macro get_date_parts(date_col) %}
    
    ( SELECT struct (
        {{ date_col }} AS orignal_date,
        EXTRACT(YEAR FROM {{ date_col }}) AS year,
        EXTRACT(MONTH FROM {{ date_col }}) AS month,
        EXTRACT(DAY FROM {{ date_col }}) AS day,
        EXTRACT(QUARTER FROM {{ date_col }}) AS quarter ) as extract_date
    )
{% endmacro %}