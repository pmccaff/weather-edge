view: staradaptors {
  sql_table_name: public.star$adaptors ;;

  dimension: append_function {
    type: string
    sql: ${TABLE}.append_function ;;
  }

  dimension: arguments {
    type: string
    sql: ${TABLE}.arguments ;;
  }

  dimension: check_function {
    type: string
    sql: ${TABLE}.check_function ;;
  }

  dimension: close_function {
    type: string
    sql: ${TABLE}.close_function ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: open_function {
    type: string
    sql: ${TABLE}.open_function ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
