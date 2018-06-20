view: mpa_d_domain {
  sql_table_name: simon12_warehouse.mpa_d_domain ;;

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
    sql: ${TABLE}.created_at ;;
  }

  dimension: domain_key {
    type: number
    sql: ${TABLE}.domain_key ;;
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}.domain_name ;;
  }

  measure: count {
    type: count
    drill_fields: [domain_name]
  }
}
