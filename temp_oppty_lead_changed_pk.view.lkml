view: temp_oppty_lead_changed_pk {
  sql_table_name: simon12_warehouse.temp_oppty_lead_changed_pk ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
