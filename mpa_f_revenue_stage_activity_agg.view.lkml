view: mpa_f_revenue_stage_activity_agg {
  sql_table_name: simon12_warehouse.mpa_f_revenue_stage_activity_agg ;;

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

  dimension: cycle_days_count {
    type: number
    sql: ${TABLE}.cycle_days_count ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: from_revenue_stage_key {
    type: number
    sql: ${TABLE}.from_revenue_stage_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_immediate {
    type: yesno
    sql: ${TABLE}.is_immediate ;;
  }

  dimension: lead_owner_name {
    type: string
    sql: ${TABLE}.lead_owner_name ;;
  }

  dimension: lead_partition_key {
    type: number
    sql: ${TABLE}.lead_partition_key ;;
  }

  dimension: lead_source_key {
    type: number
    sql: ${TABLE}.lead_source_key ;;
  }

  dimension: revenue_stage_activity_agg_key {
    type: number
    sql: ${TABLE}.revenue_stage_activity_agg_key ;;
  }

  dimension: to_revenue_stage_date_key {
    type: number
    sql: ${TABLE}.to_revenue_stage_date_key ;;
  }

  dimension: to_revenue_stage_key {
    type: number
    sql: ${TABLE}.to_revenue_stage_key ;;
  }

  dimension: transition_count {
    type: number
    sql: ${TABLE}.transition_count ;;
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

  dimension: xd_key_1 {
    type: number
    sql: ${TABLE}.xd_key_1 ;;
  }

  dimension: xd_key_2 {
    type: number
    sql: ${TABLE}.xd_key_2 ;;
  }

  dimension: xd_key_3 {
    type: number
    sql: ${TABLE}.xd_key_3 ;;
  }

  dimension: xd_key_4 {
    type: number
    sql: ${TABLE}.xd_key_4 ;;
  }

  dimension: xd_key_5 {
    type: number
    sql: ${TABLE}.xd_key_5 ;;
  }

  measure: count {
    type: count
    drill_fields: [lead_owner_name]
  }
}
