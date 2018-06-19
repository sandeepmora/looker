view: mpa_m_program_tag {
  sql_table_name: simon12_warehouse.mpa_m_program_tag ;;

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

  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }

  dimension: target_attribute {
    type: string
    sql: ${TABLE}.target_attribute ;;
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
    drill_fields: [tag_name]
  }
}
