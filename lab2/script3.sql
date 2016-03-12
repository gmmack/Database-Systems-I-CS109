-- Script 3 merges customer data into mg_customers table

INSERT INTO mg_customers(customer_id, last_name, first_name, email, address_id, active)
SELECT dv_customer.customer_id, dv_customer.last_name, dv_customer.first_name, dv_customer.email, dv_customer.address_id, dv_customer.active
FROM dv_customer;

CREATE SEQUENCE mg_customers_seq START 600;

ALTER TABLE mg_customers
ALTER COLUMN customer_id
SET DEFAULT NEXTVAL ('mg_customers_seq');

INSERT INTO mg_customers(last_name, first_name)
SELECT cb_customers.last_name, cb_customers.first_name
FROM cb_customers
EXCEPT (
SELECT cb.last_name, cb.first_name
FROM cb_customers cb, dv_customer dv
WHERE cb.last_name = dv.last_name and cb.first_name = dv.first_name);
