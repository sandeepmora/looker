view: mpa_s_campaign_bridge {
  sql_table_name: simon12_warehouse.mpa_s_campaign_bridge ;;

  dimension: campaign_source_id {
    type: number
    sql: ${TABLE}.campaign_source_id ;;
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
