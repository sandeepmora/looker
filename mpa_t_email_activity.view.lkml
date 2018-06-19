view: mpa_t_email_activity {
  sql_table_name: simon12_warehouse.mpa_t_email_activity ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: email_activity_key {
    type: number
    sql: ${TABLE}.email_activity_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
