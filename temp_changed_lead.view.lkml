view: temp_changed_lead {
  sql_table_name: simon12_warehouse.temp_changed_lead ;;

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
  }

  dimension: marketing_asset_id {
    type: number
    sql: ${TABLE}.marketing_asset_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
