view: mpa_t_program_analyzer_pk {
  sql_table_name: simon12_warehouse.mpa_t_program_analyzer_pk ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
