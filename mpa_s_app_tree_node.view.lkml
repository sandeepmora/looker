view: mpa_s_app_tree_node {
  sql_table_name: simon12_warehouse.mpa_s_app_tree_node ;;

  dimension: node_id {
    type: number
    sql: ${TABLE}.node_id ;;
  }

  dimension: parent_node_id {
    type: number
    sql: ${TABLE}.parent_node_id ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
