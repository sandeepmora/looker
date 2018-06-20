view: temp_progression_activity {
  sql_table_name: simon12_warehouse.temp_progression_activity ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_in_program {
    type: yesno
    sql: ${TABLE}.is_in_program ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.source_id ;;
  }

  dimension: to_progression_status_key {
    type: number
    sql: ${TABLE}.to_progression_status_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
