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
"FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_DEEPAK_SAINI"
group by date,country,location