view: mpa_d_revenue_stage {
  sql_table_name: simon12_warehouse.mpa_d_revenue_stage ;;

  dimension: aggregation {
    type: number
    sql: ${TABLE}.aggregation ;;
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

  dimension: is_approved {
    type: yesno
    sql: ${TABLE}.is_approved ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: is_success_path {
    type: yesno
    sql: ${TABLE}.is_success_path ;;
  }

  dimension: is_tracked_by_account {
    type: yesno
    sql: ${TABLE}.is_tracked_by_account ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: revenue_model_version_key {
    type: number
    sql: ${TABLE}.revenue_model_version_key ;;
  }

  dimension: revenue_model_version_source_id {
    type: string
    sql: ${TABLE}.revenue_model_version_source_id ;;
  }

  dimension: revenue_stage_key {
    type: number
    sql: ${TABLE}.revenue_stage_key ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
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

  dimension_group: source_updated {
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
    sql: ${TABLE}.source_updated_at ;;
  }

  dimension: stage_version_id {
    type: number
    sql: ${TABLE}.stage_version_id ;;
  }

  dimension: time_unit {
    type: string
    sql: ${TABLE}.time_unit ;;
  }

  dimension: time_value {
    type: number
    sql: ${TABLE}.time_value ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
    drill_fields: [name]
  }
}
