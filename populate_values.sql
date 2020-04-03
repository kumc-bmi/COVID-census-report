update covid_report SET COVID_Pending_ICU_Patients = (
  select value from redcap_data where record = @institution and field_name='covidpend_icu_bed' and project_id='16558' and (
  (select max(instance) from redcap_data where project_id='16558' and field_name='covidpend_icu_bed' and record = @institution) IS NULL OR instance =  (
    select max(instance) from redcap_data where project_id='16558' and field_name='covidpend_icu_bed' and record = @institution)
  )
)
where site_id = @institution ;
update covid_report SET COVID_Pending_ICU_Vent = (
  select value from redcap_data where record = @institution and field_name='covidpend_icu_bed_vent' and project_id='16558' and (
  (select max(instance) from redcap_data where project_id='16558' and field_name='covidpend_icu_bed_vent' and record = @institution) IS NULL OR instance =  (
    select max(instance) from redcap_data where project_id='16558' and field_name='covidpend_icu_bed_vent' and record = @institution)
  )
)
where site_id = @institution ;
update covid_report SET COVID_Confirmed_ICU_Patients = (
  select value from redcap_data where record = @institution and field_name='covidcfrm_icu_bed' and project_id='16558' and (
  (select max(instance) from redcap_data where project_id='16558' and field_name='covidcfrm_icu_bed' and record = @institution) IS NULL OR instance =  (
    select max(instance) from redcap_data where project_id='16558' and field_name='covidcfrm_icu_bed' and record = @institution)
  )
)
where site_id = @institution ;
update covid_report SET COVID_Confirmed_ICU_Vent = (
  select value from redcap_data where record = @institution and field_name='covidcfrm_icu_bed_vent' and project_id='16558' and (
  (select max(instance) from redcap_data where project_id='16558' and field_name='covidcfrm_icu_bed_vent' and record = @institution) IS NULL OR instance =  (
    select max(instance) from redcap_data where project_id='16558' and field_name='covidcfrm_icu_bed_vent' and record = @institution)
  )
)
where site_id = @institution ;
update covid_report SET Non_COVID_ICU_Patients = (
  select value from redcap_data where record = @institution and field_name='noncovid_icu' and project_id='16558' and (
  (select max(instance) from redcap_data where project_id='16558' and field_name='noncovid_icu' and record = @institution) IS NULL OR instance =  (
    select max(instance) from redcap_data where project_id='16558' and field_name='noncovid_icu' and record = @institution)
  )
)
where site_id = @institution ;
update covid_report SET Non_COVID_ICU_Vent = (
  select value from redcap_data where record = @institution and field_name='noncovid_icu_vent' and project_id='16558' and (
  (select max(instance) from redcap_data where project_id='16558' and field_name='noncovid_icu_vent' and record = @institution) IS NULL OR instance =  (
    select max(instance) from redcap_data where project_id='16558' and field_name='noncovid_icu_vent' and record = @institution)
  )
)
where site_id = @institution ;
update covid_report SET ICU_Bed_Capacity = (
  select value from redcap_data where record = @institution and field_name='icu_bed_num' and project_id='16558'
)
where site_id = @institution ;
update covid_report SET Number_of_Ventilators = (
  select value from redcap_data where record = @institution and field_name='ventilator_num' and project_id='16558'
)
where site_id = @institution ;
update covid_report SET Number_of_surge_ICU_beds = (
  select value from redcap_data where record = @institution and field_name='icu_bed_surge_num' and project_id='16558'
)
where site_id = @institution ;
update covid_report SET Number_of_surge_ventilators = (
  select value from redcap_data where record = @institution and field_name='ventilator_surge_num' and project_id='16558'
)
where site_id = @institution ;
