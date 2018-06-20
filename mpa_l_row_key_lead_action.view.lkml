view: mpa_l_row_key_lead_action {
  sql_table_name: simon12_warehouse.mpa_l_row_key_lead_action ;;

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

  dimension: pk {
    type: number
    sql: ${TABLE}.pk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
