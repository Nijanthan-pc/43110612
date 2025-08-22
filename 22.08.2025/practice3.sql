use sathyabama;
create table practice3(Name varchar(45),age int);
insert into practice3 values
('Nijanthan',19),('Sowmiya',20);
commit;
start transaction;
select*from practice3;
update practice3
set age = 22
where name = 'Sowmiya';
savepoint a;
insert into practice3 values
('preethi',25);
savepoint b;
rollback to a;
select*from practice3;
insert into practice3 values
('Dhamu',22);
savepoint c;
rollback to b;
select*from practice3;
 
 
 
 


