view: mpa_v_lead_source {
  sql_table_name: POC_TABLES.MPA_V_LEAD_SOURCE ;;

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
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

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}."ETL_HISTORY_KEY" ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: lead_source_key {
    type: number
    sql: ${TABLE}."LEAD_SOURCE_KEY" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}."SOURCE_ID" ;;
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
    drill_fields: [name]
  }
}
