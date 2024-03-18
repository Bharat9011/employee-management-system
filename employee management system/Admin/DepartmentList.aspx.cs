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
    public partial class DepartmentList : System.Web.UI.Page
    {

        private static readonly string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlConnectionForUI"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
/*                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();*/
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
/*            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();*/
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
/*            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();*/
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
/*            Label id = GridView1.Rows[e.RowIndex].FindControl("Label3") as Label;
            TextBox DepartmentName = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            string update = "Update DepartmentTable set DepartmentName='" + DepartmentName.Text + "' where id=" + id.Text;
            DataFIles dataFIles = new DataFIles();
            int result = dataFIles.SqlRun(update);

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = update;
            cmd.Connection = sqlConnection;
            cmd.ExecuteNonQuery();

            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();*/

        }



        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
/*            Label id = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;

            string deleting = "delete from DepartmentTable where id=" + id.Text;

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = deleting;
            cmd.Connection = sqlConnection;
            cmd.ExecuteNonQuery();

            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();*/

        }
    }
}