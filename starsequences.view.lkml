view: starsequences {
  sql_table_name: public.star$sequences ;;

  dimension: schema_name {
    type: string
    sql: ${TABLE}.schema_name ;;
  }

  dimension: sequence_name {
    type: string
    sql: ${TABLE}.sequence_name ;;
  }

  measure: count {
    type: count
    drill_fields: [schema_name, sequence_name]
  }
}
