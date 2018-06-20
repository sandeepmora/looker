view: temp_program_tag {
  sql_table_name: simon12_warehouse.temp_program_tag ;;

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
  }

  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }

  measure: count {
    type: count
    drill_fields: [tag_name]
  }
}
