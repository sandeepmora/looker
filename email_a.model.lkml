connection: "simon12_warehouse"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.

explore: mpa_f_email_activity {

  join: mpa_d_program {
    relationship: many_to_one
    sql_on: ${etl_history_key} = ${etl_history_key} ;;
 }

  join: mpa_d_email {
    relationship: many_to_one
    sql_on: ${email_key} = ${email_key} ;;
  }
  join: mpa_d_company {
    relationship: many_to_one
    sql_on: ${company_key} = ${company_key} ;;
  }
  join: mpa_d_lead {
    relationship: many_to_one
    sql_on: ${lead_key} = ${lead_key} ;;
  }
}
