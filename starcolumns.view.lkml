view: starcolumns {
  sql_table_name: public.star$columns ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}.column_name ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}.schema_name ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, column_name, schema_name]
  }
}
