use sathyabama;
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
        #AND Operator
        select * from worker where department = 'hr' and salary>80000;
        select * from worker where department = 'hr' and joining_date<'14-04-11 09.00.00';
        select * from worker where salary < 200000 and  joining_date>'2014-03-01';
        
        #OR Operator
        select * from worker where department = 'hr' or salary>80000;
		select * from worker where first_name = 'amitabh' or department='hr';
        select * from worker where department = 'admin' or department='hr';
        select * from worker where salary < 200000 and  joining_date>'2014-03-01';
        
        #Not Operator
        select * from worker where not department = 'hr' ;
        select * from worker where not joining_date = '14-02-20 09.00.00' ;
        
        #Monthly Salary
        Select First_name, salary/12 as monthly_salary from worker;
        Select first_name, salary*0.1 + salary as incremented_salary from worker;
        
        #first name exactly 5 charecters
        select * from worker where first_name like '_____';
        
        # not in
        select * from worker where  worker_id not in (1,3,5,7) and salary>20000;
		select * from worker where  worker_id not in (1,3,5,7) and department='admin';
        
        #in
         select * from worker where  first_name in ('Monika','Vishal','Vipul');
         select * from worker where  first_name in ('Monika','Vishal','Vipul') and joining_date = '14-02-20 09.00.00' ;
        
        #between
        select * from worker where salary between 200000 and 500000;
        select * from worker where worker_id between 3 and 7;
        
        #not between
        select * from worker where joining_date not between '14-02-20 09.00.00' and '14-06-11 09.00.00';
        select * from worker where worker_id not between 200000 and 500000;
        
        #1. Find workers not in HR or Admin with salary between 70000 and 300000.
        select * from worker where department not in('hr','admin') and salary between 70000 and 300000;
        
        #2. Find workers with first name starting with 'V' and salary greater than or equal to 200000.
        select * from worker where first_name like 'v%' and salary>=200000;
        
        #3. Find workers not in Admin with salary < 100000.
        select * from worker where department != 'admin' and salary<100000;
        
        #aggregate fn
        #max
        select max(salary) as highest_salary from worker;
        
        #min
        select min(salary) as lowest_salary from worker;
        
        #count
        select count(department) as total_members_in_department from worker;
        
        #sum
        select sum(salary) as total_salary from worker;
        
        #average
        select  avg(salary) as average_salary from worker;
        
        #1. Find the average salary in the Admin department.
        select avg(salary) as Average_salary from worker where department = 'admin';
        
        #2. Total salary for HR and Admin departments combined
        select sum(salary) as total_salary from worker where department in ('hr','admin');
        
        #3. Count employees whose first name starts with 'V'.
        select count(worker_id) as total from worker where first_name like 'v%';
        
        #4. Total salary of employees with salary between 50000 and 200000
        select sum(salary) from worker where salary between 50000 and 200000;
        
        #UNION
        select first_name from worker   
        union
        select salary from worker;
        
        #Union ALL
		select department from worker   
        union all
        select salary from worker;
        
        #case
        select first_name,salary,
        case
        when salary>=300000 then 'rich'
        when salary>=100000 and salary <299999 then 'middle'
        else 'poor'
        end as status_of_salary from worker;
