view: temp_mpa_s_custom_value_shadow {
  sql_table_name: simon12_warehouse.temp_mpa_s_custom_value_shadow ;;

  dimension: boolean_value {
    type: number
    sql: ${TABLE}.boolean_value ;;
  }

  dimension: custom_source_attribute {
    type: string
    sql: ${TABLE}.custom_source_attribute ;;
  }

  dimension_group: date_value {
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
    sql: ${TABLE}.date_value ;;
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

  dimension: float_value {
    type: number
    sql: ${TABLE}.float_value ;;
  }

  dimension: integer_value {
    type: number
    sql: ${TABLE}.integer_value ;;
  }

  dimension: row_source_id {
    type: string
    sql: ${TABLE}.row_source_id ;;
  }

  dimension: source_object_name {
    type: string
    sql: ${TABLE}.source_object_name ;;
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

  dimension: text_value {
    type: string
    sql: ${TABLE}.text_value ;;
  }

  measure: count {
    type: count
    drill_fields: [source_object_name]
  }
}
