view: mpa_f_campaign_membership_agg_date_campaign {
  sql_table_name: simon12_warehouse.mpa_f_campaign_membership_agg_date_campaign ;;

  dimension: campaign_key {
    type: number
    sql: ${TABLE}.campaign_key ;;
  }

  dimension: campaign_membership_agg_date_campaign_key {
    type: number
    sql: ${TABLE}.campaign_membership_agg_date_campaign_key ;;
  }

  dimension: conversion_ratio {
    type: number
    sql: ${TABLE}.conversion_ratio ;;
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

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: fact_count {
    type: number
    sql: ${TABLE}.fact_count ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: membership_date_key {
    type: number
    sql: ${TABLE}.membership_date_key ;;
  }

  dimension: unique_converted_lead_count {
    type: number
    sql: ${TABLE}.unique_converted_lead_count ;;
  }

  dimension: unique_lead_count {
    type: number
    sql: ${TABLE}.unique_lead_count ;;
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
