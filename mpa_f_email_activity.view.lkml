view: mpa_f_email_activity {
  sql_table_name: simon12_warehouse.mpa_f_email_activity ;;

  dimension: campaign_key {
    type: number
    sql: ${TABLE}.campaign_key ;;
  }

  dimension: clicked_ali_id {
    type: number
    sql: ${TABLE}.clicked_ali_id ;;
  }

  dimension: clicked_date_key {
    type: number
    sql: ${TABLE}.clicked_date_key ;;
  }

  dimension: clicked_hour {
    type: yesno
    sql: ${TABLE}.clicked_hour ;;
  }

  dimension: company_key {
    type: number
    sql: ${TABLE}.company_key ;;
  }

  dimension: complaint_ali_id {
    type: number
    sql: ${TABLE}.complaint_ali_id ;;
  }

  dimension: complaint_date_key {
    type: number
    sql: ${TABLE}.complaint_date_key ;;
  }

  dimension: complaint_hour {
    type: yesno
    sql: ${TABLE}.complaint_hour ;;
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: delivered_ali_id {
    type: number
    sql: ${TABLE}.delivered_ali_id ;;
  }

  dimension: delivered_date_key {
    type: number
    sql: ${TABLE}.delivered_date_key ;;
  }

  dimension: delivered_hour {
    type: yesno
    sql: ${TABLE}.delivered_hour ;;
  }

  dimension: domain_key {
    type: number
    sql: ${TABLE}.domain_key ;;
  }

  dimension: email_activity_key {
    type: number
    sql: ${TABLE}.email_activity_key ;;
  }

  dimension: email_key {
    type: number
    sql: ${TABLE}.email_key ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: hard_bounced_ali_id {
    type: number
    sql: ${TABLE}.hard_bounced_ali_id ;;
  }

  dimension: hard_bounced_date_key {
    type: number
    sql: ${TABLE}.hard_bounced_date_key ;;
  }

  dimension: hard_bounced_hour {
    type: yesno
    sql: ${TABLE}.hard_bounced_hour ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_first_click {
    type: yesno
    sql: ${TABLE}.is_first_click ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: link_key {
    type: number
    sql: ${TABLE}.link_key ;;
  }

  dimension: opened_ali_id {
    type: number
    sql: ${TABLE}.opened_ali_id ;;
  }

  dimension: opened_date_key {
    type: number
    sql: ${TABLE}.opened_date_key ;;
  }

  dimension: opened_hour {
    type: yesno
    sql: ${TABLE}.opened_hour ;;
  }

  dimension: sent_ali_id {
    type: number
    sql: ${TABLE}.sent_ali_id ;;
  }

  dimension: sent_date_key {
    type: number
    sql: ${TABLE}.sent_date_key ;;
  }

  dimension: sent_hour {
    type: yesno
    sql: ${TABLE}.sent_hour ;;
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
    sql: ${TABLE}.source_created_at ;;
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
    sql: ${TABLE}.source_updated_at ;;
  }

  dimension: unsubscribed_ali_id {
    type: number
    sql: ${TABLE}.unsubscribed_ali_id ;;
  }

  dimension: unsubscribed_date_key {
    type: number
    sql: ${TABLE}.unsubscribed_date_key ;;
  }

  dimension: unsubscribed_hour {
    type: yesno
    sql: ${TABLE}.unsubscribed_hour ;;
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
