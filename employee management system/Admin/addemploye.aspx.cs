using employee_management_system.AssistFile;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system.Admin
{
    public partial class addemploye : System.Web.UI.Page
    {

        DataFIles dataFIles = new DataFIles();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveInfo_Click(object sender, EventArgs e)
        {
            String employeid = EmployeeID.Text.Trim();
            String Name = FirstName.Text.Trim() + " " + LastName.Text.Trim();
            String department = DepartemtList.SelectedItem.Text.Trim();
            String email = EmailID.Text.Trim();
            String number = MobileNO.Text.Trim();
            String Country = country.Text.Trim();
            String State = state.Text.Trim();
            String City = city.Text.Trim();
            String dob = DOB.Text.Trim();
            String doj = DOJ.Text.Trim();
            String fileName = Path.GetFileName(file.PostedFile.FileName);
            String filepath = "~/Images/ProfileImages/" + fileName;
            String Password = password.Text.Trim();

            try
            {
                string insertedQ = "INSERT INTO [dbo].[EmployeeDeatils]([EmployeID],[Name],[Department],[Email],[MobileNumer],[Country],[State],[DOB],[DOJ],[FileName],[FilePath],[Password],[City]) "
                    + " VALUES('" + employeid + "','" + Name + "','" + department + "','" + email + "','" + number + "','" + Country + "','" + State + "','" + dob + "','" + doj + "','" + fileName + "','" + filepath + "','" + Password + "','" + City + "')";

                string login = "INSERT INTO [dbo].[LoginDetails] ([EmployeeID],[Email],[Passwords],[LoginType]) values ('" + EmployeeID + "','" + email + "','" + Password + "','Employee')";

                DataFIles dataFIles = new DataFIles();
                dataFIles.SqlRun(insertedQ);
                dataFIles.SqlRun(login);

                file.SaveAs(Server.MapPath(filepath));
            } catch (Exception)
            {
                Response.Write("<script>alert('something want wrong')");
            }

        }
    }
}