view: mpa_f_program_opportunity {
  sql_table_name: simon12_warehouse.mpa_f_program_opportunity ;;

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

  dimension: cost_period_date_key {
    type: number
    sql: ${TABLE}.cost_period_date_key ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: first_opty_close_amount {
    type: number
    sql: ${TABLE}.first_opty_close_amount ;;
  }

  dimension: first_opty_close_unit {
    type: number
    sql: ${TABLE}.first_opty_close_unit ;;
  }

  dimension: first_opty_create_amount {
    type: number
    sql: ${TABLE}.first_opty_create_amount ;;
  }

  dimension: first_opty_create_unit {
    type: number
    sql: ${TABLE}.first_opty_create_unit ;;
  }

  dimension: first_program_cost {
    type: number
    sql: ${TABLE}.first_program_cost ;;
  }

  dimension: first_program_cost_won {
    type: number
    sql: ${TABLE}.first_program_cost_won ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: multi_opty_close_amount {
    type: number
    sql: ${TABLE}.multi_opty_close_amount ;;
  }

  dimension: multi_opty_close_success {
    type: number
    sql: ${TABLE}.multi_opty_close_success ;;
  }

  dimension: multi_opty_close_unit {
    type: number
    sql: ${TABLE}.multi_opty_close_unit ;;
  }

  dimension: multi_opty_create_amount {
    type: number
    sql: ${TABLE}.multi_opty_create_amount ;;
  }

  dimension: multi_opty_create_success {
    type: number
    sql: ${TABLE}.multi_opty_create_success ;;
  }

  dimension: multi_opty_create_unit {
    type: number
    sql: ${TABLE}.multi_opty_create_unit ;;
  }

  dimension: multi_program_cost {
    type: number
    sql: ${TABLE}.multi_program_cost ;;
  }

  dimension: multi_program_cost_won {
    type: number
    sql: ${TABLE}.multi_program_cost_won ;;
  }

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
  }

  dimension: opportunity_source_id {
    type: string
    sql: ${TABLE}.opportunity_source_id ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
  }

  dimension: program_opportunity_key {
    type: number
    sql: ${TABLE}.program_opportunity_key ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
