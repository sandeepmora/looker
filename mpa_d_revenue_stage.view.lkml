view: mpa_d_revenue_stage {
  sql_table_name: POC_TABLES.MPA_D_REVENUE_STAGE ;;

  dimension: aggregation {
    type: number
    sql: ${TABLE}."AGGREGATION" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}."ETL_HISTORY_KEY" ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_approved {
    type: number
    sql: ${TABLE}."IS_APPROVED" ;;
  }

  dimension: is_key_resolved {
    type: number
    sql: ${TABLE}."IS_KEY_RESOLVED" ;;
  }

  dimension: is_success_path {
    type: number
    sql: ${TABLE}."IS_SUCCESS_PATH" ;;
  }

  dimension: is_tracked_by_account {
    type: number
    sql: ${TABLE}."IS_TRACKED_BY_ACCOUNT" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: revenue_model_version_key {
    type: number
    sql: ${TABLE}."REVENUE_MODEL_VERSION_KEY" ;;
  }

  dimension: revenue_model_version_source_id {
    type: string
    sql: ${TABLE}."REVENUE_MODEL_VERSION_SOURCE_ID" ;;
  }

  dimension: revenue_stage_key {
    type: number
    sql: ${TABLE}."REVENUE_STAGE_KEY" ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}."SEQUENCE" ;;
  }

  dimension_group: source_created {
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
    sql: ${TABLE}."SOURCE_CREATED_AT" ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}."SOURCE_ID" ;;
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
    sql: ${TABLE}."SOURCE_UPDATED_AT" ;;
  }

  dimension: stage_version_id {
    type: number
    sql: ${TABLE}."STAGE_VERSION_ID" ;;
  }

  dimension: time_unit {
    type: string
    sql: ${TABLE}."TIME_UNIT" ;;
  }

  dimension: time_value {
    type: number
    sql: ${TABLE}."TIME_VALUE" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."UPDATED_AT" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
