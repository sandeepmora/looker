view: mpa_f_progression_activity {
  sql_table_name: simon12_warehouse.mpa_f_progression_activity ;;

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

  dimension: from_progression_status_key {
    type: number
    sql: ${TABLE}.from_progression_status_key ;;
  }

  dimension: from_progression_status_source_id {
    type: string
    sql: ${TABLE}.from_progression_status_source_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_current {
    type: yesno
    sql: ${TABLE}.is_current ;;
  }

  dimension: is_first {
    type: yesno
    sql: ${TABLE}.is_first ;;
  }

  dimension: is_generated {
    type: yesno
    sql: ${TABLE}.is_generated ;;
  }

  dimension: is_in_program {
    type: yesno
    sql: ${TABLE}.is_in_program ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: is_lead_success {
    type: yesno
    sql: ${TABLE}.is_lead_success ;;
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

  dimension: membership_date_key {
    type: number
    sql: ${TABLE}.membership_date_key ;;
  }

  dimension: orig_lead_key {
    type: number
    sql: ${TABLE}.orig_lead_key ;;
  }

  dimension: orig_lead_source_id {
    type: string
    sql: ${TABLE}.orig_lead_source_id ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
  }

  dimension: progression_activity_date_key {
    type: number
    sql: ${TABLE}.progression_activity_date_key ;;
  }

  dimension_group: progression_activity_date {
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
    sql: ${TABLE}.progression_activity_date_time ;;
  }

  dimension: progression_activity_key {
    type: number
    sql: ${TABLE}.progression_activity_key ;;
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

  dimension: success_date_key {
    type: number
    sql: ${TABLE}.success_date_key ;;
  }

  dimension: to_progression_status_key {
    type: number
    sql: ${TABLE}.to_progression_status_key ;;
  }

  dimension: to_progression_status_source_id {
    type: string
    sql: ${TABLE}.to_progression_status_source_id ;;
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
