view: mpa_t_program_success_opportunity_cost {
  sql_table_name: simon12_warehouse.mpa_t_program_success_opportunity_cost ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension_group: cost_period {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cost_period_date ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
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
