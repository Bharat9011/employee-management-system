using System;
using System.Data.SqlClient;

namespace employee_management_system.AssistFile
{
    public class DataFIles
    {

        private static readonly string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SQLConnection"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader sqlr;

        public DataFIles()
        {
            conn = new SqlConnection(connectionString);
            conn.Open();
            cmd = conn.CreateCommand();
        }

        public (string, int) validationUser(String email, String password)
        {
            string logintype = "none";
            int loginID = 0;

            cmd.CommandText = "select id,Email,Passwords,LoginType from [LoginDetails] where [Email]='" + email + "' and [Passwords]='" + password + "'";
            sqlr = cmd.ExecuteReader();
            while (sqlr.Read())
            {
                logintype = sqlr[3].ToString().Trim();
                loginID = int.Parse(sqlr[0].ToString().Trim());
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

    }
}