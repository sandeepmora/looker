view: mpa_d_revenue_model_cycle {
  sql_table_name: simon12_warehouse.mpa_d_revenue_model_cycle ;;

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

  dimension: cycle_version {
    type: number
    sql: ${TABLE}.cycle_version ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_initialized {
    type: yesno
    sql: ${TABLE}.is_initialized ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: is_model_cycle_active {
    type: yesno
    sql: ${TABLE}.is_model_cycle_active ;;
  }

  dimension: model_id {
    type: number
    sql: ${TABLE}.model_id ;;
  }

  dimension: revenue_model_cycle_key {
    type: number
    sql: ${TABLE}.revenue_model_cycle_key ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: unapproved_date_key {
    type: number
    sql: ${TABLE}.unapproved_date_key ;;
  }

  dimension_group: unapproved_date {
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
    sql: ${TABLE}.unapproved_date_time ;;
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
