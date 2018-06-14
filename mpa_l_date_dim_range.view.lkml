view: mpa_l_date_dim_range {
  sql_table_name: simon12_warehouse.mpa_l_date_dim_range ;;

  dimension: date_dim_range_key {
    type: number
    sql: ${TABLE}.date_dim_range_key ;;
  }

  dimension: date_dim_value {
    type: string
    sql: ${TABLE}.date_dim_value ;;
  }

  dimension: max_date_key {
    type: number
    sql: ${TABLE}.max_date_key ;;
  }

  dimension: min_date_key {
    type: number
    sql: ${TABLE}.min_date_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
