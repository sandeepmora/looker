view: mpa_s_nurture_membership {
  sql_table_name: simon12_warehouse.mpa_s_nurture_membership ;;

  dimension: app_comp_id {
    type: number
    sql: ${TABLE}.app_comp_id ;;
  }

  dimension: app_comp_type_id {
    type: number
    sql: ${TABLE}.app_comp_type_id ;;
  }

  dimension: content_program_source_id {
    type: number
    sql: ${TABLE}.content_program_source_id ;;
  }

  dimension: leads {
    type: number
    sql: ${TABLE}.leads ;;
  }

  dimension: members {
    type: number
    sql: ${TABLE}.members ;;
  }

  dimension_group: membership {
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
    sql: ${TABLE}.membership_date ;;
  }

  dimension: nurture_content_source_id {
    type: number
    sql: ${TABLE}.nurture_content_source_id ;;
  }

  dimension: nurture_track_source_id {
    type: number
    sql: ${TABLE}.nurture_track_source_id ;;
  }

  dimension: reached_success {
    type: number
    sql: ${TABLE}.reached_success ;;
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

  dimension: track_program_source_id {
    type: number
    sql: ${TABLE}.track_program_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
