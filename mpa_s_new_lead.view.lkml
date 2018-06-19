view: mpa_s_new_lead {
  sql_table_name: simon12_warehouse.mpa_s_new_lead ;;

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
