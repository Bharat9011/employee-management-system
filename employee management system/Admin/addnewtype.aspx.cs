using employee_management_system.AssistFile;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system.Admin
{
    public partial class addnewtype : System.Web.UI.Page
    {

        DataFIles DataFIles = new DataFIles();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
        {
            int result = DataFIles.checkexit("LeaveType","LeaveTypeName","LeaveTypeName='"+ LeaveType.Text + "'");

            if (result == 0)
            {
                DataFIles.CreateLeaveType(LeaveType.Text);
                Response.Write("<script>alert('Leave are Created')</script>");
            } else
            {
                Response.Write("<script>alert('"+LeaveType.Text+" are allready exit')</script>");
            }
        }
    }
}