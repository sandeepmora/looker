view: mpa_s_revenue_model_version {
  sql_table_name: simon12_warehouse.mpa_s_revenue_model_version ;;

  dimension_group: approved_date {
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
    sql: ${TABLE}.approved_date_time ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_model_version_active {
    type: yesno
    sql: ${TABLE}.is_model_version_active ;;
  }

  dimension: model_id {
    type: number
    sql: ${TABLE}.model_id ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }

  dimension: model_version {
    type: number
    sql: ${TABLE}.model_version ;;
  }

  dimension: model_version_id {
    type: number
    sql: ${TABLE}.model_version_id ;;
  }

  dimension: revenue_model_cycle_source_id {
    type: string
    sql: ${TABLE}.revenue_model_cycle_source_id ;;
  }

  dimension: revenue_model_version_key {
    type: number
    sql: ${TABLE}.revenue_model_version_key ;;
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
    type: string
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

  dimension_group: unapproved_date {
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
    sql: ${TABLE}.unapproved_date_time ;;
  }

  measure: count {
    type: count
    drill_fields: [model_name]
  }
}
