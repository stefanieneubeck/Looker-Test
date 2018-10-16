view: dim_act {
  sql_table_name: datamart.dim_act ;;

  dimension: act {
    label: "ACT"
    type: string
    sql: ${TABLE}.act ;;
  }

  dimension: controlling_channel {
    label: "Controlling Channel"
    type: string
    sql: ${TABLE}.controlling_channel ;;
  }

  dimension: country_code_iso3 {
    label: "Country"
    type: string
    sql: ${TABLE}.country_code_iso3 ;;
  }




  dimension: marketing_partner {
    label: "Marketing Partner"
    type: string
    sql: ${TABLE}.marketing_partner ;;
  }

  dimension: offer_type {
    label: "Offer Type"
    type: string
    sql: ${TABLE}.offer_type ;;
  }

  dimension: usage {
    label: "Usage"
    type: string
    sql: ${TABLE}.usage ;;
  }

}
