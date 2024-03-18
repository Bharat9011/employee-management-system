
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system.Admin
{
    public partial class showemployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;

            string deleting = "delete from EmployeeDeatils where EmployeID='" + id.Text+"'";

            SqlConnection sqlConnection = new SqlConnection(@"Data Source=SHRIKHRISHNA\SQLEXPRESS;Initial Catalog=EMSVaidehi;Integrated Security=True;");
            sqlConnection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = deleting;
            cmd.Connection = sqlConnection;
            cmd.ExecuteNonQuery();

            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender,GridViewEditEventArgs e)
        {
            int index = Convert.ToInt32(e.NewEditIndex);
            GridViewRow row = GridView1.Rows[index];
            string value = (row.FindControl("Label1") as Label).Text;

            Session["userValue"] = value;

            Response.Redirect("UpDateEmployeeDeatils.aspx");
        }

    }
}