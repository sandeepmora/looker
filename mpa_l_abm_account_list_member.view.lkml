view: mpa_l_abm_account_list_member {
  sql_table_name: simon12_warehouse.mpa_l_abm_account_list_member ;;

  dimension: abm_account_key {
    type: number
    sql: ${TABLE}.abm_account_key ;;
  }

  dimension: abm_account_list_key {
    type: number
    sql: ${TABLE}.abm_account_list_key ;;
  }

  dimension: abm_account_list_name {
    type: string
    sql: ${TABLE}.abm_account_list_name ;;
  }

  dimension: abm_account_list_source_id {
    type: string
    sql: ${TABLE}.abm_account_list_source_id ;;
  }

  dimension: abm_account_name {
    type: string
    sql: ${TABLE}.abm_account_name ;;
  }

  dimension: abm_account_source_id {
    type: string
    sql: ${TABLE}.abm_account_source_id ;;
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

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
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
    drill_fields: [abm_account_list_name, abm_account_name]
  }
}
