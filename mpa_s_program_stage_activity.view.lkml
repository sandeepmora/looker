view: mpa_s_program_stage_activity {
  sql_table_name: simon12_warehouse.mpa_s_program_stage_activity ;;

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

  dimension: from_revenue_stage_source_id {
    type: string
    sql: ${TABLE}.from_revenue_stage_source_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_generated {
    type: yesno
    sql: ${TABLE}.is_generated ;;
  }

  dimension: is_repeat {
    type: yesno
    sql: ${TABLE}.is_repeat ;;
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

  dimension: program_stage_activity_key {
    type: number
    sql: ${TABLE}.program_stage_activity_key ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: to_revenue_stage_source_id {
    type: string
    sql: ${TABLE}.to_revenue_stage_source_id ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
