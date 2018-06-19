view: mpa_l_object_watermark {
  sql_table_name: simon12_warehouse.mpa_l_object_watermark ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: object_watermark_key {
    type: number
    sql: ${TABLE}.object_watermark_key ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: watermark_key {
    type: number
    sql: ${TABLE}.watermark_key ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
