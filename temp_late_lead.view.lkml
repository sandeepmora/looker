view: temp_late_lead {
  sql_table_name: simon12_warehouse.temp_late_lead ;;

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
