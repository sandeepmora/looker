view: mpa_t_email_activity_type_list {
  sql_table_name: simon12_warehouse.mpa_t_email_activity_type_list ;;

  dimension: activity_type_list {
    type: string
    sql: ${TABLE}.activity_type_list ;;
  }

  dimension: campaign_key {
    type: number
    sql: ${TABLE}.campaign_key ;;
  }

  dimension: email_key {
    type: number
    sql: ${TABLE}.email_key ;;
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
