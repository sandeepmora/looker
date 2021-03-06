view: mpa_t_program_lead_count {
  sql_table_name: simon12_warehouse.mpa_t_program_lead_count ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cost_period_date_key {
    type: number
    sql: ${TABLE}.cost_period_date_key ;;
  }

  dimension: lead_count {
    type: number
    sql: ${TABLE}.lead_count ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
