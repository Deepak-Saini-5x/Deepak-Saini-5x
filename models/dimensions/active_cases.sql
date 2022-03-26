---active_cases dimension

{{
    config
    (
        materialized ='table'
    )

}}

Select  Date,
        country,
        location,
        Sum(total_active_cases) active_cases_per_date_per_location
from 
{{ source('covid_indonesia_raw', 'COVID_19_INDONESIA_DEEPAK_SAINI') }}
group by date,country,location