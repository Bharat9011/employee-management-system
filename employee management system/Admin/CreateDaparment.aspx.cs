using employee_management_system.AssistFile;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system.Admin
{
    public partial class CreateDaparment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
        {
            string department = DepartmentName.Text;

            DataFIles dataFIles = new DataFIles();
            int result = dataFIles.checkexit("DepartmentTable", "DepartmentName", "DepartmentName='"+ department.Trim() + "'");

            if (result == 0)
            {
                dataFIles.createDepartment(department);
                Response.Write("<script>alert('Department are Created')</script>");
            }
            else
            {
                Response.Write("<script>alert('" + result + " This department are Allready Created')</script>");
            }
        }
    }
}