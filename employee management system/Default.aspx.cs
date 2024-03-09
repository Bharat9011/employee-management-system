using employee_management_system.AssistFile;
using employee_management_system.Class;
using System;
using System.Data;
using System.Data.SqlClient;

namespace employee_management_system
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void loginCheck(object sender, EventArgs e)
        {
            DataFIles dataFIles = new DataFIles();
            var data = dataFIles.validationUser(Email.Text, Password.Text);

            Session["sessionID"] = data.Item1;

            if (data.Item1 == "Admin")
            {
                Response.Redirect("~/Admin/DashBoard.aspx");
            }

        }
    }
}