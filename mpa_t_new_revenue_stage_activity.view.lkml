view: mpa_t_new_revenue_stage_activity {
  sql_table_name: simon12_warehouse.mpa_t_new_revenue_stage_activity ;;

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: revenue_model_cycle_source_id {
    type: string
    sql: ${TABLE}.revenue_model_cycle_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
