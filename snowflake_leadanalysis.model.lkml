connection: "marketo_b2"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: snowflake_leadanalysis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: snowflake_leadanalysis_default_datagroup

explore: mpa_f_email_activity {
  join: mpa_d_etl_history {
    relationship: many_to_one
    sql_on: ${etl_history_key} = ${etl_history_key} ;;
  }
  join: mpa_d_email {
    relationship: many_to_one
    sql_on: ${email_key} = ${email_key} ;;
  }
  join: mpa_d_email_campaign {
    relationship: many_to_one
    sql_on: ${campaign_key} = ${campaign_key} ;;
  }
  join: mpa_d_lead {
    relationship: many_to_one
    sql_on: ${lead_key} = ${lead_key} ;;
  }
  join: mpa_d_company {
    relationship: many_to_one
    sql_on: ${company_key} = ${company_key} ;;
  }
  join: mpa_d_domain {
    relationship: many_to_one
    sql_on: ${domain_key} = ${domain_key} ;;
  }
  join: mpa_d_link {
    relationship: many_to_one
    sql_on: ${link_key} = ${link_key} ;;
  }
}
