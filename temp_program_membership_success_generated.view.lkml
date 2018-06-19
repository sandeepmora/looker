view: temp_program_membership_success_generated {
  sql_table_name: simon12_warehouse.temp_program_membership_success_generated ;;

  dimension_group: acquisition {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.acquisition_date ;;
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

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_generated {
    type: yesno
    sql: ${TABLE}.is_generated ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: is_success {
    type: yesno
    sql: ${TABLE}.is_success ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension_group: membership_date {
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
    sql: ${TABLE}.membership_date_time ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
  }

  dimension: program_membership_key {
    type: number
    sql: ${TABLE}.program_membership_key ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
  }

  dimension_group: success {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.success_date ;;
  }

  dimension_group: success_date {
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
    sql: ${TABLE}.success_date_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
