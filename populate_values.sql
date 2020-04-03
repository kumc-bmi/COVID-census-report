update covid_report SET covidpend_icu_bed = (
  select value from redcap_data where record = @institution and field_name='covidpend_icu_bed' and project_id='16558' and instance = (
    select max(instance) from redcap_data where project_id='16558' and field_name='covidpend_icu_bed' and record = @institution
  )
)
where site_id = @institution ;

update covid_report SET covidpend_icu_bed_vent = (
  select value from redcap_data where record = @institution and field_name='covidpend_icu_bed_vent' and project_id='16558' and instance = (
    select max(instance) from redcap_data where project_id='16558' and field_name='covidpend_icu_bed_vent' and record = @institution
  )
)
where site_id = @institution ;
update covid_report SET covidcfrm_icu_bed = (
  select value from redcap_data where record = @institution and field_name='covidcfrm_icu_bed' and project_id='16558' and instance = (
    select max(instance) from redcap_data where project_id='16558' and field_name='covidcfrm_icu_bed' and record = @institution
  )
)
where site_id = @institution ;
update covid_report SET covidcfrm_icu_bed_vent = (
  select value from redcap_data where record = @institution and field_name='covidcfrm_icu_bed_vent' and project_id='16558' and instance = (
    select max(instance) from redcap_data where project_id='16558' and field_name='covidcfrm_icu_bed_vent' and record = @institution
  )
)
where site_id = @institution ;
update covid_report SET noncovid_icu = (
  select value from redcap_data where record = @institution and field_name='noncovid_icu' and project_id='16558' and instance = (
    select max(instance) from redcap_data where project_id='16558' and field_name='noncovid_icu' and record = @institution
  )
)
where site_id = @institution ;
update covid_report SET noncovid_icu_vent = (
  select value from redcap_data where record = @institution and field_name='noncovid_icu_vent' and project_id='16558' and instance = (
    select max(instance) from redcap_data where project_id='16558' and field_name='noncovid_icu_vent' and record = @institution
  )
)
where site_id = @institution ;
update covid_report SET icu_bed_num = (
  select value from redcap_data where record = @institution and field_name='icu_bed_num' and project_id='16558'
)
where site_id = @institution ;
update covid_report SET ventilator_num = (
  select value from redcap_data where record = @institution and field_name='ventilator_num' and project_id='16558'
)
where site_id = @institution ;
update covid_report SET icu_bed_surge_num = (
  select value from redcap_data where record = @institution and field_name='icu_bed_surge_num' and project_id='16558'
)
where site_id = @institution ;
update covid_report SET ventilator_surge_num = (
  select value from redcap_data where record = @institution and field_name='ventilator_surge_num' and project_id='16558'
)
where site_id = @institution ;
