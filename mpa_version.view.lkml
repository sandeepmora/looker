view: mpa_version {
  sql_table_name: simon12_warehouse.mpa_version ;;

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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: patch_version {
    type: number
    sql: ${TABLE}.patch_version ;;
  }

  dimension: release_name {
    type: string
    sql: ${TABLE}.release_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: version_key {
    type: number
    sql: ${TABLE}.version_key ;;
  }

  measure: count {
    type: count
    drill_fields: [release_name]
  }
}
