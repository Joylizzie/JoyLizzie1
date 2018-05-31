use uk_accidents;
select Accident_Severity, 
sum(number_of_casualties) as number_of_casualties
from accidents_2015
group by accident_severity;



select * from day_of_week;

load local  infile 'C:\Users\Lizh\Desktop\SQL\MySQL\Create_a_table.csv'
    INTO TABLe test_Lizhi;

load data local infile 'c:/Temp/Consumer_Complaints.csv'  into table test_Lizhi fields terminated by ',' lines terminated by '\n' ignore 1 lines;

use UK_accidents;
select * from create_a_table;

select sex, severity, time, sum(number_of_casualties)
from
(
select
sex_of_casualty.label as sex,
casualty_severity.label as severity,
case
when accidents_2015.time between '00:00:00' and '04:59:59' then 'early_dawn'
when accidents_2015.time between '05:00:00' and '07:00:00' then 'dawn'
when accidents_2015.time between '07:01:01' and '12:00:00' then 'morning'
when accidents_2015.time between '12:01:01' and '17:00:00' then 'afternoon'
when accidents_2015.time between '17:01:01' and '20:00:00' then 'dusk'
when accidents_2015.time between '20:01:01' and '24:00:00' then 'night'
else 'unknown'
END time,
accidents_2015.number_of_casualties
from accidents_2015
inner join casualities_2015
on casualities_2015.accident_index = accidents_2015.accident_index
inner join sex_of_casualty
on sex_of_casualty.code = casualities_2015.sex_of_casualty
inner join casualty_severity
on casualty_severity.code = casualities_2015.casualty_severity
) temp -- all derived tables must have a name
group by sex, severity, time1

-- a comment
-- another comment
-- more comments

select * from test.account;
