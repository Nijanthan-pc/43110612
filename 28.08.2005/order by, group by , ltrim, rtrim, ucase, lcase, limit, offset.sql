use sathyabama;

# order by
select * from worker 
where department = 'admin' order by salary desc;

#order by alphabetical order
select * from worker
order by first_name asc;

# group by 
select department,count(department) from worker
group by department;

#sum of salary of each department
select department,sum(salary) as total from worker
group by department
order by total asc;

# how many of them getting same salary
select salary,count(salary) from worker
group by salary;

#1. Count employees not in HR or Admin.
select count(worker_id) from worker
where department not in ('hr','admin');

#2. Find the highest salary in each department.
select department,max(salary) from worker group by department;

SELECT Department, AVG(Salary) AS Avg_Salary
FROM Worker
GROUP BY Department
having Avg_Salary > 160000;

select department, count(department) as total
from worker
group by department
having total>2;

# limit
SELECT * FROM Worker
WHERE WORKER_ID NOT IN (1,2,4,5)
    ORDER BY WORKER_ID
    LIMIT 2 offset 1;

#upper and lower
select upper(first_name) from worker;
select lower(first_name) from worker;

SELECT CONCAT(
    UPPER(LEFT(First_Name, 1)), 
    LOWER(SUBSTRING(First_Name,4 ))
) AS Proper_Case
FROM Worker;

select upper(concat(first_name,'_',last_name)) as full_name from worker;

#ltrim
select ltrim(first_name) from worker;#already its trimmed
#rtrim
select rtrim(last_name) from worker;#already its trimmed

select ltrim('     nijanthan') as full_name;

select rtrim('nijanthan               ') as full_name;

