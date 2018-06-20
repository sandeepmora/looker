view: mpa_l_attributed_opportunity {
  sql_table_name: simon12_warehouse.mpa_l_attributed_opportunity ;;

  dimension: account_key {
    type: number
    sql: ${TABLE}.account_key ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.is_closed ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}.is_won ;;
  }

  dimension: opportunity_closed_date_key {
    type: number
    sql: ${TABLE}.opportunity_closed_date_key ;;
  }

  dimension: opportunity_created_date_key {
    type: number
    sql: ${TABLE}.opportunity_created_date_key ;;
  }

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}.opportunity_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
