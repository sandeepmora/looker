view: mpa_c_version {
  sql_table_name: simon12_warehouse.mpa_c_version ;;

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
