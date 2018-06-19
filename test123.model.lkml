connection: "marketo_b2"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: test123_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test123_default_datagroup



explore: mpa_d_abm_account {}

explore: mpa_d_company {}

explore: mpa_d_date {}

explore: mpa_d_domain {}

explore: mpa_d_email {}

explore: mpa_d_email_campaign {}

explore: mpa_d_etl_history {}

explore: mpa_d_hour {}

explore: mpa_d_lead {}

explore: mpa_d_lead_owner {}

explore: mpa_d_lead_partition {}

explore: mpa_d_lead_source {}

explore: mpa_d_lead_status {}

explore: mpa_d_link {}

explore: mpa_d_program {}

explore: mpa_d_revenue_model_cycle {}

explore: mpa_d_revenue_model_version {}

explore: mpa_d_revenue_stage {}

explore: mpa_d_score {}

explore: mpa_f_email_activity {}

explore: mpa_v_abm_account {}

explore: mpa_v_company {}

explore: mpa_v_date_email {}

explore: mpa_v_domain {}

explore: mpa_v_email {}

explore: mpa_v_email_activity {}

explore: mpa_v_hour {}

explore: mpa_v_lead {}

explore: mpa_v_lead_owner {}

explore: mpa_v_lead_source {}

explore: mpa_v_lead_status {}

explore: mpa_v_link {}

explore: mpa_v_program_email {}

explore: mpa_v_program_lead {}
