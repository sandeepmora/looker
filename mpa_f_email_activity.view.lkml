view: mpa_f_email_activity {
  sql_table_name: POC_TABLES.MPA_F_EMAIL_ACTIVITY ;;

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

  dimension: email_activity_key {
    type: number
    sql: ${TABLE}."EMAIL_ACTIVITY_KEY" ;;
  }

  dimension: email_key {
    type: number
    sql: ${TABLE}."EMAIL_KEY" ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}."ETL_HISTORY_KEY" ;;
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

  dimension: is_active {
    type: number
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_first_click {
    type: number
    sql: ${TABLE}."IS_FIRST_CLICK" ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}."LEAD_KEY" ;;
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
