-- 3.3
-- Adds general constraints
alter table dv_film
  add constraint positive_length 
  check(length > 0);
update mg_customers set address_id = 1 where address_id is null;
alter table mg_customers
  add constraint addr_id_not_empty
  check(address_id is not null);
alter table dv_address
  add constraint addr_not_empty
  check(address is not null);
