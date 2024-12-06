-- simplified postcode and state lookup views

create view if not exists state_v (
  state_name,
  state_abbreviation
) as 
select state_name, 
state_abbreviation 
from state;

create view if not exists postcode_v (
  postcode,
  locality_name,
  state_abbreviation
) as
select distinct
  ad.postcode,
  l.locality_name,
  st.state_abbreviation
from address_detail ad 
join locality l on ad.locality_pid = l.locality_pid
join state st on l.state_pid=st.state_pid
where ad.postcode is not null
;