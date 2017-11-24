view: startrace {
  sql_table_name: public.star$trace ;;

  dimension: connection {
    type: string
    sql: ${TABLE}.connection ;;
  }

  dimension_group: datetime {
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
    sql: ${TABLE}.datetime ;;
  }

  dimension: elapsed {
    type: string
    sql: ${TABLE}.elapsed ;;
  }

  dimension: rows {
    type: number
    sql: ${TABLE}.rows ;;
  }

  dimension: sql {
    type: string
    sql: ${TABLE}.sql ;;
  }

  dimension: stage {
    type: number
    sql: ${TABLE}.stage ;;
  }

  dimension: step {
    type: string
    sql: ${TABLE}.step ;;
  }

  dimension: tick {
    type: number
    sql: ${TABLE}.tick ;;
  }

  dimension: trace {
    type: number
    sql: ${TABLE}.trace ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
