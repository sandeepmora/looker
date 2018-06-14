view: mpa_s_campaign_membership {
  sql_table_name: simon12_warehouse.mpa_s_campaign_membership ;;

  dimension: campaign_membership_key {
    type: number
    sql: ${TABLE}.campaign_membership_key ;;
  }

  dimension: campaign_run_source_id {
    type: string
    sql: ${TABLE}.campaign_run_source_id ;;
  }

  dimension: campaign_source_id {
    type: string
    sql: ${TABLE}.campaign_source_id ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension_group: membership {
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
    sql: ${TABLE}.membership_date ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
