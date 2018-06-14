view: mpa_t_revenue_stage_activity_changed {
  sql_table_name: simon12_warehouse.mpa_t_revenue_stage_activity_changed ;;

  dimension: from_revenue_stage_key {
    type: number
    sql: ${TABLE}.from_revenue_stage_key ;;
  }

  dimension: is_immediate {
    type: yesno
    sql: ${TABLE}.is_immediate ;;
  }

  dimension: to_revenue_stage_date_key {
    type: number
    sql: ${TABLE}.to_revenue_stage_date_key ;;
  }

  dimension: to_revenue_stage_key {
    type: number
    sql: ${TABLE}.to_revenue_stage_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
