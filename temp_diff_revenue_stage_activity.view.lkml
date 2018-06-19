view: temp_diff_revenue_stage_activity {
  sql_table_name: simon12_warehouse.temp_diff_revenue_stage_activity ;;

  dimension: from_revenue_model_version_source_id {
    type: string
    sql: ${TABLE}.from_revenue_model_version_source_id ;;
  }

  dimension: from_revenue_stage_source_id {
    type: string
    sql: ${TABLE}.from_revenue_stage_source_id ;;
  }

  dimension: is_immediate {
    type: yesno
    sql: ${TABLE}.is_immediate ;;
  }

  dimension: is_model_transition {
    type: yesno
    sql: ${TABLE}.is_model_transition ;;
  }

  dimension: is_repeat {
    type: yesno
    sql: ${TABLE}.is_repeat ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: to_revenue_model_version_source_id {
    type: string
    sql: ${TABLE}.to_revenue_model_version_source_id ;;
  }

  dimension_group: to_revenue_stage_expiration {
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
    sql: ${TABLE}.to_revenue_stage_expiration_date ;;
  }

  dimension: to_revenue_stage_source_id {
    type: string
    sql: ${TABLE}.to_revenue_stage_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
