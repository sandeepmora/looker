view: mpa_l_lead_attribute_history {
  sql_table_name: simon12_warehouse.mpa_l_lead_attribute_history ;;

  dimension: activity_log_id {
    type: number
    sql: ${TABLE}.activity_log_id ;;
  }

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

  dimension: change_type {
    type: string
    sql: ${TABLE}.change_type ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: ended {
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
    sql: ${TABLE}.ended_at ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: lead_attribute_history_key {
    type: number
    sql: ${TABLE}.lead_attribute_history_key ;;
  }

  dimension: lead_partition_key {
    type: number
    sql: ${TABLE}.lead_partition_key ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
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

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
