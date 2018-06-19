view: mpa_s_abm_account_list_member {
  sql_table_name: simon12_warehouse.mpa_s_abm_account_list_member ;;

  dimension: abm_account_list_source_id {
    type: string
    sql: ${TABLE}.abm_account_list_source_id ;;
  }

  dimension: abm_account_source_id {
    type: string
    sql: ${TABLE}.abm_account_source_id ;;
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

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
