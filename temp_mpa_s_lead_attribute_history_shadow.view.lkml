view: temp_mpa_s_lead_attribute_history_shadow {
  sql_table_name: simon12_warehouse.temp_mpa_s_lead_attribute_history_shadow ;;

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

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: new_partition_key {
    type: number
    sql: ${TABLE}.new_partition_key ;;
  }

  dimension: old_attribute_source_id {
    type: string
    sql: ${TABLE}.old_attribute_source_id ;;
  }

  dimension: old_attribute_value {
    type: string
    sql: ${TABLE}.old_attribute_value ;;
  }

  dimension: old_partition_key {
    type: number
    sql: ${TABLE}.old_partition_key ;;
  }

  dimension: p_activity_type_id {
    type: number
    sql: ${TABLE}.p_activity_type_id ;;
  }

  dimension: p_discriminator {
    type: number
    sql: ${TABLE}.p_discriminator ;;
  }

  dimension: p_lead_id {
    type: number
    sql: ${TABLE}.p_lead_id ;;
  }

  dimension_group: p_persisted {
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
    sql: ${TABLE}.p_persisted_at ;;
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
