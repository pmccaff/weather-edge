view: starjobs {
  sql_table_name: public.star$jobs ;;

  dimension: command {
    type: string
    sql: ${TABLE}.command ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension_group: executed {
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
    sql: ${TABLE}.executed ;;
  }

  dimension: failed {
    type: yesno
    sql: ${TABLE}.failed ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.period ;;
  }

  dimension_group: scheduled {
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
    sql: ${TABLE}.scheduled ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
