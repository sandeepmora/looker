view: mpa_d_progression_status {
  sql_table_name: simon12_warehouse.mpa_d_progression_status ;;

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

  dimension: is_hidden {
    type: yesno
    sql: ${TABLE}.is_hidden ;;
  }

  dimension: is_included_in_reports {
    type: yesno
    sql: ${TABLE}.is_included_in_reports ;;
  }

  dimension: is_success {
    type: yesno
    sql: ${TABLE}.is_success ;;
  }

  dimension: progression_name {
    type: string
    sql: ${TABLE}.progression_name ;;
  }

  dimension: progression_source_id {
    type: string
    sql: ${TABLE}.progression_source_id ;;
  }

  dimension: progression_status_key {
    type: number
    sql: ${TABLE}.progression_status_key ;;
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

  dimension: status_name {
    type: string
    sql: ${TABLE}.status_name ;;
  }

  dimension: status_type {
    type: string
    sql: ${TABLE}.status_type ;;
  }

  dimension: step {
    type: number
    sql: ${TABLE}.step ;;
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
    drill_fields: [progression_name, status_name]
  }
}
