view: mpa_t_program_current_status {
  sql_table_name: simon12_warehouse.mpa_t_program_current_status ;;

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: program_current_status_key {
    type: number
    sql: ${TABLE}.program_current_status_key ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
