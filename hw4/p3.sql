--P3
CREATE TABLE Scoresp3 (
   Team VARCHAR(30),
   day VARCHAR(30),
   opponent varchar(30),
   runs integer DEFAULT null
);

insert into scoresp3 VALUES
   ('dragons', 'sunday', 'swallows', 4),
   ('tigers', 'sunday', 'bay stars', 9),
   ('carp', 'sunday', null, null),
   ('swallows', 'sunday', 'dragons', 7),
   ('bay stars', 'sunday', 'tigers', 2),
   ('giants', 'sunday', null, null),
   ('dragons', 'monday', 'carp', null),
   ('tigers', 'monday', null, null),
   ('carp', 'monday', 'dragons', null),
   ('swallows', 'monday', 'giants', 0),
   ('bay stars', 'monday', null, null),
   ('giants', 'monday', 'swallows', 5);

--COPY scoresp3 from stdin USING DELIMITERS '|';
--dragons|sunday|swallows|4
--tigers|sunday|bay stars|9
--carp|sunday|
--swallows|sunday|dragons|7
--bay stars|sunday|tigers|2
--giants|sunday|
--dragons|monday|carp|
--tigers|monday|
--carp|monday|dragons|
--swallows|monday|giants|0
--bay stars|monday|
--giants|monday|swallows|5
--\.

select opponent, count(*), avg(runs)
from scoresp3
group by opponent;
