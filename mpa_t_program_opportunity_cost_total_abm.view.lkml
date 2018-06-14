view: mpa_t_program_opportunity_cost_total_abm {
  sql_table_name: simon12_warehouse.mpa_t_program_opportunity_cost_total_abm ;;

  dimension: abm_account_key {
    type: number
    sql: ${TABLE}.abm_account_key ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cost_period_date_key {
    type: number
    sql: ${TABLE}.cost_period_date_key ;;
  }

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
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
