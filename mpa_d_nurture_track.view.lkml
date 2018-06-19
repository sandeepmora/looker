view: mpa_d_nurture_track {
  sql_table_name: simon12_warehouse.mpa_d_nurture_track ;;

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

  dimension: deploy_smart_campaign_id {
    type: number
    sql: ${TABLE}.deploy_smart_campaign_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: exhausted_count {
    type: number
    sql: ${TABLE}.exhausted_count ;;
  }

  dimension: marketing_program_id {
    type: number
    sql: ${TABLE}.marketing_program_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nurture_track_key {
    type: number
    sql: ${TABLE}.nurture_track_key ;;
  }

  dimension: run_smart_campaign_id {
    type: number
    sql: ${TABLE}.run_smart_campaign_id ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
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

  dimension: source_id {
    type: number
    sql: ${TABLE}.source_id ;;
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

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: total_exhausted_count {
    type: number
    sql: ${TABLE}.total_exhausted_count ;;
  }

  dimension: track_program_key {
    type: number
    sql: ${TABLE}.track_program_key ;;
  }

  dimension: transition_smart_campaign_id {
    type: number
    sql: ${TABLE}.transition_smart_campaign_id ;;
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
    drill_fields: [name]
  }
}
