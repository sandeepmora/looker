view: mpa_t_program_opportunity_count {
  sql_table_name: simon12_warehouse.mpa_t_program_opportunity_count ;;

  dimension: cost_period_date_key {
    type: number
    sql: ${TABLE}.cost_period_date_key ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: opportunity_count {
    type: number
    sql: ${TABLE}.opportunity_count ;;
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
