view: mpa_l_model_member {
  sql_table_name: simon12_warehouse.mpa_l_model_member ;;

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

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: model_member_key {
    type: number
    sql: ${TABLE}.model_member_key ;;
  }

  dimension: revenue_model_id {
    type: number
    sql: ${TABLE}.revenue_model_id ;;
  }

  dimension: revenue_stage_source_id {
    type: string
    sql: ${TABLE}.revenue_stage_source_id ;;
  }

  dimension_group: stage_entered {
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
    sql: ${TABLE}.stage_entered_at ;;
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
