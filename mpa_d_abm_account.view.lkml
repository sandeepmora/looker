view: mpa_d_abm_account {
  sql_table_name: simon12_warehouse.mpa_d_abm_account ;;

  dimension: abm_account_key {
    type: number
    sql: ${TABLE}.abm_account_key ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}.annual_revenue ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension: domain_name {
    type: string
    sql: ${TABLE}.domain_name ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_targeted {
    type: yesno
    sql: ${TABLE}.is_targeted ;;
  }

  dimension: logo_url {
    type: string
    sql: ${TABLE}.logo_url ;;
  }

  dimension: membership_count {
    type: number
    sql: ${TABLE}.membership_count ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: num_employees {
    type: number
    sql: ${TABLE}.num_employees ;;
  }

  dimension: oppty_amount {
    type: number
    sql: ${TABLE}.oppty_amount ;;
  }

  dimension: oppty_count {
    type: number
    sql: ${TABLE}.oppty_count ;;
  }

  dimension: score1 {
    type: number
    sql: ${TABLE}.score1 ;;
  }

  dimension: score2 {
    type: number
    sql: ${TABLE}.score2 ;;
  }

  dimension: score3 {
    type: number
    sql: ${TABLE}.score3 ;;
  }

  dimension: score4 {
    type: number
    sql: ${TABLE}.score4 ;;
  }

  dimension: score5 {
    type: number
    sql: ${TABLE}.score5 ;;
  }

  dimension: sfdc_account_id {
    type: string
    sql: ${TABLE}.sfdc_account_id ;;
  }

  dimension: sic_code {
    type: string
    sql: ${TABLE}.sic_code ;;
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

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
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
    drill_fields: [name, domain_name]
  }
}
