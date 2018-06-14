view: temp_first_create {
  sql_table_name: simon12_warehouse.temp_first_create ;;

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
