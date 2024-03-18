using employee_management_system.AssistFile;
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
            string email = Email.Text.Trim();
            string password = Password.Text.Trim();
            var data = dataFIles.validationUser(email, password);

            Session["sessionID"] = data.Item1;

            if (data.Item1 == "Admin")
            {
                Response.Redirect("~/Admin/DashBoard.aspx");
            }

        }
    }
}