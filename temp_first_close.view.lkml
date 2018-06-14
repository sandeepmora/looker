view: temp_first_close {
  sql_table_name: simon12_warehouse.temp_first_close ;;

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
