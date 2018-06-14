view: mpa_t_direct_revenue_stage_activity {
  sql_table_name: simon12_warehouse.mpa_t_direct_revenue_stage_activity ;;

  dimension: activity_log_id {
    type: number
    sql: ${TABLE}.activity_log_id ;;
  }

  dimension: approved_date_key {
    type: number
    sql: ${TABLE}.approved_date_key ;;
  }

  dimension_group: approved_date {
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
    sql: ${TABLE}.approved_date_time ;;
  }

  dimension: curr_lead_source_key {
    type: number
    sql: ${TABLE}.curr_lead_source_key ;;
  }

  dimension: curr_lead_source_source_id {
    type: string
    sql: ${TABLE}.curr_lead_source_source_id ;;
  }

  dimension: from_revenue_model_version_key {
    type: number
    sql: ${TABLE}.from_revenue_model_version_key ;;
  }

  dimension: from_revenue_model_version_source_id {
    type: string
    sql: ${TABLE}.from_revenue_model_version_source_id ;;
  }

  dimension: from_revenue_stage_date_key {
    type: number
    sql: ${TABLE}.from_revenue_stage_date_key ;;
  }

  dimension_group: from_revenue_stage_date {
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
    sql: ${TABLE}.from_revenue_stage_date_time ;;
  }

  dimension_group: from_revenue_stage_expiration {
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
    sql: ${TABLE}.from_revenue_stage_expiration_date ;;
  }

  dimension: from_revenue_stage_key {
    type: number
    sql: ${TABLE}.from_revenue_stage_key ;;
  }

  dimension: from_revenue_stage_source_id {
    type: string
    sql: ${TABLE}.from_revenue_stage_source_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: is_model_cycle_active {
    type: yesno
    sql: ${TABLE}.is_model_cycle_active ;;
  }

  dimension: lead_created_date_key {
    type: number
    sql: ${TABLE}.lead_created_date_key ;;
  }

  dimension_group: lead_created_date {
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
    sql: ${TABLE}.lead_created_date_time ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: revenue_model_cycle_key {
    type: number
    sql: ${TABLE}.revenue_model_cycle_key ;;
  }

  dimension: revenue_model_cycle_source_id {
    type: string
    sql: ${TABLE}.revenue_model_cycle_source_id ;;
  }

  dimension_group: source_created {
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
    sql: ${TABLE}.source_created_at ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: time_value {
    type: number
    sql: ${TABLE}.time_value ;;
  }

  dimension: to_revenue_model_version_key {
    type: number
    sql: ${TABLE}.to_revenue_model_version_key ;;
  }

  dimension: to_revenue_model_version_source_id {
    type: string
    sql: ${TABLE}.to_revenue_model_version_source_id ;;
  }

  dimension: to_revenue_stage_date_key {
    type: number
    sql: ${TABLE}.to_revenue_stage_date_key ;;
  }

  dimension_group: to_revenue_stage_date {
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
    sql: ${TABLE}.to_revenue_stage_date_time ;;
  }

  dimension_group: to_revenue_stage_date_time_sort {
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
    sql: ${TABLE}.to_revenue_stage_date_time_sort ;;
  }

  dimension_group: to_revenue_stage_expiration {
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
    sql: ${TABLE}.to_revenue_stage_expiration_date ;;
  }

  dimension: to_revenue_stage_key {
    type: number
    sql: ${TABLE}.to_revenue_stage_key ;;
  }

  dimension: to_revenue_stage_source_id {
    type: string
    sql: ${TABLE}.to_revenue_stage_source_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: xd_key_1 {
    type: number
    sql: ${TABLE}.xd_key_1 ;;
  }

  dimension: xd_key_2 {
    type: number
    sql: ${TABLE}.xd_key_2 ;;
  }

  dimension: xd_key_3 {
    type: number
    sql: ${TABLE}.xd_key_3 ;;
  }

  dimension: xd_key_4 {
    type: number
    sql: ${TABLE}.xd_key_4 ;;
  }

  dimension: xd_key_5 {
    type: number
    sql: ${TABLE}.xd_key_5 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
