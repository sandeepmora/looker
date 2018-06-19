view: mpa_o_mkt_dashboard_miss_oppty {
  sql_table_name: simon12_warehouse.mpa_o_mkt_dashboard_miss_oppty ;;

  dimension: account_key {
    type: number
    sql: ${TABLE}.account_key ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: account_sfdc_id {
    type: string
    sql: ${TABLE}.account_sfdc_id ;;
  }

  dimension: account_source_id {
    type: string
    sql: ${TABLE}.account_source_id ;;
  }

  dimension: oppty_amount {
    type: number
    sql: ${TABLE}.oppty_amount ;;
  }

  dimension: oppty_key {
    type: number
    sql: ${TABLE}.oppty_key ;;
  }

  dimension: oppty_name {
    type: string
    sql: ${TABLE}.oppty_name ;;
  }

  dimension: oppty_source_id {
    type: string
    sql: ${TABLE}.oppty_source_id ;;
  }

  dimension: reason {
    type: number
    sql: ${TABLE}.reason ;;
  }

  dimension: sfdc_oppty_id {
    type: string
    sql: ${TABLE}.sfdc_oppty_id ;;
  }

  measure: count {
    type: count
    drill_fields: [oppty_name, account_name]
  }
}
