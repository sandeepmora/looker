view: mpa_d_revenue_model_cycle {

  sql_table_name: POC_TABLES.MPA_D_REVENUE_MODEL_CYCLE ;;

  dimension: approved_date_key {
    type: number
    sql: ${TABLE}."APPROVED_DATE_KEY" ;;
  }

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

  dimension: is_initialized {
    type: number
    sql: ${TABLE}."IS_INITIALIZED" ;;
  }

  dimension: is_key_resolved {
    type: number
    sql: ${TABLE}."IS_KEY_RESOLVED" ;;
  }

  dimension: is_model_cycle_active {
    type: number
    sql: ${TABLE}."IS_MODEL_CYCLE_ACTIVE" ;;
  }

  dimension: model_id {
    type: number
    sql: ${TABLE}."MODEL_ID" ;;
  }

  dimension: revenue_model_cycle_key {
    type: number
    sql: ${TABLE}."REVENUE_MODEL_CYCLE_KEY" ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}."SOURCE_ID" ;;
  }

  dimension: unapproved_date_key {
    type: number
    sql: ${TABLE}."UNAPPROVED_DATE_KEY" ;;
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
    drill_fields: []
  }
}
