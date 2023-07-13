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

	/*Add new Column*/
ALTER TABLE employee_payroll   
 
ADD Deductions float,
    Taxable_Pay float,
    Income_Tax float,
    Net_Pay float

UPDATE employee_payroll
SET Phone_Number = 98765443, 
    department = 'Sales',
	address='sector-2', 
	Deductions = 1000,
	 Taxable_Pay = 5.4,
	 Income_Tax = 7,
	 Net_Pay = 36000
	  WHERE id = 1
UPDATE employee_payroll
SET Phone_Number = 987987665, 
    department = 'Marketing',
	address='sector-7', 
	Deductions = 500,
	 Taxable_Pay = 5.4,
	 Income_Tax = 7,
	 Net_Pay = 40000
	  WHERE id = 2
UPDATE employee_payroll
SET Phone_Number = 2345443, 
    department = 'HR',
	address='sector-5', 
	Deductions = 1000,
	 Taxable_Pay = 5.4,
	 Income_Tax = 7,
	 Net_Pay =50000
	  WHERE id = 3
UPDATE employee_payroll
SET Phone_Number = 98864432, 
    department = 'Sales',
	address='sector-7', 
	Deductions = 1500,
	 Taxable_Pay = 5.4,
	 Income_Tax = 7,
	 Net_Pay = 36000
	  WHERE id = 4


	  	  /* INSERT NEW VALUE FOR UC 10 */
	  Insert into employee_payroll (Name,department, StartDate) 	                                           
         values('Aakanksha','Marketing','2023-07-14')   

    select * from employee_payroll where name = 'Aakanksha' /* create redundency same person but differnet id shows */