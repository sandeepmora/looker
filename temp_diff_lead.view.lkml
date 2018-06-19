view: temp_diff_lead {
  sql_table_name: simon12_warehouse.temp_diff_lead ;;

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
