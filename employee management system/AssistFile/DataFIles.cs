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
        SqlConnection conn = new SqlConnection(connectionString);

        public (string,int) validationUser(String email, String password)
        {
            conn.Open();

            string logintype = "none";
            int loginID = 0;

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select id,Email,Passwords,LoginType from [LoginDetails] where [Email]='"+email+"' and [Passwords]='"+password+"'";
            using(SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    logintype = reader[3].ToString().Trim();
                    loginID = int.Parse(reader[0].ToString().Trim());
                }
            }

            return (logintype,loginID);

            conn.Close();
        }

    }
}