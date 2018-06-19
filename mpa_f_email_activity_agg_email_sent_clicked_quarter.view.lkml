view: mpa_f_email_activity_agg_email_sent_clicked_quarter {
  sql_table_name: simon12_warehouse.mpa_f_email_activity_agg_email_sent_clicked_quarter ;;

  dimension: clicked_count {
    type: number
    sql: ${TABLE}.clicked_count ;;
  }

  dimension: clicked_hour {
    type: yesno
    sql: ${TABLE}.clicked_hour ;;
  }

  dimension: clicked_year_quarter_name {
    type: string
    sql: ${TABLE}.clicked_year_quarter_name ;;
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

  dimension: email_activity_agg_email_sent_clicked_quarter_key {
    type: number
    sql: ${TABLE}.email_activity_agg_email_sent_clicked_quarter_key ;;
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
    drill_fields: [sent_year_quarter_name, clicked_year_quarter_name]
  }
}
