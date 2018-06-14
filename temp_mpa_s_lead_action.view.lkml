view: temp_mpa_s_lead_action {
  sql_table_name: simon12_warehouse.temp_mpa_s_lead_action ;;

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

  dimension: source_log_id {
    type: number
    sql: ${TABLE}.source_log_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
