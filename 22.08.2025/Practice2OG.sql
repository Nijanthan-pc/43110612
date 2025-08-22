use sathyabama;
create table practice2 (name varchar(50),age int,role varchar(30),state varchar(40));
insert into practice2 values
('Nijanthan',20,'Designer','TamilNadu'),
('bharath',21,'Developer','TamilNadu'),
('Pankaj',22,'Tester','Bihar');


alter table practice2
add country varchar(10) default 'India';


select*from practice2;


update practice2
set country = 'dubai'
where name = 'bharath';


select * from practice2;


insert into practice2 values
('Rohan',19,'Analyst','karnataka','India');


update practice2
set age = age+1;


alter table practice2
rename column country to nationality;


update practice2
set role = 'data scientist',age = 20
where name = 'Nijanthan';


delete from practice2
where name = 'Rohan';


select name from practice2
where state = 'tamilnadu';
