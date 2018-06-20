view: mpa_v_hour {
  sql_table_name: POC_TABLES.MPA_V_HOUR ;;

  dimension: hour_key {
    type: number
    sql: ${TABLE}."HOUR_KEY" ;;
  }

  dimension: hour_name {
    type: string
    sql: ${TABLE}."HOUR_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [hour_name]
  }
}
