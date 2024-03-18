using employee_management_system.AssistFile;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system.Admin
{
    public partial class addsalary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {

            DataFIles dataFIles = new DataFIles();

            string email = DropDownList1.SelectedValue;
            string salary = sy.Text.Trim();
            string Allowance_Salary = ass.Text.Trim();
            string net_salary = ns.Text.Trim();
            string EmployeeID = dataFIles.getID("EmployeeDeatils", "Email" , "EmployeID", email);


            string sql = "insert into Salary (EmployeeID,emailName,salary,Allowance_salary,netSalary) values ('"+EmployeeID+"','" + email+"','"+salary+"','"+Allowance_Salary+"','"+net_salary+"')";
            
            int result = dataFIles.SqlRun(sql);

            if (result == 1)
            {
                Response.Write("<script>alert('"+result+"')</script>");
            }
            else if (result == -1)
            {
                Response.Write("<script>alert('data are not save')</script>");
            }

        }
    }
}