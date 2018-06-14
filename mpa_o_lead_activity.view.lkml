view: mpa_o_lead_activity {
  sql_table_name: simon12_warehouse.mpa_o_lead_activity ;;

  dimension: activity_attribute_values {
    type: string
    sql: ${TABLE}.activity_attribute_values ;;
  }

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

  dimension: activity_lead_owner_source_id {
    type: string
    sql: ${TABLE}.activity_lead_owner_source_id ;;
  }

  dimension: activity_log_id {
    type: number
    sql: ${TABLE}.activity_log_id ;;
  }

  dimension: activity_type {
    type: string
    sql: ${TABLE}.activity_type ;;
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

  dimension: is_activity_merged {
    type: yesno
    sql: ${TABLE}.is_activity_merged ;;
  }

  dimension: lead_activity_key {
    type: number
    sql: ${TABLE}.lead_activity_key ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: orig_lead_source_id {
    type: string
    sql: ${TABLE}.orig_lead_source_id ;;
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
