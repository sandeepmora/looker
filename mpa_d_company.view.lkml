view: mpa_d_company {

  sql_table_name: POC_TABLES.MPA_D_COMPANY ;;

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}."ANNUAL_REVENUE" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: company_key {
    type: number
    sql: ${TABLE}."COMPANY_KEY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
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

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_private {
    type: number
    sql: ${TABLE}."IS_PRIVATE" ;;
  }

  dimension: is_sfdc_deleted {
    type: number
    sql: ${TABLE}."IS_SFDC_DELETED" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}."NUMBER_OF_EMPLOYEES" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."POSTAL_CODE" ;;
  }

  dimension: sic_code {
    type: string
    sql: ${TABLE}."SIC_CODE" ;;
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

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
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

  dimension: x_1_crm_system {
    type: string
    sql: ${TABLE}."X_1_CRM_SYSTEM" ;;
  }

  dimension: x_1_current_mrm_ma_solution__a_ {
    type: string
    sql: ${TABLE}."X_1_CURRENT_MRM_MA_SOLUTION__A_" ;;
  }

  dimension: x_1_customer_has_rca {
    type: number
    sql: ${TABLE}."X_1_CUSTOMER_HAS_RCA" ;;
  }

  dimension: x_1_customer_has_si {
    type: number
    sql: ${TABLE}."X_1_CUSTOMER_HAS_SI" ;;
  }

  dimension_group: x_1_date_became_a_customer {
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
    sql: ${TABLE}."X_1_DATE_BECAME_A_CUSTOMER" ;;
  }

  dimension: x_1_employee_range {
    type: string
    sql: ${TABLE}."X_1_EMPLOYEE_RANGE" ;;
  }

  dimension: x_1_enterprise {
    type: number
    sql: ${TABLE}."X_1_ENTERPRISE" ;;
  }

  dimension: x_819_cam_owner {
    type: string
    sql: ${TABLE}."X_819_CAM_OWNER" ;;
  }

  dimension: x_819_gainsight__total_known_lead_count {
    type: number
    sql: ${TABLE}."X_819_GAINSIGHT__TOTAL_KNOWN_LEAD_COUNT" ;;
  }

  dimension: x_819_gainsight__usage__ {
    type: number
    sql: ${TABLE}."X_819_GAINSIGHT__USAGE__" ;;
  }

  dimension: x_819_sfdc_type {
    type: string
    sql: ${TABLE}."X_819_SFDC_TYPE" ;;
  }

  dimension: x_9_account_score {
    type: number
    sql: ${TABLE}."X_9_ACCOUNT_SCORE" ;;
  }

  dimension_group: x_9_acct_renewal {
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
    sql: ${TABLE}."X_9_ACCT_RENEWAL_DATE" ;;
  }

  dimension: x_9_add_on_subscriptions {
    type: string
    sql: ${TABLE}."X_9_ADD_ON_SUBSCRIPTIONS" ;;
  }

  dimension: x_9_address {
    type: string
    sql: ${TABLE}."X_9_ADDRESS" ;;
  }

  dimension: x_9_country__a_ {
    type: string
    sql: ${TABLE}."X_9_COUNTRY__A_" ;;
  }

  dimension: x_9_inferred_country__a_ {
    type: string
    sql: ${TABLE}."X_9_INFERRED_COUNTRY__A_" ;;
  }

  dimension: x_9_mktg_sub_industry {
    type: string
    sql: ${TABLE}."X_9_MKTG_SUB_INDUSTRY" ;;
  }

  dimension: x_9_target_account {
    type: number
    sql: ${TABLE}."X_9_TARGET_ACCOUNT" ;;
  }

  dimension: x_9_target_account__a_ {
    type: string
    sql: ${TABLE}."X_9_TARGET_ACCOUNT__A_" ;;
  }

  dimension: x_9_target_account_tier {
    type: string
    sql: ${TABLE}."X_9_TARGET_ACCOUNT_TIER" ;;
  }

  dimension: x_9_use_case {
    type: string
    sql: ${TABLE}."X_9_USE_CASE" ;;
  }

  dimension: x_9_use_case__a_ {
    type: string
    sql: ${TABLE}."X_9_USE_CASE__A_" ;;

  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
