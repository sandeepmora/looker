view: mpa_t_lead_activity_program_activity {
  sql_table_name: simon12_warehouse.mpa_t_lead_activity_program_activity ;;

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

  dimension: progression_activity_key {
    type: number
    sql: ${TABLE}.progression_activity_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
