view: temp_compare_lead {
  sql_table_name: simon12_warehouse.temp_compare_lead ;;

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
