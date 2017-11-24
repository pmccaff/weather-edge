view: starports {
  sql_table_name: public.star$ports ;;

  dimension: adaptor {
    type: string
    sql: ${TABLE}.adaptor ;;
  }

  dimension: append_table {
    type: string
    sql: ${TABLE}.append_table ;;
  }

  dimension: arguments {
    type: string
    sql: ${TABLE}.arguments ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
