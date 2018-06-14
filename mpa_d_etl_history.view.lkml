view: mpa_d_etl_history {
  sql_table_name: simon12_warehouse.mpa_d_etl_history ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: ended {
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
    sql: ${TABLE}.ended_at ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: etl_run_id {
    type: number
    sql: ${TABLE}.etl_run_id ;;
  }

  dimension: etl_version {
    type: string
    sql: ${TABLE}.etl_version ;;
  }

  dimension_group: extract_cutoff {
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
    sql: ${TABLE}.extract_cutoff_at ;;
  }

  dimension: is_full_etl {
    type: yesno
    sql: ${TABLE}.is_full_etl ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension_group: last_extracted {
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
    sql: ${TABLE}.last_extracted_at ;;
  }

  dimension: run_by {
    type: string
    sql: ${TABLE}.run_by ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}.started_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: warehouse_version {
    type: string
    sql: ${TABLE}.warehouse_version ;;
  }

  measure: count {
    type: count
    drill_fields: [job_name]
  }
}
