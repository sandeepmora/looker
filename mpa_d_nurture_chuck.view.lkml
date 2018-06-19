view: mpa_d_nurture_chuck {
  sql_table_name: simon12_warehouse.mpa_d_nurture_chuck ;;

  dimension: app_comp_id {
    type: number
    sql: ${TABLE}.app_comp_id ;;
  }

  dimension: app_comp_type_id {
    type: number
    sql: ${TABLE}.app_comp_type_id ;;
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

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: nurture_chuck_key {
    type: number
    sql: ${TABLE}.nurture_chuck_key ;;
  }

  dimension: nurture_content_key {
    type: number
    sql: ${TABLE}.nurture_content_key ;;
  }

  dimension: nurture_content_source_id {
    type: number
    sql: ${TABLE}.nurture_content_source_id ;;
  }

  dimension: nurture_program_source_id {
    type: number
    sql: ${TABLE}.nurture_program_source_id ;;
  }

  dimension: nurture_track_key {
    type: number
    sql: ${TABLE}.nurture_track_key ;;
  }

  dimension: nurture_track_source_id {
    type: number
    sql: ${TABLE}.nurture_track_source_id ;;
  }

  dimension: parent_program_source_id {
    type: number
    sql: ${TABLE}.parent_program_source_id ;;
  }

  dimension: smart_campaign_id {
    type: number
    sql: ${TABLE}.smart_campaign_id ;;
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

  dimension_group: started {
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
    sql: ${TABLE}.started_at ;;
  }

  dimension: started_date_key {
    type: number
    sql: ${TABLE}.started_date_key ;;
  }

  dimension: track_program_key {
    type: number
    sql: ${TABLE}.track_program_key ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
