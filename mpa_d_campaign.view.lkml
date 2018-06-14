view: mpa_d_campaign {
  sql_table_name: simon12_warehouse.mpa_d_campaign ;;

  dimension: campaign_key {
    type: number
    sql: ${TABLE}.campaign_key ;;
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

  dimension: is_campaign {
    type: yesno
    sql: ${TABLE}.is_campaign ;;
  }

  dimension: is_campaign_active {
    type: yesno
    sql: ${TABLE}.is_campaign_active ;;
  }

  dimension: is_trigger {
    type: yesno
    sql: ${TABLE}.is_trigger ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent_program_key {
    type: number
    sql: ${TABLE}.parent_program_key ;;
  }

  dimension: parent_program_name {
    type: string
    sql: ${TABLE}.parent_program_name ;;
  }

  dimension: parent_program_source_id {
    type: string
    sql: ${TABLE}.parent_program_source_id ;;
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
    drill_fields: [name, parent_program_name]
  }
}
