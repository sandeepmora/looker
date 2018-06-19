view: mpa_v_email_activity {
  sql_table_name: POC_TABLES.MPA_V_EMAIL_ACTIVITY ;;

  dimension: abm_account_key {
    type: number
    sql: ${TABLE}."ABM_ACCOUNT_KEY" ;;
  }

  dimension: acquisition_program_key {
    type: number
    sql: ${TABLE}."ACQUISITION_PROGRAM_KEY" ;;
  }

  dimension: campaign_key {
    type: number
    sql: ${TABLE}."CAMPAIGN_KEY" ;;
  }

  dimension: clicked_ali_id {
    type: number
    sql: ${TABLE}."CLICKED_ALI_ID" ;;
  }

  dimension: clicked_date_key {
    type: number
    sql: ${TABLE}."CLICKED_DATE_KEY" ;;
  }

  dimension: clicked_hour {
    type: number
    sql: ${TABLE}."CLICKED_HOUR" ;;
  }

  dimension: company_key {
    type: number
    sql: ${TABLE}."COMPANY_KEY" ;;
  }

  dimension: complaint_ali_id {
    type: number
    sql: ${TABLE}."COMPLAINT_ALI_ID" ;;
  }

  dimension: complaint_date_key {
    type: number
    sql: ${TABLE}."COMPLAINT_DATE_KEY" ;;
  }

  dimension: complaint_hour {
    type: number
    sql: ${TABLE}."COMPLAINT_HOUR" ;;
  }

  dimension: delivered_ali_id {
    type: number
    sql: ${TABLE}."DELIVERED_ALI_ID" ;;
  }

  dimension: delivered_date_key {
    type: number
    sql: ${TABLE}."DELIVERED_DATE_KEY" ;;
  }

  dimension: delivered_hour {
    type: number
    sql: ${TABLE}."DELIVERED_HOUR" ;;
  }

  dimension: domain_key {
    type: number
    sql: ${TABLE}."DOMAIN_KEY" ;;
  }

  dimension: email_key {
    type: number
    sql: ${TABLE}."EMAIL_KEY" ;;
  }

  dimension: hard_bounced_ali_id {
    type: number
    sql: ${TABLE}."HARD_BOUNCED_ALI_ID" ;;
  }

  dimension: hard_bounced_date_key {
    type: number
    sql: ${TABLE}."HARD_BOUNCED_DATE_KEY" ;;
  }

  dimension: hard_bounced_hour {
    type: number
    sql: ${TABLE}."HARD_BOUNCED_HOUR" ;;
  }

  dimension: is_first_click {
    type: number
    sql: ${TABLE}."IS_FIRST_CLICK" ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}."LEAD_KEY" ;;
  }

  dimension: lead_owner_key {
    type: number
    sql: ${TABLE}."LEAD_OWNER_KEY" ;;
  }

  dimension: lead_source_key {
    type: number
    sql: ${TABLE}."LEAD_SOURCE_KEY" ;;
  }

  dimension: lead_status_key {
    type: number
    sql: ${TABLE}."LEAD_STATUS_KEY" ;;
  }

  dimension: link_key {
    type: number
    sql: ${TABLE}."LINK_KEY" ;;
  }

  dimension: opened_ali_id {
    type: number
    sql: ${TABLE}."OPENED_ALI_ID" ;;
  }

  dimension: opened_date_key {
    type: number
    sql: ${TABLE}."OPENED_DATE_KEY" ;;
  }

  dimension: opened_hour {
    type: number
    sql: ${TABLE}."OPENED_HOUR" ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}."PROGRAM_KEY" ;;
  }

  dimension: sent_ali_id {
    type: number
    sql: ${TABLE}."SENT_ALI_ID" ;;
  }

  dimension: sent_date_key {
    type: number
    sql: ${TABLE}."SENT_DATE_KEY" ;;
  }

  dimension: sent_hour {
    type: number
    sql: ${TABLE}."SENT_HOUR" ;;
  }

  dimension: unsubscribed_ali_id {
    type: number
    sql: ${TABLE}."UNSUBSCRIBED_ALI_ID" ;;
  }

  dimension: unsubscribed_date_key {
    type: number
    sql: ${TABLE}."UNSUBSCRIBED_DATE_KEY" ;;
  }

  dimension: unsubscribed_hour {
    type: number
    sql: ${TABLE}."UNSUBSCRIBED_HOUR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
