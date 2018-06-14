view: mpa_t_lead_snapshot {
  sql_table_name: simon12_warehouse.mpa_t_lead_snapshot ;;

  dimension: curr_lead_source_key {
    type: number
    sql: ${TABLE}.curr_lead_source_key ;;
  }

  dimension: from_lead_owner_name {
    type: string
    sql: ${TABLE}.from_lead_owner_name ;;
  }

  dimension: from_lead_partition_key {
    type: number
    sql: ${TABLE}.from_lead_partition_key ;;
  }

  dimension: from_revenue_stage_date_key {
    type: number
    sql: ${TABLE}.from_revenue_stage_date_key ;;
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

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: to_lead_owner_name {
    type: string
    sql: ${TABLE}.to_lead_owner_name ;;
  }

  dimension: to_lead_partition_key {
    type: number
    sql: ${TABLE}.to_lead_partition_key ;;
  }

  dimension: to_revenue_stage_date_key {
    type: number
    sql: ${TABLE}.to_revenue_stage_date_key ;;
  }

  dimension: to_revenue_stage_source_id {
    type: string
    sql: ${TABLE}.to_revenue_stage_source_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
    drill_fields: [from_lead_owner_name, to_lead_owner_name]
  }
}
