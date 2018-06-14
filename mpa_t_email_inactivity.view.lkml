view: mpa_t_email_inactivity {
  sql_table_name: simon12_warehouse.mpa_t_email_inactivity ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: clicked_year_month_name {
    type: string
    sql: ${TABLE}.clicked_year_month_name ;;
  }

  dimension: clicked_year_quarter_name {
    type: string
    sql: ${TABLE}.clicked_year_quarter_name ;;
  }

  dimension: clicked_year_week_name {
    type: string
    sql: ${TABLE}.clicked_year_week_name ;;
  }

  dimension: complaint_ali_id {
    type: number
    sql: ${TABLE}.complaint_ali_id ;;
  }

  dimension: delivered_ali_id {
    type: number
    sql: ${TABLE}.delivered_ali_id ;;
  }

  dimension: email_activity_key {
    type: number
    sql: ${TABLE}.email_activity_key ;;
  }

  dimension: email_key {
    type: number
    sql: ${TABLE}.email_key ;;
  }

  dimension: hard_bounced_ali_id {
    type: number
    sql: ${TABLE}.hard_bounced_ali_id ;;
  }

  dimension: is_first_click {
    type: yesno
    sql: ${TABLE}.is_first_click ;;
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

  dimension: opened_year_month_name {
    type: string
    sql: ${TABLE}.opened_year_month_name ;;
  }

  dimension: opened_year_quarter_name {
    type: string
    sql: ${TABLE}.opened_year_quarter_name ;;
  }

  dimension: opened_year_week_name {
    type: string
    sql: ${TABLE}.opened_year_week_name ;;
  }

  dimension: sent_ali_id {
    type: number
    sql: ${TABLE}.sent_ali_id ;;
  }

  dimension: sent_date_key {
    type: number
    sql: ${TABLE}.sent_date_key ;;
  }

  dimension: sent_day_order {
    type: number
    sql: ${TABLE}.sent_day_order ;;
  }

  dimension: sent_hour {
    type: yesno
    sql: ${TABLE}.sent_hour ;;
  }

  dimension: sent_month_order {
    type: number
    sql: ${TABLE}.sent_month_order ;;
  }

  dimension: sent_quarter_order {
    type: number
    sql: ${TABLE}.sent_quarter_order ;;
  }

  dimension: sent_week_order {
    type: number
    sql: ${TABLE}.sent_week_order ;;
  }

  dimension: sent_year_month_name {
    type: string
    sql: ${TABLE}.sent_year_month_name ;;
  }

  dimension: sent_year_quarter_name {
    type: string
    sql: ${TABLE}.sent_year_quarter_name ;;
  }

  dimension: sent_year_week_name {
    type: string
    sql: ${TABLE}.sent_year_week_name ;;
  }

  dimension: unsubscribed_ali_id {
    type: number
    sql: ${TABLE}.unsubscribed_ali_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      sent_year_quarter_name,
      sent_year_month_name,
      sent_year_week_name,
      opened_year_quarter_name,
      opened_year_month_name,
      opened_year_week_name,
      clicked_year_quarter_name,
      clicked_year_month_name,
      clicked_year_week_name
    ]
  }
}
