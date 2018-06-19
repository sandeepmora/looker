view: mpa_t_progression_activity {
  sql_table_name: simon12_warehouse.mpa_t_progression_activity ;;

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
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

  dimension: step {
    type: number
    sql: ${TABLE}.step ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
