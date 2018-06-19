view: temp_oppty_changed_pk {
  sql_table_name: simon12_warehouse.temp_oppty_changed_pk ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
