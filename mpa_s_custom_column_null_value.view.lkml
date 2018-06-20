view: mpa_s_custom_column_null_value {
  sql_table_name: simon12_warehouse.mpa_s_custom_column_null_value ;;

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  dimension: marketing_asset_id {
    type: number
    sql: ${TABLE}.marketing_asset_id ;;
  }

  dimension_group: persisted {
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
    sql: ${TABLE}.persisted_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
