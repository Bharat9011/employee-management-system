using employee_management_system.AssistFile;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system.Admin
{
    public partial class DashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getcountEMP();
            getcountDepartment();
            getcountLeave();
            getcountappor();
            getcountreg();
            getcountpend();
        }

        private void getcountpend()
        {
            DataFIles dataFIles = new DataFIles();
            int count = dataFIles.getCount("LeaveType", "WHERE Status='Pending'");

            setcountpend.Text = count.ToString();
        }

        private void getcountreg()
        {
            DataFIles dataFIles = new DataFIles();
            int count = dataFIles.getCount("LeaveType", "WHERE Status='Rejected'");

            setcountRej.Text = count.ToString();
        }

        private void getcountappor()
        {
            DataFIles dataFIles = new DataFIles();
            int count = dataFIles.getCount("LeaveType", "WHERE Status='Approved'");

            setcountAppr.Text = count.ToString();
        }

        private void getcountLeave()
        {
            DataFIles dataFIles = new DataFIles();
            int count = dataFIles.getCount("LeaveType","");

            setcountleave.Text = count.ToString();
        }

        private void getcountDepartment()
        {
            DataFIles dataFIles = new DataFIles();
            int count = dataFIles.getCount("DepartmentTable", "");

            setcountdep.Text = count.ToString();
        }

        private void getcountEMP()
        {
            DataFIles dataFIles = new DataFIles();
            int count = dataFIles.getCount("EmployeeDeatils", "");

            setcountEMP.Text = count.ToString();
        }
    }
}