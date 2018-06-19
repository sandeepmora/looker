view: mpa_d_revenue_model_version {

  sql_table_name: POC_TABLES.MPA_D_REVENUE_MODEL_VERSION ;;

  dimension_group: approved_date {
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
    sql: ${TABLE}."APPROVED_DATE_TIME" ;;
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

  dimension: cycle_version {
    type: number
    sql: ${TABLE}."CYCLE_VERSION" ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}."ETL_HISTORY_KEY" ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_key_resolved {
    type: number
    sql: ${TABLE}."IS_KEY_RESOLVED" ;;
  }

  dimension: is_model_version_active {
    type: number
    sql: ${TABLE}."IS_MODEL_VERSION_ACTIVE" ;;
  }

  dimension: model_id {
    type: number
    sql: ${TABLE}."MODEL_ID" ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}."MODEL_NAME" ;;
  }

  dimension: model_version {
    type: number
    sql: ${TABLE}."MODEL_VERSION" ;;
  }

  dimension: model_version_id {
    type: number
    sql: ${TABLE}."MODEL_VERSION_ID" ;;
  }

  dimension: revenue_model_cycle_key {
    type: number
    sql: ${TABLE}."REVENUE_MODEL_CYCLE_KEY" ;;
  }

  dimension: revenue_model_cycle_source_id {
    type: string
    sql: ${TABLE}."REVENUE_MODEL_CYCLE_SOURCE_ID" ;;
  }

  dimension: revenue_model_version_key {
    type: number
    sql: ${TABLE}."REVENUE_MODEL_VERSION_KEY" ;;
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

  dimension_group: unapproved_date {
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
    sql: ${TABLE}."UNAPPROVED_DATE_TIME" ;;
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
    drill_fields: [model_name]
  }
}
