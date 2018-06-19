view: temp_mpa_s_email_activity {
  sql_table_name: simon12_warehouse.temp_mpa_s_email_activity ;;

  dimension: activity_type_id {
    type: number
    sql: ${TABLE}.activity_type_id ;;
  }

  dimension: agg_opened_ali_id {
    type: number
    sql: ${TABLE}.agg_opened_ali_id ;;
  }

  dimension: agg_opened_date_key {
    type: number
    sql: ${TABLE}.agg_opened_date_key ;;
  }

  dimension: agg_opened_hour {
    type: number
    sql: ${TABLE}.agg_opened_hour ;;
  }

  dimension: agg_sent_ali_id {
    type: number
    sql: ${TABLE}.agg_sent_ali_id ;;
  }

  dimension: agg_sent_date_key {
    type: number
    sql: ${TABLE}.agg_sent_date_key ;;
  }

  dimension: agg_sent_hour {
    type: number
    sql: ${TABLE}.agg_sent_hour ;;
  }

  dimension: campaign_key {
    type: number
    sql: ${TABLE}.campaign_key ;;
  }

  dimension: campaign_source_id {
    type: string
    sql: ${TABLE}.campaign_source_id ;;
  }

  dimension: clicked_count {
    type: number
    sql: ${TABLE}.clicked_count ;;
  }

  dimension: company_key {
    type: number
    sql: ${TABLE}.company_key ;;
  }

  dimension: date_key {
    type: number
    sql: ${TABLE}.date_key ;;
  }

  dimension: delivered_count {
    type: number
    sql: ${TABLE}.delivered_count ;;
  }

  dimension: domain_key {
    type: number
    sql: ${TABLE}.domain_key ;;
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}.domain_name ;;
  }

  dimension: email_key {
    type: number
    sql: ${TABLE}.email_key ;;
  }

  dimension: email_source_id {
    type: string
    sql: ${TABLE}.email_source_id ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: fact_count {
    type: number
    sql: ${TABLE}.fact_count ;;
  }

  dimension: hard_bounced_count {
    type: number
    sql: ${TABLE}.hard_bounced_count ;;
  }

  dimension: is_complaint {
    type: yesno
    sql: ${TABLE}.is_complaint ;;
  }

  dimension: is_processed {
    type: yesno
    sql: ${TABLE}.is_processed ;;
  }

  dimension: is_resolved {
    type: yesno
    sql: ${TABLE}.is_resolved ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: lead_source_id {
    type: string
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: link_key {
    type: number
    sql: ${TABLE}.link_key ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.link_url ;;
  }

  dimension: month_clicked_count {
    type: number
    sql: ${TABLE}.month_clicked_count ;;
  }

  dimension: opened_count {
    type: number
    sql: ${TABLE}.opened_count ;;
  }

  dimension: prev_clicked_date_key {
    type: number
    sql: ${TABLE}.prev_clicked_date_key ;;
  }

  dimension: prev_clicked_hour {
    type: number
    sql: ${TABLE}.prev_clicked_hour ;;
  }

  dimension: quarter_clicked_count {
    type: number
    sql: ${TABLE}.quarter_clicked_count ;;
  }

  dimension: sent_count {
    type: number
    sql: ${TABLE}.sent_count ;;
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

  dimension: source_created_hour {
    type: yesno
    sql: ${TABLE}.source_created_hour ;;
  }

  dimension: source_id {
    type: number
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

  dimension: stage_email_activity_key {
    type: number
    sql: ${TABLE}.stage_email_activity_key ;;
  }

  dimension: test_variant_id {
    type: number
    sql: ${TABLE}.test_variant_id ;;
  }

  dimension: unique_clicked_count {
    type: number
    sql: ${TABLE}.unique_clicked_count ;;
  }

  dimension: week_clicked_count {
    type: number
    sql: ${TABLE}.week_clicked_count ;;
  }

  measure: count {
    type: count
    drill_fields: [domain_name]
  }
}
