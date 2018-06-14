connection: "simon12_warehouse"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.

explore: mpa_d_lead {
  join: mpa_d_lead_bridge {
    relationship: many_to_one
    sql_on: ${lead_key} = ${lead_key} ;;
  }

  join: mpa_d_company {
    relationship: many_to_one
    sql_on: ${company_key} = ${company_key} ;;
  }
  join: mpa_d_abm_account {
    relationship: many_to_one
    sql_on: ${abm_account_key} = ${abm_account_key} ;;
  }
  join: mpa_d_opportunity {
    relationship: many_to_one
    sql_on: ${opportunity_created_date_key} = ${opportunity_created_date_key} ;;
  }
}
