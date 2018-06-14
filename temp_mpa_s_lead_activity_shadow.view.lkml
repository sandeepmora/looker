view: temp_mpa_s_lead_activity_shadow {
  sql_table_name: simon12_warehouse.temp_mpa_s_lead_activity_shadow ;;

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

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: orig_lead_source_id {
    type: string
    sql: ${TABLE}.orig_lead_source_id ;;
  }

  dimension: p_activity_type_id {
    type: number
    sql: ${TABLE}.p_activity_type_id ;;
  }

  dimension: p_discriminator {
    type: number
    sql: ${TABLE}.p_discriminator ;;
  }

  dimension: p_lead_id {
    type: number
    sql: ${TABLE}.p_lead_id ;;
  }

  dimension_group: p_persisted {
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
    sql: ${TABLE}.p_persisted_at ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
