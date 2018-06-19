view: temp_program_membership {
  sql_table_name: simon12_warehouse.temp_program_membership ;;

  dimension: acquisition_date_key {
    type: number
    sql: ${TABLE}.acquisition_date_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_generated {
    type: yesno
    sql: ${TABLE}.is_generated ;;
  }

  dimension: is_success {
    type: yesno
    sql: ${TABLE}.is_success ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: membership_date_key {
    type: number
    sql: ${TABLE}.membership_date_key ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
  }

  dimension: success_date_key {
    type: number
    sql: ${TABLE}.success_date_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
