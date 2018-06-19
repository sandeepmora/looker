view: mpa_d_lead {

  sql_table_name: POC_TABLES.MPA_D_LEAD ;;

  dimension: abm_account_key {
    type: number
    sql: ${TABLE}."ABM_ACCOUNT_KEY" ;;
  }

  dimension: abm_account_source_id {
    type: number
    sql: ${TABLE}."ABM_ACCOUNT_SOURCE_ID" ;;
  }

  dimension_group: acquisition {
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
    sql: ${TABLE}."ACQUISITION_DATE" ;;
  }

  dimension: acquisition_date_key {
    type: number
    sql: ${TABLE}."ACQUISITION_DATE_KEY" ;;
  }

  dimension: acquisition_program_key {
    type: number
    sql: ${TABLE}."ACQUISITION_PROGRAM_KEY" ;;
  }

  dimension: acquisition_program_source_id {
    type: string
    sql: ${TABLE}."ACQUISITION_PROGRAM_SOURCE_ID" ;;
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
    type: number
    sql: ${TABLE}."IS_BLACK_LISTED" ;;
  }

  dimension: is_converted_to_opportunity {
    type: number
    sql: ${TABLE}."IS_CONVERTED_TO_OPPORTUNITY" ;;
  }

  dimension: is_email_invalid {
    type: number
    value_format_name: id
    sql: ${TABLE}."IS_EMAIL_INVALID" ;;
  }

  dimension: is_email_opt_out {
    type: number
    sql: ${TABLE}."IS_EMAIL_OPT_OUT" ;;
  }

  dimension: is_key_resolved {
    type: number
    sql: ${TABLE}."IS_KEY_RESOLVED" ;;
  }

  dimension: is_marketing_suspended {
    type: number
    sql: ${TABLE}."IS_MARKETING_SUSPENDED" ;;
  }

  dimension: is_phone_opt_out {
    type: number
    sql: ${TABLE}."IS_PHONE_OPT_OUT" ;;
  }

  dimension: is_private {
    type: number
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

  dimension_group: lead_created_date {
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
    sql: ${TABLE}."LEAD_CREATED_DATE_TIME" ;;
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

  dimension_group: opportunity_created {
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
    sql: ${TABLE}."OPPORTUNITY_CREATED_DATE" ;;
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

  dimension: x_175_sort_score {
    type: number
    sql: ${TABLE}."X_175_SORT_SCORE" ;;
  }

  dimension_group: x_2_acquisition {
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
    sql: ${TABLE}."X_2_ACQUISITION_DATE" ;;
  }

  dimension: x_2_behavior_score {
    type: number
    sql: ${TABLE}."X_2_BEHAVIOR_SCORE" ;;
  }

  dimension: x_2_business_unit {
    type: string
    sql: ${TABLE}."X_2_BUSINESS_UNIT" ;;
  }

  dimension: x_2_buying_behavior {
    type: string
    sql: ${TABLE}."X_2_BUYING_BEHAVIOR" ;;
  }

  dimension: x_2_city {
    type: string
    sql: ${TABLE}."X_2_CITY" ;;
  }

  dimension: x_2_contact_source {
    type: string
    sql: ${TABLE}."X_2_CONTACT_SOURCE" ;;
  }

  dimension: x_2_country {
    type: string
    sql: ${TABLE}."X_2_COUNTRY" ;;
  }

  dimension: x_2_current_marketing_automation_solution {
    type: string
    sql: ${TABLE}."X_2_CURRENT_MARKETING_AUTOMATION_SOLUTION" ;;
  }

  dimension: x_2_current_mrm_ma_solution {
    type: string
    sql: ${TABLE}."X_2_CURRENT_MRM_MA_SOLUTION" ;;
  }

  dimension: x_2_customer_has_si {
    type: number
    sql: ${TABLE}."X_2_CUSTOMER_HAS_SI" ;;
  }

  dimension: x_2_deleted_in_sales {
    type: number
    sql: ${TABLE}."X_2_DELETED_IN_SALES" ;;
  }

  dimension: x_2_demographic_score {
    type: number
    sql: ${TABLE}."X_2_DEMOGRAPHIC_SCORE" ;;
  }

  dimension: x_2_employee_range_summary {
    type: string
    sql: ${TABLE}."X_2_EMPLOYEE_RANGE_SUMMARY" ;;
  }

  dimension: x_2_enterprise {
    type: number
    sql: ${TABLE}."X_2_ENTERPRISE" ;;
  }

  dimension: x_2_executiverole {
    type: number
    sql: ${TABLE}."X_2_EXECUTIVEROLE" ;;
  }

  dimension: x_2_globalhqcountry {
    type: string
    sql: ${TABLE}."X_2_GLOBALHQCOUNTRY" ;;
  }

  dimension: x_2_globalhqnaicscode {
    type: string
    sql: ${TABLE}."X_2_GLOBALHQNAICSCODE" ;;
  }

  dimension: x_2_globalhqnaicsname {
    type: string
    sql: ${TABLE}."X_2_GLOBALHQNAICSNAME" ;;
  }

  dimension: x_2_globalhqstate {
    type: string
    sql: ${TABLE}."X_2_GLOBALHQSTATE" ;;
  }

  dimension: x_2_industry__l_ {
    type: string
    sql: ${TABLE}."X_2_INDUSTRY__L_" ;;
  }

  dimension: x_2_inferred_company {
    type: string
    sql: ${TABLE}."X_2_INFERRED_COMPANY" ;;
  }

  dimension: x_2_inferred_country {
    type: string
    sql: ${TABLE}."X_2_INFERRED_COUNTRY" ;;
  }

  dimension: x_2_inferred_phone_area_code {
    type: string
    sql: ${TABLE}."X_2_INFERRED_PHONE_AREA_CODE" ;;
  }

  dimension: x_2_inferred_sales_rep {
    type: string
    sql: ${TABLE}."X_2_INFERRED_SALES_REP" ;;
  }

  dimension: x_2_inferred_state_region {
    type: string
    sql: ${TABLE}."X_2_INFERRED_STATE_REGION" ;;
  }

  dimension: x_2_job_function__c {
    type: string
    sql: ${TABLE}."X_2_JOB_FUNCTION__C" ;;
  }

  dimension: x_2_lead_category {
    type: string
    sql: ${TABLE}."X_2_LEAD_CATEGORY" ;;
  }

  dimension: x_2_lead_category_buying_behavior {
    type: string
    sql: ${TABLE}."X_2_LEAD_CATEGORY_BUYING_BEHAVIOR" ;;
  }

  dimension_group: x_2_lead_promotion_date__c {
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
    sql: ${TABLE}."X_2_LEAD_PROMOTION_DATE__C" ;;
  }

  dimension: x_2_lead_promotion_source {
    type: string
    sql: ${TABLE}."X_2_LEAD_PROMOTION_SOURCE" ;;
  }

  dimension: x_2_lead_source_comments__c {
    type: string
    sql: ${TABLE}."X_2_LEAD_SOURCE_COMMENTS__C" ;;
  }

  dimension: x_2_lead_to_sales_lead {
    type: number
    sql: ${TABLE}."X_2_LEAD_TO_SALES_LEAD" ;;
  }

  dimension: x_2_marketingexec {
    type: number
    sql: ${TABLE}."X_2_MARKETINGEXEC" ;;
  }

  dimension: x_2_marketingrole {
    type: number
    sql: ${TABLE}."X_2_MARKETINGROLE" ;;
  }

  dimension: x_2_marketo_end_user {
    type: number
    sql: ${TABLE}."X_2_MARKETO_END_USER" ;;
  }

  dimension: x_2_msi_lead_score {
    type: number
    sql: ${TABLE}."X_2_MSI_LEAD_SCORE" ;;
  }

  dimension: x_2_naicscode {
    type: string
    sql: ${TABLE}."X_2_NAICSCODE" ;;
  }

  dimension: x_2_naicsname {
    type: string
    sql: ${TABLE}."X_2_NAICSNAME" ;;
  }

  dimension: x_2_negative_demographic_score {
    type: number
    sql: ${TABLE}."X_2_NEGATIVE_DEMOGRAPHIC_SCORE" ;;
  }

  dimension: x_2_nurture_campaign_assigned {
    type: string
    sql: ${TABLE}."X_2_NURTURE_CAMPAIGN_ASSIGNED" ;;
  }

  dimension: x_2_parentleadsource {
    type: string
    sql: ${TABLE}."X_2_PARENTLEADSOURCE" ;;
  }

  dimension: x_2_partner {
    type: string
    sql: ${TABLE}."X_2_PARTNER" ;;
  }

  dimension: x_2_partner_of_record {
    type: string
    sql: ${TABLE}."X_2_PARTNER_OF_RECORD" ;;
  }

  dimension: x_2_positive_demographic_score {
    type: number
    sql: ${TABLE}."X_2_POSITIVE_DEMOGRAPHIC_SCORE" ;;
  }

  dimension: x_2_ppc_ad_group {
    type: string
    sql: ${TABLE}."X_2_PPC_AD_GROUP" ;;
  }

  dimension: x_2_ppc_campaign {
    type: string
    sql: ${TABLE}."X_2_PPC_CAMPAIGN" ;;
  }

  dimension: x_2_ppc_keyword_most_recent {
    type: string
    sql: ${TABLE}."X_2_PPC_KEYWORD_MOST_RECENT" ;;
  }

  dimension: x_2_ppc_keyword_original {
    type: string
    sql: ${TABLE}."X_2_PPC_KEYWORD_ORIGINAL" ;;
  }

  dimension: x_2_primary_product_interest {
    type: string
    sql: ${TABLE}."X_2_PRIMARY_PRODUCT_INTEREST" ;;
  }

  dimension: x_2_program_that_captured_name {
    type: string
    sql: ${TABLE}."X_2_PROGRAM_THAT_CAPTURED_NAME" ;;
  }

  dimension: x_2_prospect_ {
    type: number
    sql: ${TABLE}."X_2_PROSPECT_" ;;
  }

  dimension_group: x_2_prospect_create {
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
    sql: ${TABLE}."X_2_PROSPECT_CREATE_DATE" ;;
  }

  dimension: x_2_record_type_id {
    type: string
    sql: ${TABLE}."X_2_RECORD_TYPE_ID" ;;
  }

  dimension: x_2_recycle_count {
    type: number
    sql: ${TABLE}."X_2_RECYCLE_COUNT" ;;
  }

  dimension: x_2_recycle_timeframe {
    type: string
    sql: ${TABLE}."X_2_RECYCLE_TIMEFRAME" ;;
  }

  dimension: x_2_recycled_reason__c {
    type: string
    sql: ${TABLE}."X_2_RECYCLED_REASON__C" ;;
  }

  dimension: x_2_revenue_band {
    type: string
    sql: ${TABLE}."X_2_REVENUE_BAND" ;;
  }

  dimension: x_2_role_summary {
    type: string
    sql: ${TABLE}."X_2_ROLE_SUMMARY" ;;
  }

  dimension_group: x_2_sales_lead {
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
    sql: ${TABLE}."X_2_SALES_LEAD_DATE" ;;
  }

  dimension: x_2_sdr_owner {
    type: string
    sql: ${TABLE}."X_2_SDR_OWNER" ;;
  }

  dimension: x_2_sdr_owner_look_up {
    type: string
    sql: ${TABLE}."X_2_SDR_OWNER_LOOK_UP" ;;
  }

  dimension: x_2_segment {
    type: string
    sql: ${TABLE}."X_2_SEGMENT" ;;
  }

  dimension: x_2_state {
    type: string
    sql: ${TABLE}."X_2_STATE" ;;
  }

  dimension: x_2_target_status {
    type: string
    sql: ${TABLE}."X_2_TARGET_STATUS" ;;
  }

  dimension: x_2_touch_stage {
    type: string
    sql: ${TABLE}."X_2_TOUCH_STAGE" ;;
  }

  dimension_group: x_2_unsubscribe {
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
    sql: ${TABLE}."X_2_UNSUBSCRIBE_DATE" ;;
  }

  dimension: x_7_account_id__c_ {
    type: string
    sql: ${TABLE}."X_7_ACCOUNT_ID__C_" ;;
  }

  dimension_group: x_7_last_mql_created {
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
    sql: ${TABLE}."X_7_LAST_MQL_CREATED_DATE" ;;
  }

  dimension: x_7_mktg_sub_industry__l_ {
    type: string
    sql: ${TABLE}."X_7_MKTG_SUB_INDUSTRY__L_" ;;
  }

  dimension: x_7_partner_reg_source {
    type: string
    sql: ${TABLE}."X_7_PARTNER_REG_SOURCE" ;;
  }

  dimension: x_7_target_account__c_ {
    type: string
    sql: ${TABLE}."X_7_TARGET_ACCOUNT__C_" ;;
  }

  dimension: x_7_target_account__l_ {
    type: string
    sql: ${TABLE}."X_7_TARGET_ACCOUNT__L_" ;;
  }

  dimension: x_817_account_id {
    type: string
    sql: ${TABLE}."X_817_ACCOUNT_ID" ;;
  }

  dimension: x_817_assumed_product_interest {
    type: string
    sql: ${TABLE}."X_817_ASSUMED_PRODUCT_INTEREST" ;;
  }

  dimension: x_817_cam_owner__c_ {
    type: string
    sql: ${TABLE}."X_817_CAM_OWNER__C_" ;;
  }

  dimension: x_817_customer_lead_status {
    type: string
    sql: ${TABLE}."X_817_CUSTOMER_LEAD_STATUS" ;;
  }

  dimension: x_817_phone_number {
    type: string
    sql: ${TABLE}."X_817_PHONE_NUMBER" ;;
  }

  dimension: x_817_telephone_number {
    type: number
    sql: ${TABLE}."X_817_TELEPHONE_NUMBER" ;;
  }

  dimension: x_817_topic_of_interest {
    type: string
    sql: ${TABLE}."X_817_TOPIC_OF_INTEREST" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, x_2_program_that_captured_name, x_2_globalhqnaicsname, x_2_naicsname]

  }
}
