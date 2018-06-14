view: mpa_f_program_stage_to_date {
  sql_table_name: simon12_warehouse.mpa_f_program_stage_to_date ;;

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

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_generated {
    type: yesno
    sql: ${TABLE}.is_generated ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: is_success {
    type: yesno
    sql: ${TABLE}.is_success ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
  }

  dimension: program_stage_to_date_key {
    type: number
    sql: ${TABLE}.program_stage_to_date_key ;;
  }

  dimension: revenue_stage_key {
    type: number
    sql: ${TABLE}.revenue_stage_key ;;
  }

  dimension: revenue_stage_source_id {
    type: string
    sql: ${TABLE}.revenue_stage_source_id ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: transition_date_key {
    type: number
    sql: ${TABLE}.transition_date_key ;;
  }

  dimension_group: transition_date {
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
    sql: ${TABLE}.transition_date_time ;;
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
