view: mpa_d_campaign_bridge {
  sql_table_name: simon12_warehouse.mpa_d_campaign_bridge ;;

  dimension: campaign_key {
    type: number
    sql: ${TABLE}.campaign_key ;;
  }

  dimension: campaign_workspace_key {
    type: number
    sql: ${TABLE}.campaign_workspace_key ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
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
