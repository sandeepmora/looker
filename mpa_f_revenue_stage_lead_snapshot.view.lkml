view: mpa_f_revenue_stage_lead_snapshot {
  sql_table_name: simon12_warehouse.mpa_f_revenue_stage_lead_snapshot ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: begin_balance_lead_count {
    type: number
    sql: ${TABLE}.begin_balance_lead_count ;;
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

  dimension: deleted_count {
    type: number
    sql: ${TABLE}.deleted_count ;;
  }

  dimension: end_balance_lead_count {
    type: number
    sql: ${TABLE}.end_balance_lead_count ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: expired_count {
    type: number
    sql: ${TABLE}.expired_count ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: lead_in_count {
    type: number
    sql: ${TABLE}.lead_in_count ;;
  }

  dimension: lead_out_count {
    type: number
    sql: ${TABLE}.lead_out_count ;;
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

  dimension: revenue_stage_key {
    type: number
    sql: ${TABLE}.revenue_stage_key ;;
  }

  dimension: revenue_stage_lead_key {
    type: number
    sql: ${TABLE}.revenue_stage_lead_key ;;
  }

  dimension: sla_adjustment_count {
    type: number
    sql: ${TABLE}.sla_adjustment_count ;;
  }

  dimension: snapshot_date_key {
    type: number
    sql: ${TABLE}.snapshot_date_key ;;
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
