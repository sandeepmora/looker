view: temp_oppty_touches {
  sql_table_name: simon12_warehouse.temp_oppty_touches ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: oppty_amount {
    type: number
    sql: ${TABLE}.oppty_amount ;;
  }

  dimension_group: oppty_closed {
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
    sql: ${TABLE}.oppty_closed_date ;;
  }

  dimension_group: oppty_created {
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
    sql: ${TABLE}.oppty_created_date ;;
  }

  dimension: oppty_first_touch_close {
    type: number
    sql: ${TABLE}.oppty_first_touch_close ;;
  }

  dimension: oppty_first_touch_create {
    type: number
    sql: ${TABLE}.oppty_first_touch_create ;;
  }

  dimension: oppty_multi_touch_close {
    type: number
    sql: ${TABLE}.oppty_multi_touch_close ;;
  }

  dimension: oppty_multi_touch_create {
    type: number
    sql: ${TABLE}.oppty_multi_touch_create ;;
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
