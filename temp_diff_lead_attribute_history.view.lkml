view: temp_diff_lead_attribute_history {
  sql_table_name: simon12_warehouse.temp_diff_lead_attribute_history ;;

  dimension: attribute_source_id {
    type: string
    sql: ${TABLE}.attribute_source_id ;;
  }

  dimension: attribute_type {
    type: string
    sql: ${TABLE}.attribute_type ;;
  }

  dimension: attribute_value {
    type: string
    sql: ${TABLE}.attribute_value ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: old_attribute_source_id {
    type: string
    sql: ${TABLE}.old_attribute_source_id ;;
  }

  dimension: old_attribute_value {
    type: string
    sql: ${TABLE}.old_attribute_value ;;
  }

  dimension_group: started {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.started_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
