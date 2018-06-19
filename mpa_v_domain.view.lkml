view: mpa_v_domain {
  sql_table_name: POC_TABLES.MPA_V_DOMAIN ;;

  dimension: domain_key {
    type: number
    sql: ${TABLE}."DOMAIN_KEY" ;;
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}."DOMAIN_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [domain_name]
  }
}
