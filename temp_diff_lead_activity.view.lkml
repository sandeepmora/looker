view: temp_diff_lead_activity {
  sql_table_name: simon12_warehouse.temp_diff_lead_activity ;;

  dimension: activity_type {
    type: string
    sql: ${TABLE}.activity_type ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: orig_lead_source_id {
    type: string
    sql: ${TABLE}.orig_lead_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
