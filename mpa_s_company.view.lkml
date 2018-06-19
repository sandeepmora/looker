view: mpa_s_company {
  sql_table_name: simon12_warehouse.mpa_s_company ;;

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}.annual_revenue ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}.is_private ;;
  }

  dimension: is_sfdc_deleted {
    type: yesno
    sql: ${TABLE}.is_sfdc_deleted ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}.number_of_employees ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: sfdc_account_id {
    type: string
    sql: ${TABLE}.sfdc_account_id ;;
  }

  dimension: sic_code {
    type: string
    sql: ${TABLE}.sic_code ;;
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

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
