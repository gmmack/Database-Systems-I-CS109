--P2
CREATE TABLE Arc (
   x int,
   y int
);
COPY arc FROM stdin USING DELIMITERS '|';
1|2
1|2
2|3
3|4
3|4
4|1
4|1
4|1
4|2
\.

select a1.x, a2.y, count(*)
from arc a1, arc a2
where a1.y = a2.x
group by a1.x, a2.y;
