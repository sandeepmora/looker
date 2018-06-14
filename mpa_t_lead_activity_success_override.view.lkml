view: mpa_t_lead_activity_success_override {
  sql_table_name: simon12_warehouse.mpa_t_lead_activity_success_override ;;

  dimension: activity_log_id {
    type: number
    sql: ${TABLE}.activity_log_id ;;
  }

  dimension: is_success {
    type: yesno
    sql: ${TABLE}.is_success ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
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
