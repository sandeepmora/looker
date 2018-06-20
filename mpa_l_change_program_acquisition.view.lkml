view: mpa_l_change_program_acquisition {
  sql_table_name: simon12_warehouse.mpa_l_change_program_acquisition ;;

  dimension: acquisition_date_key {
    type: number
    sql: ${TABLE}.acquisition_date_key ;;
  }

  dimension_group: acquisition_date {
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
    sql: ${TABLE}.acquisition_date_time ;;
  }

  dimension: acquisition_program_key {
    type: number
    sql: ${TABLE}.acquisition_program_key ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension_group: source_updated {
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
    sql: ${TABLE}.source_updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
