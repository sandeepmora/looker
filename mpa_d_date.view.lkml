view: mpa_d_date {

  sql_table_name: POC_TABLES.MPA_D_DATE ;;

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

  dimension: day {
    type: number
    sql: ${TABLE}."DAY" ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}."DAY_NAME" ;;
  }

  dimension: day_of_quarter {
    type: number
    sql: ${TABLE}."DAY_OF_QUARTER" ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}."DAY_OF_WEEK" ;;
  }

  dimension: day_of_year {
    type: number
    sql: ${TABLE}."DAY_OF_YEAR" ;;
  }

  dimension: day_order {
    type: number
    sql: ${TABLE}."DAY_ORDER" ;;
  }

  dimension_group: first_day_of_month {
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
    sql: ${TABLE}."FIRST_DAY_OF_MONTH" ;;
  }

  dimension_group: first_day_of_quarter {
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
    sql: ${TABLE}."FIRST_DAY_OF_QUARTER" ;;
  }

  dimension_group: first_day_of_week {
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
    sql: ${TABLE}."FIRST_DAY_OF_WEEK" ;;
  }

  dimension_group: first_day_of_year {
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
    sql: ${TABLE}."FIRST_DAY_OF_YEAR" ;;
  }

  dimension: is_last_day_of_month {
    type: number
    sql: ${TABLE}."IS_LAST_DAY_OF_MONTH" ;;
  }

  dimension: is_last_day_of_quarter {
    type: number
    sql: ${TABLE}."IS_LAST_DAY_OF_QUARTER" ;;
  }

  dimension: is_last_day_of_week {
    type: number
    sql: ${TABLE}."IS_LAST_DAY_OF_WEEK" ;;
  }

  dimension: is_last_month_of_quarter {
    type: number
    sql: ${TABLE}."IS_LAST_MONTH_OF_QUARTER" ;;
  }

  dimension: is_last_week_of_month {
    type: number
    sql: ${TABLE}."IS_LAST_WEEK_OF_MONTH" ;;
  }

  dimension: is_last_week_of_quarter {
    type: number
    sql: ${TABLE}."IS_LAST_WEEK_OF_QUARTER" ;;
  }

  dimension: is_weekday {
    type: number
    sql: ${TABLE}."IS_WEEKDAY" ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}."MONTH_NAME" ;;
  }

  dimension: month_of_quarter {
    type: number
    sql: ${TABLE}."MONTH_OF_QUARTER" ;;
  }

  dimension: month_order {
    type: number
    sql: ${TABLE}."MONTH_ORDER" ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}."QUARTER" ;;
  }

  dimension: quarter_order {
    type: number
    sql: ${TABLE}."QUARTER_ORDER" ;;
  }

  dimension: week_of_month {
    type: number
    sql: ${TABLE}."WEEK_OF_MONTH" ;;
  }

  dimension: week_of_quarter {
    type: number
    sql: ${TABLE}."WEEK_OF_QUARTER" ;;
  }

  dimension: week_of_year {
    type: number
    sql: ${TABLE}."WEEK_OF_YEAR" ;;
  }

  dimension: week_order {
    type: number
    sql: ${TABLE}."WEEK_ORDER" ;;
  }

  dimension: week_run_num {
    type: number
    sql: ${TABLE}."WEEK_RUN_NUM" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      day_name,
      year_month_day_name,
      year_week_name,
      month_name,
      year_month_name,
      year_quarter_name
    ]
  }
}
