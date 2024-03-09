using employee_management_system.AssistFile;
using System;
using System.Collections.Generic;
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
        int ids;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveInfo_Click(object sender, EventArgs e)
        {
            /*
            string FullName = fn.Text + " " + mn.Text + " " + ln.Text;
            string phoneN = phone.Text;
            string emails = personal_email.Text;
            string dateofbirth = birthdate_picker.Text;
            string genders = gender.SelectedValue;
            string Marital_Statues = Marital_Status.SelectedValue;
            string Password = password.Text;

            string imagefile = Path.GetFileName(pic.PostedFile.FileName);

            string path = "~/Images/ProfileImages/" + imagefile;

            //saving employee information
            string sql = "insert into EmployeeInformation ([EmpFullName],[EmpPhone],[EmpEmail],[EmpDateOfBirth],[EmpGender],[EmpMartialStatus],[EmpPassword],[EmpProfilePic],[EmpProfilePath]) "
                + "values ('" + FullName + "','" + phoneN + "','" + emails + "','" + dateofbirth + "','" + genders + "','" + Marital_Statues + "','" + Password + "','" + imagefile + "','" + "Images/ProfileImages/" + imagefile + "') ";

            int result = dataFIles.SqlRun(sql);

            int loginresult = dataFIles.SqlRun("insert into LoginDetails (Email,Passwords,LoginType) values ('"+emails+"','"+Password+"','Employee')");

            if(loginresult == 1)
            {
                Response.Write("<script>alert('data are save')</script>");
            }
            else if (loginresult == -1)
            {
                Response.Write("<script>alert('data are not save')</script>");
            }

            //Employee Previous job Information 

            string employeeenrolmentid = EnrollmentID.Text.Trim();
            string CompaniesNames = CompaniesName.Text.Trim();
            string companiesemail = email.Text.Trim();
            string department = advance_department.Text.Trim();
            string advance_designations = advance_designation.Text.Trim();
            string joindate_pickers = joindate_picker.Text.Trim();
            string enddate_pickers = enddate_picker.Text.Trim();
            string Typeofemployees = Typeofemployee.Text.Trim();

            ids = dataFIles.getCourseID("EmployeeInformation", "EmpEmail", "EmployeeID", emails);

            string jobInfosql = "insert into EmpPreJOBInformation ([EmployeeID],[EmpEnrollmentID],[EmpCompaniesName],[EmpCompanyEmail],[EmpDepartmentName],[EmpDesignation],[EmpDateofJoning],[EmpDateofleaving],[EmpTypeodEmployee])"
                + "values ('" + ids + "','" + employeeenrolmentid + "','" + CompaniesNames + "','" + companiesemail + "','" + department + "','" + advance_designations + "','" + joindate_pickers + "','" + enddate_pickers + "','" + Typeofemployees + "')";

            int jobinforesult = dataFIles.SqlRun(jobInfosql);

            //employee contact information 

            string address1 = addLine1.Text.Trim();
            string address2 = addLine2.Text.Trim();
            string empcity = city.Text.Trim();
            string empstats = state.Text.Trim();
            string empszipcode = zipcode.Text.Trim();
            string cityname = city.Text.Trim();

            string empcontactinfo = "insert into EmpContactInformation ([EmployeeID],[EmpAddressLine1],[EmpAddressLine2],[EmpCity],[EmpState],[EmpZipCode],[EmpCountry]) values"
                + "('" + ids + "','" + address1 + "','" + address2 + "','" + empcity + "','" + empstats + "','" + empszipcode + "','" + cityname + "')";

            int contactinfo = dataFIles.SqlRun(empcontactinfo);

            //Education Information

            string empdegree = degree.Text.Trim();
            string empspecialization = specialization.Text.Trim();
            string emppassing_year = passing_year.Text.Trim();
            string empinstitute = institute.Text.Trim();
            string empdatepicker_start = datepicker_start.Text.Trim();
            string empdatepicker_end = datepicker_end.Text.Trim();

            string education = "INSERT INTO [dbo].[EmpEducation] ([EmployeeID],[EmpDegreeName],[EmpSpecialize],[EmpPassingOfYear],[EmpInstitue],[EmpStartDate],[EmpEndOfDate])"
                + "VALUES('" + ids + "','" + empdegree + "','" + empspecialization + "','" + emppassing_year + "','" + empinstitute + "','" + empdatepicker_start + "','" + datepicker_end + "')";

            int educationresult = dataFIles.SqlRun(education);

            // Experience Information

            string emporganization = organization.Text.Trim();
            string empexp_designation = exp_designation.Text.Trim();
            string empexp_datapicker_start = exp_datapicker_start.Text.Trim();
            string empexp_datepicker_end = exp_datepicker_end.Text.Trim();
            string empstart_salary = start_salary.Text.Trim();

            string experience = "INSERT INTO [dbo].[EmpExperience] ([EmployeeID],[EmpOrganization],[EmpDesignation],[EmpStartDate],[EmpEndDate],[EmpSalary])"
                + " VALUES ('" + ids + "','" + emporganization + "','" + empexp_designation + "','" + empexp_datapicker_start + "','" + empexp_datepicker_end + "','" + empstart_salary + "')";

            int expreienceresult = dataFIles.SqlRun(experience);

            if (result == 1 && jobinforesult == 1 && contactinfo == 1 && educationresult == 1 && expreienceresult == 1)
            {
                pic.SaveAs(Server.MapPath(path));
                Response.Write("<script>alert('data are save')</script>");
            }
            else if (result == -1 && jobinforesult == -1 && contactinfo == -1 && educationresult == -1 && expreienceresult == -1)
            {
                Response.Write("<script>alert('data are not save')</script>");
            }

            */
        }

        protected void SaveS_Click(object sender, EventArgs e)
        {
            /*
            // Salary Information
            string emphourly = hourly.Text.Trim();
            string empmonthly = monthly.Text.Trim();
            string empannual = annual.Text.Trim();
            string empfederal = federal.Text.Trim();
            string empmedicare = medicare.Text.Trim();
            string empsocial = social.Text.Trim();
            string empallowances = allowances.Text.Trim();
            string empadd_allowances = add_allowances.Text.Trim();
            string empnet_pay = net_pay.Text.Trim();

            string salary = "INSERT INTO [dbo].[EmpSalaryInformation] ([EmployeeID],[EmpHourlySalay],[EmpMonthlySalary],[EmpAnnualGrossSalary],[EmpFederalWithHolder],[EmpMedicare],[EmpSocialSecurity],[EmpAllowances],[EmpAddAllowances],[EmpNetDay])"
                + " VALUES('" + ids + "','" + emphourly + "','" + empmonthly + "','" + empannual + "','" + empfederal + "','" + empmedicare + "','" + empsocial + "','" + empallowances + "','" + empadd_allowances + "','" + empnet_pay + "')";

            int salaryresult = dataFIles.SqlRun(salary);

            if (salaryresult == 1)
            {
                Response.Write("<script>alert('data are save')</script>");
            }
            else if (salaryresult == -1)
            {
                Response.Write("<script>alert('data are not save')</script>");
            }
            */
        }
    }
}