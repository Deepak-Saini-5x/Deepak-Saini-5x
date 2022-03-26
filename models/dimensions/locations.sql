----Locations dimension

{{
    config
    (
        materialized ='table'
    )

}}

Select Distinct
       continent,
       ISLAND,
       country,
       LOCATION_ISO_CODE,
       TOTAL_REGENCIES,
       LONGITUDE,
       LATITUDE,
       Province,
       location_level,
       area_km_2_,
       location
from 
"FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_DEEPAK_SAINI"