view: mpa_s_progression_activity_mlm {
  sql_table_name: simon12_warehouse.mpa_s_progression_activity_mlm ;;

  dimension_group: activity_date {
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
    sql: ${TABLE}.activity_date_time ;;
  }

  dimension: activity_log_item_id {
    type: number
    sql: ${TABLE}.activity_log_item_id ;;
  }

  dimension: from_progression_status_source_id {
    type: string
    sql: ${TABLE}.from_progression_status_source_id ;;
  }

  dimension: is_success {
    type: yesno
    sql: ${TABLE}.is_success ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: orig_lead_source_id {
    type: string
    sql: ${TABLE}.orig_lead_source_id ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
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

  dimension: step {
    type: number
    sql: ${TABLE}.step ;;
  }

  dimension: to_progression_status_source_id {
    type: string
    sql: ${TABLE}.to_progression_status_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
