view: mpa_s_score {
  sql_table_name: simon12_warehouse.mpa_s_score ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
