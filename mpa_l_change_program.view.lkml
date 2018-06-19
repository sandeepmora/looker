view: mpa_l_change_program {
  sql_table_name: simon12_warehouse.mpa_l_change_program ;;

  dimension_group: attribution_updated {
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
    sql: ${TABLE}.attribution_updated_at ;;
  }

  dimension: is_qualified {
    type: yesno
    sql: ${TABLE}.is_qualified ;;
  }

  dimension_group: member_updated {
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
    sql: ${TABLE}.member_updated_at ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
