using System;
using System.Data.SqlClient;

namespace employee_management_system.AssistFile
{
    public class DataFIles
    {

        //private static readonly string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlConnectionForUI"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader sqlr;

        public DataFIles()
        {
            conn = new SqlConnection(@"Data Source=SHRIKHRISHNA\SQLEXPRESS;Initial Catalog=EMSVaidehi;Integrated Security=True;Encrypt=False;");
            conn.Open();
            cmd = conn.CreateCommand();
        }

        public (string, string) validationUser(String email, String password)
        {
            string logintype = "none";
            string loginID = "none";

            cmd.CommandText = "select EmployeeID,Email,Passwords,LoginType from [LoginDetails] where [Email]='" + email + "' and [Passwords]='" + password + "'";
            sqlr = cmd.ExecuteReader();
            while (sqlr.Read())
            {
                logintype = sqlr[3].ToString().Trim();
                loginID = sqlr[0].ToString().Trim();
            }
            sqlr.Close();
            return (logintype, loginID);
        }

        public int checkexit(String tableName,string colume,String condition)
        {
            int i = 0;

            cmd.CommandText = "select " + colume + " from " + tableName + " where " + condition;
            sqlr = cmd.ExecuteReader();
            while (sqlr.Read())
            {
                i++;
            }
            sqlr.Close();
            return i;
        }

        public int createDepartment(string DepartmentName)
        {
            cmd.CommandText = "insert into DepartmentTable (DepartmentName) values ('" + DepartmentName + "')";
            cmd.ExecuteNonQuery();

            return 0;
        }

        public int CreateLeaveType(string leave)
        {

            cmd.CommandText = "insert into LeaveType (LeaveTypeName) values ('" + leave + "')";
            cmd.ExecuteNonQuery();

            return 0;
        }

        public int SqlRun(string sql)
        {
            try
            {
                cmd.CommandText = sql;
                cmd.ExecuteNonQuery();
                return 1;
            }catch (Exception) {
                return -1;
            }
        }

        public int getCourseID(string TableName, string columeName, string findcolume, string columeValue)
        {
            int result = -1;
            try
            {
                string check = "select "+findcolume+" from " + TableName + " where " + columeName + "='" + columeValue + "'";
                cmd.CommandText = check;
                sqlr = cmd.ExecuteReader();
                while (sqlr.Read())
                {
                    result = Convert.ToInt32(sqlr[findcolume]);
                }
                sqlr.Close();
            }
            catch (Exception)
            {
                result = -1;
            }
            return result;
        }

        public string getID(string TableName, string columeName, string findcolume, string columeValue)
        {
            string result = "none";
            try
            {
                string check = "select " + findcolume + " from " + TableName + " where " + columeName + "='" + columeValue + "'";
                cmd.CommandText = check;
                sqlr = cmd.ExecuteReader();
                while (sqlr.Read())
                {
                    result = sqlr[findcolume].ToString();
                }
                sqlr.Close();
            }
            catch (Exception)
            {
                result = "none";
            }
            return result;
        }

        public int getCount(string TableName , string wherecon)
        {
            int result = -1;
            string check;
            try
            {
                if (wherecon == string.Empty)
                {
                    check = "select count(*) as row_count from " + TableName + "";
                } else
                {
                    check = "select count(*) as row_count from " + TableName + " " + wherecon;
                }
                cmd.CommandText = check;
                sqlr = cmd.ExecuteReader();
                while (sqlr.Read())
                {
                    result = Convert.ToInt32(sqlr["row_count"]);
                }
                sqlr.Close();
            }
            catch (Exception)
            {
                result = -1;
            }
            return result;
        }
    }
}