view: mpa_l_lead_opty_assoc {
  sql_table_name: simon12_warehouse.mpa_l_lead_opty_assoc ;;

  dimension: assoc_changed_etl_key {
    type: number
    sql: ${TABLE}.assoc_changed_etl_key ;;
  }

  dimension: is_assoc {
    type: yesno
    sql: ${TABLE}.is_assoc ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
