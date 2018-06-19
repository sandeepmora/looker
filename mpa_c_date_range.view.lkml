view: mpa_c_date_range {
  sql_table_name: simon12_warehouse.mpa_c_date_range ;;

  dimension: from_year {
    type: number
    sql: ${TABLE}.from_year ;;
  }

  dimension: to_year {
    type: number
    sql: ${TABLE}.to_year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
