using Microsoft.VisualStudio.TestTools.UnitTesting;
using EmployePayRoll;
namespace EmployeeManagementTest
{
    [TestClass]
    public class UnitTest1
    {
        public int EmployeeSalary { get; private set; }
        public int EmployeeId { get; private set; }
        public int SalaryId { get; private set; }
        public string Month { get; private set; }

        [TestMethod]
        public void TestMethod1()
        {
            //Arrange
            Salary sal = new Salary();

            SalaryUpdateModel updateModel = new SalaryUpdateModel();
            {
                SalaryId = 1;
                Month = "Jan";
                EmployeeSalary = 20000;
                EmployeeId = 1;
            };
            //Act
            int EmpSalary = sal.UpdateEmployeeSalary(updateModel);

            //Assert
            Assert.AreEqual(updateModel.EmployeeSalary, EmpSalary);
        }
    }
}