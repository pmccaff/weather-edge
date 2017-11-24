view: starsources {
  sql_table_name: public.star$sources ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: node {
    type: string
    sql: ${TABLE}.node ;;
  }

  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
