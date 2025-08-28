use sathyabama;
show tables;

#having clause
select department, count(department) from worker
group by department
having count(department)>1;

#Find departments with average salary > 100000.
select department, avg(salary) from worker
group by department
having avg(salary)>100000;

#. Find departments where max salary is exactly 500000.
select department , max(salary) from worker
group by department
having max(salary) = 500000;

#Find departments with more than 1 employee and total salary > 100000
select department,max(salary),count(worker_id)from worker
group by department
having max(salary)>100000 and count(worker_id)>1;

#Find departments with avg salary between 50000 and 200000.
select department, avg(salary) from worker
group by department
having avg(salary) between 50000 and 200000;

select * from worker;

select department,sum(salary) from worker
where joining_date > '2014-03-01'
group by department
order by sum(salary) desc;
