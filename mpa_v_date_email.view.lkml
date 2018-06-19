view: mpa_v_date_email {
  sql_table_name: POC_TABLES.MPA_V_DATE_EMAIL ;;

  dimension_group: date {
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
    sql: ${TABLE}."DATE" ;;
  }

  dimension: date_key {
    type: number
    sql: ${TABLE}."DATE_KEY" ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}."DAY_NAME" ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}."DAY_OF_WEEK" ;;
  }

  dimension: day_order {
    type: number
    sql: ${TABLE}."DAY_ORDER" ;;
  }

  dimension: month_order {
    type: number
    sql: ${TABLE}."MONTH_ORDER" ;;
  }

  dimension: quarter_order {
    type: number
    sql: ${TABLE}."QUARTER_ORDER" ;;
  }

  dimension: week_order {
    type: number
    sql: ${TABLE}."WEEK_ORDER" ;;
  }

  dimension: year_month_day_name {
    type: string
    sql: ${TABLE}."YEAR_MONTH_DAY_NAME" ;;
  }

  dimension: year_month_name {
    type: string
    sql: ${TABLE}."YEAR_MONTH_NAME" ;;
  }

  dimension: year_quarter_name {
    type: string
    sql: ${TABLE}."YEAR_QUARTER_NAME" ;;
  }

  dimension: year_week_name {
    type: string
    sql: ${TABLE}."YEAR_WEEK_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [day_name, year_month_day_name, year_week_name, year_month_name, year_quarter_name]
  }
}
