use school;

create table employees(
employee_id int primary key,
employee_name varchar(100),
age int,
date_hired date,
department varchar(100),
salary int
);

select * from employees;

insert into employees (employee_id, employee_name, age, date_hired, department, salary)
values
(001, 'Dante Barajas', 34, '2018-10-01', 'Finance', 80000),
(002, 'Cesar Figueora', 37, '2019-03-04', 'Data', 68000),
(003, 'Ellis Delacruz', 32, '2018-09-09', 'Human Resources', 62000),
(004, 'Jeffery Armstrong', 37, '2019-08-06', 'Marketing', 53000),
(005, 'Clement Clark', 35, '2020-04-09', 'Finance', 75000),
(006, 'Dee Kelly', 30, '2021-07-04', 'Marketing', 67000),
(007, 'Georgina Clement', 29, '2022-06-05', 'Data', 58000),
(008, 'Seth Ayers', 31, '2019-03-08', 'Business Administration', 67000),
(009, 'Genaro Dixon', 33, '2021-04-09', 'Sales', 63000),
(010, 'Garfield McBride', 40, '2018-09-05', 'Sales', 83000)
;

-- Selecting specific columns: name, age and salary
select employee_name, age, salary 
from employees;

-- Filter the records: name and salary of employees working in a department
select employee_name, salary
from employees
where department = 'Data';

-- Sort the data: sort the data by salary
select * from employees
order by salary desc;

-- Find the top 3 highest paid employees
select * from employees
order by salary desc
limit 3;

-- Find all unique departments you have
select distinct department
from employees;

-- Query data so that you have employees who are either in the X department or have a salary greater than Y
select * from employees
where department = 'Data' or salary > 70000;

-- Select two youngest employees, show name and date they were hired
select employee_name, date_hired
from employees
order by age asc
limit 2;

-- Find the distinct departments and sort in alphabetical order
select distinct department
from employees
order by department;