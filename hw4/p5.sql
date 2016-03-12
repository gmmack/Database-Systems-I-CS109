--p5
create table r(
   a int,
   b int
);
create table s(
   c int,
   d int
);
create table t(
   e int,
   f int
);
insert into r VALUES
   (0,1),
   (1,0),
   (1,1);
insert into s VALUES
   (0,1),
   (1,0),
   (1,1);
insert into t VALUES
   (0,1),
   (1,0),
   (1,1);

select a, f, sum(c), sum(d)
from r, s, t
where b=c and d=e
group by a,f
having count(*) > 1;
