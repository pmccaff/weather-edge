connection: "fullscaleweatherdemo"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: continents {}

explore: countries {
  join: continents {
    type: inner
    sql_on: ${countries.continent_id} = ${continents.continent_id} ;;
    relationship: many_to_one
  }
}

explore: records {
  join: stations {
    type: inner
    sql_on: ${records.station_id} = ${stations.station_id} ;;
    relationship: many_to_one
    }
  join: countries {
    type: inner
    sql_on:  ${stations.country_id} = ${countries.country_id} ;;
    relationship: many_to_one
  }
  join: continents {
    type: inner
    sql_on: ${continents.continent_id} = ${countries.continent_id} ;;
    relationship: many_to_one
  }
}


explore: stations {}
