view: mpa_l_campaign_max_activity {
  sql_table_name: simon12_warehouse.mpa_l_campaign_max_activity ;;

  dimension: campaign_key {
    type: number
    sql: ${TABLE}.campaign_key ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: membership_date_key {
    type: number
    sql: ${TABLE}.membership_date_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
