using employee_management_system.AssistFile;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system.Admin
{
    public partial class UpDateEmployeeDeatils : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cookiesValues = string.Empty;
            cookiesValues = Session["userValue"].ToString();
            if (cookiesValues != null || cookiesValues != "")
            {
                getAllData(cookiesValues);
            }

        }

        private void getAllData(string cookiesValues)
        {
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=SHRIKHRISHNA\SQLEXPRESS;Initial Catalog=EMSVaidehi;Integrated Security=True;Encrypt=False;");
            sqlConnection.Open();
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.CommandText = "select [EmployeID],[Name],[Department],[Email],[MobileNumer],[Country],[State],[DOB],[DOJ],[City],[Addresses] from [dbo].[EmployeeDeatils] where EmployeID='" + cookiesValues + "'";
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
/*                EID.Text = reader[0].ToString().Trim();
                Name.Text = reader[1].ToString().Trim();
                DepartemtList.Text = reader[2].ToString().Trim();
                EmailID.Text = reader[3].ToString().Trim();
                MobileNO.Text = reader[4].ToString().Trim();
                country.Text = reader[5].ToString().Trim();
                state.Text = reader[6].ToString().Trim();
                DOB.Text = reader[7].ToString();
                DOJ.Text = reader[8].ToString();
                city.Text = reader[9].ToString().Trim();
                Address1.Text = reader[10].ToString().Trim();*/
            }

            reader.Close();

        }

        protected void Update_click(object sender, EventArgs e)
        {
           /* string EmployeeID = EID.Text.Trim();
            string name = Name.Text.Trim();
            string dropdown = DepartemtList.SelectedItem.ToString();
            string email = EmailID.Text.Trim();
            string mobileNO = MobileNO.Text.Trim();
            string Country = country.Text.Trim();
            string states = state.Text.Trim();
            string City = city.Text.Trim();
            string dob = DOB.Text;
            string doj = DOJ.Text;
            string address = Address1.Text;

            string update = "UPDATE [dbo].[EmployeeDeatils] SET [EmployeID] = '" + EmployeeID + "'" +
                ",[Name] = '" + name + "',[Department] = '" + dropdown + "',[Email] = '" + email + "'," +
                "[MobileNumer] = '" + mobileNO + "',[Country] = '" + Country + "',[State] = '" + states + "'," +
                "[DOB] = '"+dob+"',[DOJ] = '"+doj+"',[City] = '"+City+"',[Addresses] = '"+address+"'WHERE [EmployeID] = '"+EmployeeID+"'";

            DataFIles dataFIles = new DataFIles();
            int i = dataFIles.SqlRun(update);

            if( i == 1)
            {
                Response.Write("<script>alert('Data Updated')</script>");
            } else
            {
                Response.Write("<script>alert('Something want wrong')</script>");
            }

*/
        }
    }


}
