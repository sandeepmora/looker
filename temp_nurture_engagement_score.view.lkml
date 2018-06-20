view: temp_nurture_engagement_score {
  sql_table_name: simon12_warehouse.temp_nurture_engagement_score ;;

  dimension: campaign_key {
    type: number
    sql: ${TABLE}.campaign_key ;;
  }

  dimension: date_key {
    type: number
    sql: ${TABLE}.date_key ;;
  }

  dimension: email_key {
    type: number
    sql: ${TABLE}.email_key ;;
  }

  dimension: from_started_date_key {
    type: number
    sql: ${TABLE}.from_started_date_key ;;
  }

  dimension: nurture_content_key {
    type: number
    sql: ${TABLE}.nurture_content_key ;;
  }

  dimension: nurture_track_key {
    type: number
    sql: ${TABLE}.nurture_track_key ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.source_id ;;
  }

  dimension: to_started_date_key {
    type: number
    sql: ${TABLE}.to_started_date_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
