view: starschemas {
  sql_table_name: public.star$schemas ;;

  dimension: schema_name {
    type: string
    sql: ${TABLE}.schema_name ;;
  }

  measure: count {
    type: count
    drill_fields: [schema_name]
  }
}
