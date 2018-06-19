view: mpa_v_lead {
  sql_table_name: POC_TABLES.MPA_V_LEAD ;;

  dimension: abm_account_key {
    type: number
    sql: ${TABLE}."ABM_ACCOUNT_KEY" ;;
  }

  dimension: abm_account_source_id {
    type: number
    sql: ${TABLE}."ABM_ACCOUNT_SOURCE_ID" ;;
  }

  dimension: company_key {
    type: number
    sql: ${TABLE}."COMPANY_KEY" ;;
  }

  dimension: company_source_id {
    type: string
    sql: ${TABLE}."COMPANY_SOURCE_ID" ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}."ETL_HISTORY_KEY" ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_black_listed {
    type: string
    sql: ${TABLE}."IS_BLACK_LISTED" ;;
  }

  dimension: is_converted_to_opportunity {
    type: string
    sql: ${TABLE}."IS_CONVERTED_TO_OPPORTUNITY" ;;
  }

  dimension: is_email_invalid {
    type: string
    sql: ${TABLE}."IS_EMAIL_INVALID" ;;
  }

  dimension: is_email_opt_out {
    type: string
    sql: ${TABLE}."IS_EMAIL_OPT_OUT" ;;
  }

  dimension: is_marketing_suspended {
    type: string
    sql: ${TABLE}."IS_MARKETING_SUSPENDED" ;;
  }

  dimension: is_phone_opt_out {
    type: string
    sql: ${TABLE}."IS_PHONE_OPT_OUT" ;;
  }

  dimension: is_private {
    type: string
    sql: ${TABLE}."IS_PRIVATE" ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}."JOB_TITLE" ;;
  }

  dimension_group: lead_created {
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
    sql: ${TABLE}."LEAD_CREATED_DATE" ;;
  }

  dimension: lead_created_date_key {
    type: number
    sql: ${TABLE}."LEAD_CREATED_DATE_KEY" ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}."LEAD_KEY" ;;
  }

  dimension: lead_owner_key {
    type: number
    sql: ${TABLE}."LEAD_OWNER_KEY" ;;
  }

  dimension: lead_owner_source_id {
    type: string
    sql: ${TABLE}."LEAD_OWNER_SOURCE_ID" ;;
  }

  dimension: lead_partition_key {
    type: number
    sql: ${TABLE}."LEAD_PARTITION_KEY" ;;
  }

  dimension: lead_partition_name {
    type: string
    sql: ${TABLE}."LEAD_PARTITION_NAME" ;;
  }

  dimension: lead_partition_source_id {
    type: number
    sql: ${TABLE}."LEAD_PARTITION_SOURCE_ID" ;;
  }

  dimension: lead_source_key {
    type: number
    sql: ${TABLE}."LEAD_SOURCE_KEY" ;;
  }

  dimension: lead_source_source_id {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_SOURCE_ID" ;;
  }

  dimension: lead_status_key {
    type: number
    sql: ${TABLE}."LEAD_STATUS_KEY" ;;
  }

  dimension: lead_status_source_id {
    type: string
    sql: ${TABLE}."LEAD_STATUS_SOURCE_ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: opportunity_created_date_key {
    type: number
    sql: ${TABLE}."OPPORTUNITY_CREATED_DATE_KEY" ;;
  }

  dimension: original_source_info {
    type: string
    sql: ${TABLE}."ORIGINAL_SOURCE_INFO" ;;
  }

  dimension: original_source_type {
    type: string
    sql: ${TABLE}."ORIGINAL_SOURCE_TYPE" ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: register_source_info {
    type: string
    sql: ${TABLE}."REGISTER_SOURCE_INFO" ;;
  }

  dimension: register_source_type {
    type: string
    sql: ${TABLE}."REGISTER_SOURCE_TYPE" ;;
  }

  dimension: relative_score {
    type: number
    sql: ${TABLE}."RELATIVE_SCORE" ;;
  }

  dimension: revenue_stage_key {
    type: number
    sql: ${TABLE}."REVENUE_STAGE_KEY" ;;
  }

  dimension: revenue_stage_source_id {
    type: string
    sql: ${TABLE}."REVENUE_STAGE_SOURCE_ID" ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}."SCORE" ;;
  }

  dimension: score_key {
    type: number
    sql: ${TABLE}."SCORE_KEY" ;;
  }

  dimension: score_source_id {
    type: string
    sql: ${TABLE}."SCORE_SOURCE_ID" ;;
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

  dimension: urgency {
    type: number
    sql: ${TABLE}."URGENCY" ;;
  }

  measure: count {
    type: count
    drill_fields: [lead_partition_name, name]
  }
}
