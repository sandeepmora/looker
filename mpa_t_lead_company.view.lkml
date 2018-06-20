view: mpa_t_lead_company {
  sql_table_name: simon12_warehouse.mpa_t_lead_company ;;

  dimension: company_key {
    type: number
    sql: ${TABLE}.company_key ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
