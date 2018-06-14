view: mpa_t_program_success_opportunity_cost_total_won {
  sql_table_name: simon12_warehouse.mpa_t_program_success_opportunity_cost_total_won ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
    drill_fields: [id]
  }
}
