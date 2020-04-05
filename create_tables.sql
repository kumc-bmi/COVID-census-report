use redcap;
drop table covid_report; 

CREATE TABLE covid_report (
  site_name VARCHAR(100), 
  site_id INT, 
  COVID_Pending_ICU_Patients INT,
  COVID_Pending_ICU_Vent INT, 
  COVID_Confirmed_ICU_Patients INT, 
  COVID_Confirmed_ICU_Vent INT, 
  Non_COVID_ICU_Patients INT, 
  Non_COVID_ICU_Vent INT,
  ICU_Bed_Capacity INT, 
  Number_of_Ventilators INT, 
  Number_of_surge_ICU_beds INT, 
  Number_of_surge_ventilators INT
);

INSERT INTO covid_report (site_id)
  select distinct record from redcap_data
    where project_id='16558'
  order by record;

UPDATE covid_report SET site_name = 'Other Site Menorah Medical Center' WHERE site_id = '1';
UPDATE covid_report SET site_name = 'Research Medical Center' WHERE site_id = '2';
UPDATE covid_report SET site_name = 'University of Kansas Medical Center' WHERE site_id = '3';
UPDATE covid_report SET site_name = 'St. Lukes Medical Center' WHERE site_id = '4';
UPDATE covid_report SET site_name = 'Kansas City VA Medical Center' WHERE site_id = '5';
UPDATE covid_report SET site_name = 'Lawrence Memorial' WHERE site_id = '6';
UPDATE covid_report SET site_name = 'North KC' WHERE site_id = '7';
UPDATE covid_report SET site_name = 'Other Site Liberty Hospital' WHERE site_id = '8';
UPDATE covid_report SET site_name = 'Overland Park Regional Medical Center' WHERE site_id = '9';
UPDATE covid_report SET site_name = 'Childrens Mercy' WHERE site_id = '10';
UPDATE covid_report SET site_name = 'Overland Park Regional Medical Center' WHERE site_id = '11';
UPDATE covid_report SET site_name = 'AdventHealth Shawnee Mission' WHERE site_id = '12';
UPDATE covid_report SET site_name = 'Lees Summit Medical Center' WHERE site_id = '15';
UPDATE covid_report SET site_name = 'Kansas City VA Medical Center' WHERE site_id = '16';
UPDATE covid_report SET site_name = 'Olathe Medical Center' WHERE site_id = '18';
UPDATE covid_report SET site_name = 'Providence Medical Center' WHERE site_id = '19';
UPDATE covid_report SET site_name = 'Other Site 6' WHERE site_id = '20';


