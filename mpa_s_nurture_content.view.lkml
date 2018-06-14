view: mpa_s_nurture_content {
  sql_table_name: simon12_warehouse.mpa_s_nurture_content ;;

  dimension_group: active_end {
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
    sql: ${TABLE}.active_end_date ;;
  }

  dimension_group: active_start {
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
    sql: ${TABLE}.active_start_date ;;
  }

  dimension: app_comp_id {
    type: number
    sql: ${TABLE}.app_comp_id ;;
  }

  dimension: app_comp_type_id {
    type: number
    sql: ${TABLE}.app_comp_type_id ;;
  }

  dimension: deploy_smart_campaign_id {
    type: number
    sql: ${TABLE}.deploy_smart_campaign_id ;;
  }

  dimension: last_touched_count {
    type: number
    sql: ${TABLE}.last_touched_count ;;
  }

  dimension: nurture_track_source_id {
    type: number
    sql: ${TABLE}.nurture_track_source_id ;;
  }

  dimension: original_nurture_content_id {
    type: number
    sql: ${TABLE}.original_nurture_content_id ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: program_source_id {
    type: number
    sql: ${TABLE}.program_source_id ;;
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

  dimension: total_touched_count {
    type: number
    sql: ${TABLE}.total_touched_count ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
