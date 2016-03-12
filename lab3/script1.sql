--3.1
--Script which adds primary key constraints
alter table mg_customers add constraint mg_customers_pk primary key(customer_id);
alter table dv_address add constraint dv_address_pk primary key(address_id);
alter table dv_film add constraint dv_film_pk primary key(film_id);
alter table cb_books add constraint cb_books_pk primary key(title, author_id);
alter table cb_authors add constraint cb_authors_pk primary key(author_id);
