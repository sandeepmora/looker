view: temp_diff_lead_action {
  sql_table_name: simon12_warehouse.temp_diff_lead_action ;;

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
