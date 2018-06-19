view: mpa_v_program_email {
  sql_table_name: POC_TABLES.MPA_V_PROGRAM_EMAIL ;;

  dimension: channel_name {
    type: string
    sql: ${TABLE}."CHANNEL_NAME" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}."PROGRAM_KEY" ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}."SOURCE_ID" ;;
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
    drill_fields: [name, channel_name]
  }
}
