view: mpa_d_link {

  sql_table_name: POC_TABLES.MPA_D_LINK ;;

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
