using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace employee_management_system.AssistFile
{
    public class DataFIles
    {

        private static readonly string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Connectionstr"].ConnectionString;
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

            int i = 0;

            cmd.CommandText = "insert into DepartmentTable (DepartmentName) values ('" + DepartmentName + "')";
            cmd.ExecuteNonQuery();

            return i;
        }

    }
}