view: mpa_t_opportunity {
  sql_table_name: simon12_warehouse.mpa_t_opportunity ;;

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
