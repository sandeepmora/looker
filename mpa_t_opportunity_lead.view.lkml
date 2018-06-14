view: mpa_t_opportunity_lead {
  sql_table_name: simon12_warehouse.mpa_t_opportunity_lead ;;

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
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
