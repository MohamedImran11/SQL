create database employee;
create table employee(
 emp_id int primary key,
 name varchar(30),
 salary int,
 job varchar(20)
 );
 describe employee;
 insert into employee values
 (0,"imran",50000,'hr'),
 (2,"naveen",960000,'manager'),
 (3,"tilak",70000,'sales'),
 (4,"nivi",80000,'engineer'),
 (5,"nitish",20000,'hr'),
 (6,"karthi",30000,'hr'),
 (7,"loki",10000,'manager'),
 (8,"imran",40000,'hr');
 select * from employee
 where name="imran";
 select * from employee
 where name="karthi" or job="manager";
 select * from employee
 where name in("imran","naveen");
 select * from employee
 where name not in ("imran");
 select * from employee
 where salary  between  30000 and 70000;
 select * from employee
 where name like 'k%';
select * from employee
 where name  not like '__g%';
 select * from employee
 where name  like "%a";
 select * from employee
 where name="imran";
update employee
set salary =10000;
SET SQL_SAFE_UPDATES = 0 ;
delete from employee
where name = imran;
select * from employee;
select distinct name
from employee;

-- order by -- comment
 select * from employee
 order by name , emp_id  desc;

 select *from employee
 order by ( case job
 when "hr" then 1
 when"manager"then 2
 else 20 end );

 -- functions --
 -- aggregate functions --

 select count(*)
 from employee

select count(*) total
 from employee;


select count(*) total
from employee
where job="hr";

 select avg(salary)
 from employee
 where job="hr";

 select sum(salary)
 from employee
 where job="hr";

 select max(salary)
 from employee;

 -- string fn --

 select ucase(name)Name,salary
 from employee;

 select name,char_length(name) char_count
 from employee;

 select name,concat("rs",salary) salry
 from employee;

 select name,concat("Rs",format(salary,0)) salry
 from employee;

 select name,left(job,2) jobb
 from employee;

 -- date time --

 alter table employee add column Date_joined date;
 select * from employee

 SET SQL_SAFE_UPDATES = 0 ;

 update employee
 set Date_joined = "2022-05-22";

 update employee
 set Date_joined ="2022-09-04"
 where job="hr";


 select now();

 select date(now());
 select curdate();
 select date_format(curdate(),"%d/%m/%y");
