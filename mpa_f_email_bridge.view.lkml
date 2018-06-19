view: mpa_f_email_bridge {
  sql_table_name: simon12_warehouse.mpa_f_email_bridge ;;

  dimension: company_key {
    type: number
    sql: ${TABLE}.company_key ;;
  }

  dimension: company_workspace_key {
    type: number
    sql: ${TABLE}.company_workspace_key ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: lead_workspace_key {
    type: number
    sql: ${TABLE}.lead_workspace_key ;;
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
