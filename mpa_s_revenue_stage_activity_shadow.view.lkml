view: mpa_s_revenue_stage_activity_shadow {
  sql_table_name: simon12_warehouse.mpa_s_revenue_stage_activity_shadow ;;

  dimension: activity_log_id {
    type: number
    sql: ${TABLE}.activity_log_id ;;
  }

  dimension: curr_lead_source_source_id {
    type: string
    sql: ${TABLE}.curr_lead_source_source_id ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: from_company_name {
    type: string
    sql: ${TABLE}.from_company_name ;;
  }

  dimension: from_lead_owner_name {
    type: string
    sql: ${TABLE}.from_lead_owner_name ;;
  }

  dimension: from_revenue_model_version_source_id {
    type: string
    sql: ${TABLE}.from_revenue_model_version_source_id ;;
  }

  dimension_group: from_revenue_stage {
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
    sql: ${TABLE}.from_revenue_stage_date ;;
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

  dimension_group: lead_created {
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
    sql: ${TABLE}.lead_created_date ;;
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

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: p_activity_type_id {
    type: number
    sql: ${TABLE}.p_activity_type_id ;;
  }

  dimension: p_discriminator {
    type: number
    sql: ${TABLE}.p_discriminator ;;
  }

  dimension: p_lead_id {
    type: number
    sql: ${TABLE}.p_lead_id ;;
  }

  dimension_group: p_persisted {
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
    sql: ${TABLE}.p_persisted_at ;;
  }

  dimension: revenue_model_cycle_source_id {
    type: string
    sql: ${TABLE}.revenue_model_cycle_source_id ;;
  }

  dimension: revenue_stage_activity_key {
    type: number
    sql: ${TABLE}.revenue_stage_activity_key ;;
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

  dimension: to_company_name {
    type: string
    sql: ${TABLE}.to_company_name ;;
  }

  dimension: to_lead_owner_name {
    type: string
    sql: ${TABLE}.to_lead_owner_name ;;
  }

  dimension: to_revenue_model_version_source_id {
    type: string
    sql: ${TABLE}.to_revenue_model_version_source_id ;;
  }

  dimension_group: to_revenue_stage {
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
    sql: ${TABLE}.to_revenue_stage_date ;;
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

  dimension: to_revenue_stage_source_id {
    type: string
    sql: ${TABLE}.to_revenue_stage_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [from_lead_owner_name, to_lead_owner_name, from_company_name, to_company_name]
  }
}
