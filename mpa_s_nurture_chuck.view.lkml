view: mpa_s_nurture_chuck {
  sql_table_name: simon12_warehouse.mpa_s_nurture_chuck ;;

  dimension: app_comp_id {
    type: number
    sql: ${TABLE}.app_comp_id ;;
  }

  dimension: app_comp_type_id {
    type: number
    sql: ${TABLE}.app_comp_type_id ;;
  }

  dimension: nurture_content_source_id {
    type: number
    sql: ${TABLE}.nurture_content_source_id ;;
  }

  dimension: nurture_program_source_id {
    type: number
    sql: ${TABLE}.nurture_program_source_id ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
