view: mpa_d_domain {

  sql_table_name: POC_TABLES.MPA_D_DOMAIN ;;

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
