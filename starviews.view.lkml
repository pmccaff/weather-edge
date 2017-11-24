view: starviews {
  sql_table_name: public.star$views ;;

  dimension: schema_name {
    type: string
    sql: ${TABLE}.schema_name ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.view_name ;;
  }

  measure: count {
    type: count
    drill_fields: [view_name, schema_name]
  }
}
