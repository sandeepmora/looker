view: mpa_s_progression_activity_override {
  sql_table_name: simon12_warehouse.mpa_s_progression_activity_override ;;

  dimension: boolean_value {
    type: yesno
    sql: ${TABLE}.boolean_value ;;
  }

  dimension_group: datetime_value {
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
    sql: ${TABLE}.datetime_value ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: numeric_value {
    type: number
    sql: ${TABLE}.numeric_value ;;
  }

  dimension: orig_lead_source_id {
    type: string
    sql: ${TABLE}.orig_lead_source_id ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
  }

  dimension: progression_activity_override_key {
    type: number
    sql: ${TABLE}.progression_activity_override_key ;;
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

  dimension: string_value {
    type: string
    sql: ${TABLE}.string_value ;;
  }

  dimension: type {
    type: yesno
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
