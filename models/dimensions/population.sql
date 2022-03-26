-- population dimension

{{
    config
    (
        materialized ='table'
    )

}}

Select Date,
       country,
       location,
       sum(population) population_per_date,
       sum(population_density) as total_population_density
from 
{{ source('covid_indonesia_raw', 'COVID_19_INDONESIA_DEEPAK_SAINI') }}
group by date,location,country