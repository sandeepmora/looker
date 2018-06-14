view: mpa_s_mkt_dashboard_oppty {
  sql_table_name: simon12_warehouse.mpa_s_mkt_dashboard_oppty ;;

  dimension: oppty_id {
    type: number
    sql: ${TABLE}.oppty_id ;;
  }

  dimension: sfdc_oppty_id {
    type: string
    sql: ${TABLE}.sfdc_oppty_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
