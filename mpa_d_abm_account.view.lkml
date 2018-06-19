view: mpa_d_abm_account {
  sql_table_name: POC_TABLES.MPA_D_ABM_ACCOUNT ;;

  dimension: abm_account_key {
    type: number
    sql: ${TABLE}."ABM_ACCOUNT_KEY" ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}."ANNUAL_REVENUE" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
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
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}."DOMAIN_NAME" ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}."ETL_HISTORY_KEY" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_targeted {
    type: number
    sql: ${TABLE}."IS_TARGETED" ;;
  }

  dimension: logo_url {
    type: string
    sql: ${TABLE}."LOGO_URL" ;;
  }

  dimension: membership_count {
    type: number
    sql: ${TABLE}."MEMBERSHIP_COUNT" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: num_employees {
    type: number
    sql: ${TABLE}."NUM_EMPLOYEES" ;;
  }

  dimension: oppty_amount {
    type: number
    sql: ${TABLE}."OPPTY_AMOUNT" ;;
  }

  dimension: oppty_count {
    type: number
    sql: ${TABLE}."OPPTY_COUNT" ;;
  }

  dimension: score1 {
    type: number
    sql: ${TABLE}."SCORE1" ;;
  }

  dimension: score2 {
    type: number
    sql: ${TABLE}."SCORE2" ;;
  }

  dimension: score3 {
    type: number
    sql: ${TABLE}."SCORE3" ;;
  }

  dimension: score4 {
    type: number
    sql: ${TABLE}."SCORE4" ;;
  }

  dimension: score5 {
    type: number
    sql: ${TABLE}."SCORE5" ;;
  }

  dimension: sic_code {
    type: string
    sql: ${TABLE}."SIC_CODE" ;;
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
    sql: ${TABLE}."SOURCE_CREATED_AT" ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}."SOURCE_ID" ;;
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
    sql: ${TABLE}."SOURCE_UPDATED_AT" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
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
    sql: ${TABLE}."UPDATED_AT" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, domain_name]
  }
}
