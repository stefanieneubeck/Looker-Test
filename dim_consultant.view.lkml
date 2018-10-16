view: dim_consultant {
  sql_table_name: datamart.dim_consultant ;;

  dimension: id {
    label: "id"
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: country_code_iso3 {
    type: string
    sql: ${TABLE}.country_code_iso3 ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_date ;;
  }




  dimension_group: exit {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.exit_date ;;
  }

  dimension: fd_sales_target {
    type: number
    sql: ${TABLE}.fd_sales_target ;;
  }

  dimension: gid {
    type: string
    sql: ${TABLE}.gid ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_hearo_consultant {
    type: yesno
    sql: ${TABLE}.is_hearo_consultant ;;
  }

  dimension: manager_name {
    type: string
    sql: ${TABLE}.manager_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: no_rookie_since {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.no_rookie_since ;;
  }

  dimension: ocd_appts_target {
    type: number
    sql: ${TABLE}.ocd_appts_target ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}.photo_url ;;
  }

  dimension: pipeline_target {
    type: number
    sql: ${TABLE}.pipeline_target ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }

  dimension: sub_team {
    type: string
    sql: ${TABLE}.sub_team ;;
  }

  dimension: team_lead_flag {
    type: yesno
    sql: ${TABLE}.team_lead_flag ;;
  }

  dimension: weekly_working_hours {
    type: number
    sql: ${TABLE}.weekly_working_hours ;;
  }

  dimension: wiw_user_id {
    type: number
    sql: ${TABLE}.wiw_user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, manager_name]
  }
}
