view: mpa_d_opportunity {
  sql_table_name: simon12_warehouse.mpa_d_opportunity ;;

  dimension: account_key {
    type: number
    sql: ${TABLE}.account_key ;;
  }

  dimension: account_source_id {
    type: string
    sql: ${TABLE}.account_source_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
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

  dimension: fiscal_period {
    type: string
    sql: ${TABLE}.fiscal_period ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}.fiscal_quarter ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}.fiscal_year ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}.forecast_category ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.is_closed ;;
  }

  dimension: is_first_influenced_before_close {
    type: yesno
    sql: ${TABLE}.is_first_influenced_before_close ;;
  }

  dimension: is_first_influenced_before_create {
    type: yesno
    sql: ${TABLE}.is_first_influenced_before_create ;;
  }

  dimension: is_influenced_by_marketing {
    type: yesno
    sql: ${TABLE}.is_influenced_by_marketing ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: is_multi_influenced_before_close {
    type: yesno
    sql: ${TABLE}.is_multi_influenced_before_close ;;
  }

  dimension: is_multi_influenced_before_create {
    type: yesno
    sql: ${TABLE}.is_multi_influenced_before_create ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}.is_won ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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

  dimension: opportunity_owner_key {
    type: number
    sql: ${TABLE}.opportunity_owner_key ;;
  }

  dimension: opportunity_owner_source_id {
    type: string
    sql: ${TABLE}.opportunity_owner_source_id ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.probability ;;
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

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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

  dimension: x_693_cmo_cust_field__c6131f75c6665458 {
    type: string
    sql: ${TABLE}.X_693_cmo_cust_field__c6131f75c6665458 ;;
  }

  dimension: x_693_simon_opty__c {
    type: string
    sql: ${TABLE}.X_693_simon_opty__c ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
