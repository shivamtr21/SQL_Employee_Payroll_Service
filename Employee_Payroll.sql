CREATE DATABASE Payroll_Service  /*   Create database */


USE Payroll_Service


 

create table employee_payroll
(
 Id int primary key identity,
 Name varchar(40) NOT NULL,
 Salary int,
 StartDate Date NOT NULL
)


 
 /* Inserting items */

insert into employee_payroll values('Sanjam', 50000, '2023-04-21'),
                                   ('Shivam', 20000, '2023-04-21'),
								   ('Divya', 70000, '2023-04-21'),
								   ('Aakanksha', 50000, '2023-04-21')

								   /* Retrive data  */
select * from employee_payroll

select Salary from employee_payroll where id = 3   /* salary of particular employee */

select * from employee_payroll where StartDate BETWEEN CAST('2023-07-11' AS DATE) AND GETDATE() /* employee deatil b/w date range */

/* upadte date */

update employee_payroll set StartDate = '2023-07-12'  where id = 1   
update employee_payroll set StartDate = '2023-07-11'  where id = 2
update employee_payroll set StartDate = '2023-07-13'  where id = 3
update employee_payroll set StartDate = '2023-07-14'  where id = 4


alter table employee_payroll
add Gender char(1)
update employee_payroll set Gender= 'M' where name ='Shivam' OR name = 'Sanjam'  
update employee_payroll set Gender= 'F' where name ='Divya' or name = 'Aakanksha'



select SUM(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select AVG(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select MIN(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select MAX(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select COUNT(*) from employee_payroll
where Gender = 'M' group by Gender;

select COUNT(*) from employee_payroll
where Gender = 'F' group by Gender;



/* #######################   SECTION 2  #################################### */
 /* adding new column to employee_payroll */
ALTER TABLE employee_payroll  
ADD Phone_Number VARCHAR(40),
    address VARCHAR(50) DEFAULT 'NOT KNOWN' NULL,
    department VARCHAR(50) DEFAULT 'NOT KNOWN' NOT NULL;