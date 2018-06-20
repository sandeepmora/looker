view: temp_oppty_lead_count {
  sql_table_name: simon12_warehouse.temp_oppty_lead_count ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: opportunity_source_id {
    type: string
    sql: ${TABLE}.opportunity_source_id ;;
  }

  dimension: oppty_lead_count {
    type: number
    sql: ${TABLE}.oppty_lead_count ;;
  }

  dimension: oppty_lead_role_count {
    type: number
    sql: ${TABLE}.oppty_lead_role_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
