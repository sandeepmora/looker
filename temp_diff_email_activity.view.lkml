view: temp_diff_email_activity {
  sql_table_name: simon12_warehouse.temp_diff_email_activity ;;

  dimension: activity_type_id {
    type: number
    sql: ${TABLE}.activity_type_id ;;
  }

  dimension: campaign_source_id {
    type: string
    sql: ${TABLE}.campaign_source_id ;;
  }

  dimension: email_source_id {
    type: string
    sql: ${TABLE}.email_source_id ;;
  }

  dimension: is_complaint {
    type: yesno
    sql: ${TABLE}.is_complaint ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.link_url ;;
  }

  dimension: test_variant_id {
    type: number
    sql: ${TABLE}.test_variant_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
