view: mpa_f_revenue_stage_acct_snapshot {
  sql_table_name: simon12_warehouse.mpa_f_revenue_stage_acct_snapshot ;;

  dimension: begin_balance_acct_count {
    type: number
    sql: ${TABLE}.begin_balance_acct_count ;;
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

  dimension: end_balance_acct_count {
    type: number
    sql: ${TABLE}.end_balance_acct_count ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: in_unique_count_stage {
    type: number
    sql: ${TABLE}.in_unique_count_stage ;;
  }

  dimension: in_unique_count_stage_date {
    type: number
    sql: ${TABLE}.in_unique_count_stage_date ;;
  }

  dimension: in_unique_count_stage_month {
    type: number
    sql: ${TABLE}.in_unique_count_stage_month ;;
  }

  dimension: in_unique_count_stage_quarter {
    type: number
    sql: ${TABLE}.in_unique_count_stage_quarter ;;
  }

  dimension: in_unique_count_stage_week {
    type: number
    sql: ${TABLE}.in_unique_count_stage_week ;;
  }

  dimension: in_unique_count_stage_year {
    type: number
    sql: ${TABLE}.in_unique_count_stage_year ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: month_order {
    type: number
    sql: ${TABLE}.month_order ;;
  }

  dimension: out_unique_count_stage {
    type: number
    sql: ${TABLE}.out_unique_count_stage ;;
  }

  dimension: out_unique_count_stage_date {
    type: number
    sql: ${TABLE}.out_unique_count_stage_date ;;
  }

  dimension: out_unique_count_stage_month {
    type: number
    sql: ${TABLE}.out_unique_count_stage_month ;;
  }

  dimension: out_unique_count_stage_quarter {
    type: number
    sql: ${TABLE}.out_unique_count_stage_quarter ;;
  }

  dimension: out_unique_count_stage_week {
    type: number
    sql: ${TABLE}.out_unique_count_stage_week ;;
  }

  dimension: out_unique_count_stage_year {
    type: number
    sql: ${TABLE}.out_unique_count_stage_year ;;
  }

  dimension: quarter_order {
    type: number
    sql: ${TABLE}.quarter_order ;;
  }

  dimension: revenue_stage_acct_key {
    type: number
    sql: ${TABLE}.revenue_stage_acct_key ;;
  }

  dimension: revenue_stage_key {
    type: number
    sql: ${TABLE}.revenue_stage_key ;;
  }

  dimension: revenue_stage_source_id {
    type: string
    sql: ${TABLE}.revenue_stage_source_id ;;
  }

  dimension: snapshot_date_key {
    type: number
    sql: ${TABLE}.snapshot_date_key ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
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

  dimension: week_order {
    type: number
    sql: ${TABLE}.week_order ;;
  }

  dimension: workspace_key {
    type: number
    sql: ${TABLE}.workspace_key ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
