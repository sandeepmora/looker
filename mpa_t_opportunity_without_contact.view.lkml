view: mpa_t_opportunity_without_contact {
  sql_table_name: simon12_warehouse.mpa_t_opportunity_without_contact ;;

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
