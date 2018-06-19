view: mpa_d_program_hierarchy {
  sql_table_name: simon12_warehouse.mpa_d_program_hierarchy ;;

  dimension: ancestor_key {
    type: number
    sql: ${TABLE}.ancestor_key ;;
  }

  dimension: ancestor_source_id {
    type: string
    sql: ${TABLE}.ancestor_source_id ;;
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

  dimension: descendant_key {
    type: number
    sql: ${TABLE}.descendant_key ;;
  }

  dimension: descendant_source_id {
    type: string
    sql: ${TABLE}.descendant_source_id ;;
  }

  dimension: distance {
    type: number
    sql: ${TABLE}.distance ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
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
