view: mpa_t_progression_activity_deleted_lead {
  sql_table_name: simon12_warehouse.mpa_t_progression_activity_deleted_lead ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: progression_activity_key {
    type: number
    sql: ${TABLE}.progression_activity_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
