using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system.Admin
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (fd != null && td != null && GridView1 != null)
            {
                string sql = "select [EmployeeID], [LeavesReason], [LeavesStartedDate], [LeavesEndDate], [Status] from LeaveRequests where LeavesStartedDate between '" + fd.Text + "' and '" + td.Text + "'";

                SqlConnection sqlConnection = new SqlConnection(@"Data Source=SHRIKHRISHNA\SQLEXPRESS;Initial Catalog=EMSVaidehi;Integrated Security=True;Encrypt=False");

                sqlConnection.Open();

                SqlCommand cmd = new SqlCommand(sql, sqlConnection);
                SqlDataReader reader = cmd.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                reader.Close();
            }
        }
    }
}