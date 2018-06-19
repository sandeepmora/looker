view: mpa_f_opportunity_lead {
  sql_table_name: simon12_warehouse.mpa_f_opportunity_lead ;;

  dimension: contribution_amount {
    type: number
    sql: ${TABLE}.contribution_amount ;;
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

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_explicit {
    type: yesno
    sql: ${TABLE}.is_explicit ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: is_lead_primary {
    type: yesno
    sql: ${TABLE}.is_lead_primary ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: lead_role {
    type: string
    sql: ${TABLE}.lead_role ;;
  }

  dimension: lead_role_key {
    type: number
    sql: ${TABLE}.lead_role_key ;;
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

  dimension: opportunity_closed_date_key {
    type: number
    sql: ${TABLE}.opportunity_closed_date_key ;;
  }

  dimension: opportunity_created_date_key {
    type: number
    sql: ${TABLE}.opportunity_created_date_key ;;
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

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
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
