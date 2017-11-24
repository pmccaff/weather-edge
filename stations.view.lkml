view: stations {
  sql_table_name: public.stations ;;

  dimension: station_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.station_id ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension_group: effective_from {
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
    sql: ${TABLE}."effective_from$" ;;
  }

  dimension_group: effective_to {
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
    sql: ${TABLE}."effective_to$" ;;
  }

  dimension: elevation {
    type: number
    sql: ${TABLE}.elevation ;;
  }

  dimension: gsn_flag {
    type: string
    sql: ${TABLE}.gsn_flag ;;
  }

  dimension: hcn_crn_flag {
    type: string
    sql: ${TABLE}.hcn_crn_flag ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: wmo_id {
    type: string
    sql: ${TABLE}.wmo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [station_id, name, records.count]
  }
}
