---total_deaths dimension

{{
    config
    (
        materialized ='table'
    )

}}

Select  Date,
        country,
        location,
        Sum(total_deaths) deaths_per_date_per_location
from 
{{ source('covid_indonesia_raw', 'COVID_19_INDONESIA_DEEPAK_SAINI') }}
group by date,country,location