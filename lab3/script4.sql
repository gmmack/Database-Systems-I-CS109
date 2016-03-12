-- 3.4
-- Unit testing
--Tests FK constraints
delete from dv_address where address_id>9;
delete from cb_authors where author_id>3;

--Tests +Length constraint in film table
insert into dv_film values
  (123456, 'errors yo', 'this insert will illicit an error', -34, 'R');
insert into dv_film values
  (123455, 'no errors', 'this insert wont illicit an error', 34, 'R');

--Tests non-null address_id in customer table
insert into mg_customers values
  (123456, 'error', 'error', 'errors@gmail.com', default, true);
insert into mg_customers values
  (123455, 'no', 'errors', 'noerrors@gmail.com', 10, true);

--Tests non-null address in address table
insert into dv_address values
  (123456, default, default, 'errors', 1, 'errrorsdude', 'moar errors');
insert into dv_address values
  (123455, 'non-null', 'not-null', 'noerrors', 2, 'noerror', 'no errors');
