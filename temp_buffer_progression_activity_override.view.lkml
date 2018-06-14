view: temp_buffer_progression_activity_override {
  sql_table_name: simon12_warehouse.temp_buffer_progression_activity_override ;;

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

  dimension: orig_lead_source_id {
    type: string
    sql: ${TABLE}.orig_lead_source_id ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
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
