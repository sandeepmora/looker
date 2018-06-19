view: mpa_t_program_success_create_total {
  sql_table_name: simon12_warehouse.mpa_t_program_success_create_total ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: success {
    type: number
    sql: ${TABLE}.success ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
