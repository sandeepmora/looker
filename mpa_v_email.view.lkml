view: mpa_v_email {
  sql_table_name: POC_TABLES.MPA_V_EMAIL ;;

  dimension: asemail_key {
    type: number
    sql: ${TABLE}."ASEMAIL_KEY" ;;
  }

  dimension: asemail_template {
    type: string
    sql: ${TABLE}."ASEMAIL_TEMPLATE" ;;
  }

  dimension: asfrom_email {
    type: string
    sql: ${TABLE}."ASFROM_EMAIL" ;;
  }

  dimension: asgroup_status {
    type: string
    sql: ${TABLE}."ASGROUP_STATUS" ;;
  }

  dimension: asgroup_sub_status {
    type: string
    sql: ${TABLE}."ASGROUP_SUB_STATUS" ;;
  }

  dimension: asis_pruned {
    type: number
    sql: ${TABLE}."ASIS_PRUNED" ;;
  }

  dimension: asmarketing_program_id {
    type: number
    sql: ${TABLE}."ASMARKETING_PROGRAM_ID" ;;
  }

  dimension: asname {
    type: string
    sql: ${TABLE}."ASNAME" ;;
  }

  dimension: asparent_source_id {
    type: number
    sql: ${TABLE}."ASPARENT_SOURCE_ID" ;;
  }

  dimension: asprimary_variant_id {
    type: number
    sql: ${TABLE}."ASPRIMARY_VARIANT_ID" ;;
  }

  dimension: assource_id {
    type: string
    sql: ${TABLE}."ASSOURCE_ID" ;;
  }

  dimension: assubject {
    type: string
    sql: ${TABLE}."ASSUBJECT" ;;
  }

  dimension: astype {
    type: string
    sql: ${TABLE}."ASTYPE" ;;
  }

  dimension: asvariant_app_comp_id {
    type: number
    sql: ${TABLE}."ASVARIANT_APP_COMP_ID" ;;
  }

  dimension: asvariant_id {
    type: number
    sql: ${TABLE}."ASVARIANT_ID" ;;
  }

  dimension: asvariant_sort_order {
    type: number
    sql: ${TABLE}."ASVARIANT_SORT_ORDER" ;;
  }

  dimension: asvariant_test_data {
    type: string
    sql: ${TABLE}."ASVARIANT_TEST_DATA" ;;
  }

  dimension: asworkspace_key {
    type: number
    sql: ${TABLE}."ASWORKSPACE_KEY" ;;
  }

  dimension: asworkspace_source_id {
    type: number
    sql: ${TABLE}."ASWORKSPACE_SOURCE_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [asname]
  }
}
