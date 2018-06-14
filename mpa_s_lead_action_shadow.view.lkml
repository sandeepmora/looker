view: mpa_s_lead_action_shadow {
  sql_table_name: simon12_warehouse.mpa_s_lead_action_shadow ;;

  dimension_group: curr_lead_action_date {
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
    sql: ${TABLE}.curr_lead_action_date_time ;;
  }

  dimension_group: lead_action_date {
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
    sql: ${TABLE}.lead_action_date_time ;;
  }

  dimension: lead_action_type {
    type: string
    sql: ${TABLE}.lead_action_type ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: master_lead_source_id {
    type: string
    sql: ${TABLE}.master_lead_source_id ;;
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

  dimension: source_log_id {
    type: number
    sql: ${TABLE}.source_log_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
