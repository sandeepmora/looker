view: temp_rca6767 {
  sql_table_name: simon12_warehouse.temp_RCA6767 ;;

  dimension: sfdc_account_id {
    type: string
    sql: ${TABLE}.sfdc_account_id ;;
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
