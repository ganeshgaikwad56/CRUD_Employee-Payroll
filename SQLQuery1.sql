create database PayRoll_Service_115
create table employee_payroll
(
EmployeeId int Identity,
EmployeeName varchar(200),
Address varchar(200),
PhoneNum varchar(200),
Deperment varchar(300),
Gender char (1),
BasicPay float,
Deduction float,
Taxablepay float,
tax float,
NetPay float,
StartDate Date,
City varchar(255),
Country varchar(200)
)
select * from employee_payroll