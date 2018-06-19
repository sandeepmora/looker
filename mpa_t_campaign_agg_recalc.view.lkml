view: mpa_t_campaign_agg_recalc {
  sql_table_name: simon12_warehouse.mpa_t_campaign_agg_recalc ;;

  dimension: key {
    type: number
    sql: ${TABLE}.`key` ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
