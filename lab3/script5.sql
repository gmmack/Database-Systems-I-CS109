-- 3.5
-- Creates views in the database
create view customer_city as
  select dvc.first_name, dvc.last_name, dva.city_id
  from dv_address dva, dv_customer dvc, cb_customers cbc
  where dvc.last_name = cbc.last_name and dvc.first_name = cbc.first_name
        and dva.address_id = dvc.address_id;

create view district_stats as
  select count(*), a.district
  from dv_customer c
  join dv_address a on a.address_id = c.address_id
  group by district
  order by count(*);

select district
from district_stats
group by district
order by count(*) desc
limit 5;

alter view customer_city rename to new_customer_city;
