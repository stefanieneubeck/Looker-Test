view: consultants {
  sql_table_name: datamart.fact_consultant_daily ;;

  dimension: consultant_id {
    type: string
    sql: ${TABLE}.consultant_id ;;
  }

  measure: appts_capacity {
    type: sum
  }

  measure: appts_final {
    type: sum
  }

  measure: appts_follow_up {
    type: sum
  }

  measure: appts_initial {
    type: sum
  }

  measure: avg_days_since_last_appt {
    type: sum
  }

  measure: avg_days_since_last_follow_up_appt {
    type: sum
  }

  measure: avg_days_to_initial_appt {
    type: sum
  }

  measure: call_time_seconds {
    type: sum
    sql: ${TABLE}.call_time_seconds ;;
  }

  measure: calls {
    type: sum
  }

  measure: calls_appt_confirmation {
    type: sum
  }

  measure: calls_appt_confirmation_minutes {
    type: sum
  }

  measure: calls_care {
    type: sum
  }

  measure: calls_care_minutes {
    type: sum
  }

  measure: calls_first_appt {
    type: sum
  }

  measure: calls_first_appt_minutes {
    type: sum
  }

  measure: calls_minutes {
    type: sum
  }



  measure: customer_time_target {
    type: sum
  }

   dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }





  measure: est_processing_costs_eur {
    type: sum
  }

  measure: est_processing_costs_local {
    type: sum
  }

  measure: fad_first_appts {
    type: sum
  }

  measure: fad_purchase_agreements {
    type: sum
  }

  measure: fd_appts_gross_process_duration_lost_filled {
    type: sum
  }

  measure: fd_appts_gross_process_duration_lost_sum {
    type: sum

  }

  measure: fd_appts_gross_process_duration_sum {
    type: sum
  }

  measure: fd_appts_gross_process_duration_won_filled {
    type: sum
  }

  measure: fd_appts_lost {
    type: sum
  }

  measure: fd_appts_net_process_duration_lost_filled {
    type: sum
  }

  measure: fd_appts_net_process_duration_lost_sum {
    type: sum
  }

  measure: fd_appts_net_process_duration_sum {
    type: sum
  }

  measure: fd_appts_net_process_duration_won_filled {
    type: sum
  }

  measure: fd_appts_total_process_duration_sum {
    type: sum
  }

  measure: fd_appts_total_process_duration_won_filled {
    type: sum
  }

  measure: fd_billing_document_count {
    type: sum
  }

  measure: fd_billing_ha_document_count {
    type: sum
  }

  measure: fd_gross_sales {
    type: sum
  }

  measure: fd_hearing_aids_sold {
    type: sum
  }

  measure: fd_net_revenue_eur {
    type: sum
  }

  measure: fd_net_revenue_local {
    type: sum
  }

  measure: fd_nps_answers {
    type: sum
  }

  measure: fd_nps_detractors {
    type: sum
  }

  measure: fd_nps_neutrals {
    type: sum
  }

  measure: fd_nps_promoters {
    type: sum
  }

  measure: fd_nps_rating_sum {
    type: sum

  }

  measure: fd_sales {
    type: sum
  }

  measure: fd_sales_target {
    type: sum

  }

  measure: fta_gross_sales {
    type: sum
  }

  measure: fta_purchase_agreements {
    type: sum

  }

  measure: fta_sales {
    type: sum
  }

  measure: hours_scheduled_wiw {
    type: sum
  }

  measure: lcd_appts {
    type: sum
  }

  measure: lcd_est_om_costs_eur {
    type: sum
  }

  measure: lcd_est_om_costs_local {
    type: sum
  }

  measure: lcd_leads {
    type: sum
  }

  measure: ocd_appts {
    type: sum
  }

  measure: ocd_appts_1st_appointment_confirmed_lego {
    type: sum
  }

  measure: ocd_appts_1st_appointment_scheduled_lego {
    type: sum
  }

  measure: ocd_appts_closed_and_lost_lego {
    type: sum
  }

  measure: ocd_appts_closed_and_won_end_of_trial_lego {
    type: sum
  }

  measure: ocd_appts_customer_appreciates_the_value_lego {
    type: sum
  }

  measure: ocd_appts_days_to_first_appointment_filled {
    type: sum
  }

  measure: ocd_appts_days_to_first_appointment_sum {
    type: sum
  }

  measure: ocd_appts_favorite_device_selected_lego {
    type: sum
  }

  measure: ocd_appts_fitted {
    type: sum
  }

  measure: ocd_appts_fitting_duration_sum {
    type: sum
  }

  measure: ocd_appts_follow_up_with_customer_lego {
    type: sum
  }

  measure: ocd_appts_hearing_aid_fitted_lego {
    type: sum
  }

  measure: ocd_appts_in_process {
    type: sum
  }

  measure: ocd_appts_lost {
  }

  measure: ocd_appts_on_hold {
    type: sum
  }

  measure: ocd_appts_on_hold_lego {
    type: sum
  }

  measure: ocd_appts_purchase_agreement_signed_lego {
  }

  measure: ocd_appts_referrals_received_lego {
    type: sum
  }

  measure: ocd_appts_sale_finalized_lego {
    type: sum
  }

  measure: ocd_appts_showed_up_for_1st_appointment_lego {
    type: sum
  }

  measure: ocd_appts_target {
    type: sum
  }

  measure: ocd_appts_to_be_made {
    type: sum
  }

  measure: ocd_appts_wants_increase_quality {
    type: sum
  }

  measure: ocd_appts_won {
    type: sum
  }

  measure: ocd_purchase_agreements {
    type: sum
  }

  measure: ocd_solution_call_conducted_filled {
    type: sum
  }

  measure: ocd_solution_call_conducted_sum {
    type: sum
  }

  measure: pipeline {
    type: sum
  }

  measure: pipeline_target {
    type: sum
  }

  measure: qcd_pending_payments {
    type: sum
  }

  measure: rd_leads_closed_qualified {
    type: sum
  }

  measure: rd_leads_qualified {
    type: sum
  }

  measure: sales_capacity {
    type: sum
  }

  measure: working_hours_sf {
    type: sum
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
