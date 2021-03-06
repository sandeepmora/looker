view: t_mpa_s_standard_value {
  sql_table_name: simon12_warehouse.t_mpa_s_standard_value ;;

  dimension: col_1 {
    type: string
    sql: ${TABLE}.col_1 ;;
  }

  dimension: col_2 {
    type: string
    sql: ${TABLE}.col_2 ;;
  }

  dimension: col_3 {
    type: string
    sql: ${TABLE}.col_3 ;;
  }

  dimension: col_4 {
    type: string
    sql: ${TABLE}.col_4 ;;
  }

  dimension: col_5 {
    type: string
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
