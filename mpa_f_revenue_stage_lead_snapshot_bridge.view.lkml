view: mpa_f_revenue_stage_lead_snapshot_bridge {
  sql_table_name: simon12_warehouse.mpa_f_revenue_stage_lead_snapshot_bridge ;;

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: lead_partition_key {
    type: number
    sql: ${TABLE}.lead_partition_key ;;
  }

  dimension: revenue_stage_key {
    type: number
    sql: ${TABLE}.revenue_stage_key ;;
  }

  dimension: revenue_stage_lead_snapshot_workspace_key {
    type: number
    sql: ${TABLE}.revenue_stage_lead_snapshot_workspace_key ;;
  }

  dimension: revenue_stage_workspace_key {
    type: number
    sql: ${TABLE}.revenue_stage_workspace_key ;;
  }

  dimension: workspace_key {
    type: number
    sql: ${TABLE}.workspace_key ;;
  }

  dimension: workspace_source_id {
    type: number
    sql: ${TABLE}.workspace_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
