view: mpa_s_standard_column_float_shadow {
  sql_table_name: simon12_warehouse.mpa_s_standard_column_float_shadow ;;

  dimension: col_1 {
    type: number
    sql: ${TABLE}.col_1 ;;
  }

  dimension: col_2 {
    type: number
    sql: ${TABLE}.col_2 ;;
  }

  dimension: col_3 {
    type: number
    sql: ${TABLE}.col_3 ;;
  }

  dimension: col_4 {
    type: number
    sql: ${TABLE}.col_4 ;;
  }

  dimension: col_5 {
    type: number
    sql: ${TABLE}.col_5 ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}.row_id ;;
  }

  dimension: source_object {
    type: string
    sql: ${TABLE}.source_object ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
