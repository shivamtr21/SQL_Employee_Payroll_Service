CREATE DATABASE Payroll_Service  /*   Create database */


USE Payroll_Service


 

create table employee_payroll
(
 Id int primary key identity,
 Name varchar(40) NOT NULL,
 Salary int,
 StartDate Date NOT NULL
)

select * from employee_payroll