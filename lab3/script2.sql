-- 3.2
-- Adds foriegn key constraints
alter table mg_customers
  add constraint mg_customers_fk
  foreign key(address_id) references dv_address(address_id);
alter table cb_books
  add constraint cb_books_fk
  foreign key(author_id) references cb_authors(author_id);
