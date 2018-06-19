view: mpa_d_etl_history {
  sql_table_name: POC_TABLES.MPA_D_ETL_HISTORY ;;

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
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
    sql: ${TABLE}."ENDED_AT" ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}."ETL_HISTORY_KEY" ;;
  }

  dimension: etl_run_id {
    type: number
    sql: ${TABLE}."ETL_RUN_ID" ;;
  }

  dimension: etl_version {
    type: string
    sql: ${TABLE}."ETL_VERSION" ;;
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
    sql: ${TABLE}."EXTRACT_CUTOFF_AT" ;;
  }

  dimension: is_full_etl {
    type: number
    sql: ${TABLE}."IS_FULL_ETL" ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}."JOB_NAME" ;;
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
    sql: ${TABLE}."LAST_EXTRACTED_AT" ;;
  }

  dimension: run_by {
    type: string
    sql: ${TABLE}."RUN_BY" ;;
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
    sql: ${TABLE}."STARTED_AT" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: warehouse_version {
    type: string
    sql: ${TABLE}."WAREHOUSE_VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: [job_name]
  }
}
