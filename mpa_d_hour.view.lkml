view: mpa_d_hour {
  sql_table_name: simon12_warehouse.mpa_d_hour ;;

  dimension: hour_key {
    type: yesno
    sql: ${TABLE}.hour_key ;;
  }

  dimension: hour_name {
    type: string
    sql: ${TABLE}.hour_name ;;
  }

  measure: count {
    type: count
    drill_fields: [hour_name]
  }
}
