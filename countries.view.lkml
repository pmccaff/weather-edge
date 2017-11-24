view: countries {
  sql_table_name: public.countries ;;

  dimension: country_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: continent_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.continent_id ;;
  }

  dimension_group: effective_from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."effective_from$" ;;
  }

  dimension_group: effective_to {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."effective_to$" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [country_id, name, continents.name, continents.continent_id]
  }
}
