view: mpa_t_object_touched {
  sql_table_name: simon12_warehouse.mpa_t_object_touched ;;

  dimension: object_key {
    type: number
    sql: ${TABLE}.object_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
