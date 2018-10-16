connection: "dwh_prod"

# include all the views
include: "*.view"

datagroup: consultants_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: consultants_default_datagroup

explore: consultants {
  group_label: "Sales"
  label: "Consultants"
  view_label: "Daily Overview"

  join: dim_consultant{
    from: dim_consultant
   relationship: many_to_one
  view_label: "Consultants Attributes"
    sql_on:  ${consultants.consultant_id} = ${dim_consultant.id}
    ;;
  }
}
