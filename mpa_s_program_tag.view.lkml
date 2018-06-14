view: mpa_s_program_tag {
  sql_table_name: simon12_warehouse.mpa_s_program_tag ;;

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: program_source_id {
    type: string
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

  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }

  dimension: tag_source_id {
    type: string
    sql: ${TABLE}.tag_source_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: value_source_id {
    type: string
    sql: ${TABLE}.value_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [tag_name]
  }
}
