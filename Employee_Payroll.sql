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

select * from employee_payroll