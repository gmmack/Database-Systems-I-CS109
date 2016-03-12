--p10
create table scoresp10(
team varchar(30),
day varchar(30),
opponent varchar(30),
runs integer
);

insert into scoresp10 VALUES
('dragons', 'sunday', 'swallows', 4),
('tigers', 'sunday', 'bay stars', 9),
('carp', 'sunday', 'giants', 2),
('swallows', 'sunday', 'dragons', 7),
('bay stars', 'sunday', 'tigers', 2),
('giants', 'sunday', 'carp', 4),
('dragons', 'monday', 'carp', 6),
('tigers', 'monday', 'bay stars', 5),
('carp', 'monday', 'dragons', 3),
('swallows', 'monday', 'giants', 0),
('bay stars', 'monday', 'tigers', 7),
('giants', 'monday', 'swallows', 5);

select team, sum(runs)
from scoresp10
group by team;
