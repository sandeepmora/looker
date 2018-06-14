view: temp_updated_lead {
  sql_table_name: simon12_warehouse.temp_updated_lead ;;

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
  }

  dimension: pk {
    type: number
    sql: ${TABLE}.pk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
