{{ config(materialized='table') }}

WITH CTE AS(
    select 
    t.*,
    w.*
    from {{ ref('trip_fact') }} t
    left join {{ ref('daily_weather') }} w
    on t.TRIP_DATE = w.DAILY_WEATHER

    ORDER BY TRIP_DATE desc
)

select * 
from CTE