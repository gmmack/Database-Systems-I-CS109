--p4
select team, min(opponent), max(runs)
from scoresp3
group by team;
