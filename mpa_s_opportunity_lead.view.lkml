view: mpa_s_opportunity_lead {
  sql_table_name: simon12_warehouse.mpa_s_opportunity_lead ;;

  dimension: contribution_amount {
    type: number
    sql: ${TABLE}.contribution_amount ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_lead_primary {
    type: yesno
    sql: ${TABLE}.is_lead_primary ;;
  }

  dimension: lead_role {
    type: string
    sql: ${TABLE}.lead_role ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension_group: opportunity_closed {
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
    sql: ${TABLE}.opportunity_closed_date ;;
  }

  dimension_group: opportunity_created_date {
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
    sql: ${TABLE}.opportunity_created_date_time ;;
  }

  dimension: opportunity_lead_key {
    type: number
    sql: ${TABLE}.opportunity_lead_key ;;
  }

  dimension: opportunity_source_id {
    type: string
    sql: ${TABLE}.opportunity_source_id ;;
  }

  dimension: opportunity_unit {
    type: number
    sql: ${TABLE}.opportunity_unit ;;
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
