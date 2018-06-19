view: mpa_t_campaign_period_agg_recalc {
  sql_table_name: simon12_warehouse.mpa_t_campaign_period_agg_recalc ;;

  dimension: campaign_key {
    type: number
    sql: ${TABLE}.campaign_key ;;
  }

  dimension: period_key {
    type: number
    sql: ${TABLE}.period_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
