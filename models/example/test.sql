select 
*
from {{ source('demo', 'bike_table') }} 

limit 10