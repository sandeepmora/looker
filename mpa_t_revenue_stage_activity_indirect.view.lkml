view: mpa_t_revenue_stage_activity_indirect {
  sql_table_name: simon12_warehouse.mpa_t_revenue_stage_activity_indirect ;;

  dimension: curr_lead_source_key {
    type: number
    sql: ${TABLE}.curr_lead_source_key ;;
  }

  dimension: curr_lead_source_source_id {
    type: string
    sql: ${TABLE}.curr_lead_source_source_id ;;
  }

  dimension: from_company_name {
    type: string
    sql: ${TABLE}.from_company_name ;;
  }

  dimension: from_lead_owner_name {
    type: string
    sql: ${TABLE}.from_lead_owner_name ;;
  }

  dimension: from_lead_partition_key {
    type: number
    sql: ${TABLE}.from_lead_partition_key ;;
  }

  dimension: from_revenue_model_version_key {
    type: number
    sql: ${TABLE}.from_revenue_model_version_key ;;
  }

  dimension: from_revenue_model_version_source_id {
    type: string
    sql: ${TABLE}.from_revenue_model_version_source_id ;;
  }

  dimension: from_revenue_stage_date_key {
    type: number
    sql: ${TABLE}.from_revenue_stage_date_key ;;
  }

  dimension_group: from_revenue_stage_date {
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
    sql: ${TABLE}.from_revenue_stage_date_time ;;
  }

  dimension_group: from_revenue_stage_expiration {
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
    sql: ${TABLE}.from_revenue_stage_expiration_date ;;
  }

  dimension: from_revenue_stage_key {
    type: number
    sql: ${TABLE}.from_revenue_stage_key ;;
  }

  dimension: from_revenue_stage_source_id {
    type: string
    sql: ${TABLE}.from_revenue_stage_source_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: is_repeat {
    type: yesno
    sql: ${TABLE}.is_repeat ;;
  }

  dimension: lead_created_date_key {
    type: number
    sql: ${TABLE}.lead_created_date_key ;;
  }

  dimension_group: lead_created_date {
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
    sql: ${TABLE}.lead_created_date_time ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: revenue_model_cycle_key {
    type: number
    sql: ${TABLE}.revenue_model_cycle_key ;;
  }

  dimension: revenue_model_cycle_source_id {
    type: string
    sql: ${TABLE}.revenue_model_cycle_source_id ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: to_company_name {
    type: string
    sql: ${TABLE}.to_company_name ;;
  }

  dimension: to_lead_owner_name {
    type: string
    sql: ${TABLE}.to_lead_owner_name ;;
  }

  dimension: to_lead_partition_key {
    type: number
    sql: ${TABLE}.to_lead_partition_key ;;
  }

  dimension: to_revenue_model_version_key {
    type: number
    sql: ${TABLE}.to_revenue_model_version_key ;;
  }

  dimension: to_revenue_model_version_source_id {
    type: string
    sql: ${TABLE}.to_revenue_model_version_source_id ;;
  }

  dimension: to_revenue_stage_date_key {
    type: number
    sql: ${TABLE}.to_revenue_stage_date_key ;;
  }

  dimension_group: to_revenue_stage_date {
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
    sql: ${TABLE}.to_revenue_stage_date_time ;;
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

  dimension: to_revenue_stage_key {
    type: number
    sql: ${TABLE}.to_revenue_stage_key ;;
  }

  dimension: to_revenue_stage_source_id {
    type: string
    sql: ${TABLE}.to_revenue_stage_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [from_lead_owner_name, to_lead_owner_name, from_company_name, to_company_name]
  }
}
