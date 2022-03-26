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
{{ source('covid_indonesia_raw', 'COVID_19_INDONESIA_DEEPAK_SAINI') }}