view: records {
  sql_table_name: public.records ;;

  dimension: avg_temp {
    type: number
    sql: ${TABLE}.avg_temp ;;
  }

  dimension: avg_wind_dir {
    type: number
    sql: ${TABLE}.avg_wind_dir ;;
  }

  dimension: avg_wind_speed {
    type: number
    sql: ${TABLE}.avg_wind_speed ;;
  }

  dimension: max_temp {
    type: number
    sql: ${TABLE}.max_temp ;;
  }

  dimension: min_temp {
    type: number
    sql: ${TABLE}.min_temp ;;
  }

  dimension: obs_temp {
    type: number
    sql: ${TABLE}.obs_temp ;;
  }

  dimension: precipitation {
    type: number
    sql: ${TABLE}.precipitation ;;
  }

  dimension_group: record {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.record_date ;;
  }

  dimension: snow_depth {
    type: number
    sql: ${TABLE}.snow_depth ;;
  }

  dimension: snow_fall {
    type: number
    sql: ${TABLE}.snow_fall ;;
  }

  dimension: source {
    type: number
    sql: ${TABLE}."source$" ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}."state$" ;;
  }

  dimension: station_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.station_id ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."timestamp$" ;;
  }

  dimension: total_sun {
    type: number
    sql: ${TABLE}.total_sun ;;
  }

  measure: count {
    type: count
    drill_fields: [stations.station_id, stations.name]
  }
}
