view: mpa_f_email_activity_agg_email_sent_opened_quarter {
  sql_table_name: simon12_warehouse.mpa_f_email_activity_agg_email_sent_opened_quarter ;;

  dimension: clicked_count {
    type: number
    sql: ${TABLE}.clicked_count ;;
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

  dimension: delivered_count {
    type: number
    sql: ${TABLE}.delivered_count ;;
  }

  dimension: email_activity_agg_email_sent_opened_month_key {
    type: number
    sql: ${TABLE}.email_activity_agg_email_sent_opened_month_key ;;
  }

  dimension: email_key {
    type: number
    sql: ${TABLE}.email_key ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: fact_count {
    type: number
    sql: ${TABLE}.fact_count ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: opened_count {
    type: number
    sql: ${TABLE}.opened_count ;;
  }

  dimension: opened_hour {
    type: yesno
    sql: ${TABLE}.opened_hour ;;
  }

  dimension: opened_year_quarter_name {
    type: string
    sql: ${TABLE}.opened_year_quarter_name ;;
  }

  dimension: sent_count {
    type: number
    sql: ${TABLE}.sent_count ;;
  }

  dimension: sent_hour {
    type: yesno
    sql: ${TABLE}.sent_hour ;;
  }

  dimension: sent_year_quarter_name {
    type: string
    sql: ${TABLE}.sent_year_quarter_name ;;
  }

  dimension: unique_clicked_count {
    type: number
    sql: ${TABLE}.unique_clicked_count ;;
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
    drill_fields: [sent_year_quarter_name, opened_year_quarter_name]
  }
}
