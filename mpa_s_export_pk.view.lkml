view: mpa_s_export_pk {
  sql_table_name: simon12_warehouse.mpa_s_export_pk ;;

  dimension: export_key {
    type: number
    sql: ${TABLE}.export_key ;;
  }

  dimension: object_key {
    type: number
    sql: ${TABLE}.object_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
