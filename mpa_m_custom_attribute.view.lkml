view: mpa_m_custom_attribute {
  sql_table_name: simon12_warehouse.mpa_m_custom_attribute ;;

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
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

  dimension: custom_source_attribute {
    type: string
    sql: ${TABLE}.custom_source_attribute ;;
  }

  dimension: custom_target_attribute {
    type: string
    sql: ${TABLE}.custom_target_attribute ;;
  }

  dimension: datatype {
    type: string
    sql: ${TABLE}.datatype ;;
  }

  dimension: db_object_id {
    type: number
    sql: ${TABLE}.db_object_id ;;
  }

  dimension_group: initialized {
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
    sql: ${TABLE}.initialized_at ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_initialized {
    type: yesno
    sql: ${TABLE}.is_initialized ;;
  }

  dimension: is_mlm_custom {
    type: yesno
    sql: ${TABLE}.is_mlm_custom ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.length ;;
  }

  dimension: source_object_name {
    type: string
    sql: ${TABLE}.source_object_name ;;
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
    drill_fields: [source_object_name]
  }
}
