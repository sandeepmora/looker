view: mpa_c_context_param {
  sql_table_name: simon12_warehouse.mpa_c_context_param ;;

  dimension: context_name {
    type: string
    sql: ${TABLE}.context_name ;;
  }

  dimension: context_value {
    type: string
    sql: ${TABLE}.context_value ;;
  }

  measure: count {
    type: count
    drill_fields: [context_name]
  }
}
