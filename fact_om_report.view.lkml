view: fact_om_report {
   # You can specify the table name if it's different from the view name:
   sql_table_name: datamart.fact_om_report ;;
  #
  # # Define your dimensions and measures here, like this:

  dimension_group: date {
    description: "Date"
    type: time
    timeframes: [
      raw,
      date,
      week_of_year,
      month,
      year
    ]
  }

   dimension: act {
     description: "Unique ID for each campaign"
     type: string
     sql: ${TABLE}.act ;;
   }
  dimension: country_code_iso3 {
     description: "country_code we use from SF"
     type: string
     sql: ${TABLE}.country_code_iso3 ;;
   }

   dimension: user_device {
     description: "Device"
     type: string
     sql: ${TABLE}.user_device ;;
   }

   dimension: bulk_phone_activation {
    description: "BPA Filter"
    type: string
    sql: ${TABLE}.bulk_phone_activation;;
   }



   measure: sessions_analytics {
    description: "we can put any description here"
     type: sum
   }

  measure: om_cost_eur {
    description: "we can put any description here"
    type: sum
  }

  measure: om_cost_local {
    description: "we can put any description here"
    type: sum
  }


  measure: rd_leads_qualified_cc {
    description: "we can put any description here"
    type: sum
  }

  measure: rd_leads_closed_qualified_cc {
    description: "we can put any description here"
    type: sum
  }

  measure: ocd_appts {
    description: "we can put any description here"
    type: sum
  }

  measure: fd_sales {
    description: "we can put any description here"
    type: sum
  }

  measure: fd_appts_lost {
    description: "we can put any description here"
    type: sum
  }

  measure: lcd_leads {
    type: sum
  }


  measure: lcd_appts {
    type: sum
  }

  measure: lcd_leads_in_process {
    type: sum
  }

  measure: lcd_leads_not_reached {
    type: sum
  }

  measure: lcd_leads_follow_up {
    type: sum
  }

    measure: lcd_leads_closed {
      type: sum
  }

  measure: lcd_leads_qualified {
    type: sum
  }

  measure: lcd_leads_open {
    type: sum
  }

  measure: lcd_appts_to_be_made {
    type: sum
  }

  measure: lcd_appts_in_process {
    type: sum
  }

  measure: lcd_sales {
    type: sum
  }

  measure: lcd_appts_lost {
    type: sum
  }

  measure: lcd_precise_age {
    type: average
  }

  measure: ocd_account_age {
    type: average
  }

  measure: lcd_bad_leads {
    type: sum
  }


  measure: lcd_leads_has_prescription {
    type: sum
  }


  measure: lcd_leads_second_time_buyer {
    type: sum
  }


  measure: lcd_appts_on_hold {
    type: sum
  }


  measure: lcd_leads_qualified_cc {
    type: sum
  }

  measure: lcd_leads_closed_qualified_cc {
    type: sum
  }

  measure: lcd_appts_fitted {
    type: sum
  }

  measure: lcd_lego_show_ups {
    type: sum
  }

  measure: lcd_lego_fitted {
    type: sum
  }

  measure: fd_promoters {
    type: sum
  }

  measure: fd_detractors {
    type: sum
  }

  measure: fd_nps_answers {
    type: sum
  }

  measure: lcd_total_invoiced_eur {
    type: sum
  }

  measure: lcd_total_invoiced_local {
    type: sum
  }

  measure: lcd_invoices {
    type: sum
  }

  measure: lcd_number_of_hearing_aids {
    type: sum
  }

  measure: lcd_cogs_eur{
    type: sum
  }

  measure: lcd_cogs_local{
    type: sum
  }

  measure: fd_total_invoiced_eur {
    type: sum
  }

  measure: fd_total_invoiced_local {
    type: sum
  }

  measure: fd_invoices {
    type: sum
  }

  measure: fd_number_of_hearing_aids {
    type: sum
  }

  measure: fd_cogs_eur{
    type: sum
  }

  measure: fd_cogs_local{
    type: sum
  }

  measure: lcd_avg_age_lead{
    type:  average
  }

  measure: ocd_avg_age_appt{
    type:  average
  }



  measure: CR1{
    label: "CR1"
    type:  number
  sql: (1.0*${lcd_leads})/nullif( ${sessions_analytics}, 0) ;;
  value_format_name: percent_1
  }

  measure: CR2{
    label: "CR2"
    type:  number
    sql: (1.0*${lcd_appts})/nullif( ${lcd_leads}, 0) ;;
    value_format_name: percent_1
  }

  measure: CR2_F{
    label: "CR2-F"
    type:  number
    sql: (1.0*${lcd_appts_fitted})/nullif( ${lcd_leads}, 0) ;;
    value_format_name: percent_1
  }


  measure: CR2_CC{
    label: "CR2 CC"
    type:  number
    sql: (1.0*${lcd_leads_closed_qualified_cc})/nullif( ${lcd_leads_closed}, 0) ;;
    value_format_name: percent_1
  }

  measure: CR3{
    label: "CR3"
    type:  number
    sql: (1.0*${lcd_sales})/nullif( ${lcd_appts}, 0) ;;
    value_format_name: percent_1
  }

  measure: success_rate{
    label: "Success Rate"
    type:  number
    sql: (1.0*${lcd_sales})/nullif( ${lcd_sales} + ${lcd_appts_lost}, 0) ;;
    value_format_name: percent_1
  }

  measure: CPC_euro{
    label: "CPC (Euro)"
    type:  number
    sql: (1.0*${om_cost_eur})/nullif( ${sessions_analytics}, 0) ;;
    value_format_name: percent_1
  }

  measure: CPC_local{
    label: "CPC (Local)"
    type:  number
    sql: (1.0*${om_cost_local})/nullif( ${sessions_analytics}, 0) ;;
    value_format_name: percent_1
  }

  measure: CPL_euro{
    label: "CPL (Euro)"
    type:  number
    sql: (1.0*${om_cost_eur})/nullif( ${lcd_leads}, 0) ;;
    value_format_name: percent_1
  }

  measure: CPL_local{
    label: "CPL (Local)"
    type:  number
    sql: (1.0*${om_cost_local})/nullif( ${lcd_leads}, 0) ;;
    value_format_name: percent_1
  }


  measure: CPP_euro{
    label: "CPP (Euro)"
    type:  number
    sql: (1.0*${om_cost_eur})/nullif( ${lcd_sales}, 0) ;;
    value_format_name: percent_1
  }

  measure: CPP_local{
    label: "CPP (Local)"
    type:  number
    sql: (1.0*${om_cost_local})/nullif( ${lcd_sales}, 0) ;;
    value_format_name: percent_1
  }

  measure: lcd_auto_closed_lead_share{
    label: "(LCD) Auto Closed Lead Share"
    type:  number
    sql: (1.0*${lcd_bad_leads})/nullif( ${lcd_sales}, 0) ;;
    value_format_name: percent_1
  }

  measure: lcd_show_up_Rate_Lego{
    label: "(LCD) Show Up Rate Lego"
    type:  number
    sql: (1.0*${lcd_lego_show_ups})/nullif( ${lcd_leads}, 0) ;;
    value_format_name: percent_1
  }

  measure: tcr{
    label: "TCR"
    type:  number
    sql: ${CR1}*${CR2}*${CR3} ;;
    value_format_name: percent_2
  }

  measure: nps{
    label: "NPS"
    type:  number
    sql: (1.0*${lcd_leads_has_prescription})/nullif( ${lcd_leads}, 0) ;;
    value_format_name: percent_1
  }

  measure: lcd_leads_with_prescription{
    label: "(LCD) Leads with Prescription"
    type:  number
    sql: (${fd_promoters} - ${fd_detractors})/nullif(${fd_nps_answers}, 0) ;;
    value_format_name: percent_1
  }


  measure: lcd_abv_eur{
    label: "(LCD) ABV Eur"
    type:  number
    sql: (1.0*${lcd_total_invoiced_eur})/nullif( ${lcd_invoices}, 0)  ;;
    value_format_name: percent_1
  }

  measure: lcd_abv_local{
    label: "(LCD) ABV Local"
    type:  number
    sql: (1.0*${lcd_total_invoiced_local})/nullif( ${lcd_invoices}, 0)  ;;
    value_format_name: percent_1
  }

  measure: fd_abv_eur{
    label: "(FD) ABV Eur"
    type:  number
    sql: (1.0*${fd_total_invoiced_eur})/nullif( ${fd_invoices}, 0)  ;;
    value_format_name: percent_1
  }

  measure: fd_abv_local{
    label: "(FD) ABV Local"
    type:  number
    sql: (1.0*${fd_total_invoiced_local})/nullif( ${fd_invoices}, 0)  ;;
    value_format_name: percent_1
  }


 }
