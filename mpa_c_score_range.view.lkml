view: mpa_c_score_range {
  sql_table_name: simon12_warehouse.mpa_c_score_range ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: high {
    type: number
    sql: ${TABLE}.high ;;
  }

  dimension: low {
    type: number
    sql: ${TABLE}.low ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
