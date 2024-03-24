using employee_management_system.AssistFile;
using System;
using System.Data.SqlClient;
using System.IO;

namespace employee_management_system.Admin
{
    public partial class addemploye : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string employeid = EmployeeID.Text.Trim();
            string Name = FirstName.Text.Trim() + " " + LastName.Text.Trim();
            string department = DepartemtList.SelectedItem.Text.Trim();
            string email = EmailID.Text.Trim();
            string number = MobileNO.Text.Trim();
            string Country = country.Text.Trim();
            string State = state.Text.Trim();
            string City = city.Text.Trim();
            string dob = DOB.Text.Trim();
            string doj = DOJ.Text.Trim();
            string fileName = Path.GetFileName(file.PostedFile.FileName);
            string filepath = "~/Images/ProfileImages/" + fileName;
            string Password = password.Text.Trim();
            string Cpassword = cPassword.Text.Trim();
            string Address = Addresses.Text.Trim();

            if (EmployeeID.Text != string.Empty || Name != string.Empty || department != string.Empty
                || email != string.Empty || number != string.Empty || Country != string.Empty
                || State != string.Empty || City != string.Empty || dob != string.Empty
                || doj != string.Empty || fileName != string.Empty || fileName != string.Empty
                || filepath != string.Empty || Password != string.Empty)
            {
                if (fileName != string.Empty)
                {
                    var employeecheck = EmployeeID_TextChanged();
                    
                    if ( employeecheck.Item1 == 0 &&  employeecheck.Item2 == 0) {
                        
                        var emailcheck = EmailID_TextChanged();

                        if(emailcheck.Item1 == 0 && emailcheck.Item2 == 0) {

                            if (Password != string.Empty && Cpassword != string.Empty)
                            {
                                if (Password == Cpassword)
                                {
                                    string insertedQ = "INSERT INTO [dbo].[EmployeeDeatils]([EmployeID],[Name],[Department],[Email],[MobileNumer],[Country],[State],[DOB],[DOJ],[FileName],[FilePath],[Password],[City],[Addresses]) "
                                        + " VALUES('" + employeid + "','" + Name + "','" + department + "','" + email + "','" + number + "','" + Country + "','" + State + "','" + dob + "','" + doj + "','" + fileName + "','" + filepath + "','" + Password + "','" + City + "','" + Address + "')";

                                    string login = "INSERT INTO [dbo].[LoginDetails] ([EmployeeID],[Email],[Passwords],[LoginType]) values ('" + employeid + "','" + email + "','" + Password + "','Employee')";

                                    DataFIles dataFIles = new DataFIles();
                                    int error = dataFIles.SqlRun(insertedQ);
                                    int erroe = dataFIles.SqlRun(login);

                                    if (error == 1 && erroe == 1)
                                    {
                                        file.SaveAs(Server.MapPath(filepath));
                                    }
                                }
                                else
                                {
                                    Response.Write("<script>alert('Password is differnet')</script>");
                                }
                            } else
                            {
                                Label2.Visible = false;
                            }
                        } else
                        {
                            EmailIDNOTOK.Visible = true;
                            EmailIDOK.Visible = false;
                        }
                    } else
                    {
                        IDNOT.Visible = true;
                        IDOK.Visible = false;
                    }
                } else
                {
                    Label1.Visible = true;
                }
            }
            else
            {
                Response.Write("<script>alert('Some Fields are empty')</script>");
            }
        }

        protected (int, int) EmployeeID_TextChanged()
        {
            DataFIles dataFIles = new DataFIles();
            int resultadd = dataFIles.checkexit("EmployeeDeatils", "EmployeID", "EmployeID='" + EmployeeID.Text.Trim() + "'");
            int resultlogin = dataFIles.checkexit("LoginDetails", "EmployeeID", "EmployeeID='" + EmployeeID.Text.Trim() + "'");

            return (resultlogin, resultadd);
        }

        protected (int, int) EmailID_TextChanged()
        {
            DataFIles dataFIles = new DataFIles();
            int resultadd = dataFIles.checkexit("EmployeeDeatils", "Email", "Email='" + EmailID.Text.Trim() + "'");
            int resultlogin = dataFIles.checkexit("LoginDetails", "Email", "Email='" + EmailID.Text.Trim() + "'");

            return (resultlogin, resultadd);
        }
    }
}