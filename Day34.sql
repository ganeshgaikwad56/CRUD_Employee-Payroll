create procedure spUpdateEmployeeSalary
(
@id int,
@month varchar(20),
@salary int,
@EmpId int
)

as
begin

update Salary
set Salary=@salary
where SalaryId=@id and SalaryMonth=@month and EmpId=@EmpId;

select e.EmployeeId,e.EmployeeName,s.Salary,s.SalaryMonth,s.SalaryId
from employee_payroll e inner join Salary s
on e.EmployeeId=s.EmplId where s.SalaryId=@id;
End