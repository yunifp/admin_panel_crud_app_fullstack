using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using tokoku.Classes;

namespace tokoku.Classes
{
    public class ClsLogin
    {
        public static DataTable DtLogin(string email, string password)
        {
            DataTable Dt = new DataTable();
            SqlConnection SqlConn = new SqlConnection(ClsModul.Conn.ToString());
            SqlCommand cmd = SqlConn.CreateCommand();
            SqlDataAdapter da = new SqlDataAdapter();

            SqlConn.Open();
            cmd.Connection = SqlConn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from clients where email ='"+email+"' and password = '"+password+"'";
            da.SelectCommand = cmd;
            da.Fill(Dt);
            SqlConn.Close();
            return Dt;
        }
    }
}