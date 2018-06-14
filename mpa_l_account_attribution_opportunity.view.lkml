view: mpa_l_account_attribution_opportunity {
  sql_table_name: simon12_warehouse.mpa_l_account_attribution_opportunity ;;

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
