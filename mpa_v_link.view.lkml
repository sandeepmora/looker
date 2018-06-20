view: mpa_v_link {
  sql_table_name: POC_TABLES.MPA_V_LINK ;;

  dimension: link_key {
    type: number
    sql: ${TABLE}."LINK_KEY" ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}."LINK_URL" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
