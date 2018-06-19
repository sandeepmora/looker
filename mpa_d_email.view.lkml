view: mpa_d_email {
  sql_table_name: POC_TABLES.MPA_D_EMAIL ;;

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

  dimension: email_key {
    type: number
    sql: ${TABLE}."EMAIL_KEY" ;;
  }

  dimension: email_template {
    type: string
    sql: ${TABLE}."EMAIL_TEMPLATE" ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}."ETL_HISTORY_KEY" ;;
  }

  dimension: from_email {
    type: string
    sql: ${TABLE}."FROM_EMAIL" ;;
  }

  dimension: group_status {
    type: string
    sql: ${TABLE}."GROUP_STATUS" ;;
  }

  dimension: group_sub_status {
    type: string
    sql: ${TABLE}."GROUP_SUB_STATUS" ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_pruned {
    type: number
    sql: ${TABLE}."IS_PRUNED" ;;
  }

  dimension: marketing_program_id {
    type: number
    sql: ${TABLE}."MARKETING_PROGRAM_ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: parent_source_id {
    type: number
    sql: ${TABLE}."PARENT_SOURCE_ID" ;;
  }

  dimension: primary_variant_id {
    type: number
    sql: ${TABLE}."PRIMARY_VARIANT_ID" ;;
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

  dimension: subject {
    type: string
    sql: ${TABLE}."SUBJECT" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
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

  dimension: variant_app_comp_id {
    type: number
    sql: ${TABLE}."VARIANT_APP_COMP_ID" ;;
  }

  dimension: variant_id {
    type: number
    sql: ${TABLE}."VARIANT_ID" ;;
  }

  dimension: variant_sort_order {
    type: number
    sql: ${TABLE}."VARIANT_SORT_ORDER" ;;
  }

  dimension: variant_test_data {
    type: string
    sql: ${TABLE}."VARIANT_TEST_DATA" ;;
  }

  dimension: workspace_key {
    type: number
    sql: ${TABLE}."WORKSPACE_KEY" ;;
  }

  dimension: workspace_source_id {
    type: number
    sql: ${TABLE}."WORKSPACE_SOURCE_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
