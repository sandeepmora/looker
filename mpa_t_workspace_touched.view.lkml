view: mpa_t_workspace_touched {
  sql_table_name: simon12_warehouse.mpa_t_workspace_touched ;;

  dimension: workspace_key {
    type: number
    sql: ${TABLE}.workspace_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
