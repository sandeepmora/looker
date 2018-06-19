view: mpa_t_deleted_merged_lead {
  sql_table_name: simon12_warehouse.mpa_t_deleted_merged_lead ;;

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
