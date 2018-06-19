view: mpa_s_workspace_lead_partition {
  sql_table_name: simon12_warehouse.mpa_s_workspace_lead_partition ;;

  dimension: is_primary {
    type: yesno
    sql: ${TABLE}.is_primary ;;
  }

  dimension: lead_partition_source_id {
    type: number
    sql: ${TABLE}.lead_partition_source_id ;;
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

  dimension: workspace_source_id {
    type: number
    sql: ${TABLE}.workspace_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
