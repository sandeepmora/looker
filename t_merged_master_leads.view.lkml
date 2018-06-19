view: t_merged_master_leads {
  sql_table_name: simon12_warehouse.t_merged_master_leads ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
