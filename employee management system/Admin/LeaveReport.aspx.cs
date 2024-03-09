using employee_management_system.AssistFile;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system.Admin
{
    public partial class LeaveReport : System.Web.UI.Page
    {

        private static readonly string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Connectionstr"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string sql = "select [EmployeeID] as Employee ID, [LeavesReason] as Reason, [LeavesStartedDate], [LeavesEndDate], [Status] from LeaveRequests where LeavesStartedDate between '" + fd.Text+"' and '"+td.Text+"'";

            SqlConnection sqlConnection = new SqlConnection(connectionString);

            sqlConnection.Open();

            SqlCommand cmd = new SqlCommand(sql, sqlConnection);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            reader.Close();

        }
    }
}