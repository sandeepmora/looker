view: mpa_s_updated_object {
  sql_table_name: simon12_warehouse.mpa_s_updated_object ;;

  dimension: object_type {
    type: string
    sql: ${TABLE}.object_type ;;
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
