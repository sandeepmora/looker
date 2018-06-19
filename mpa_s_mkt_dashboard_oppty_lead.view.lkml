view: mpa_s_mkt_dashboard_oppty_lead {
  sql_table_name: simon12_warehouse.mpa_s_mkt_dashboard_oppty_lead ;;

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
  }

  dimension: opportunity_id {
    type: number
    sql: ${TABLE}.opportunity_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
