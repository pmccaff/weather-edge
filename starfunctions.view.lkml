view: starfunctions {
  sql_table_name: public.star$functions ;;

  dimension: arguments {
    type: string
    sql: ${TABLE}.arguments ;;
  }

  dimension: function_name {
    type: string
    sql: ${TABLE}.function_name ;;
  }

  dimension: return {
    type: string
    sql: ${TABLE}.return ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}.schema_name ;;
  }

  measure: count {
    type: count
    drill_fields: [function_name, schema_name]
  }
}
