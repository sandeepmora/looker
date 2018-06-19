view: mpa_t_hybrid_opportunity_lead {
  sql_table_name: simon12_warehouse.mpa_t_hybrid_opportunity_lead ;;

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
