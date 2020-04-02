update covid_report SET @field_arg = (
  select value from redcap_data where record = @institution and field_name=@field_arg and project_id='16558' and instance = (
    select max(instance) from redcap_data where project_id='16558' and field_name=@field_arg and record = @institution
  )
where site_id = @institution ;
