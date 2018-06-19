view: temp_buffer_progression_activity {
  sql_table_name: simon12_warehouse.temp_buffer_progression_activity ;;

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

  dimension: to_progression_status_source_id {
    type: string
    sql: ${TABLE}.to_progression_status_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
