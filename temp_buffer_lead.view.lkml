view: temp_buffer_lead {
  sql_table_name: simon12_warehouse.temp_buffer_lead ;;

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
