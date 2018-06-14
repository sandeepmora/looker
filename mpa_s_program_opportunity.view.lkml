view: mpa_s_program_opportunity {
  sql_table_name: simon12_warehouse.mpa_s_program_opportunity ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: cost_period {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cost_period_date ;;
  }

  dimension: first_opty_close_amount {
    type: number
    sql: ${TABLE}.first_opty_close_amount ;;
  }

  dimension: first_opty_close_unit {
    type: number
    sql: ${TABLE}.first_opty_close_unit ;;
  }

  dimension: first_opty_create_amount {
    type: number
    sql: ${TABLE}.first_opty_create_amount ;;
  }

  dimension: first_opty_create_unit {
    type: number
    sql: ${TABLE}.first_opty_create_unit ;;
  }

  dimension: multi_opty_close_amount {
    type: number
    sql: ${TABLE}.multi_opty_close_amount ;;
  }

  dimension: multi_opty_close_unit {
    type: number
    sql: ${TABLE}.multi_opty_close_unit ;;
  }

  dimension: multi_opty_create_amount {
    type: number
    sql: ${TABLE}.multi_opty_create_amount ;;
  }

  dimension: multi_opty_create_unit {
    type: number
    sql: ${TABLE}.multi_opty_create_unit ;;
  }

  dimension: opportunity_source_id {
    type: string
    sql: ${TABLE}.opportunity_source_id ;;
  }

  dimension: program_opportunity_key {
    type: number
    sql: ${TABLE}.program_opportunity_key ;;
  }

  dimension: program_source_id {
    type: string
    sql: ${TABLE}.program_source_id ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
