view: mpa_d_score {
  sql_table_name: POC_TABLES.MPA_D_SCORE ;;

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

  dimension: score {
    type: number
    sql: ${TABLE}."SCORE" ;;
  }

  dimension: score_key {
    type: number
    sql: ${TABLE}."SCORE_KEY" ;;
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
    drill_fields: []
  }
}
