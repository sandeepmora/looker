view: mpa_f_nurture_engagement_score {
  sql_table_name: simon12_warehouse.mpa_f_nurture_engagement_score ;;

  dimension: clicked {
    type: number
    sql: ${TABLE}.clicked ;;
  }

  dimension: content_program_key {
    type: number
    sql: ${TABLE}.content_program_key ;;
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

  dimension: email_key {
    type: number
    sql: ${TABLE}.email_key ;;
  }

  dimension: engagement_score {
    type: number
    sql: ${TABLE}.engagement_score ;;
  }

  dimension_group: engagement_score {
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
    sql: ${TABLE}.engagement_score_date ;;
  }

  dimension: engagement_score_date_key {
    type: number
    sql: ${TABLE}.engagement_score_date_key ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: leads {
    type: number
    sql: ${TABLE}.leads ;;
  }

  dimension: marketing_program_id {
    type: number
    sql: ${TABLE}.marketing_program_id ;;
  }

  dimension: members {
    type: number
    sql: ${TABLE}.members ;;
  }

  dimension: nurture_content_key {
    type: number
    sql: ${TABLE}.nurture_content_key ;;
  }

  dimension: nurture_content_source_id {
    type: number
    sql: ${TABLE}.nurture_content_source_id ;;
  }

  dimension: nurture_engagement_score_key {
    type: number
    sql: ${TABLE}.nurture_engagement_score_key ;;
  }

  dimension: nurture_track_key {
    type: number
    sql: ${TABLE}.nurture_track_key ;;
  }

  dimension: nurture_track_source_id {
    type: number
    sql: ${TABLE}.nurture_track_source_id ;;
  }

  dimension: opened {
    type: number
    sql: ${TABLE}.opened ;;
  }

  dimension: sent {
    type: number
    sql: ${TABLE}.sent ;;
  }

  dimension: success_leads {
    type: number
    sql: ${TABLE}.success_leads ;;
  }

  dimension: track_program_key {
    type: number
    sql: ${TABLE}.track_program_key ;;
  }

  dimension: unsubscribed {
    type: number
    sql: ${TABLE}.unsubscribed ;;
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
