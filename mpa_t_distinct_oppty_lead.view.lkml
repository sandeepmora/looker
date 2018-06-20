view: mpa_t_distinct_oppty_lead {
  sql_table_name: simon12_warehouse.mpa_t_distinct_oppty_lead ;;

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
