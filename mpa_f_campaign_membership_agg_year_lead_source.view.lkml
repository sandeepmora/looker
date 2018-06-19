view: mpa_f_campaign_membership_agg_year_lead_source {
  sql_table_name: simon12_warehouse.mpa_f_campaign_membership_agg_year_lead_source ;;

  dimension: campaign_membership_agg_year_lead_source_key {
    type: number
    sql: ${TABLE}.campaign_membership_agg_year_lead_source_key ;;
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

  dimension: lead_source_key {
    type: number
    sql: ${TABLE}.lead_source_key ;;
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

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
