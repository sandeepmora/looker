view: mpa_t_program_membership_override_success {
  sql_table_name: simon12_warehouse.mpa_t_program_membership_override_success ;;

  dimension: is_success {
    type: yesno
    sql: ${TABLE}.is_success ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: max_activity_log_id {
    type: number
    sql: ${TABLE}.max_activity_log_id ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
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

  dimension_group: success_date {
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
    sql: ${TABLE}.success_date_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
