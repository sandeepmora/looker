view: mpa_t_program_analyzer_channel_pk {
  sql_table_name: simon12_warehouse.mpa_t_program_analyzer_channel_pk ;;

  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_name]
  }
}
