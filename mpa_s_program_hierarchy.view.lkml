view: mpa_s_program_hierarchy {
  sql_table_name: simon12_warehouse.mpa_s_program_hierarchy ;;

  dimension: ancestor_source_id {
    type: string
    sql: ${TABLE}.ancestor_source_id ;;
  }

  dimension: descendant_source_id {
    type: string
    sql: ${TABLE}.descendant_source_id ;;
  }

  dimension: distance {
    type: number
    sql: ${TABLE}.distance ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
