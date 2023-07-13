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