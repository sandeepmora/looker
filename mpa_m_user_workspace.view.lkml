view: mpa_m_user_workspace {
  sql_table_name: simon12_warehouse.mpa_m_user_workspace ;;

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

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_all_zones {
    type: yesno
    sql: ${TABLE}.is_all_zones ;;
  }

  dimension_group: source_created {
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
    sql: ${TABLE}.source_created_at ;;
  }

  dimension_group: source_updated {
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
    sql: ${TABLE}.source_updated_at ;;
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

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_workspace_key {
    type: number
    sql: ${TABLE}.user_workspace_key ;;
  }

  dimension: workspace_key {
    type: number
    sql: ${TABLE}.workspace_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
