update covid_report SET covidpend_icu_bed = (
  select value from redcap_data where record = @institution and field_name='covidpend_icu_bed' and project_id='16558' and instance = (
    select max(instance) from redcap_data where project_id='16558' and field_name='covidpend_icu_bed' and record = @institution
  )
)
where site_id = @institution ;
