---death_rate dimension

{{
    config
    (
        materialized ='table'
    )

}}

Select pop.location as location_region,
       sum(pop.population_per_date) population_per_location,
       sum(td.deaths_per_date_per_location) deaths_per_location,
       DIV0(deaths_per_location,population_per_location)*100 as death_rate
 from 
population pop
Inner Join total_deaths td On (pop.date = td.date)
group by pop.location