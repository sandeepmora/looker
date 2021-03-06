view: mpa_d_opportunity_bridge {
  sql_table_name: simon12_warehouse.mpa_d_opportunity_bridge ;;

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_derived {
    type: yesno
    sql: ${TABLE}.is_derived ;;
  }

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
  }

  dimension: opportunity_workspace_key {
    type: number
    sql: ${TABLE}.opportunity_workspace_key ;;
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
