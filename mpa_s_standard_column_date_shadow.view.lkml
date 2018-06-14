view: mpa_s_standard_column_date_shadow {
  sql_table_name: simon12_warehouse.mpa_s_standard_column_date_shadow ;;

  dimension_group: col_1 {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.col_1 ;;
  }

  dimension_group: col_2 {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.col_2 ;;
  }

  dimension_group: col_3 {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.col_3 ;;
  }

  dimension_group: col_4 {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.col_4 ;;
  }

  dimension_group: col_5 {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
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
