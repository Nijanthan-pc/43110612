use sathyabama;
create table practice4(Emp_id int not null unique,Emp_Firstname varchar(40),Emp_Designation varchar(60) not null);
desc practice4;
insert into practice4 values
(1,'Bala','CEO'),
(2,'Pankaj','Tester'),
(3,'Nithesh','Developer');
select * from practice4;

#adding column salary
alter table practice4
add column Emp_Salary int;
update practice4
set Emp_Salary = 40000;

#adding constraint not null to salary
alter table practice4
modify Emp_Salary int not null; 

#adding constraint unique to email
alter table practice4
modify emp_email varchar(50) unique;

#checks the same email is saved for all details
update practice4
set emp_email = 'nij@gmail.com';#throws an error

#dropping the constraint unique
alter table practice4
drop index emp_email;

#checks if the unique constraint is removed
update practice4
set emp_email = 'nij@gmail.com';#it gets saved...

#adding primary key to table
alter table practice4
add primary key (emp_id);
desc practice4;

#dropping primary key
alter table practice4
drop primary key;

#applying check condition to age
alter table practice4
add age int;
select * from practice4;
alter table practice4
add check(age>=22 AND age<61);

#testing check conditon1
update practice4
set age = 18
where emp_id=1;  #throws an error
 
 #testing check conditon2
update practice4
set age = 28
where emp_id=1; #successfully applied 
select*from practice4;

#droping check condition
alter table practice4
drop check practice4_chk_1;

#testing whether the check is working or not
update practice4
set age = 18; #check dropped check is not working





