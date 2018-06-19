view: mpa_s_lead_attribute_score_history {
  sql_table_name: simon12_warehouse.mpa_s_lead_attribute_score_history ;;

  dimension: activity_log_id {
    type: number
    sql: ${TABLE}.activity_log_id ;;
  }

  dimension_group: ended {
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
    sql: ${TABLE}.ended_at ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: orig_lead_source_id {
    type: string
    sql: ${TABLE}.orig_lead_source_id ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: score_type {
    type: string
    sql: ${TABLE}.score_type ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}.started_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
