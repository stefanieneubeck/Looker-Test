connection: "dwh_prod"

# include all the views
include: "*.view"

datagroup: campaigns_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: campaigns_default_datagroup

explore: fact_om_report {
  group_label: "Marketing"
  label: "Campaigns"

  join:  dim_act{
    from: dim_act
    relationship: many_to_one
    view_label: "ACT Attributes"
    sql_on: ${fact_om_report.act} = ${dim_act.act} and  ${fact_om_report.country_code_iso3} = ${dim_act.country_code_iso3} ;;
  }

}
