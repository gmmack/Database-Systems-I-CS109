-- Script 4 is a list of 5 queries
--Query 1: Gives first and last names of all people who are customers of both DV and CB
select dv.first_name, dv.last_name
from dv_customer dv, cb_customers cb
where dv.last_name = cb.last_name and dv.first_name = cb.first_name;

--Query 2: Gives phone numbers of all people who are customers of both DV and CB
select dva.phone
from dv_address dva
where dva.address_id IN 
   (select address_id
    from dv_customer dvc, cb_customers cbc
    where dvc.last_name = cbc.last_name and dvc.first_name = cbc.first_name);

--Query 3: Gives first and last names of customers who live in the district having the most customers
select first_name, last_name
from dv_customer c
join dv_address a on a.address_id = c.address_id
where district =
  (select district
  from dv_address
  group by district
  order by count(*) desc
  limit 1);

--Query 4: Gives rating and number of films that have the rating least common among films in the DV database
select rating, count(*)
from dv_film
group by rating
order by count
limit 1;

--Query 5: Gives first and last names of top 10 authors when ranked by number of books written
select first_name, last_name
from cb_authors
where author_id in
  (select author_id
  from cb_books
  group by author_id
  order by count(*) desc
  limit 10);
