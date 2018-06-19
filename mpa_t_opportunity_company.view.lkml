view: mpa_t_opportunity_company {
  sql_table_name: simon12_warehouse.mpa_t_opportunity_company ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: company_key {
    type: number
    sql: ${TABLE}.company_key ;;
  }

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
