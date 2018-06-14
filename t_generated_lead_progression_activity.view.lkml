view: t_generated_lead_progression_activity {
  sql_table_name: simon12_warehouse.t_generated_lead_progression_activity ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: acquisition_program_key {
    type: number
    sql: ${TABLE}.acquisition_program_key ;;
  }

  dimension: progression_activity_key {
    type: number
    sql: ${TABLE}.progression_activity_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
